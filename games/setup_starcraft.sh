#!/bin/bash
set -e
GAME_SRC=http://10.200.11.2/games/starcraft/starcraft.tar.gz
GAME_DST=/home/test/.wine/drive_c/Games/starcraft
LINK_SRC=http://10.200.11.2/games/starcraft/starcraft.desktop
LINK_DST=/home/test/Desktop/Games/Starcraft.desktop

mkdir -p ${GAME_DST}
wget ${GAME_SRC} -O ${GAME_DST}/$(basename ${GAME_SRC})
cd ${GAME_DST}
tar xvf $(basename ${GAME_SRC})
cd  -
rm -f ${GAME_DST}/$(basename ${GAME_SRC})
cd ${GAME_DST}/$(basename ${GAME_DST})
#wine RegSetup.exeStep.exe
chown test:test ${GAME_DST} -R


mkdir -p /home/test/Desktop/Games/
wget ${LINK_SRC} -O ${LINK_DST}
chmod +x ${LINK_DST}
chown test:test ${LINK_DST}
