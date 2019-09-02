#!/bin/bash
#Red'n'Black Tree corp. 2019 IZOBRETATEL777 (izobretatel777@mail.ru)
[ "$(whoami)" != "root" ] && exec sudo -- "$0"

echo "#!/bin/bash

if [[ \$# -ge 1 ]]; then
	pkexec env DISPLAY=\$DISPLAY XAUTHORITY=\$XAUTHORITY \$@
else
	echo "besudo: error: bad number of arguments."
fi" >> /usr/local/bin/besudo

chmod +x /usr/local/bin/besudo
