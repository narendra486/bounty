
echo "${RED} ######################################################### ${RESET}"
echo "${RED} #                 TOOLS FOR BUG BOUNTY                  # ${RESET}"
echo "${RED} ######################################################### ${RESET}"



# Vps Vonfiguration

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive;
echo "[*] Starting Install... [*]"
echo "[*] Upgrade installed packages to latest [*]"
echo -e "\nRunning a package upgrade...\n"
sudo apt-get -qq update && apt-get -qq dist-upgrade -y
sudo apt full-upgrade -y
sudo apt-get autoclean
sudo add-apt-repository -y ppa:apt-fast/stable < /dev/null
sudo echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
sudo echo debconf apt-fast/dlflag boolean true | debconf-set-selections
sudo echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
sudo apt install -y apt-fast

echo "[*] Install stuff I use all the time [*]"
echo -e "\nInstalling default packages...\n"
sudo add-apt-repository ppa:duh/golang
sudo apt-fast install -y apt-transport-https
sudo apt-fast install -y libcurl4-openssl-dev
sudo apt-fast install -y libssl-dev
sudo apt-fast install -y jq
sudo apt-fast install -y ruby-full
sudo apt-fast install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-fast install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-fast install -y python-setuptools
sudo apt-fast install -y libldns-dev
sudo apt-fast install -y python3-pip
sudo apt-fast install -y python-dnspython
sudo apt-fast install -y git
sudo apt-fast install -y npm
sudo apt-fast install -y nmap phantomjs firefox shodan
sudo apt-fast install -y gem
sudo apt-fast install -y perl 
sudo apt-fast install -y parallel
sudo apt-fast install -y golang gobuster masscan tor netcat eyewitness nodejs wafw00f rubygems python  host whois dnsrecon php hydra 
sudo apt-fast install -y wpscan sqlmap nbtscan enum4linux theharvester dnsenum nikto  whatweb sslscan jq golang adb 
sudo apt-fast install -y wfuzz

sudo gem install XSpear
sudo gem install colorize
sudo gem install selenium-webdriver
sudo gem install terminal-table
sudo gem install progress_bar
sudo pip3 install py-altdns
sudo pip3 install jsbeautifier
sudo pip3 install awscli
sudo pip3 install xsrfprobe
sudo pip3 install pwncat


echo "${GREEN} [+] Installing Golang ${RESET}"
if [ ! -f /usr/bin/go ];then
    cd ~
    wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
	export GOROOT=$HOME/.go
	export PATH=$GOROOT/bin:$PATH
	export GOPATH=$HOME/go
    echo 'export GOROOT=$HOME/.go' >> ~/.bash_profile
	
	echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
	echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
    source ~/.bash_profile 
else 
    echo "${BLUE} Golang is already installed${RESET}"
fi
    break
echo""
echo "${BLUE} Done Install Golang ${RESET}"

echo "[*] bash changes [*]"
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"


# Bugbounty go Tools list
go get -u github.com/1ndianl33t/urlprobe
go get -u github.com/anshumanbh/tko-subs
go get -u github.com/dwisiswant0/cf-check
go get -u github.com/ffuf/ffuf
go get -u github.com/haccer/subjack
go get -u github.com/hakluke/hakrawler
go get -u github.com/harleo/knockknock
go get -u github.com/Ice3man543/SubOver
go get -u github.com/j3ssie/go-auxs/just-resolved
go get -u github.com/j3ssie/metabigor
go get -u github.com/jaeles-project/gospider
go get -u github.com/lc/gau
go get -u github.com/lc/subjs
go get -u github.com/lukasikic/subzy
go get -u github.com/michenriksen/aquatone
go get -u github.com/michenriksen/gitrob
go get -u github.com/ndelphit/apkurlgrep
go get -u github.com/OJ/gobuster
go get -u github.com/projectdiscovery/
go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
go get -u github.com/projectdiscovery/dnsprobe
go get -u github.com/projectdiscovery/httpx/cmd/httpx
go get -u github.com/projectdiscovery/naabu/cmd/naabu
go get -u github.com/projectdiscovery/nuclei/cmd/nuclei
go get -u github.com/projectdiscovery/shuffledns/cmd/shuffledns
go get -u github.com/projectdiscovery/subfinder/cmd/subfinder
go get -u github.com/sensepost/gowitness
go get -u github.com/subfinder/goaltdns
go get -u github.com/Tanmay-N/CORS-Scanner
go get -u github.com/theblackturtle/
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/fff
go get -u github.com/tomnomnom/gf
go get -u github.com/tomnomnom/hacks/anti-burl
go get -u github.com/tomnomnom/hacks/concurl
go get -u github.com/tomnomnom/hacks/filter-resolved
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/qsreplace
go get -u github.com/tomnomnom/unfurl
go get -u github.com/tomnomnom/waybackurls
go get -u github.com/zricethezav/gitleaks
go get -u github.com/hahwul/dalfox


# apt install
sudo apt install amass

# git leaks scanners
#https://github.com/alifathi-h1/gh_scanner
#https://github.com/BishopFox/GitGot
#https://github.com/hisxo/gitGraber
#https://github.com/tillson/git-hound
#https://securitytrails.com/blog/github-dorks


