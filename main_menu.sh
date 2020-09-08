#! /bin/bash





banner() {
clear
printf "\e[33m ██▓ ▄████▄   ██░ ██  ██▓  ██████  ▄▄▄     ▄▄▄█████▓ ▒█████  \n▓██▒▒██▀ ▀█  ▓██░ ██▒▓██▒▒██    ▒ ▒████▄   ▓  ██▒ ▓▒▒██▒  ██▒\n▒██▒▒▓█    ▄ ▒██▀▀██░▒██▒░ ▓██▄   ▒██  ▀█▄ ▒ ▓██░ ▒░▒██░  ██▒\n░██░▒▓▓▄ ▄██▒░▓█ ░██ ░██░  ▒   ██▒░██▄▄▄▄██░ ▓██▓ ░ ▒██   ██░\n░██░▒ ▓███▀ ░░▓█▒░██▓░██░▒██████▒▒ ▓█   ▓██▒ ▒██▒ ░ ░ ████▓▒░\n░▓  ░ ░▒ ▒  ░ ▒ ░░▒░▒░▓  ▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░ ▒ ░░   ░ ▒░▒░▒░ \n ▒ ░  ░  ▒    ▒ ░▒░ ░ ▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░   ░      ░ ▒ ▒░ \n ▒ ░░         ░  ░░ ░ ▒ ░░  ░  ░    ░   ▒    ░      ░ ░ ░ ▒  \n ░  ░ ░       ░  ░  ░ ░        ░        ░  ░            ░ ░  \n    ░                                                        \n\n"
}

menu() {
banner
printf "      \e[208m\e[1;208m[\e[1;39m::\e[93m] \e[39m Select Any Attack for Your Victim \e[1;93m[\e[39m::\e[93m]\e[0m\n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m1\e[1;39m Fake Login Screen \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m2\e[1;39m Hunt Down Social Media \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m3\e[1;39m Information Gathering Tools \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m4\e[1;39m Wireless Tools  \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m5\e[1;39m Webapp Pentest Tools \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m6\e[1;39m Bruteforce Tools  \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m7\e[1;39m Wordlist Generator  \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m8\e[1;39m Metasploit Payload Generator  \n"
printf "\n      \e[1;93m[\e[0m\e[1;77m::\e[93m]  \e[1;93m// \e[39m9\e[1;39m ddos Tools  \n"
read -p $'\n      \e[1;93m[\e[0m\e[1;77m;;\e[93m]\e[0m\e[1;39m Select an option: \e[0m\e[1;93m\en' menu_option
if [[ $menu_option == 1 || $menu_option == 01 ]]; then
fake_login_screen_menu
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
sherlock
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
information_gathering
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
wireless_tools
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
web_pen
elif [[ $menu_option == 6 || $menu_option == 06 ]]; then
brutef
elif [[ $menu_option == 7 || $menu_option == 07 ]]; then
wordlist
elif [[ $menu_option == 8 || $menu_option == 08 ]]; then
metasploit
elif [[ $menu_option == 9 || $menu_option == 09 ]]; then
ddos
fi
}

ddos() {
cd IGNORE/Utools2/modules
chmod +x ddos
./ddos
read -p "press any key to return ... "
}


metasploit() {
cd IGNORE/Utools2/modules
chmod +x metasp
./metasp
read -p "press any key to return "
}


brutef() {
cd IGNORE/Utools2/modules
chmod +x brutef
./brutef
read -p "press any key to return "
}

wordlist() {
cd IGNORE/Utools2/modules
chmod +x wordlist
./wordlist
read -p "press any key to return ... "
}

web_pen() {
cd IGNORE/Utools2/modules
chmod +x webpen
./webpen
read -p "press any key to return ... "
}

wireless_tools() {
cd IGNORE/Utools2/modules
chmod +x Wireless
./wireless
read -p "press any key to return ... "
}


fake_login_screen_menu() {
echo -e '      \e[1;93m[\e[0m\e[1;77m;;\e[93m] \e[39mWait While We Setup Everything ... '
cd IGNORE/FK && bash FakeLoginScreen
}

sherlock() {
echo -e '      \e[1;93m[\e[0m\e[1;77m;;\e[93m] \e[39mWait While We Setup Everything ... '
cd IGNORE/sherlock-master
read -p $'\n      \e[1;93m[\e[0m\e[1;77m;;\e[93m]\e[0m\e[1;39m Enter Username: \e[0m\e[1;93m\en' username
python3 sherlock $username
}

information_gathering() {
cd IGNORE/Utools2/modules
chmod +x info
./info
read -p "press any key to return .."
}








reqs() {
command -v php > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n";cexit 1; }
command -v curl > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v ssh > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v unzip > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }

if [[ -d .htr ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash setup\e[0m\n\n"
exit 1 
fi

if [[ -d .Modules ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash setup\e[0m\n\n"
exit 1 
fi

if [[ -d .htr/www ]]; then
rm -rf .htr/www
mkdir .htr/www
else
mkdir .htr/www
fi

}



stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

}


menu
