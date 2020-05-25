#!/bin/bash

for infile in examples/*.in; do
    sed -e 's,@CHRONYC@,/usr/bin/chronyc,g' \
        -e 's,@CHRONY_CONF@,/etc/chrony.conf,g' \
        -e 's,@CHRONY_SERVICE@,chronyd.service,g' \
        -e 's,@CHRONY_HELPER_DIR@,/var/run/chrony-helper,g' \
        -e 's,@CHRONY_SERVER_DIR@,/var/lib/chrony/servers,g' < \
        $infile > \
        ${infile%.in}
done

