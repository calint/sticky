BIN=sticky
SRC=src/sticky.c
#OPTS=-Os
WARNINGS="-Wall -Wextra"
LIBS=$(pkg-config --cflags --libs gtk+-3.0 gtksourceview-3.0)

echo &&
gcc  -o $BIN  $SRC $LIBS $OPTS $WARNINGS && 
echo    "             lines   words  chars" &&
echo -n "   source:" &&
cat $SRC|wc
echo -n "   zipped:" &&
cat $SRC|gzip|wc &&
echo && ls -o --color $BIN &&
echo
