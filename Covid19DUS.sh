#!/bin/bash

 curl "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query?where=Landkreis%20%3D%20%27SK%20DÜSSELDORF%27&outFields=Altersgruppe,Geschlecht,AnzahlFall,AnzahlTodesfall,ObjectId,Meldedatum,Datenstand,NeuerFall,NeuerTodesfall,Refdatum,NeuGenesen,AnzahlGenesen,IstErkrankungsbeginn&returnGeometry=false&orderByFields=Meldedatum%20DESC&outSR=4326&f=json" >rki.json


jq -r '[.features[].attributes] | .[].Meldedatum |= (. / 1000 | strftime("%Y-%m-%d"))|.[].Refdatum |= (. / 1000 | strftime("%Y-%m-%d")) | .[].Datenstand |= (. | strptime("%d.%m.%Y, %H:%M Uhr") | mktime | strftime("%Y-%m-%d")) | (map(keys) | add | unique) as $cols | map(. as $row | $cols | map($row[.])) as $rows | $cols, $rows[] | @tsv' <rki.json >rki.tsv
