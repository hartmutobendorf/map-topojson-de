yarn -s run shp2json ./vg2500_geo84/vg2500_bld.shp -o de-states.json --crs-name states
yarn -s run shp2json ./vg2500_geo84/vg2500_krs.shp -o de-counties.json --crs-name counties
yarn -s run shp2json ./vg2500_geo84/vg2500_sta.shp -o de-country.json --crs-name country
yarn -s run shp2json ./vg2500_geo84/vg2500_rbz.shp -o de-regions.json --crs-name regions
yarn -s run ndjson-cat ./de-states.json > de.json
yarn -s run geoproject 'd3.geoConicConformal().parallels([48.6666,53.6666]).rotate([0,-51]).fitSize([960,960], d)' < de.json > de-WGS1984.json
yarn -s run geo2svg -w 960 -h 960 < de-WGS1984.json > de.svg
