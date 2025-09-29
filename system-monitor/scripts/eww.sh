#!/bin/bash
if [ $1 == '--mhz' ]; then
    FREQS=$(grep "cpu MHz" /proc/cpuinfo | awk '{print $4}' | sed 's/\..*//'| sort -h)
    echo "$(echo $FREQS | sed 's/.* //') $(echo $FREQS | sed -e 's/ /\+/g' -e 's,\(.*\),(\1)/16,' | bc)"
fi
