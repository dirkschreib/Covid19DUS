# Covid19DUS

Zusammenfassung der COVID-19-Zahlen in Düsseldorf

Quellen:
- Twitter-Account @duesseldorf
- Landeshauptstadt Düsseldorf – opendata.duesseldorf.de
- Neu (ab 07.02.2021): Robert Koch-Institut (RKI), dl-de/by-2-0

Ich fasse hier die von der Stadt Düsseldorf unter dem Twitter-Account @duesseldorf verteilten Zahlen zu COVID-19 in einer übersichtlichen Grafik zusammen.
Erfasst wurden alle Meldungen seit dem 24.03.2020. Seit dem 03.11.2020 werden auch Daten vom OpenDataDüsseldorf genutzt. 
Einzelne fehlende oder fehlerhafte Datensätze können dabei interpoliert werden.  

Die Aktualisierung nehme ich unregelmäßig vor, meistens täglich.

Aktualisierung vom 07.02.2021:
Die Stadt Düsseldorf hat am 03.02.2021 angekündigt:
"Die LH Düsseldorf veröffentlicht ab jetzt automatisiert die Zahlen vom Dashboard des RKI sowie des Landeszentrum Gesundheit NRW und weiterhin eigens eingepflegte Daten auf dem Corona-Portal unter corona.duesseldorf.de/zahlen-fakten."

Open Data Düsseldorf hat am 05.02.2021 angekündigt: "Zur Vereinheitlichung der Coronazahlen der Stadt Düsseldorf, wird auch das Opendata Team zukünftig aud die Zahlen des RKI zurückgreifen. Es werden bis zur erfolgreichen Umstellung daher keine weiteren Coronazahlen auf unserem Portal veröffentlicht."

D.h. für mich, dass ich solange nicht auf meine bisherige Datenquellen setzen kann, sonder auch auf die Daten des RKI angewiesen bin.

Wie bin ich mit dem Datenübergang umgegangen?
- Für die Einwohnerzahl wurde auf die Zahl des RKI (und damit destatis) umgestellt. Jetzt wird mit 621.877 Einwohnern gerechnet. Vorher mit 645.923 nach den Zahlen der Stadt Düsseldorf. Dies wirkt sich auf die Inzidenz-Berechnung auf den gesamten Zeitraum aus.
- Die Zahlen für die Gesamtfälle wurden rückwirkend zum 20.01.2021 auf die RKI-Zahlen umgestellt. D.h die Inzidenzwerte bis zum 19.01.2021 basieren auf den Daten der Stadt Düsseldorf, ab dem 27.01.2021 entsprechen sie den Zahlen des RKI.
- Die Daten für die Krankenhausbelegung (intensiv, nicht-intensiv) und die Quarantäne-Zahlen übernehme ich aus den Datan von Open Data Düsseldorf.

Die aktuelle Grafik:

![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/main/Covid19DUS_n.png)

Technische Anmerkungen:

Die aktuellen Daten des RKI werden mit folgenden Befehlen geladen und konvertiert:
```bash
curl "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query?where=Landkreis%20%3D%20%27SK%20DÜSSELDORF%27&outFields=Altersgruppe,Geschlecht,AnzahlFall,AnzahlTodesfall,ObjectId,Meldedatum,Datenstand,NeuerFall,NeuerTodesfall,Refdatum,NeuGenesen,AnzahlGenesen,IstErkrankungsbeginn&returnGeometry=false&orderByFields=Meldedatum%20DESC&outSR=4326&f=json" >rki.json

jq -r '[.features[].attributes] | .[].Meldedatum |= (. / 1000 | strftime("%Y-%m-%d"))|.[].Refdatum |= (. / 1000 | strftime("%Y-%m-%d")) | .[].Datenstand |= (. | strptime("%d.%m.%Y, %H:%M Uhr") | mktime | strftime("%Y-%m-%d")) | (map(keys) | add | unique) as $cols | map(. as $row | $cols | map($row[.])) as $rows | $cols, $rows[] | @tsv' <rki.json >rki.tsv
```

Veränderungen:
- 07.02.2021: Notwendige komplette Umstellung der Datenbeschaffung. Dies wird sich wahrscheinlich wieder ändern, sobald das Opendata Team für Düsseldorf Zahlen veröffentlicht
- 04.11.2020: Die bisherigen Grafiken werden nicht mehr automatisch generiert. Sie bleiben vorerst im Excel-Sheet erhalten.
- 04.11.2020: Die neue Grafik verzichtet auf die Darstellung der aktiven Fälle, zeigt dafür die täglichen Neu-Infektionen (bzw. bestätigte Fälle) und die Inzidenz an. Dadurch können alle Werte mit der gleichen Skala angezeigt werden. Speziell für Düsseldorf gilt, dass die Inzidenz nahe am gleitenden 7-Tage-Durchschnitt liegt (Faktor 7/6.45923).
- 21.10.2020: Die Skalierung wurde angepasst
- 19.10.2020: Zur Vereinfachung und auf besonderen Wunsch von @AnalysenD gibt es eine Grafik ohne die Anzahl der Todesfälle und Genesenen
![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/main/Covid19DUS_D.png)
- 12.10.2020: Für die Darstellung der Quarantänezahlen wurde eine separate Grafik erzeugt:  
![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/main/Covid19DUS_Q.png)
- 12.10.2020: In der Standard Grafik wird ab heute die Inzidenz statt der Quarantäne-Anzahl angezeigt (rechte Skala)
- Die vertikale Achse wurde auf den Bereich (-50, 600) erweitert. (14.08.2020)
- Die vertikale Achse wurde auf den Bereich (-100, 500) geändert. (09.08.2020)
