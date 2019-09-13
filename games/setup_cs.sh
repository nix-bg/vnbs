#!/bin/bash
#!/bin/bash
set -e

mkdir -p /home/test/.wine/drive_c/Games/cs
wget http://10.200.11.2:"/games/cs/Counter-Strike WaRzOnE.tar.gz" -O "/home/test/.wine/drive_c/Games/cs/Counter-Strike WaRzOnE.tar.gz"
cd /home/test/.wine/drive_c/Games/
tar xvf "Counter-Strike WaRzOnE.tar.gz"
cd  -
rm -f "/home/test/.wine/drive_c/Games/cs/Counter-Strike WaRzOnE.tar.gz"
chown test:test /home/test/.wine/drive_c/Games/cs/ -R


wget http://10.200.11.2:"/games/cs/Counter-Strike WaRzOnE.desktop" -O "/home/test/Desktop/Games/Counter-Strike WaRzOnE.desktop"
mkdir -p /home/test/Desktop/Games/
chmod +x "/home/test/Desktop/Games/Counter-Strike WaRzOnE.desktop"
chown test:test /home/test/Desktop/Games/* -R
