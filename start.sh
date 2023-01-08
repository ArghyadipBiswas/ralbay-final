./aria.sh; dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n | tail -n 1000; python3 -m bot
