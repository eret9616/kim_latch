mycommand="osascript -e 'tell application \"System Events\" to get name of application processes whose frontmost is true and visible is true'";
res=$(eval $mycommand);
if [ $res == "Kim" ]
then
    eval "osascript -e 'tell application \"System Events\" to set visible of process \"Kim\" to false'" 
else
    eval "open -a 'Kim.app'"
fi