#vjsk
#Terminal setup
set autolist
set autocorrect
set autoexpand
set filec
#set noding
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}"
set prompt="${yellow}%S%h%s ${cyan}%T ${green}%U%n${blue}@%M%u ${yellow}`domainname` \n${red}%B%/%b \n${green}%#${white} ${end}"
unset red green yellow blue magenta cyan yellow white end

unalias vim
# Aliases
alias a alias
a icdgui    "env P4DIFF=gvimdiff icmp4 diff"
a aipruby   '/tools/apps/aipruby/ruby'
a aiprake   '/tools/apps/aipruby/rake'
a sdd       'setenv DESIGN $PWD; setenv DMWA $PWD; source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: " ;readlink $DESIGN/config/tech; set workspace = `basename $DESIGN`;set split= ( $workspace:as/_/ / )' 
a URs 'echo "\-U\n\-R\n\-s" | xargs -n 1 -Iopts pm workspace opts `basename $PWD` | grep -v -e "up\-to\-date"'
a aiprdoc   '/tools/apps/aipruby/rdoc'
a aipirb    '/tools/apps/aipruby/irb'
a aipri     '/tools/apps/aipruby/ri'
a aiperb    '/tools/apps/aipruby/erb'
a aipgem    '/tools/apps/aipruby/gem'
a h         'history | historyGrep \!* | grep -v "h \!*"'
a c         clear
a ldaps     'ldapsearch -x -h ldap -b ou=People,o=cypress.com -LLL uid=\!^'
a l         "ls --color=none"
a ll        'ls -alF \!* ; pwd' 
a llr       'll -ltr' 
a u1        'cd ../'
a u         'cd ../'
a u2        'cd ../../'
a uu        'cd ../../'
a u3        'cd ../../../'
a uuu        'cd ../../../'
a u4         "cd ../../../.."
a u5         "cd ../../../../.."
a u6         "cd ../../../../../.."
a uuuu       "cd ../../../.."
a uuuuu      "cd ../../../../.."
a uuuuuu     "cd ../../../../../.."
a which     '/usr/bin/which'
a gmi       'gmake install'
a gmr       'gmake rebuild'
a bvir      'bsub -I virtuoso &'
a svir      'env SPSN_PROCESS=cu80f virtuoso &'
a bicfb     'bsub -I icfb &'
a tff       'tail -f'
a cdd       'cd $DESIGN'
a cdmwa      'cd $DMWA'
a s	    'source ~/.cshrc'
a sspansion 'source /tools/stabflow/spansion/cshrc.spansion'
a edd	    'echo $DESIGN'
a edmwa     'echo $DMWA'
a h         'history'
a gcshrc    'gvim ~/.cshrc'
a guserenv    'gvim ~/.userenv'
a cshrc     'vim ~/.cshrc'
a gvimrc    'gvim ~/.vimrc'
a vimrc     'vim ~/.vimrc'
a galias    'gvim ~/alias.cshrc'
a e	    'exit'
a gvid    'gvim -c "source ~vjsk/.vimrc" ~/.DESIGN'
# Work Area Aliases
alias sui 'su -l iptguser'
alias suij 'ssh iptguser@login1.jpdc.cypress.com'
alias suisjc 'ssh iptguser@login1.design.cypress.com'
alias suiind  'ssh iptguser@login1.india'
alias suiildc  'ssh iptguser@login1.ildc'
alias suvildc  'ssh vjsk@login1.ildc'
alias sushamu  'ssh vjsk@shamu40.spansion.com'
#PV aliases
alias xextlog 'xext -r &; tail -f *.log'
alias xdrclog 'xdrc -r &; tail -f *.log'


#icmp4 aliases
alias iadd 'icmp4 add'
alias bsyncf 'bsub -Ip icmp4 sync -f ...'
alias syncf 'icmp4 sync -f ...'
alias bsync 'bsub -Ip icmp4 sync ...'
alias sync 'icmp4 sync ...'
alias isubmit 'icmp4 submit'
alias btkdiff 'bsub -Ip tkdiff'
alias irevert 'icmp4 revert ...'
alias iopened 'icmp4 opened ...'
alias iopeneda 'icmp4 opened -a ...'
alias iedit 'icmp4 edit'
alias i 'icmp4'
alias b 'bsub -Ip'

#Location aliases
alias cdtrain 'cd /proj/gpfs/vjsk/vjsk_B7_IPVGEN_Training_dev_22' 
alias cdspansion 'cd /tools/stabflow/spansion/spnpdk/umc40lpect/lpo/v1.0'
alias cdscripts 'cd /proj/gpfs/vjsk/myscripts'

#ENV variables -To display directories in color
setenv LS_COLORS "di=34:fi=00"


#mail
alias mail 'echo "" | mutt -a '
#chmod permissions
alias chm 'chmod 755 *'

#Software aliases
alias abstract 'bsub -I -R "select[type==X86_64&&os==centos6]" abstract -64 &'
#alias gvim 'gvim -c "source ~vjsk/.vimrc"'
alias g 'gvim -c "source ~vjsk/.vimrc"'
#alias g 'gvim'
alias v 'vim -c "source ~vjsk/.vimrc"'

#WorkArea Design Aliaases
set workspace = `basename $DESIGN`
set split= ( $workspace:as/_/ / )  #split gets the ddc name
alias cdrhview 'cd $DESIGN/$split[2]/rhview/$split[2]/apl'
alias cdoa 'cd $DESIGN/$split[2]/oa/$split[2]'
alias cdhdl 'cd $DESIGN/$split[2]/hdl/$split[2]'
alias cdatpg 'cd $DESIGN/$split[2]/atpg/$split[2]'
alias cdpnr 'cd $DESIGN/$split[2]/pnr/$split[2]'
alias cdsyn 'cd $DESIGN/$split[2]/syn/$split[2]'
alias cdv 'cd $DESIGN/$split[2]/v/$split[2]'


