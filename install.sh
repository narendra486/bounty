# Vps Vonfiguration

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive;
echo "[*] Starting Install... [*]"
echo "[*] Upgrade installed packages to latest [*]"
echo -e "\nRunning a package upgrade...\n"
sudo apt-get -qq update && apt-get -qq dist-upgrade -y
sudo apt full-upgrade -y
sudo apt-get autoclean

echo "[*] Install stuff I use all the time [*]"
echo -e "\nInstalling default packages...\n"
sudo add-apt-repository ppa:duh/golang
sudo apt-get -y install build-essential checkinstall fail2ban gcc firefox git sqlite3 ruby ruby-dev git-core python-dev python-pip unzip jruby libbz2-dev libc6-dev libgdbm-dev libncursesw5-dev libreadline-gplv2-dev libsqlite3-dev libssl-dev nmap nodejs python-dev python-numpy python-scipy python-setuptools tk-dev unattended-upgrades wget curl
sudo apt-get install -y xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps clang libdbus-1-dev libgtk2.0-dev libnotify-dev libgnome-keyring-dev libgconf2-dev libasound2-dev libcap-dev libcups2-dev libxtst-dev libxss1 libnss3-dev gcc-multilib g++-multilib libldns-dev
sudo apt-get install -y dnsutils python3-pip  libavahi-compat-libdnssd1 git-core libldns-dev python-software-properties golang gobuster masscan stem  tor netcat privoxy python-pip python3-uritools python3-paramiko nfs-common eyewitness nodejs wafw00f xdg-utils metagoofil clusterd ruby-full rubygems python dos2unix sslyze arachni aha libxml2-utils rpcbind cutycapt host whois dnsrecon  php php-curl hydra wpscan sqlmap nbtscan enum4linux cisco-torch metasploit-framework theharvester dnsenum nikto smtp-user-enum whatweb sslscan jq golang adb xsltproc
sudo pip install dnspython colorama tldextract urllib3 ipaddress requests html eventlet termcolor
sudo pip3 install jsbeautifier eventlet termcolor numpy fuzzywuzzy python-Levenshtein shodan wafw00f
gem install aquatone

echo "[*] bash changes [*]"
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"



# Bugbounty go Tools list
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/qsreplace
go get -u github.com/jaeles-project/gospider
go get github.com/hakluke/hakrawler
go get github.com/OJ/gobuster
go get github.com/tomnomnom/hacks/filter-resolved
go get -u github.com/tomnomnom/gf
go get -u github.com/ndelphit/apkurlgrep
go get -u github.com/ffuf/ffuf
go get -u github.com/tomnomnom/httprobe
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
GO111MODULE=auto go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder


# apt install
sudo apt install amass

# git leaks scanners
#https://github.com/alifathi-h1/gh_scanner
#https://github.com/BishopFox/GitGot
#https://github.com/hisxo/gitGraber
#https://github.com/tillson/git-hound
#https://securitytrails.com/blog/github-dorks


