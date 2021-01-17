#!bin/bash
function report() {
if [ $? -eq 0 ]
then 
	echo "$1 operation was successful"
else 
	echo "$1 operation is very bad"
fi
}
echo "The home dir of current user is: $HOME"
mkdir -p {myFolderA,myFolderB}
cd myFolderA
for (( i = 1; i <= 10; i++ )); do touch file$i.txt; done
report "files created"
zip -r myFolderA.zip *.txt
report "zip"
mv myFolderA.zip ../myFolderB
report "move"
cd /home/ann/Documents/myFolder1/myFolderB
report "cd"
unzip -o myFolderA.zip
report "unzip"
rm /home/ann/Documents/myFolder1/myFolderA/*.txt
report "originals are deleted"

