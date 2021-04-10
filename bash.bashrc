if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

TODAY=$(date +'Today: %a- %d/%B/%Y')
TIMENOW=$(date +'%r')

echo -e $'\e[1;32m                                📡\e[0m'
echo -e $'\e[1;32m╭━━━━━━━━━━━━╮╭━━━━━━━━━━━━━━━━━╩━━━━━━━━━━━━━━━━━━━╮ \e[0m'
echo -e $'\e[1;32m|━━━⊕━━━━━━━━|\e[0m' $TODAY $TIMENOW
echo -e $'\e[1;32m|\e[1;36mLogin UserId\e[1;32m|╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m'
echo -e $'\e[1;32m|\e[1;33mSir        \e[1;32m |\e[1;37m * Search packages:   pkg/apt search \e[0m'
echo -e $'\e[1;32m|\e[1;33mManishKumar\e[1;32m |\e[1;37m * Install a package: pkg/apt install \e[0m'
echo -e $'\e[1;32m|Located:\e[1;31m Ind\e[1;32m|\e[1;37m * Update packages:   pkg/apt updat \e[0m'
echo -e $'\e[1;32m|\e[1;34mM09554988808\e[1;32m|\e[1;37m * Upgrade packages:  pkg/apt upgrade \e[0m'
echo -e $'\e[1;32m|\e[1;31mLogin Server\e[1;32m|\e[1;37m * Root:              pkg install root-repo \e[0m'
echo -e $'\e[1;32m|\e[1;33m Malaysia   \e[1;32m|\e[1;37m * Unstable:          pkg install unstable-repo \e[0m'
echo -e $'\e[1;32m| \e[1;31m 120.0.0.1 \e[1;32m|\e[1;37m * X11:               pkg install x11-repo \e[0m'
echo -e $'\e[1;32m|━━━━━ㅇ━━━━━|\e[1;37m * fix-broken:        apt –fix-broken install \e[0m'
echo -e $'\e[1;32m╰━━━━━━━━━━━━╯\e[1;36m                __ \e[0m'
echo -e $'\e[1;36m          ____  _            |  |        __  __ _   _  ____ \e[0m'
echo -e $'\e[1;36m         / ___|(_)_ __    ___|  |___    |  \/  | \ | |/ ___| \e[0m'
echo -e $'\e[1;31m         \___ \| | `__|   \__    __/    | |\/| |  \| |\___ \ \e[0m'
echo -e $'\e[1;31m          ___) | | |         \  /       | |  | | |\  | ___) | \e[0m'
echo -e $'\e[1;31m  __  __ |____/|_|_| _     _  \/ _  __  |_|  |_|_| \_||____/ \e[0m'
echo -e $'\e[1;31m |  \/  | __ _ _ __ (_)___| |__ | |/ /   _ _ __ ___   __ _ _ _ \e[0m'
echo -e $'\e[1;37m | |\/| |/ _` | `_ \| / __| `_ \| ` / | | | `_ ` _ \ / _` | `_| \e[0m'
echo -e $'\e[1;37m | |  | | (_| | | | | \__ \ | | | . \ |_| | | | | | | (_| | | \e[0m'
echo -e $'\e[1;32m |_|  |_|\__,_|_| |_|_|___/_| |_|_|\_\__,_|_| |_| |_|\__,_|_| \e[0m'
echo -e $'\e[1;32m╰━━━━━ ━━━━━━ ━━━━━━ ━━━━━━ ━━━━━━ ━━━━━━ ━━━━━━ ━━━━━━ ━━━━━╯ \e[0m'

PS1='\$ '

clear
FILENAME="/data/data/com.termux/files/usr/etc/user.txt"
while IFS=: read -r username pass
do
IPS="$pass"
USER="$username"
done < $FILENAME
echo -e "\e[32m"                     
cat /data/data/com.termux/files/home/txt.txt
echo -e "\e[91m\n\nEnter Password to unlock"
echo -e  "Password:\e[34m"
read password
if [ "$password" =  "$IPS" ]
then                                      
clear
echo -e "\e[32m"
figlet Unlocked
echo "Welcome $USER"
echo -e "\e[0m"
else
echo -e "\e[91m"
clear
figlet Locked
echo "Incorrect Password"

echo "Wait 3 sec..."
sleep 3
exec bash --login
fi
