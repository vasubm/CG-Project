FILENAME="colornet.t7"
FILEURL="http://hi.cs.waseda.ac.jp/~iizuka/data/colornet.t7"
FILEMD5="c88fa2bb6dc9f942a492a7dc7009b966"

echo "Downloading the colorization model"
wget --continue -O "$FILENAME" -- "$FILEURL"

OS=`uname -s`
if [ "$OS" = "Darwin" ]; then
  CHECKSUM=`cat $FILENAME | md5`
  else
  CHECKSUM=`md5sum $FILENAME | awk '{ print $1 }'`
fi

if [ "$CHECKSUM" != "$FILEMD5" ]; then
  echo "Integrity check failed. File is corrupt!"
  echo "Try running this script again and if it fails remove '$FILENAME' before trying again."
  exit 1
fi 
echo -e "Download finished successfully!"
