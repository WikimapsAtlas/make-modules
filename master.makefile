#---- RUN
# make -f master.makefile NAME=India WEST=67.0 NORTH=37.5  EAST=99.0 SOUTH=05.0 PLACES=15 SLICE=6
# NAME uses ISO-A2 2 letter alphabet codes to identify countries

#---- DEFAULT VALUES (customizable):
# Geo data
export NAME=India
export ISO2=IN
#export escaped_A = $(subst $e ,_,$(NAME))
export WEST=67.0
export NORTH=37.5
export EAST=99.0
export SOUTH=05.0
export WIDTH=1980
# Pseudo-Mercator|GoogleMaps|OSM=EPSG:3857 (m)
# World Mercator=EPSG:3395  (m)
# WGS84-WGS84=EPSG:4326 (⁰)
export PROJECTION=EPSG:4326 
export PLACES=15
export SLICE=6
# script data
export VERSION=0.8

#---- MAKE SCRIPT
run:
#	node ./node_modules/.bin/forever ./node_modules/.bin/http-server
#vector relief | works
	$(MAKE) -C 01_topography		-f topography.makefile
#raster relief | works
#	$(MAKE) -C 02_reliefs 			-f shadedrelief.makefile
#admin | works
 #	$(MAKE) -C 03_administrative 	-f administrative.makefile
#water | works
 #	$(MAKE) -C 04_water 			-f water.makefile
#files grouping | todo
#	$(MAKE) -C 07_move 				-f merge.makefile
#svg creation | works
 #	$(MAKE) -C 09_d3 				-f d3.makefile

###########################################################
# TO DO
# script: if projection X, then ogrproject=<code>, d3projection=<code>
# 
##########################################################