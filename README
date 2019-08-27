# Block outgoing connections with OpenBSD pf to contries with less than stellar cybersecurity track records
The current countries which are blocked are:
- China
- Russia
- Iran
- Israel

## Installation:
Run the update_geoblocks.sh script to get the latest geoip lists for countries we want to block
```
./update_geoblocks.sh
```

In your pf.conf file include the geoblock configuration:
```
include "/etc/geoblock.conf"
```

Check that your pf.conf is syntactically correct:
```
pfctl -nvf /etc/pf.conf
```

Update pf rules:
```
pfctl -f /etc/pf.conf
```

Optionally create a entry in /etc/crontab to run the update_geoblock.sh script every day
```
# 'source' is a bash command. you can use the equivalent command in your preferred shell
SHELL=/usr/local/bin/bash

# update geolocation block lists
@daily	source /path/to/update_geoblocks.sh
```

## GeoIP source data
GeoIP source data is fetched from ipdeny.com.
ipdeny copywrite: http://www.ipdeny.com/ipblocks/data/countries/Copyrights.txt
ipdeny usage limits: http://www.ipdeny.com/usagelimits.php
