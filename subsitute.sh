#!/bin/bash

for infile in examples/*.in; do
    sed -e 's,@CHRONYC@,/usr/bin/chronyc,g' \
        -e 's,@CHRONY_DEFAULT_SERVER_OPTIONS@,iburst,g' \
        -e 's,@CHRONY_SERVER_DIR@,/var/run/chrony-dhcp,g' \
        < $infile > ${infile%.in}
done
