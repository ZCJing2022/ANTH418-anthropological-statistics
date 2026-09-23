rsync -av --delete \
  --exclude='.git/' \
  --exclude='.quarto/' \
  --exclude='.Rproj.user/' \
  --exclude='.DS_Store' \
  --exclude='LICENSE' \
  --exclude='scripts/' \
  "$SRC/" "$DEST/"
