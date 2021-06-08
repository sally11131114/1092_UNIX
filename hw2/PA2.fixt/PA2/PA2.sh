ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2;rm -rf rooms;tar -xf rooms.tar
cd rooms/receivingRoom;PS1=">"

alias x='cat'
alias score='echo -n "You have scored " && (cd ~/PA2/rooms/treasureRoom; ls gold 2> /dev/null | wc -l | xargs echo -n; echo 0 points)'
alias quit='score ; exit 1'
alias nogo='echo You cannot go that way.'
alias e='cd e&>~/X && disp'
alias s='cd s&>~/X && disp'
alias w='cd w&>~/X && disp'
alias n='cd n&>~/X && disp'
alias ne='cd ne&>~/X && disp'
alias nw='cd nw&>~/X && disp'
alias se='cd se&>~/X && disp'
alias sw='cd sw&>~/X && disp'
alias u='cd u&>~/X && disp'
alias d='cd d&>~/X && disp'

alias l='mv 1 9&>~/X; disp'
alias disp='cat discription; dispmessages'
alias dispmessages='fgrep -hw `ls | paste -- ~/_/es -` -h ~/_/There | cut -d ';' -f 1; echo ""'

alias i='echo You currently have:;(cd ~/_/i/i ; ls | find * &> /dev/null && ls | xargs -n1 echo A)'
alias getall='mv [wpg][^a]*[drt] ~/_/i/_&>~/X||echo Nothing to take.; (cd ~/_/i/_;ls | find * &> /dev/null && ls | xargs -n1 echo Taken)&&mv ~/_/i/_/* ~/_/i/i&>~/X'


alias put='(cd ~/_/i/i; mv gold ~/PA2/rooms; echo You hear it plop down in some water below.)'
alias flush='(cd ~/PA2/rooms; mv [gb][^e]*[dt] ~/_/treasureRooms);echo Whoooosh!!'
