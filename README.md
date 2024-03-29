# Covid19DUS

Zusammenfassung der COVID-19-Zahlen in Düsseldorf

Die aktuelle Grafik:

![Aktuelle COVID-19-Zahlen für Düsseldorf](https://github.com/dirkschreib/Covid19DUS/blob/main/Covid19DUS_n.png)

Quellen:
- Twitter-Account @duesseldorf
- Landeshauptstadt Düsseldorf – opendata.duesseldorf.de
- ab 07.02.2021: Robert Koch-Institut (RKI), dl-de/by-2-0, ab 21.03.2021 rückwirkend wieder entfernt
- ab 01.05.2021: Robert Koch-Institut (RKI), dl-de/by-2-0, für die Daten am Wochenende wieder aufgenommen

Ich fasse hier die von der Stadt Düsseldorf unter dem Twitter-Account @duesseldorf verteilten Zahlen zu COVID-19 in einer übersichtlichen Grafik zusammen.
Erfasst wurden alle Meldungen seit dem 24.03.2020. Seit dem 03.11.2020 werden auch Daten vom OpenDataDüsseldorf genutzt. 
Einzelne fehlende oder fehlerhafte Datensätze können dabei interpoliert werden.  

Die Aktualisierung nehme ich unregelmäßig vor, ~~meistens täglich~~ mittlerweile eher alle ein bis zwei Wochen.

Aktualisierung vom 07.02.2021:
Die Stadt Düsseldorf hat am 03.02.2021 angekündigt:
"Die LH Düsseldorf veröffentlicht ab jetzt automatisiert die Zahlen vom Dashboard des RKI sowie des Landeszentrum Gesundheit NRW und weiterhin eigens eingepflegte Daten auf dem Corona-Portal unter corona.duesseldorf.de/zahlen-fakten."

Open Data Düsseldorf hat am 05.02.2021 angekündigt: "Zur Vereinheitlichung der Coronazahlen der Stadt Düsseldorf, wird auch das Opendata Team zukünftig aud die Zahlen des RKI zurückgreifen. Es werden bis zur erfolgreichen Umstellung daher keine weiteren Coronazahlen auf unserem Portal veröffentlicht."

D.h. für mich, dass ich solange nicht auf meine bisherige Datenquellen setzen kann, sonder auch auf die Daten des RKI angewiesen bin.

Wie bin ich mit dem Datenübergang umgegangen?
- Für die Einwohnerzahl wurde auf die Zahl des RKI (und damit destatis) umgestellt. Jetzt wird mit 621.877 Einwohnern gerechnet. Vorher mit 645.923 nach den Zahlen der Stadt Düsseldorf. Dies wirkt sich auf die Inzidenz-Berechnung auf den gesamten Zeitraum aus.
- Alle Daten werden 1:1 aus den Zahlen von OpenDataDüsseldorf übernommen. Das führt an dem Übergangstag zu negativen Werten.

Änderungen der Grafik am 26/27.07.2021:
Nach langer Zeit habe ich mich entschieden die Grafik anzupassen. Statt der absoluten Zahl der Gesamt-Todesfälle wird jetzt der aktuelle Tageswert je 1 Millionen Einwohner in einem gleitenden 7-Tage-Durchschnitt angezeigt. Dieser Wert ist vergleichbar mit entsprechenden Diagrammen von z.B. OurWorldInData. Für den Wert gilt die linke Skala, alle anderen Werte nutzen die rechte Skala. Zudem habe ich den Tageswert der "bestätigten Fälle (neu)" aus der Grafik entfernt.

Veränderungen:
- 17.11.2021: Die Kurve der Todesfälle wurde auf absolute 7-Tageswerte umgestellt und wird nicht mehr relativ zu der Einwohnerzahl ausgegeben
- 17.11.2021: Die Farbskala für die Inzidenz wurde angepasst, da die alten Grenzwerte (insb. 165 keine Bedeutung mehr haben)
- 17.11.2021: Alle Delta-Angaben beziehen sich jetzt auf die Vorwoche und nicht auf den Vortag
- 26/27.07.2021: Änderung der Grafik s.o.
- 01.05.2021: Nutzung der RKI-Daten an den Wochenenden (ohne Krankenhaus/Quarantäne-Zahlen)
- 21.03.2021: Ausbau der RKI-Daten und Umstellung auf Daten von OpenDataDüsseldorf
- 07.02.2021: Notwendige komplette Umstellung der Datenbeschaffung auf RKI-Daten. Dies wird sich wahrscheinlich wieder ändern, sobald das Opendata Team für Düsseldorf Zahlen veröffentlicht
- 04.11.2020: Die bisherigen Grafiken werden nicht mehr automatisch generiert. Sie bleiben vorerst im Excel-Sheet erhalten.
- 04.11.2020: Die neue Grafik verzichtet auf die Darstellung der aktiven Fälle, zeigt dafür die täglichen Neu-Infektionen (bzw. bestätigte Fälle) und die Inzidenz an. Dadurch können alle Werte mit der gleichen Skala angezeigt werden. Speziell für Düsseldorf gilt, dass die Inzidenz nahe am gleitenden 7-Tage-Durchschnitt liegt (Faktor 7/6.45923).
- 21.10.2020: Die Skalierung wurde angepasst
- 19.10.2020: Zur Vereinfachung und auf besonderen Wunsch von @AnalysenD gibt es eine Grafik ohne die Anzahl der Todesfälle und Genesenen
- 12.10.2020: Für die Darstellung der Quarantänezahlen wurde eine separate Grafik erzeugt:  
- 12.10.2020: In der Standard Grafik wird ab heute die Inzidenz statt der Quarantäne-Anzahl angezeigt (rechte Skala)
- Die vertikale Achse wurde auf den Bereich (-50, 600) erweitert. (14.08.2020)
- Die vertikale Achse wurde auf den Bereich (-100, 500) geändert. (09.08.2020)
