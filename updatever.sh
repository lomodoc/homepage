#!/bin/bash
set -e

usage="
$(basename $0) -p [osx|win|raspbian|armbian] [options...]

    -h show this help text
    -p platform, osx, win, raspbian, armbian
    -i lomoagent installation package download url
    -I OS image url
"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

INSTALLATION_WIN_EN_PATH="$DIR/content/docs/Installation/lomorage-service/installation-win.md"
INSTALLATION_WIN_ZH_PATH="$DIR/content.zh/docs/Installation/lomorage-service/installation-win.md"

INSTALLATION_OSX_EN_PATH="$DIR/content/docs/Installation/lomorage-service/installation-osx.md"
INSTALLATION_OSX_ZH_PATH="$DIR/content.zh/docs/Installation/lomorage-service/installation-osx.md"

INSTALLATION_RASPBIAN_EN_PATH="$DIR/content/docs/Installation/lomorage-service/installation-raspbian.md"
INSTALLATION_RASPBIAN_ZH_PATH="$DIR/content.zh/docs/Installation/lomorage-service/installation-raspbian.md"

INSTALLATION_ARMBIAN_EN_PATH="$DIR/content/docs/Installation/lomorage-service/installation-armbian.md"
INSTALLATION_ARMBIAN_ZH_PATH="$DIR/content.zh/docs/Installation/lomorage-service/installation-armbian.md"

PLATFORM=
AGENT_PKG_URL=
OS_IMAGE_URL=

SED_INPLACE_OPTION=()
SED="sed"
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_INPLACE_OPTION=("")
    if ! command -v gsed &> /dev/null
    then
        echo "please install gnu-sed, `brew install gnu-sed`"
        exit
    fi
    SED="gsed"
fi

OPTIONS=hp:i:I:
PARSED=$(getopt $OPTIONS $*)
if [ $? -ne 0 ]; then
    echo "$usage"
    exit 2
fi

eval set -- "$PARSED"
while true; do
    case "$1" in
        -h)
            echo "$usage"
            exit
            ;;
        -p)
            PLATFORM=$2
            if [ "$PLATFORM" != "osx" ] && [ "$PLATFORM" != "win" ] && [ "$PLATFORM" != "raspbian" ] && [ "$PLATFORM" != "armbian" ]; then
                echo "platform should be either \"osx\" or \"win\" or \"raspbian\" or \"armbian\""
                exit
            else
                echo "replace for platform: $PLATFORM"
                shift 2
            fi
            ;;
        -i)
            AGENT_PKG_URL=$2
            echo "lomoagent installation package url: $AGENT_PKG_URL"
            shift 2
            ;;
        -I)
            OS_IMAGE_URL=$2
            echo "OS image url: $OS_IMAGE_URL"
            shift 2
            ;;
        --)
            if [ -z "${PLATFORM}" ]; then
                echo "platform required!"
                echo "$usage"
            fi
            shift
            break
            ;;
        *)
            echo "option not found!"
            echo "$usage"
            exit 3
            ;;
    esac
done

update_page_win() {
    if [ ! -z "$AGENT_PKG_URL" ]; then
        echo -e "\n=====> update windows msi package on installation page"
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/LomoAgentWin/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/lomoagent\.msi#$AGENT_PKG_URL#g" $INSTALLATION_WIN_EN_PATH
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/LomoAgentWin/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/lomoagent\.msi#$AGENT_PKG_URL#g" $INSTALLATION_WIN_ZH_PATH
        grep -H "https://github.com/lomorage/LomoAgentWin/releases/download/" $INSTALLATION_WIN_EN_PATH
        grep -H "https://github.com/lomorage/LomoAgentWin/releases/download/" $INSTALLATION_WIN_ZH_PATH
        echo -e "=====> Done!"
    fi
}

update_page_osx() {
    if [ ! -z "$AGENT_PKG_URL" ]; then
        echo -e "\n=====> updated osx dmg package on installation page"
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/LomoAgentOSX/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/LomoAgent\.dmg#$AGENT_PKG_URL#g" $INSTALLATION_OSX_EN_PATH
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/LomoAgentOSX/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/LomoAgent\.dmg#$AGENT_PKG_URL#g" $INSTALLATION_OSX_ZH_PATH
        grep -H "https://github.com/lomorage/LomoAgentOSX/releases/download/" $INSTALLATION_OSX_EN_PATH
        grep -H "https://github.com/lomorage/LomoAgentOSX/releases/download/" $INSTALLATION_OSX_ZH_PATH
        echo -e "=====> Done!"
    fi
}

update_page_raspbian() {
    if [ ! -z "$OS_IMAGE_URL" ]; then
        echo -e "\n=====> updated Raspberry Pi image on installation page"
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/pi-gen/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/image_[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}-lomorage-lite\.zip#$OS_IMAGE_URL#g" $INSTALLATION_RASPBIAN_EN_PATH
        sed -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/pi-gen/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/image_[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}-lomorage-lite\.zip#$OS_IMAGE_URL#g" $INSTALLATION_RASPBIAN_ZH_PATH
        grep -H "https://github.com/lomorage/pi-gen/releases/download/" $INSTALLATION_RASPBIAN_EN_PATH
        grep -H "https://github.com/lomorage/pi-gen/releases/download/" $INSTALLATION_RASPBIAN_ZH_PATH
        echo -e "=====> Done!"
    fi
}

update_page_armbian() {
    if [ ! -z "$OS_IMAGE_URL" ]; then
        echo -e "\n=====> updated Armbian image on installation page"
        $SED -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/build/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/Armbian_[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}\-trunk_Orangepizero_buster_current_[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}_minimal\.img\.xz#$OS_IMAGE_URL#g" $INSTALLATION_ARMBIAN_EN_PATH
        $SED -i $SED_INPLACE_OPTION -E "s#https://github.com/lomorage/build/releases/download/[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}\.[[:digit:]]{2}_[[:digit:]]{2}_[[:digit:]]{2}\.0\.[a-zA-Z0-9]{7}\/Armbian_[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}\-trunk_Orangepizero_buster_current_[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}_minimal\.img\.xz#$OS_IMAGE_URL#g" $INSTALLATION_ARMBIAN_ZH_PATH
        grep -H "https://github.com/lomorage/build/releases/download/" $INSTALLATION_ARMBIAN_EN_PATH
        grep -H "https://github.com/lomorage/build/releases/download/" $INSTALLATION_ARMBIAN_ZH_PATH
        echo -e "=====> Done!"
    fi
}

if [ "$PLATFORM" == "osx" ]; then
    update_page_osx
elif [ "$PLATFORM" == "win" ]; then
    update_page_win
elif [ "$PLATFORM" == "raspbian" ]; then
    update_page_raspbian
elif [ "$PLATFORM" == "armbian" ]; then
    update_page_armbian
else
    echo "platform $PLATFORM not support!"
fi


