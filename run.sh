yarn -s run shp2json ./vg2500_geo84/vg2500_bld.shp -o de.json
yarn -s run geoproject 'd3.geoConicConformal().parallels([48.6666,53.6666]).rotate([0,-51]).fitSize([960,960], d)' < de.json > de-WGS1984.json
yarn -s run geo2svg -w 960 -h 960 < de-WGS1984.json > de.svg
