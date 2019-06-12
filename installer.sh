#!/bin/bash

#http://bit.ly/ProjectAliceDL

VENV=venv

echo -e "\e[33m=============================\e[0m"
echo -e "\e[33m  Installing Project Alice   \e[0m"
echo -e "\e[33m=============================\e[0m"
echo

if [[ "$EUID" -ne 0 ]]; then
    echo -e "\e[33mPlease run with sudo\e[0m"
    exit
fi

# Commands that you don't want to run with root would be invoked with: sudo -u $real_user
USER=$(logname)
USERDIR='/home/'${USER}

systemctl is-active -q ProjectAlice && systemctl stop ProjectAlice

echo -e "\e[33mJust a moment, updating your system first\e[0m"
apt-get update
apt-get dist-upgrade -y
apt-get install -y git

cd ${USERDIR}

echo
read -p $'\e[33mIs this device going to be a (m)ain unit or a (s)atelitte? \e[0m' choice
case "$choice" in
    s|S)
        installMode=2
        echo -e "\e[32mSatellite\e[0m"
        echo -e "\e[31mNot yet implemented!\e[0m"
        exit
        ;;
    *)
        installMode=1
        echo -e "\e[32mMain unit, ok, let me download the required files\e[0m"
		
		if [[ -d "$USERDIR/ProjectAlice" ]]; then
			echo
			read -p $'\e[32mI have found existing directories where I should install. Shall I make a backup (y/n)? \e[0m' choice
			case "$choice" in
				y|Y)
					echo -e "\e[32mOk, backing them up!\e[0m"
					today=`date -u`
					cp ${USERDIR}/ProjectAlice ${USERDIR}/"$today ProjectAliceBackup"
					;;
				*)
					echo -e "\e[32mGone they are!\e[0m"
					;;
			esac
			read -p $'\e[32mDo you want to (u)pdate or to (i)nstall from scratch? \e[0m' choice
			case "$choice" in
				i|I)
					echo -e "\e[32mGetting rid of the demons of the past!\e[0m"
					rm -rf ${USERDIR}/ProjectAlice
					;;
				*)
					echo -e "\e[32mOk, let's try to update!\e[0m"
					;;
			esac
		fi
		
		if [[ ! -d "$USERDIR/project-alice" ]]; then
			git clone https://bitbucket.org/Psychokiller1888/project-alice.git
		else
			cd ${USERDIR}/project-alice
			git stash
			git pull
			git stash apply
		fi
		
		cp -rf ${USERDIR}/project-alice/core ${USERDIR}/ProjectAlice
		chown -R pi ${USERDIR}/ProjectAlice
        ;;
esac

if [[ "$installMode" == 1 ]]
then
    echo
    echo -e "\e[33mOk, so this device is going to be my main unit, my home\e[0m"
    read -e -p $'\e[33mIn what room are you going to place my main unit? \e[0m' -i 'default' siteId
    siteId=${siteId/_/ /.}
    read -p $'\e[33mDo you want me to enable sound playback and record (y/n)? \e[0m' choice
    case "$choice" in
        n|N)
            enableAudio=0
            echo -e "\e[31mSound disabled\e[0m"
            ;;
        *)
            enableAudio=1
            echo -e "\e[31mSound enabled\e[0m"
            read -p $'\e[33mDo you want me to install my audio device (y/n)? \e[0m' choice
            case "$choice" in
                y|Y)
                    echo -e "\e[32mOk, let's do this first\e[0m"
                    chmod +x ${USERDIR}/ProjectAliceInstaller/audioInstaller.sh
                    ${USERDIR}/ProjectAliceInstaller/audioInstaller.sh
                    ;;
                *)
                    echo -e "\e[31mOk, i'll let that to you if needed\e[0m"
                    ;;
            esac
            ;;
    esac
fi

installPython="n"
optimizePython="n"
installGoogleASR="n"
installMycroft="n"

read -p $'\e[33mDo you want to use Google ASR when online (y/n) ? \e[0m' choice
case "$choice" in
    n|N)
        echo -e "\e[31mOk, only Snips ASR\e[0m"
        ;;
    *)
        installGoogleASR="y"
        echo -e "\e[32mOk, I will install what's needed\e[0m"
        ;;
esac

read -p $'\e[33mFor a better voice you can use online TTS services, do you want to install one (y/n) ? \e[0m' choice
case "$choice" in
    y|Y)
        read -p $'\e[33m(A)mazon Polly, (G)oogle WaveNet or (b)oth? \e[0m' choice
		case "$choice" in
			g|G)
				ttsService="google"
				echo -e "\e[32mGoogle WaveNet, ok!\e[0m"
				;;
			*)
				ttsService="amazon"
				read -p $'\e[33mI need your AWS access key to configure the TTS: \e[0m' awsAccessKey
				read -p $'\e[33mAnd your AWS secret key... Please? \e[0m' awsSecretKey
				echo -e "\e[33mI need you to select the correct AWS API Gateway\e[0m"
				select region in "East USA (Ohio)" "East USA (North Virginia)" "West USA (North California)" "West USA (Oregon)" "Asia Pacific (Hong Kong)" "Asia Pacific (Mumbai)" "Asia Pacific (Seoul)" "Asia Pacific (Singapour)" "Asia Pacific (Sydney)" "Asia Pacific (Tokyo)" "Canada (center)" "China (Beijing)" "China (Ningxia)" "EU (Francfort)" "EU (Irlande)" "EU (London)" "EU (Paris)" "EU (Stockholm)" "South America (Sao Paulo)"
				do
					case $region in
						"East USA (Ohio)") awsAPIGateway="us-east-2";;
						"East USA (North Virginia)") awsAPIGateway="us-east-1";;
						"West USA (North California)") awsAPIGateway="us-west-1";;
						"West USA (Oregon)") awsAPIGateway="us-west-2";;
						"Asia Pacific (Hong Kong)") awsAPIGateway="ap-east-1";;
						"Asia Pacific (Mumbai)") awsAPIGateway="ap-south-1";;
						"Asia Pacific (Seoul)") awsAPIGateway="ap-northeast-2";;
						"Asia Pacific (Singapour)") awsAPIGateway="ap-southeast-1";;
						"Asia Pacific (Sydney)") awsAPIGateway="ap-southeast-2";;
						"Asia Pacific (Tokyo)") awsAPIGateway="ap-northeast-1";;
						"Canada (center)") awsAPIGateway="ca-central-1";;
						"China (Beijing)") awsAPIGateway="cn-north-1";;
						"China (Ningxia)") awsAPIGateway="cn-northwest-1";;
						"EU (Francfort)") awsAPIGateway="eu-central-1";;
						"EU (Irlande)") awsAPIGateway="eu-west-1";;
						"EU (London)") awsAPIGateway="eu-west-2";;
						"EU (Paris)") awsAPIGateway="eu-west-3";;
						"EU (Stockholm)") awsAPIGateway="eu-north-1";;
						"South America (Sao Paulo)") awsAPIGateway="sa-east-1";;
						*) echo -e "\e[32mInvalid choice\e[0m";;
					esac
				done
				;;
		esac
        ;;
    *)
        echo -e "\e[31mOk, only offline TTS\e[0m"
		ttsService="offline"
        ;;
esac


read -p $'\e[33mMycroft is a nice offline TTS if you want just offline TTS or when you are currently offline. I recommend installing it, the wait is worth the effort (y/n) ? \e[0m' choice
case "$choice" in
    n|N)
        installMycroft="n"
        echo -e "\e[31mOk... PicoTTS it is then...\e[0m"
        ;;
    *)
        installMycroft="o"
        echo -e "\e[32mOk, I will install what's needed\e[0m"
		if [[ "$ttsService" == "offline" ]]; then
			ttsService="mycroft"
		fi
        ;;
esac

read -p $'\e[33mSamba is needed for some modules. Do you need to configure it? (y/n)? \e[0m' choice
case "$choice" in
    y|Y)
        installSamba='y'
        echo -e "\e[32myes\e[0m"
        ;;
    *)
        installSamba='n'
        echo -e "\e[31mno\e[0m"
        read -p $'\e[33mOk! But make sure to have /share created for Samba!\e[0m'
        ;;
esac

FVENV=${USERDIR}'/ProjectAlice/'${VENV}

which python3.7 || {
    if [[ -d "$FVENV" ]]; then
        echo
        read -p $'\e[33mVirtual environment found but Python 3.7 was not detected on your system. Do you need to install Python 3.7 as required (y/n)? \e[0m' choice
        case "$choice" in
            y|Y)
                installPython='y'
                echo -e "\e[32myes\e[0m"
                ;;
            *)
                installPython='n'
                echo -e "\e[31mno\e[0m"
                ;;
        esac

        echo

        read -p $'\e[33mDo you want to optimize Python for my hardware? This can take veeeeeeerrryyyyyyy long (y/n)? \e[0m' choice
        case "$choice" in
            y|Y)
                optimizePython='y'
                echo -e "\e[32mOk, will do!\e[0m"
                ;;
            *)
                optimizePython='n'
                echo -e "\e[31mBetter save some time against some perfs, right!\e[0m"
                ;;
        esac
    else
		installPython="y"
        read -p $'\e[33mI need to install Python 3.7! Do you want to optimize it for my hardware? This can take veeeeeeerrryyyyyyy long (y/n)? \e[0m' choice
        case "$choice" in
            y|Y)
                optimizePython='y'
                echo -e "\e[32mOk, will do!\e[0m"
                ;;
            *)
                optimizePython='n'
                echo -e "\e[31mBetter save some time against some perfs, right!\e[0m"
                ;;
        esac
    fi
}

if [[ "$installGoogleASR" == "y" ]]; then
	read -p $'\e[33mTime for you to upload "googlecredentials.json" and "googlecredentials_wavenet.json" into my main directory. Press any key when you are done \e[0m' w
fi

if [[ "$installPython" == "y" ]]; then
    echo -e "\e[33mInstalling Python 3.7... This will take a while...\e[0m"
    apt install -y libffi-dev libbz2-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev libssl-dev tk-dev build-essential libncursesw5-dev libc6-dev openssl
	cd ${USERDIR}
    sudo -u ${USER} wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
    sudo -u ${USER} tar xf Python-3.7.3.tar.xz
    cd Python-3.7.3
    if [[ "$optimizePython" == "y" ]]; then
        ./configure --enable-optimizations
    else
        ./configure
    fi
    make -j -l 4
    make altinstall
    cd ..
    rm -rf Python-3.7.3
    rm Python-3.7.3.tar.xz
    pip3.7 install --upgrade pip

    if [[ -d "$FVENV" ]]; then
        rm -rf ${FVENV}
    fi
    echo -e "\e[33mCooling down!\e[0m"
    sleep 2s
fi

if [[ ! -d "$FVENV" ]]; then
    echo -e "\e[33mInstalling Python 3.7 virtual environment\e[0m"
    pip3.7 install virtualenv
    pythonPath=`which python3.7`
    virtualenv -p ${pythonPath} ${FVENV}
fi

. ${FVENV}/bin/activate

if [[ -f /etc/systemd/system/ProjectAlice.service ]]; then
    rm /etc/systemd/system/ProjectAlice.service
fi

cp ${USERDIR}/ProjectAlice/ProjectAlice.service /etc/systemd/system

apt-get install -y mpg123 dirmngr python3-pip gcc make pkg-config automake libtool libicu-dev libpcre2-dev libasound2-dev portaudio19-dev python-pyaudio python3-pyaudio mosquitto mosquitto-clients libxml2-dev libxslt-dev

echo -e "\e[33mSmoking guns...\e[0m"
sleep 2s

bash -c  'echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list'
apt-key adv --keyserver gpg.mozilla.org --recv-keys D4F50CDCA10A2849
apt-get update
apt-get install -y --allow-unauthenticated snips-platform-voice
apt-get install -y --allow-unauthenticated snips-watch

if [[ "$installGoogleASR" == "y" ]]; then
	apt-get install -y snips-asr-google
	systemctl disable snips-asr
	systemctl enable snips-asr-google
fi

echo -e "\e[33mInstalling Pulseaudio\e[0m"
apt-get install -y pulseaudio

if [[ -f /etc/systemd/system/pulseaudio.service ]]; then
    rm /etc/systemd/system/pulseaudio.service
fi

cp ${USERDIR}/ProjectAliceInstaller/pulseaudio.sample /etc/systemd/system/pulseaudio.service
systemctl --global disable pulseaudio.service pulseaudio.socket
systemctl enable pulseaudio
systemctl start pulseaudio
usermod -G pulse-access -a pi
usermod -G pulse-access -a _snips

sudo -u ${USER} pactl list short sinks
read -p $'\e[32mPlease type the index number of your default audio output \e[0m' output
sudo -u ${USER} pactl set-default-sink ${output}

sudo -u ${USER} pactl list short sources
read -p $'\e[32mPlease type the index number of your default audio input \e[0m' input
sudo -u ${USER} pactl set-default-source ${input}


escaped=${USERDIR//\//\\/}
sed -i -e 's/\#WORKINGDIR/WorkingDirectory='${escaped}'\/ProjectAlice/' /etc/systemd/system/ProjectAlice.service
sed -i -e 's/\#EXECSTART/ExecStart='${escaped}'\/ProjectAlice\/venv\/bin\/python3.7 main.py/' /etc/systemd/system/ProjectAlice.service
sed -i -e 's/\#USER/User='${USER}'/' /etc/systemd/system/ProjectAlice.service

sed -i -e 's/\# assistant = "\/usr\/share\/snips\/assistant"/assistant = "'${escaped}'\/ProjectAlice\/assistant"/' /etc/snips.toml

if [[ -f "$USERDIR/ProjectAlice/googlecredentials.json" ]]; then
    sed -i -e 's/\# credentials = "\/usr\/share\/snips\/googlecredentials.json"/credentials = "'${escaped}'\/ProjectAlice\/googlecredentials.json"/' /etc/snips.toml
fi

if [[ ! -f "$USERDIR/ProjectAlice/shell/snipsSuperTTS.sh" ]]; then
    cp ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sample.sh ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
fi

sed -i -e 's/\# retry_count = 3/retry_count = 0/' /etc/snips.toml

if [[ "$ttsService" == "amazon" || "$ttsService" == "both" ]]; then
	sed -i -e 's/\# provider = "customtts"/provider = "customtts"/' /etc/snips.toml
	sed -i -e 's/\# customtts = { command = \["pico2wave", "-w", "%%OUTPUT_FILE%%", "-l", "en-US", "%%TEXT%%"\] }/customtts = { command = \["'${escaped}'\/ProjectAlice\/shell\/snipsSuperTTS.sh", "%%OUTPUT_FILE%%", "amazon", "%%LANG%%", "US", "Joanna", "FEMALE", "%%TEXT%%", "22050"\] }/' /etc/snips.toml
elif [[ "$ttsService" == "google" ]]; then
	sed -i -e 's/\# provider = "customtts"/provider = "customtts"/' /etc/snips.toml
	sed -i -e 's/\# customtts = { command = \["pico2wave", "-w", "%%OUTPUT_FILE%%", "-l", "en-US", "%%TEXT%%"\] }/customtts = { command = \["'${escaped}'\/ProjectAlice\/shell\/snipsSuperTTS.sh", "%%OUTPUT_FILE%%", "google", "%%LANG%%", "US", "Wavenet-C", "FEMALE", "%%TEXT%%", "22050"\] }/' /etc/snips.toml
elif [[ "$ttsService" == "mycroft" ]]; then
	sed -i -e 's/\# provider = "customtts"/provider = "customtts"/' /etc/snips.toml
	sed -i -e 's/\# customtts = { command = \["pico2wave", "-w", "%%OUTPUT_FILE%%", "-l", "en-US", "%%TEXT%%"\] }/customtts = { command = \["'${escaped}'\/ProjectAlice\/shell\/snipsSuperTTS.sh", "%%OUTPUT_FILE%%", "mycroft", "%%LANG%%", "--", "slt_hts", "--", "%%TEXT%%", "22050"\] }/' /etc/snips.toml
else
	sed -i -e 's/\# provider = "customtts"/provider = "customtts"/' /etc/snips.toml
	sed -i -e 's/\# customtts = { command = \["pico2wave", "-w", "%%OUTPUT_FILE%%", "-l", "en-US", "%%TEXT%%"\] }/customtts = { command = \["'${escaped}'\/ProjectAlice\/shell\/snipsSuperTTS.sh", "%%OUTPUT_FILE%%", "picotts", "%%LANG%%", "--", "--", "--", "%%TEXT%%", "22050"\] }/' /etc/snips.toml
fi

sed -i -e 's/\# bind = "default@mqtt"/bind = "'${siteId}'@mqtt"/' /etc/snips.toml

if [[ "$enableAudio" -eq 0 ]]; then
    sed -i -e 's/\# disable_playback = false/disable_playback = true/' /etc/snips.toml
    sed -i -e 's/\# disable_capture = false/disable_capture = true/' /etc/snips.toml
fi

grep -qF 'dtparam=i2c_arm=on' '/boot/config.txt' || echo 'dtparam=i2c_arm=on' | tee --append '/boot/config.txt'
grep -qF 'i2c-dev' '/etc/modules' || echo 'i2c-dev' | tee --append '/etc/modules'
grep -qF 'dtparam=spi=on' '/boot/config.txt' || echo 'dtparam=spi=on' | tee --append '/boot/config.txt'

if [[ "$ttsService" == "offline" ]]; then
	sed -i -e 's/forceTTSOffline=false/forceTTSOffline=true/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
elif [[ "$ttsService" == "mycroft" || "$installMycroft" == "o" ]]; then
	sed -i -e 's/useMycroft=false/useMycroft=true/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
	sed -i -e 's/#mycroftPath=%MYCROFT_PATH/mycroftPath="'${escaped}'\/mimic"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
elif [[ "$ttsService" == "google" || "$ttsService" == "both" ]]; then
	sed -i -e 's/#export GOOGLE_APPLICATION_CREDENTIALS=%WAVENET_CREDENTIALS/export GOOGLE_APPLICATION_CREDENTIALS="'${escaped}'\/ProjectAlice\/googlecredentials_wavenet.json"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
fi
sed -i -e 's/cache=%CACHE_PATH%/cache="'${escaped}'\/ProjectAlice\/cache"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh

pip3.7 install -r ${USERDIR}/ProjectAliceInstaller/requirements.txt

echo -e "\e[33mCatching breath...\e[0m"
sleep 2s

mkdir ${USERDIR}/ProjectAlice/logs
mkdir -p ${USERDIR}/ProjectAlice/cache
mkdir -m 1777 /share

chown -R pi ${USERDIR}/ProjectAlice
chown -R _snips ${USERDIR}/ProjectAlice/cache
chmod 775 ${USERDIR}/ProjectAlice/cache

ln -sfn ${USERDIR}/ProjectAlice/assistants/assistant_en ${USERDIR}/ProjectAlice/assistant
ln -sfn ${USERDIR}/ProjectAlice/assistant/custom_sounds/end_of_input.wav ${USERDIR}/ProjectAlice/assistant/custom_dialogue/sound/end_of_input.wav

chmod 755 ${USERDIR}/ProjectAlice/shell/langSwitch.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/reboot.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/restart.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/restartSnips.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/screen.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/switchOnlineState.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/switchTTSOnlineState.sh
chmod 755 ${USERDIR}/ProjectAlice/shell/switchSounds.sh

if [[ "$installSamba" == "y" ]]; then
    apt-get install -y samba
    apt-get install -y samba-common-bin

    rm -f /etc/samba/smb.conf
    cp ${USERDIR}/ProjectAliceInstaller/samba.sample /etc/samba/smb.conf

    smbpasswd -a ${USER}
    /etc/init.d/samba restart
fi

if [[ "$ttsService" == "amazon" || "$ttsService" == "both" ]]; then
	sed -i -e 's/#export AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY%/export AWS_ACCESS_KEY_ID="'${awsAccessKey}'"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
	sed -i -e 's/#export AWS_SECRET_ACCESS_KEY=%AWS_SECRET_KEY%/export AWS_SECRET_ACCESS_KEY="'${awsSecretKey}'"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
	sed -i -e 's/#export AWS_DEFAULT_REGION=%AWS_API_SERVER%/export AWS_DEFAULT_REGION="'${AWS_API_SERVER}'"/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh
	sed -i -e 's/#awscli=/awscli=/' ${USERDIR}/ProjectAlice/shell/snipsSuperTTS.sh

	cd ${USERDIR}
	curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
	unzip awscli-bundle.zip
	./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
	rm awscli-bundle.zip
fi

if [[ "$ttsService" == "google" || "$ttsService" == "both" ]]; then
    cd ${USERDIR}
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    apt-get update && sudo apt-get install -y google-cloud-sdk
    gcloud init

    mkdir -p /var/empty/.config/gcloud
    chown _snips /var/empty/.config/gcloud
fi

echo -e "\e[33mNeed some rest...\e[0m"
sleep 2s

if [[ "$installMycroft" == "y" ]]; then
	cd ${USERDIR}
	git clone https://github.com/MycroftAI/mimic.git
	cd mimic
	./dependencies.sh --prefix="/usr/local"
	./autogen.sh
	./configure --prefix="/usr/local"
	make
	/sbin/ldconfig
	make check
fi

systemctl daemon-reload

systemctl is-active -q mosquitto && systemctl stop mosquitto
sed -i -e 's/persistence true/persistence false/' /etc/mosquitto/mosquitto.conf
rm /var/lib/mosquitto/mosquitto.db

systemctl enable ProjectAlice
systemctl restart snips-*

echo -e "\e[33m==============================================\e[0m"
echo -e "\e[33m          Project Alice installed             \e[0m"
echo -e "\e[33m           Please wait for reboot             \e[0m"
echo -e "\e[33m==============================================\e[0m"

sleep 5
reboot