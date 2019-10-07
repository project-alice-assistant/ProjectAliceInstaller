#!/bin/bash

VENV=venv

clear

echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m(,%\e[30m@\e[31m&&&&&\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[31m&&&&&\e[30m@\e[97m%,(\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m%,.*\e[30m@@\e[31m&%%%%&&&&\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@\e[31m&&&&%%%%&\e[30m@@\e[97m*.,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,.../\e[30m@@\e[31m&%%%%%%%%%%%&&&&&&&&&&&&&&&&&%%%%%%%%%%%&\e[30m@@\e[97m(...*\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m*....,/\e[30m@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&\e[30m@\e[97m/,....*\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m*......,(\e[30m@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&\e[30m@\e[97m(,......*\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,........,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,........*\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m%,..........*\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*..........,(\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m/,...........,*\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*,...........,%\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@\e[97m%*..............,*\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*,..............*%\e[30m@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@\e[97m*,................,(\e[30m@@\e[31m%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m%,................./\e[30m@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@\e[97m/,...................,%\e[30m@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@\e[97m%,...................,/\e[30m@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@\e[97m%/,......................,%\e[30m@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@\e[97m%,......................,*%\e[30m@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@\e[97m%*,.........................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*..........................*%\e[30m@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@\e[97m(,............................../\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m/..............................*(\e[30m@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@\e[97m&(*,.................................,/\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m/,.................................,*(\e[30m@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@\e[97m%*,.......................................*\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m/,........................................,/%&\e[30m@@\e[0m"
echo -e "\e[40;30m\e[97m@,,,...........................................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,...........................................,,,\e[0m"
echo -e "\e[40;30m@\e[31m&\e[30m@@@@\e[97m,,,.......................................*\e[30m@@\e[31m&%%%%%%%%%%%%%%%&\e[30m@@\e[97m*.......................................,,,\e[30m@@@@\e[31m&\e[0m"
echo -e "\e[40;30m@@\e[31m&%&&&\e[30m@@@@\e[97m ,,..................................,\e[30m@@\e[31m&%%%%%%%%%%%%%&\e[30m@@\e[97m*..................................,,,,\e[30m@@@@\e[31m&&&&&%&\e[30m@\e[0m"
echo -e "\e[40;30m@@\e[31m&%%%%%&&&\e[30m@@@@\e[97m,,,,..............................*\e[30m@@\e[31m&%%%%%%%%%%%&\e[30m@@\e[97m*...............................,,,,\e[30m@@@@\e[31m&&&&&%%%%%\e[30m@@\e[0m"
echo -e "\e[40;30m@@@\e[31m&%%%%%%%%%%&&\e[30m@@@@\e[97m*,,,..........................(\e[30m@@\e[31m&%%%%%%%%%&\e[30m@@\e[97m(,..........................,,,\e[30m@@@@@\e[31m&&%%%%%%%%%%%&\e[30m@@\e[0m"
echo -e "\e[40;30m@@@@\e[31m&%%%%%%%%%%%%%%&&\e[30m@@@@@\e[97m,,,.....................,(\e[30m@\e[31m&&%%%%%%%&&\e[30m@\e[97m(,......................,,,\e[30m@@@@@\e[31m&&%%%%%%%%%%%%%%%%&\e[30m@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@\e[97m,,...................,%\e[30m@\e[31m&%%%%%%%&\e[30m@\e[97m%,...................,,,\e[30m@@@@\e[31m&&&%%%%%%%%%%%%%%%%%%%&\e[30m@@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@\e[97m,,,..............,,\e[30m@@\e[31m&%###%&\e[30m@@\e[97m,,..............,,,\e[30m@@@@\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@\e[97m*,,,.........,*\e[30m@@\e[31m&%#%&\e[30m@@\e[97m*,.........,,,,\e[30m@@@@\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@@\e[97m,,,,.....,*\e[30m@@\e[31m&%&\e[30m@@\e[97m/,.....,,,,\e[30m@@@@@\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[33m=============================\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[33m=        Project Alice      =\e[31m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[33m=    By Psycho and Jierka   =\e[31m&&%####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[33m=                           =\e[31m&&%####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[33m=     Copyright GNUGPL v3   =\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[33m=       Powered by Snips    =\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@@\e[33m=============================\e[97m%&\e[30m@@@\e[31m&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@@\e[97m(*,,..........,,\e[30m@@\e[31m##&\e[30m@@\e[97m,,...........,*(&\e[30m@@@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[30m@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%&&&\e[30m@@@\e[97m&(*,..............,,\e[30m@@\e[31m&%###%&\e[30m@@\e[97m,,..............,,(&\e[30m@@@@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@@@\e[0m"
echo -e "\e[40;30m@@@@@\e[31m%%%%%%%%%%%%%%%%%%&&\e[30m@@@@\e[97m%/*....................,\e[30m@@\e[31m&%%%%%%%&\e[30m@@\e[97m,...................,,/&\e[30m@@@@\e[31m&&%%%%%%%%%%%%%%%%%&\e[30m@@@@\e[0m"
echo -e "\e[40;30m@@@@\e[31m&%%%%%%%%%%%%%%&&\e[30m@@@@\e[97m&*,,......................,,\e[30m@\e[31m&&%%%%%%%&&\e[30m@\e[97m,,......................,,/%\e[30m@@@@\e[31m&&%%%%%%%%%%%%%%&\e[30m@@@\e[0m"
echo -e "\e[40;30m@@@\e[31m&%%%%%%%%%%&&\e[30m@@@@\e[97m(*,,...........................,\e[30m@@\e[31m&%%%%%%%%%&\e[30m@@\e[97m,...........................,,*%\e[30m@@@@\e[31m&&%%%%%%%%%%&\e[30m@@\e[0m"
echo -e "\e[40;30m@@\e[31m&%%%%%&&&\e[30m@@@\e[97m&(*,,...............................,\e[30m@@\e[31m&%%%%%%%%%%%&\e[30m@@\e[97m,...............................,,,(\e[30m@@@@\e[31m&&&%%%%%\e[30m@@\e[0m"
echo -e "\e[40;30m@@\e[31m&%&&&\e[30m@@@\e[97m&%*,...................................,\e[30m@@\e[31m&%%%%%%%%%%%%%&\e[30m@@\e[97m*..................................,,*(&\e[30m@@@\e[31m&&&%&\e[30m@\e[0m"
echo -e "\e[40;30m@\e[31m&\e[30m@@@\e[97m%/*,.......................................*\e[30m@@\e[31m&%%%%%%%%%%%%%%%&\e[30m@@\e[97m,.......................................,*/&\e[30m@@@\e[31m&\e[0m"
echo -e "\e[40;30m@\e[97m,,,...........................................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,...........................................,,,\e[0m"
echo -e "\e[40;30m@@@@@\e[97m,,........................................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,........................................,,\e[30m@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@\e[97m*,,.................................,,\e[30m@\e[31m&&%%%%%%%%%%%%%%%%%%%&&\e[30m@\e[97m,,.................................,,,\e[30m@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@\e[97m,,..............................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,..............................,(\e[30m@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@\e[97m,,..........................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,..........................,,\e[30m@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@\e[97m,,......................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,......................,,\e[30m@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@\e[97m,,...................,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,...................,,\e[30m@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@\e[97m,.................,,\e[30m@@\e[31m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\e[30m@@\e[97m*,................,,\e[30m@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,..............,,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*,.............,,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,,...........,*\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m*,...........,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,..........,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,..........,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,........,\e[30m@@\e[31m&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&\e[30m@@\e[97m,........,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,......,,\e[30m@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&\e[30m@\e[97m,,......,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,....,,\e[30m@\e[31m&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&\e[30m@\e[97m,,....,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,...,\e[30m@@\e[31m&%%%%%%%%%%%&&&&&&&&&&&&&&&&&%%%%%%%%%%%&\e[30m@@\e[97m,...,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,.,\e[30m@@\e[31m&%%%%&&&\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[31m&&&%%%%&\e[30m@@\e[97m*.,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"
echo -e "\e[40;30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[97m,,\e[30m@@\e[31m&&&&\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[31m&&&&&\e[30m@@\e[97m,,\e[30m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\e[0m"


sleep 8
clear

echo
echo -e "\e[100;33m================================================\e[0m"
echo -e "\e[100;33m            ========================            \e[0m"
echo -e "\e[100;33m                ================                \e[0m"
echo -e "\e[100;33m                    ========                    \e[0m"
echo -e "\e[100;33m                                                \e[0m"
echo -e "\e[100;33m                 Project Alice                  \e[0m"
echo -e "\e[100;33m                  Installation                  \e[0m"
echo -e "\e[100;33m                                                \e[0m"
echo -e "\e[100;33m             By Psycho and Jierka               \e[0m"
echo -e "\e[100;90m     Copyrighted under GNUGPL v3.0 2019         \e[0m"
echo -e "\e[100;33m                                                \e[0m"
echo -e "\e[100;33m                    ========                    \e[0m"
echo -e "\e[100;33m                ================                \e[0m"
echo -e "\e[100;33m            ========================            \e[0m"
echo -e "\e[100;33m================================================\e[0m"
echo

if [[ "$EUID" -ne 0 ]]; then
	echo -e "\e[31mPlease run with sudo\e[0m"
	exit
fi

# Commands that you don't want to run with root would be invoked with: sudo -u $real_user
USER=$(logname)
USERDIR='/home/'${USER}
escaped=${USERDIR//\//\\/}

systemctl is-active -q ProjectAlice && systemctl stop ProjectAlice

echo -e "\e[33mJust a moment, updating your system first\e[0m"
apt-get update
apt-get dist-upgrade -y
apt-get install -y git

if [[ -z "$USER" ]]; then
	echo -e "\e[33mIt's weird, I couldn't detect your username... On what user are you running this device? By default, on a Raspberry Pi, it's 'pi'\e[0m"
	read -e -p $'\e[33mUser: \e[0m' USER

	USERDIR='/home/'${USER}
	while [[ ! -d "$USERDIR" ]]; do
		echo -e "\e[33mNope... Still not ok...\e[0m"
		read -e -p $'\e[33mUser: \e[0m' USER
		USERDIR='/home/'${USER}
	done
fi

if [[ ! -d "$USERDIR" ]]; then
	echo -e "\e[33mSorry, I can't access your home directory, I can't install\e[0m"
	exit
fi


checkAndUpdateSources() {
	type=$1

	if [[ ${type} == 'sat' ]]; then
		mkdir -p ${USERDIR}/satellite
		cd ${USERDIR}/satellite

		if [[ -d ${USERDIR}/satellite/.git ]]; then
			git stash
			git pull origin master
			rc=$?
			git stash apply
		else
			git init
			git remote add origin https://github.com/project-alice-powered-by-snips/ProjectAliceDevices.git
			git config core.sparsecheckout true
			echo "ProjectAlice/satellite/*" >> .git/info/sparse-checkout
			git pull origin master
			rc=$?
		fi
	else
		if [[ -d ${USERDIR}/ProjectAlice/.git ]]; then
			cd ${USERDIR}/ProjectAlice
			git stash
	  		git pull
		  	rc=$?
			git stash apply
		else
			cd ${USERDIR}
			git clone https://github.com/project-alice-powered-by-snips/ProjectAlice.git
			rc=$?
		fi
	fi

	return ${rc}
}


checkExistingInstallAndDL() {
	type=$1
	if [[ -d ${USERDIR}/ProjectAlice ]]; then
		echo
		read -p $'\e[33mI have found existing directories where I should install. Shall I make a backup (y/n)? \e[0m' choice
		case ${choice} in
			y|Y)
				echo -e "\e[32mOk, backing them up!\e[0m"
				today=`date -u`
				cp -a ${USERDIR}/ProjectAlice ${USERDIR}/"${today}-ProjectAliceBackup"
				;;
			*)
				echo -e "\e[32mGone they are!\e[0m"
				;;
		esac
		cp ${USERDIR}/ProjectAlice/config.py ${USERDIR}/config.bkp
		read -p $'\e[33mDo you want to (u)pdate or to (i)nstall from scratch? \e[0m' choice
		case ${choice} in
			i|I)
				echo -e "\e[32mGetting rid of the demons of the past!\e[0m"
				rm -rf ${USERDIR}/ProjectAlice
				;;
			*)
				echo -e "\e[32mOk, let's try to update!\e[0m"

				checkAndUpdateSources ${type}
				rc=$?

				if [[ ${rc} != 0 ]]; then
					read -p $'\e[33mThere seems to be a problem getting the sources, please try again\e[0m' choice
					exit
				fi

				if [[ ${type} == 'sat' ]]; then
					cp -rf ${USERDIR}/satellite/ProjectAliceDevices/satellite ${USERDIR}/ProjectAlice
				else
					mv ${USERDIR}/config.bkp ${USERDIR}/ProjectAlice/config.py
				fi

				chown -R ${USER} ${USERDIR}/ProjectAlice
				echo
				read -p $'\e[33mI have updated your installation to the latest sources available. Press a key to exit \e[0m' choice
				exit;;
		esac
	fi

	rc=1
	while [[ ${rc} != 0 ]]; do
		checkAndUpdateSources ${type}
		rc=$?

		if [[ ${rc} != 0 ]]; then
			read -p $'\e[33mThere seems to be a problem getting the sources, please try again\e[0m' choice
		else
			if [[ ${type} == 'sat' ]]; then
				cp -rf ${USERDIR}/satellite/ProjectAliceDevices/satellite ${USERDIR}/ProjectAlice
			fi
		fi
	done

	chown -R ${USER} ${USERDIR}/ProjectAlice
	
	if [[ ":$PATH:" == *":${USERDIR}/ProjectAlice:"* ]]; then
  		echo -e "\e[33mPATH is correctly set\e[0m"
	else
   		echo "export PATH=\$PATH:$USERDIR/ProjectAlice:" >> ~/.bashrc
   		echo -e "\e[33mPATH has been correctly set\e[0m"
	fi
}

checkAndInstallPython() {
	type=$1

	#todo https://www.itsupportwale.com/blog/how-to-upgrade-to-python-3-7-on-ubuntu-18-10/
	# works for bionic (18.04) too

	FVENV=${USERDIR}'/ProjectAlice/'${VENV}

	installPython='n'
	which python3.7 || {
		if [[ -d ${FVENV} ]]; then
			echo
			read -p $'\e[33mVirtual environment found but Python 3.7 was not detected on your system. Do you want to install Python 3.7 (y/n)? \e[0m' choice
			case ${choice} in
				y|Y)
					installPython='y'
					echo -e "\e[32myes\e[0m"
					;;
				*)
					installPython='n'
					echo -e "\e[31mno\e[0m"
					;;
			esac
			chown -R ${USER} ${FVENV}
		else
			installPython='y'
		fi
	}

	if [[ ${installPython} == 'y' ]]; then
		echo -e "\e[33mInstalling Python 3.7... This will take a while...\e[0m"
		apt install -y libffi-dev libbz2-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev libssl-dev tk-dev build-essential libncursesw5-dev libc6-dev openssl
		cd ${USERDIR}
		sudo -u ${USER} wget https://www.python.org/ftp/python/3.7.3/Python-3.7.4.tar.xz
		sudo -u ${USER} tar xf Python-3.7.4.tar.xz
		cd Python-3.7.4
		./configure
		cores=$(nproc)
		make -j -l ${cores}
		make altinstall
		cd ..
		rm -rf Python-3.7.4
		rm Python-3.7.4.tar.xz

		if [[ -d ${FVENV} ]]; then
			rm -rf ${FVENV}
		fi
		echo -e "\e[33mCooling down!\e[0m"
		sleep 2s
	fi

	pythonPath=`which python3.7`

	echo -e "\e[33mInstalling Python 3.7 virtual environment\e[0m"
	pip3 install --upgrade pip
	pip3 install virtualenv

	sudo -u ${USER} bash <<EOF
		if [[ ! -d ${FVENV} ]]; then
			virtualenv -p ${pythonPath} ${FVENV}
			sleep 1s
			source ${FVENV}/bin/activate
			sleep 1s

			if [[ ${type} == 'sat' ]]; then
				pip3 install -r ${USERDIR}/ProjectAliceInstaller/requirements_sat.txt
			else
				pip3 install -r ${USERDIR}/ProjectAliceInstaller/requirements_main.txt
			fi
		fi

		if [[ ${installGoogleASR} == 'y' ]]; then
			pip3 install google-cloud-speech
		fi

EOF

	cd ${USERDIR}/ProjectAlice
	bash -c "source ${VENV}/bin/activate"
}

moveServiceFile() {
	if [[ -f /etc/systemd/system/ProjectAlice.service ]]; then
		rm /etc/systemd/system/ProjectAlice.service
	fi

	mv ${USERDIR}/ProjectAlice/ProjectAlice.service /etc/systemd/system

	sed -i -e 's/\#WORKINGDIR/WorkingDirectory='${escaped}'\/ProjectAlice/' /etc/systemd/system/ProjectAlice.service
	sed -i -e 's/\#EXECSTART/ExecStart='${escaped}'\/ProjectAlice\/venv\/bin\/python3.7 main.py/' /etc/systemd/system/ProjectAlice.service
	sed -i -e 's/\#USER/User='${USER}'/' /etc/systemd/system/ProjectAlice.service
}

installSnips() {
	type=$1
	case $(uname -m) in
	"x86_64")
		# this works for stretch and bionic, and according to the armhf code below also for buster.
		echo "deb https://debian.snips.ai/stretch stable main" > /etc/apt/sources.list.d/snips.list
		apt-key adv --keyserver gpg.mozilla.org --recv-keys F727C778CCB0A455
		;;
	"armhf")
		echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list
		sed -i -e 's/snips.ai\/buster/snips.ai\/stretch/' /etc/apt/sources.list.d/snips.list
		apt-key adv --keyserver gpg.mozilla.org --recv-keys D4F50CDCA10A2849
		;;
	esac
	apt-get update

	if [[ ${type} == 'main' ]]; then
		apt-get install -y --allow-unauthenticated snips-platform-voice snips-watch snips-makers-tts snips-hotword-model-heysnipsv4
		systemctl stop snips-*
		systemctl disable snips-asr
		systemctl disable snips-nlu
		systemctl disable snips-dialogue
		systemctl disable snips-injection
		systemctl disable snips-hotword
		systemctl disable snips-audio-server
		systemctl disable snips-makers-tts
	else
		apt-get install -y --allow-unauthenticated snips-hotword-model-heysnipsv4 snips-satellite
		systemctl stop snips-*
		systemctl disable snips-satellite
	fi
}

installSLC() {
	if [[ ${installSLC} == 'y' ]]; then
		sed -i -e 's/"useSLC": False/"useSLC": True/' ${USERDIR}/ProjectAlice/config.py

		cd ${USERDIR}
		wget https://gist.githubusercontent.com/Psychokiller1888/a9826f92c5a3c5d03f34d182fda1ce4c/raw/e24882e8997730dcf7a308e303b3b88001dbbfa1/slc_download.sh
		chmod +x slc_download.sh
		./slc_download.sh

		systemctl is-active -q snipsledcontrol && systemctl stop snipsledcontrol && systemctl disable snipsledcontrol
		systemctl start seeed-voicecard
		systemctl stop seeed-voicecard && systemctl disable seeed-voicecard
	fi
}

cd ${USERDIR}

echo

installPython="n"
installGoogleASR="n"
installMycroft="n"

read -p $'\e[33mIs this device going to be a (m)ain unit or a (s)atelitte? \e[0m' choice
case "$choice" in
	s|S)
		echo -e "\e[32mSatellite, ok, let me download the required files\e[0m"
		checkExistingInstallAndDL sat

		read -p $'\e[33mDo you have leds on this device? Like leds I could control? If so, I can install Snips Led Control for that! (y/n)? \e[0m' choice
		case "$choice" in
			y|Y)
				installSLC='y'
				echo -e "\e[32mOk, I will install SLC!\e[0m"
				;;
			*)
				installSLC='n'
				echo -e "\e[31mOk, no distraction!\e[0m"
				;;
		esac

		apt-get install -y mosquitto mosquitto-clients dirmngr build-essential python-dev swig libasound2-plugin-equal

		checkAndInstallPython sat

		sed -i -e "\$aenable_uart=1" /boot/config.txt

		moveServiceFile
		installSnips sat
		installSLC
		;;
	*)
		echo -e "\e[32mMain unit, ok, let me download the required files\e[0m"
		checkExistingInstallAndDL main
		echo
		echo -e "\e[33mOk, so this device is going to be my main unit, my home\e[0m"
		read -e -p $'\e[33mIn what room are you going to place my main unit? \e[0m' -i 'default' siteId
		siteId=${siteId/_/ /.}

		echo
		echo -e "\e[33mI need your Snips console credentials in order to manage the assistant package\e[0m"
		read -e -p $'\e[33memail: \e[0m' snipsLogin
		read -e -p $'\e[33mpassword: \e[0m' -s snipsPassword
		echo
		read -e -p $'\e[33mYour console username: \e[0m' snipsUsername
		echo
		echo -e "\e[33mThank you for this, now, let's continue to the real stuff\e[0m"
		echo
		echo -e "\e[33mOh, wait, what language do you want me to use once installed?\e[0m"
		select snipsLang in "en" "fr"
		do
			case "$snipsLang" in
				en|fr)
					echo -e "\e[33mOk, setting to boot in $snipsLang\e[0m"; break;;
				*)
					echo -e "\e[31mInvalid choice\e[0m";
			esac
		done

		echo
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
						read -p $'\e[33mI need you to give me your Google Console API key for Google Wavenet \e[0m' googleWavenetAPIKey
						;;
					a|A|b|B)
						ttsService="amazon"
						if [[ "$choice" == "b" || "$choice" == "B" ]]; then
							ttsService="both"
							read -p $'\e[33mI need you to give me your Google Console API key for Google Wavenet \e[0m' googleWavenetAPIKey
						fi

						read -p $'\e[33mI need your AWS access key to configure Amazon Polly: \e[0m' awsAccessKey
						read -p $'\e[33mAnd your AWS secret key... Please? \e[0m' awsSecretKey
						echo -e "\e[33mI need you to select the correct AWS API Gateway\e[0m"
						select region in "East USA (Ohio)" "East USA (North Virginia)" "West USA (North California)" "West USA (Oregon)" "Asia Pacific (Hong Kong)" "Asia Pacific (Mumbai)" "Asia Pacific (Seoul)" "Asia Pacific (Singapour)" "Asia Pacific (Sydney)" "Asia Pacific (Tokyo)" "Canada (center)" "China (Beijing)" "China (Ningxia)" "EU (Francfort)" "EU (Irlande)" "EU (London)" "EU (Paris)" "EU (Stockholm)" "South America (Sao Paulo)"
						do
							case "$region" in
								"East USA (Ohio)")
									awsAPIGateway="us-east-2"; break;;
								"East USA (North Virginia)")
									awsAPIGateway="us-east-1"; break;;
								"West USA (North California)")
									awsAPIGateway="us-west-1"; break;;
								"West USA (Oregon)")
									awsAPIGateway="us-west-2"; break;;
								"Asia Pacific (Hong Kong)")
									awsAPIGateway="ap-east-1"; break;;
								"Asia Pacific (Mumbai)")
									awsAPIGateway="ap-south-1"; break;;
								"Asia Pacific (Seoul)")
									awsAPIGateway="ap-northeast-2"; break;;
								"Asia Pacific (Singapour)")
									awsAPIGateway="ap-southeast-1"; break;;
								"Asia Pacific (Sydney)")
									awsAPIGateway="ap-southeast-2"; break;;
								"Asia Pacific (Tokyo)")
									awsAPIGateway="ap-northeast-1"; break;;
								"Canada (center)")
									awsAPIGateway="ca-central-1"; break;;
								"China (Beijing)")
									awsAPIGateway="cn-north-1"; break;;
								"China (Ningxia)")
									awsAPIGateway="cn-northwest-1"; break;;
								"EU (Francfort)")
									awsAPIGateway="eu-central-1"; break;;
								"EU (Irlande)")
									awsAPIGateway="eu-west-1"; break;;
								"EU (London)")
									awsAPIGateway="eu-west-2"; break;;
								"EU (Paris)")
									awsAPIGateway="eu-west-3"; break;;
								"EU (Stockholm)")
									awsAPIGateway="eu-north-1"; break;;
								"South America (Sao Paulo)")
									awsAPIGateway="sa-east-1"; break;;
								*) echo -e "\e[32mInvalid choice\e[0m";;
							esac
						done
						;;
					*)
						echo -e "\e[31mInvalid choice, defaulting to Amazon Polly\e[0m"
						ttsService="amazon"
						break;;
				esac
				;;
			*)
				echo -e "\e[32mOk, only offline TTS\e[0m"
				ttsService="pico"
				;;
		esac

		if [[ ${snipsLang} == 'en' ]]; then
			read -p $'\e[33mMycroft is a nice offline TTS if you want just offline TTS or when you are currently offline. I recommend installing it, the wait is worth the effort (y/n) ? \e[0m' choice
			case "$choice" in
				n|N)
					installMycroft="n"
					echo -e "\e[31mOk... PicoTTS it is then...\e[0m"
					;;
				*)
					installMycroft="y"
					echo -e "\e[32mOk, I will install what's needed\e[0m"
					if [[ "$ttsService" == "offline" ]]; then
						ttsService="mycroft"
					fi
					;;
			esac
		fi

		read -p $'\e[33mSamba is needed for some modules. Do you need to configure it? (y/n)? \e[0m' choice
		case "$choice" in
			y|Y)
				installSamba='y'
				echo -e "\e[32myes\e[0m"
				;;
			*)
				installSamba='n'
				echo -e "\e[32mno\e[0m"
				read -p $'\e[33mOk! But make sure to have /share created for Samba!\e[0m'
				;;
		esac

		read -p $'\e[33mDo you have leds on my main unit? Like leds I could control? If so, I can install Snips Led Control for that! (y/n)? \e[0m' choice
		case "$choice" in
			y|Y)
				installSLC='y'
				echo -e "\e[32mOk, I will also let SLC do the audio configuration, remember to say yes when it is asking if you want to install your audio device\e[0m"
				;;
			*)
				installSLC='n'
				echo -e "\e[31mOk, no led control...\e[0m"
				;;
		esac

		read -p $'\e[33mDo you want me to enable sound playback and record (y/n)? \e[0m' choice
		case "$choice" in
			n|N)
				enableAudio=0
				echo -e "\e[32mSound disabled\e[0m"
				;;
			*)
				enableAudio=1
				echo -e "\e[32mSound enabled\e[0m"

				if [[ "$installSLC" == "n" ]]; then
					echo
					read -p $'\e[33mDo you want me to install my audio device (y/n)? \e[0m' choice
					case "$choice" in
						y|Y)
							echo -e "\e[32mOk, let's do that!\e[0m"
							chmod +x ${USERDIR}/ProjectAliceInstaller/audioInstaller.sh
							${USERDIR}/ProjectAliceInstaller/audioInstaller.sh
							;;
						*)
							echo -e "\e[31mOk, i'll let that to you if needed\e[0m"
							;;
					esac
				fi

				echo
				read -p $'\e[33mPulseaudio can significantly improve the audio quality, do you want to install it (y/n)? \e[0m' choice
				case "$choice" in
					y|Y)
						installPulseAudio='y'
						echo -e "\e[32myes\e[0m"
						;;
					*)
						installPulseAudio='n'
						echo -e "\e[32mOk! No problem!\e[0m"
						;;
				esac
				;;
		esac

		apt-get install -y apt-transport-https zip unzip mpg123 dirmngr gcc make pkg-config automake libtool libicu-dev libpcre2-dev libasound2-dev portaudio19-dev python-pyaudio python3-pyaudio mosquitto mosquitto-clients libxml2-dev libxslt-dev flac chromium-driver libttspico-utils libav-tools

		checkAndInstallPython main
		moveServiceFile
		installSnips main

		if [[ "$installPulseAudio" == "y" ]]; then
			echo -e "\e[33mInstalling Pulseaudio\e[0m"
			apt-get install -y pulseaudio

			if [[ -f /etc/systemd/system/pulseaudio.service ]]; then
				rm /etc/systemd/system/pulseaudio.service
			fi

			cp ${USERDIR}/ProjectAliceInstaller/pulseaudio.sample /etc/systemd/system/pulseaudio.service
			systemctl --global disable pulseaudio.service pulseaudio.socket
			systemctl enable pulseaudio
			systemctl start pulseaudio
			usermod -G pulse-access -a ${USER}
			usermod -G pulse-access -a _snips

			sudo -u ${USER} pactl list short sinks
			read -p $'\e[33mPlease type the index number of your default audio output \e[0m' output
			sudo -u ${USER} pactl set-default-sink ${output}

			sudo -u ${USER} pactl list short sources
			read -p $'\e[33mPlease type the index number of your default audio input \e[0m' input
			sudo -u ${USER} pactl set-default-source ${input}

			sed -i -e 's/; default-fragments = 4/default-fragments = 5/' /etc/pulse/daemon.conf
			sed -i -e 's/; default-fragment-size-msec = 25/default-fragment-size-msec = 2/' /etc/pulse/daemon.conf
		fi

		sed -i -e 's/\# assistant = "\/usr\/share\/snips\/assistant"/assistant = "'${escaped}'\/ProjectAlice\/assistant"/' /etc/snips.toml

		if [[ ! -f "$USERDIR/ProjectAlice/config.py" ]]; then
			cp ${USERDIR}/ProjectAlice/configSample.py ${USERDIR}/ProjectAlice/config.py
		fi

		sed -i -e 's/"intentsOwner": ""/"intentsOwner": "'${snipsUsername}'"/' ${USERDIR}/ProjectAlice/config.py
		sed -i -e 's/"activeLanguage": "en"/"activeLanguage": "'${snipsLang}'"/' ${USERDIR}/ProjectAlice/config.py
		sed -i -e 's/"snipsConsoleLogin": ""/"snipsConsoleLogin": "'${snipsLogin}'"/' ${USERDIR}/ProjectAlice/config.py

    if [[ ${ttsService} == 'both' ]]; then
		  sed -i -e 's/"tts": "pico"/"tts": "amazon"/' ${USERDIR}/ProjectAlice/config.py
		else
		  sed -i -e 's/"tts": "pico"/"tts": "'${ttsService}'"/' ${USERDIR}/ProjectAlice/config.py
		fi

		snipsPasswordEsc=$(sed 's/[\*\.&]/\\&/g' <<< ${snipsPassword})
		sed -i -e 's/"snipsConsolePassword": ""/"snipsConsolePassword": "'${snipsPasswordEsc}'"/' ${USERDIR}/ProjectAlice/config.py

		if [[ "$ttsService" == "pico" ]]; then
			sed -i -e 's/"keepTTSOffline": False/"keepTTSOffline": True/' ${USERDIR}/ProjectAlice/config.py
		fi

		if [[ "$installGoogleASR" == "n" ]]; then
			sed -i -e 's/"keepASROffline": False/"keepASROffline": True/' ${USERDIR}/ProjectAlice/config.py
		else
			sed -i -e 's/"asr": "snips"/"asr": "google"/' ${USERDIR}/ProjectAlice/config.py
		fi

		sed -i -e 's/\# retry_count = 3/retry_count = 0/' /etc/snips.toml

		sed -i -e 's/\# bind = "default@mqtt"/bind = "'${siteId}'@mqtt"/' /etc/snips.toml

		if [[ "$enableAudio" -eq 0 ]]; then
			sed -i -e 's/\# disable_playback = false/disable_playback = true/' /etc/snips.toml
			sed -i -e 's/\# disable_capture = false/disable_capture = true/' /etc/snips.toml
		fi

		grep -qF 'dtparam=i2c_arm=on' '/boot/config.txt' || echo 'dtparam=i2c_arm=on' | tee --append '/boot/config.txt'
		grep -qF 'i2c-dev' '/etc/modules' || echo 'i2c-dev' | tee --append '/etc/modules'
		grep -qF 'dtparam=spi=on' '/boot/config.txt' || echo 'dtparam=spi=on' | tee --append '/boot/config.txt'

		echo -e "\e[33mCatching breath...\e[0m"
		sleep 2s

		mkdir -p ${USERDIR}/ProjectAlice/cache
		mkdir -p -m 1777 /share

		chown -R ${USER} ${USERDIR}/ProjectAlice
		chown -R _snips ${USERDIR}/ProjectAlice/var/cache
		chmod 775 ${USERDIR}/ProjectAlice/var/cache

		rm -rf ${USERDIR}/ProjectAlice/assistant/
		mkdir -p ${USERDIR}/ProjectAlice/trained/assistants/assistant_${snipsLang}/custom_dialogue/sound
		ln -sfn ${USERDIR}/ProjectAlice/trained/assistants/assistant_${snipsLang} ${USERDIR}/ProjectAlice/assistant
		ln -sfn ${USERDIR}/ProjectAlice/system/sounds/${snipsLang}/start_of_input.wav ${USERDIR}/ProjectAlice/assistant/custom_dialogue/sound/start_of_input.wav
		ln -sfn ${USERDIR}/ProjectAlice/system/sounds/${snipsLang}/end_of_input.wav ${USERDIR}/ProjectAlice/assistant/custom_dialogue/sound/end_of_input.wav
		ln -sfn ${USERDIR}/ProjectAlice/system/sounds/${snipsLang}/error.wav ${USERDIR}/ProjectAlice/assistant/custom_dialogue/sound/error.wav

		chmod 755 ${USERDIR}/ProjectAlice/system/scripts/langSwitch.sh
		chmod 755 ${USERDIR}/ProjectAlice/system/scripts/switchTTSOnlineState.sh

		if [[ "$installSamba" == "y" ]]; then
			apt-get install -y samba
			apt-get install -y samba-common-bin

			rm -f /etc/samba/smb.conf
			cp ${USERDIR}/ProjectAliceInstaller/samba.sample /etc/samba/smb.conf

			rc=1
			while [[ ${rc} != 0 ]]; do
				smbpasswd -a ${USER}
				rc=$?
			done

			/etc/init.d/samba restart
		fi

		installSLC

		if [[ "$ttsService" == "amazon" || "$ttsService" == "both" ]]; then
      pip3 install boto3

			sed -i -e 's/"awsRegion": "eu-central-1"/"awsRegion": "'${awsAPIGateway}'"/' ${USERDIR}/ProjectAlice/config.py
			sed -i -e 's/"awsAccessKey": ""/"awsAccessKey": "'${awsAccessKey}'"/' ${USERDIR}/ProjectAlice/config.py
			sed -i -e 's/"awsSecretKey": ""/"awsSecretKey": "'${awsSecretKey}'"/' ${USERDIR}/ProjectAlice/config.py

			#cd ${USERDIR}
			#curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
			#unzip awscli-bundle.zip
			#./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
			#rm awscli-bundle.zip
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

			pip3 install --upgrade google-cloud-texttospeech
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
		;;
esac

systemctl daemon-reload

systemctl is-active -q mosquitto && systemctl stop mosquitto
sed -i -e 's/persistence true/persistence false/' /etc/mosquitto/mosquitto.conf
rm /var/lib/mosquitto/mosquitto.db

systemctl enable ProjectAlice

clear

echo -e "\e[100;33m=====================================================\e[0m"
echo -e "\e[100;33m               Project Alice installed               \e[0m"
echo -e "\e[100;33m                  Please reboot now                  \e[0m"
echo -e "\e[100;33m (or suffer the consequences of a non working Alice) \e[0m"
echo -e "\e[100;33m=====================================================\e[0m"

