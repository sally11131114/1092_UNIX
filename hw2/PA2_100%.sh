ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2;sudo rm -rf rooms;tar -xf rooms.tar
cd rooms/receivingRoom;PS1=">"

alias x='cat'
alias score='echo -n "You have scored " && (cd ~/PA2/rooms/treasureRoom; ls [bdgps][^ae][^teu]*[tdmr] 2> /dev/null | wc -l | xargs echo -n; echo 0 points.)'
alias quit='score ; exit 1'
alias nogo='echo You cannot go that way.'
alias e='basename `pwd` | fgrep -w w &> /dev/null && cd .. || cd e&>~/X && disp || nogo'
alias s='basename `pwd` | fgrep -w n &> /dev/null && cd .. || cd s&>~/X && disp || nogo'
alias w='basename `pwd` | fgrep -w e &> /dev/null && cd .. || cd w&>~/X && disp || nogo'
alias n='basename `pwd` | fgrep -w s &> /dev/null && cd .. || cd n&>~/X && disp || nogo'
alias sw='basename `pwd` | fgrep -w ne &> /dev/null && cd .. || cd sw&>~/X && disp || nogo'
alias nw='basename `pwd` | fgrep -w se &> /dev/null && cd .. || cd nw&>~/X && disp || nogo'
alias d='basename `pwd` | fgrep -w u &> /dev/null && cd .. || cd d&>~/X && disp || nogo'
alias se='echo -n `ls | fgrep -w se &> /dev/null || echo back` | fgrep back &>/dev/null && basename `pwd` | fgrep -w nw &> /dev/null && cd .. || cd se&>~/X && disp || nogo'       
alias ne='echo -n `ls | fgrep -w ne &> /dev/null || echo back` | fgrep back &>/dev/null && basename `pwd` | fgrep -w sw &> /dev/null && cd .. || cd ne&>~/X && disp || nogo'  
alias u='echo -n `ls | fgrep -w u &> /dev/null || echo back` | fgrep back &>/dev/null && basename `pwd` | fgrep -w d &> /dev/null && cd .. || cd u&>~/X && disp || nogo'  

alias l='mv 1 9&>~/X; disp'
alias disp='cd `pwd -P`&&(head -`ls [19] 2> /dev/null` description ;(mv 9 1&>~/X;dispmessages))'
alias dispmessages='fgrep -hw `ls | paste -- ~/_/es -` -h ~/_/There | cut -d ";" -f 1; true'

alias i='echo You currently have:;(cd ~/_/i/i ; ls | find * &> /dev/null && ls | xargs -n1 echo A)'
alias getall='mv *[akrovg][hwvtlpaxem]*[etdyprmsl] ~/_/i/_&>~/X||echo Nothing to take.; (cd ~/_/i/_;ls | find * &> /dev/null && ls | xargs -n1 echo Taken: a)&&mv ~/_/i/_/* ~/_/i/i&>~/X'
alias dropweight='(ls | fgrep button &>/dev/null && (cd ~/_/i/i; ls | fgrep weight &>/dev/null) && (cd ..; mv d .d &>/dev/null; ln -s ~/_/buttonRoom d;cd d));((cd ~/_/i/i; ls |fgrep weight &>/dev/null || echo You do not have that.);((cd ~/_/i/i && ls |fgrep weight &>/dev/null) && mv ~/_/i/i/weight `pwd` && echo Done.) && ls | fgrep button &>/dev/null && echo A passageway opens.) 2>~/X'
alias press='(cat | fgrep button &>/dev/null && cat button || echo You cannot press that.) <'
alias put='(ls | fgrep chute &>/dev/null && ((cd ~/_/i/i; ls [bdgps][^ae][^eu]*[tdmr] 2> /dev/null| find * &>/dev/null && mv [bdgps][^ae][^eu]*[tdmr] ~/PA2/rooms/treasureRoom &>/dev/null) || (echo No treasure to put into it. && false)) && echo You hear it slide down the chute and off into the distance. && score)  || (ls | fgrep urinal &>/dev/null && ((cd ~/_/i/i; ls [bdgps][^ae][^eu]*[tdmr] 2> /dev/null| find * &>/dev/null && mv [bdgps][^ae][^eu]*[tdmr] ~/PA2/rooms &>/dev/null) || (echo No treasure to put into it. && false)) && echo You hear it plop down in some water below.) || (ls| fgrep chute &>/dev/null || ls | fgrep urinal &> /dev/null || echo Nothing to put treasures into.)'
alias flush='ls | fgrep urinal &>/dev/null && echo 'Whoooosh!!' && (cd ~/PA2/rooms; mv [bdgps][^ae][^teu]*[tdmr] ~/_/treasureRoom/ &>/dev/null && score || true) || echo I see nothing to flush'

l
