#!/usr/bin/env bash
# Download ip address lists for countries we want to block

wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O /etc/geoblock.china
wget http://www.ipdeny.com/ipblocks/data/countries/ru.zone -O /etc/geoblock.russia
wget http://www.ipdeny.com/ipblocks/data/countries/ir.zone -O /etc/geoblock.iran
wget http://www.ipdeny.com/ipblocks/data/countries/il.zone -O /etc/geoblock.israel

echo 'table <china> persist file "/etc/geoblock.china"
table <russia> persist file "/etc/geoblock.russia"
table <iran> persist file "/etc/geoblock.iran"
table <israel> persist file "/etc/geoblock.israel"

# block anything going out to suspect countries
block return out quick log on outside from any to {<china>, <russia>, <iran>, <israel>}' > /etc/geoblock.conf
