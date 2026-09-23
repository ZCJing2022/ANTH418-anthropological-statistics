#!/usr/bin/env bash

set -euo pipefail

readonly SRC="/Users/jing/Documents/BaiduCloud/百度同步/00_Teaching/ANTH418-course-materials"
readonly DEST="/Users/jing/Documents/BaiduCloud/百度同步/00_Teaching/ANTH418B"

echo "========================================"
echo "ANTH418 public mirror synchronization"
echo "========================================"
echo

# ------------------------------------------------------------
# Safety checks
# ------------------------------------------------------------

if [[ "$SRC" != "/Users/jing/Documents/BaiduCloud/百度同步/00_Teaching/ANTH418-course-materials" ]]; then
  echo "STOP: Unexpected SRC path:"
  echo "$SRC"
  exit 1
fi

if [[ "$DEST" != "/Users/jing/Documents/BaiduCloud/百度同步/00_Teaching/ANTH418B" ]]; then
  echo "STOP: Unexpected DEST path:"
  echo "$DEST"
  exit 1
fi

if [[ ! -d "$SRC" ]]; then
  echo "STOP: Source directory does not exist:"
  echo "$SRC"
  exit 1
fi

if [[ ! -f "$SRC/_quarto.yml" ]]; then
  echo "STOP: Source does not look like the ANTH418 course repository."
  echo "Missing: $SRC/_quarto.yml"
  exit 1
fi

if [[ ! -d "$DEST/.git" ]]; then
  echo "STOP: Destination does not look like the public Git repository."
  echo "Missing: $DEST/.git"
  exit 1
fi

cd "$DEST"

echo "Source:"
echo "  $SRC"
echo
echo "Destination:"
echo "  $DEST"
echo

echo "1. Checking public repository status..."

if [[ -n "$(git status --porcelain)" ]]; then
  echo
  echo "STOP: ANTH418B has uncommitted changes."
  echo "Commit, discard, or inspect them before synchronizing."
  echo
  git status --short
  exit 1
fi

echo "   Working tree is clean."
echo

# ------------------------------------------------------------
# Mirror
# ------------------------------------------------------------

echo "2. Synchronizing from UBC course repository..."

rsync -av --delete \
  --exclude='.git/' \
  --exclude='.quarto/' \
  --exclude='.Rproj.user/' \
  --exclude='.DS_Store' \
  --exclude='LICENSE' \
  --exclude='scripts/' \
  "${SRC}/" \
  "${DEST}/"

echo
echo "3. Rendering Quarto website..."

quarto render

echo
echo "4. Checking authored source files..."

if ! git diff --check -- . ':(exclude)docs/**'; then
  echo
  echo "STOP: source-file whitespace problems detected."
  exit 1
fi

echo "   Source whitespace check passed."
echo

echo "5. Checking for private local paths..."

if grep -RIn \
  '/Users/jing/' \
  --include='*.qmd' \
  --include='*.md' \
  . ; then
  echo
  echo "STOP: personal local path found."
  exit 1
fi

echo "   No /Users/jing/ paths found."
echo

echo "6. Checking for instructor-only references..."

if grep -RInE \
  '(ANTH418-instructor-master|grading_notes|solution\.qmd|substantive_validation|validation_report)' \
  --include='*.qmd' \
  --include='*.md' \
  . ; then
  echo
  echo "STOP: instructor-only reference found."
  exit 1
fi

echo "   No instructor-only references found."
echo

echo "7. Checking rendered site..."

if find docs -type f -name '*.qmd' | grep -q . ; then
  echo
  echo "STOP: raw .qmd files found inside docs/."
  find docs -type f -name '*.qmd'
  exit 1
fi

echo "   No raw .qmd files in docs/."
echo

echo
echo "========================================"
echo "Synchronization completed successfully."
echo "========================================"
echo
echo "Review:"
echo "  git status --short"
echo "  git diff -- . ':(exclude)docs/**'"
echo
echo "Preview if desired:"
echo "  quarto preview"
echo
echo "When satisfied:"
echo "  git add -A"
echo "  git diff --cached --check -- . ':(exclude)docs/**'"
echo "  git commit -m \"Sync latest ANTH418 course materials\""
echo "  git push origin main"
