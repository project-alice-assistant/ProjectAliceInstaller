#!/bin/bash

USER=$(logname)
USERDIR='/home/'${USER}

echo
echo -e "\e[33mWhat's the audio hardware I need to install?\e[0m"
select device in "respeaker2" "respeaker4" "googleAIY" "matrixvoice" "matrixcreator" "usbMic" "cancel"; do
    case ${device} in
        cancel) exit;;
        matrixvoice|matrixcreator)
            echo -e "\e[31mNot yet implemented!\e[0m"
            exit
            ;;
        respeaker2|respeaker4)
            cd ${USERDIR}
            rm -rf seeed-voicecard
            git clone https://github.com/respeaker/seeed-voicecard.git
            cd seeed-voicecard
            chmod +x ./install.sh
            ./install.sh
            cd ${USERDIR}
            rm -rf seeed-voicecard
			break
            ;;
        googleAIY)
            apt-get install -y sox
            grep -qF 'dtoverlay=googlevoicehat-soundcard' '/boot/config.txt' echo 'dtoverlay=googlevoicehat-soundcard' | tee --append '/boot/config.txt'
            grep -qF 'dtoverlay=pi3-disable-bt-overlay' '/boot/config.txt'  echo 'dtoverlay=pi3-disable-bt-overlay' | tee --append '/boot/config.txt'
			sed -i -e 's/\dtparam=audio=on = #dtparam=audio=on/' /boot/config.txt
            rm -f /etc/asound.conf
            cp ${USERDIR}/ProjectAliceInstaller/asounds/aiy.conf /etc/asound.conf
			break
            ;;
        usbMic)
            rm -f /etc/asound.conf
            cp ${USERDIR}/ProjectAliceInstaller/asounds/usb.conf /etc/asound.conf
			break
            ;;
        *) exit;;
    esac
done

echo -e "\e[33mAudio install is made\e[0m"
sleep 2s

