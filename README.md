# Covid19DUS
Zusammenfassung der COVID-19-Zahlen in Düsseldorf

Quellen:
- Twitter-Account @duesseldorf
- Landeshauptstadt Düsseldorf – opendata.duesseldorf.de

Ich fasse hier die von der Stadt Düsseldorf unter dem Twitter-Account @duesseldorf verteilten Zahlen zu COVID-19 in einer übersichtlichen Grafik zusammen.
Erfasst wurden alle Meldungen seit dem 24.03.2020. Seit dem 03.11.2020 werden auch Daten vom OpenDataDüsseldorf genutzt. 
Einzelne fehlende oder fehlerhafte Datensätze können dabei interpoliert werden.  

Die Aktualisierung nehme ich unregelmäßig vor, meistens täglich.

Die aktuelle Grafik:

![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/master/Covid19DUS_n.png)

Veränderungen:
- Die vertikale Achse wurde auf den Bereich (-50, 600) erweitert. (14.08.2020)
- Die vertikale Achse wurde auf den Bereich (-100, 500) geändert. (09.08.2020)

  Für die Darstellung der Quarantänezahlen wurde eine separate Grafik erzeugt:  
![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/master/Covid19DUS_Q.png)
- In der Standard Grafik wird ab heute die Inzidenz statt der Quarantäne-Anzahl angezeigt (rechte Skala) (12.10.2020)
- Zur Vereinfachung und auf besonderen Wunsch von @AnalysenD gibt es eine Grafik ohne die Anzahl der Todesfälle und Genesenen (19.10.2020)
![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/master/Covid19DUS_D.png)
- Die Skalierung wurde angepasst (21.10.2020)
- Die bisherigen Grafiken werden nicht mehr automatisch generiert. Sie bleiben vorerst im Excel-Sheet erhalten. (04.11.2020)
- Die neue Grafik verzichtet auf die Darstellung der aktiven Fälle, zeigt dafür die täglichen Neu-Infektionen (bzw. bestätigte Fälle) und die Inzidenz an. Dadurch können alle Werte mit der gleichen Skala angezeigt werden. Speziell für Düsseldorf gilt, dass die Inzidenz nahe am gleitenden 7-Tage-Durchschnitt liegt (Faktor 7/6.45923).
