#!/bin/bash

###### INFO #######
#
# More info : https://github.com/FoRTu/OpenTracker-Munin
#
##################


############## CONFIGURATION // CONFIGURACION #############
#
#  The URL of OpenTracker statistics // URL de las estadisticas de OpenTracker:
#
TRACKER_STATS_URL="http://my.tracker.com/info_stats"
#
#
######## End of Configuration // Fin de configuracion #########

PEERS=`lynx --dump $TRACKER_STATS_URL | awk 'NR == 1'`
SEEDERS=`lynx --dump $TRACKER_STATS_URL | awk 'NR == 2'`
TORRENTS=`lynx --dump $TRACKER_STATS_URL | awk 'NR == 3' | awk '{print $3}'`

let LEECHERS=$PEERS-$SEEDERS


case $1 in
   config)

# Chart settings // Configuracion del grafico


echo raph_title Open Tracker Stats
echo graph_title Open Tracker Tracker
echo graph_args --base 1000 -l 0
echo graph_vlabel Open Bittorrent Tracker Stats
echo graph_category network
echo graph_info Open Bittorrent Tracker Stats.
echo Peers.label Peers
echo Peers.info Seeders + Leechers. Conected all clients.
echo Seeders.label Seeders
echo Seeders.info A computer that has a complete copy of the torrent.
echo Leechers.label Leecher
echo Leechers.info "A computer that doesn't have the complete file".
echo Torrents.label Torrents
echo Torrents.info Number of Torrents tracking.


        exit 0;;
esac


# Write data // Escribit datos

echo "Peers.value $PEERS"
echo "Seeders.value $SEEDERS"
echo "Leechers.value $LEECHERS"
echo "Torrents.value $TORRENTS"

