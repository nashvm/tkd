BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `recipe` (
	`id`	INTEGER NOT NULL,
	`title`	VARCHAR ( 140 ),
	`description`	VARCHAR ( 140 ),
	`ingredients`	TEXT,
	`timestamp`	DATETIME,
	`instuctions`	TEXT,
	`image_url`	VARCHAR ( 140 ),
	`region_id`	INTEGER,
	`component_id`	INTEGER,
	`preparation_id`	INTEGER,
	`party_id`	INTEGER,
	`source_id`	INTEGER,
	`course_id`	INTEGER,
	FOREIGN KEY(`component_id`) REFERENCES `component`(`id`),
	FOREIGN KEY(`preparation_id`) REFERENCES `preparation`(`id`),
	FOREIGN KEY(`region_id`) REFERENCES `region`(`id`),
	FOREIGN KEY(`party_id`) REFERENCES `party`(`id`),
	FOREIGN KEY(`source_id`) REFERENCES `source`(`id`),
	PRIMARY KEY(`id`)
);
INSERT INTO `recipe` VALUES (3,'Killer Mushrooms','The last one you''ll ever need.','randomly collected forest mushrooms','2018-09-26 19:09:45.086420','Serve randomly collected forest mushrooms.','/static/img/killer_mushrooms.jpg',6,6,6,2,1,1);
INSERT INTO `recipe` VALUES (9,'Badam  Barfi','amandeltoffies. In India worden deze snoepjes meestal voor een of andere feestdag gemaakt als traktatie voor de kinderen','1/2 kop hele gepelde amandelen of 1 kop gehakte amandelen 
2 el gepelde ongezouten pistachenootjes 
6 hele kardemompeulen 
1 kop melk 
6 el honing 
3 el gesmolten ghi of geklaarde boter','2018-09-26 19:09:45.086420','1. Laat de mandelen 1/2 uur in een kop lauw water weken en krab het bruine velletje er dan met uw nagel af. Pel de ongezouten pistachenootjes en hak ze met een mes in kleine stukjes of stamp ze met de deegrol fijn. Vet nu een pie vorm in met wat ghi en zet die zolang weg. Maal de gepelde amandelen in de melk in een keukenmachine fijn, doe deze amandelmelk over in een kleine stevige steelpan, waarin u hem 10 min onder voortdurend roeren, op laag tot matig vuur laat koken. Doe er daarna de honing met de gehakte pistachenootjes bij en blijf doorroeren totdat alles goed met elkaar is vermengd; daarna draait u het gas op laag. Nu voegt u de 3 el  ghi of geklaarde boter onder voortdurend roeren eraan toe en dat blijft u 15 tot 20 minuten doen, totdat het een dikke taaie massa is geworden. Niet, ook niet eventjes ophouden met roeren
2. Doe de taaie substantie over op de van tevoren ingevette schaal of schotel en spreid de toffeemassa er gelijkmatig over uit, waarna u hem een tijdje laat afkoelen. Dan giet u wat ghi in uw handpalm, drukt de massa plat en beklopt het oppervlak net zolang, tot het mooi glad is geworden. Daarna laat u de barfi ½ uur in de koelkast afkoelen en hard worden, zodat u er vierkantjes of ruitjes uit kunt snijden. Wip ze met een pannenkoekmes los en leg ze op een presenteerschaaltje. Dit lekkers kan ook weken goed blijven, als u het in een pot in de koelkast bewaart','/static/img/badambarfi.jpg',4,3,3,3,6,1);
INSERT INTO `recipe` VALUES (10,'Adana Borbasi','Een heerlijke soepje','5 glazen Vlees Bouillon 
150 gr. Gehakt Vlees 
 50 gr. Kikkererwten 
 1 Grote Tomaat 
 2 el Azijn 
 2 el Tijm 
 1 el Zout 
 Zwarte peper','2018-09-26 19:09:45.086420','1. Zet de kikkererwten gedurende 1 nacht in het water en kook ze de volgende morgen.

2. Ontvel en snijd de tomaten. Doe de kikkererwten vlees bouillon gesneden tomaten en 1/2 theelepel zout in de pan en breng aan de kook. Voeg 1/2 theelepel zout en zwarte peper toe aan het gehakt en kneed dit. Maak kleine vleesballetjes. Voeg deze toe aan de kokende soep. Laat de soep pruttelen voor 20 minuten. Verwijder de pan van de hittebron. Voeg azijn en eventueel tijm toe en roer alvorens te serveren','/static/img/turkije.jpg',5,4,2,8,8,1);
INSERT INTO `recipe` VALUES (15,'Tandoori-Kip','Haal de kip een uur of twee voor gebruik uit de koelkast en laat de kip op kamertemperatuur komen.','1,3 kg kippenvlees, klaar voor gebruik 
2,5 dl yoghurt 
4 el tandoori masalapasta 
75 g geklaarde boter of plantaardige olie 
zout 
citroen partjes en uienringen, voor de garnering sla, voor erbij','2018-09-26 19:09:45.086420','1. Verwijder met een klein, scherp mes of een schaar het vel en overtollig vet van de kip. Prik het vlees een paar keer in met een vork. Snijd de kip doormidden. Halveer daarna de helften. Maak enkele diepe, diagonale inkepingen in het vlees. Meng de yoghurt en de masalapasta en breng op smaak met zout. Leg de kip in het yoghurtmengsel, giet wat van het mengsel in de inkepingen. Laat het vlees ten minste 2 uur op een koele plaats marineren of laat het een nacht in de koelkast staan. 
2. Verwarm de oven voor op 240 C. Leg de stukken kip op een rooster in een Diepe braadslede. Giet de overgebleven marinade over de kip en houd een gedeelte van de marinade apart. 
3. Verwarm de geklaarde boter en giet deze over de stukken kip zodat de buitenkant kan dichtschroeien. Hierdoor blijft het vlees tljdens het bakken mals vanbinnen. Bak de kip ca. 10 min., haal het vlees uit de oven. Laat de oven aanstaan. Bestrijk de kip met de overgebleven marinade. Zet deze weer in de oven, schakel deze uit. Laat de kip ca. 15-20 min. in de gesloten oven staan. Serveer met sla en garneer met citroen partjes en uienringen.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (16,'Jamaicaanse pasteitjes','Voor 12 tot 18 pasteitjes.','Voor het deeg: 
1 kg bloem 
2 tl geelwortel poeder (kurkuma) of anatto 
1 tl zout 
50 gr zachte boter 
3 el koud water 
Voor de vulling: 
2 el boter of plantaardige olie 
1 grote ui, gesnipperd 
2 teentjes knoflook, fijngesneden 
2 verse Spaanse pepers, zonder zaden en fijngesneden 
1 takje verse tijm, fijngehakt 
4 sprietjes vers bieslook, fijngehakt 
2 bosjes peterselie, fijngehakt 
4 grote tomaten, ontveld en in stukjes 
375 gr rundergehakt of vis of kip 
1/4 tl verse geelwortel of anatto, gemalen 
1/4 tl verse gember, gemalen 
1/4 tl verse komijnzaadjes, gemalen 
1 tl piment 
1/2 tl gemalen kardemom 
Peper en zout 
125 ml water of bouillon 
1 el Jamaicaanse bruine rum','2018-09-26 19:09:45.086420','Deeg: Zeef de bloem met zout en kurkuma boven een kom. Kneed met de handen de boter erdoor tot het deegmengsel kruimelig is. Doe er zoveel water bij dat u het mengsel tot een deeg kunt kneden. Wikkel het in cellofaan en laat het 2 uur in de koelkast liggen. 
Verwarm de olie in een grote pan en fruit ui, knoflook en Spaanse peper. Voeg tijm, bieslook, peterselie en tomaten toe; voeg na enkele minuten het vlees en de andere kruiden toe. Strooi er zout en zwarte peper over. Giet er water of bouillon over en laat allescirca 25 minuten sudderen tot al het vocht verdampt is. Voeg de rum toe en haal de pan van het vuur. Laat de vulling afkoelen. 
De pasteitjes bereiden:
2 eierdooiers, losgeklopt. Verwarm de over voor op 200° C. Rol het deeg uit. Steek deegrondjes uit van 18- 30 cm doorsnee. Schep op elk deegrondje 2 el van de afgekoelde vulling en bestrijk de randen van het deeg met losgeklopt ei. Vouw het rondje dubbel en drukt de rand met een vork dicht. 
Bekleed een bakblik met aluminium folie of vet het in en strooi er bloem over. Leg de pasteitjes op het blik. Doop nogmaals een kwastje in het losgeklopt ei en bestrijk hiermee de bovenkant van het deeg. Schuif het blik in het midden van de oven en bak de pasteitjes in 30 minuten goudbruin.','/static/img/cari.jpg',9,7,2,4,10,1);
INSERT INTO `recipe` VALUES (17,'Salpicon de pescado','Zelfgemaakte vissaucijs','<i> Voor 4-6 personen </i> 
 <table><tr><td width=250>
9 dl water 
2, 3 dl witte wijn 
1 laurierblaadje 
6 peperkorrels 
1 citroen, gehalveerd 
1 grote witte uien, gehalveerd 
1 wortel, gehalveerd 
1 tl hete rodepepersaus 
1, 3 kg kabeljauwfilet 
80 gr fijne broodkruim 
2 el melk 
2 el bloem 
2 el olijfolie 
  </td><td width=250>
3 middelgrote eieren, geklopt 
1 geroosterde rode paprika, fijngehakt 
1 grote augurken, zeer fijngehakt 
1 grote witte uien, gesnipperd 
1 tl gedroogde oregano 
Zout 
Groot stuk mousseline 
3 hardgekookte eieren v
Gemengde sla, voor erbij 
Partjes citroen, voor de garnering 
   </td></table>','2018-09-26 19:09:45.086420','1. Doe water, wijn, laurierblaadje, peperkorrels, citroen, gehalveerde uien

2. Doe het kookvocht terug in de pan en breng het oplaag vuur zachtjes aan de kook. Voeg de visfilets toe en kook 4 minuten. Haal de filets uit de pan en laat ze op kamertemperatuur komen. Bewaar het kookvocht. 

3. Haalde vis boven een kom met uw vingers uit elkaar. Voeg broodkruim, melk, bloem, olijfolie, geklopte eieren, geroosterde paprika, augurken, gesnipperde ui en oregano toe en meng goed. Breng op smaak met zout. 

4. Vouw de mousseline dubbel tot een doek van 46 bij 46 cm. Schep het vismengsel op de dichtst bij u gelegen rand van de doek en maak een vissaucijs van circa 25 cm lang. 

5. Leg de hardgekookte eieren naast elkaar in het midden van vissaucijs en duw zo goed op de plaats. Vouw de uiteinden van de doek over de vissaucijs. Neem daarbij het dichtst bij u gelegen uiteinden, rol op en laat aan het eind een ruimte van 2,5 centimeter over. Snijd het overschot aan de doek af en gebruikt dit om de vissaucijs mee vast te knopen. Leg de vissaucijs in de pan met het bewaarde kookvocht. 

6. Kook 45 minuten op matig vuur en zorgt dat het water zachtjes blijft koken. Haalde vissaucijs uit de pan en verwijder de doek, terwijl de saus wijst nog heet is, anders blijft de doek eraan vastplakken. Laat de vissaucijs op kamertemperatuur komen en snijd hem inplakken van 2 cm. Garneer met partjes citroen en serveer koud met gemengde sla.','/static/img/cari.jpg',10,7,8,4,10,1);
INSERT INTO `recipe` VALUES (199,'Kipcurry uit Kashmir','','4 tl Kashmir masala pasta 
4 el tomatenketchup 
 1 tl worcestersaus  
1 tl vijfkruidenpoeder  
1 tl kristalsuiker  
8 kippenbouten, zonder vel  
3 el plantaardige olie  
stuk gemberwortel, 5 cm lang, fijngesneden  
4 teentjes knoflook, geperst  
sap van 1 citroen  
1 el korianderblaadjes, fijngehakt 
zout','2018-09-26 19:09:45.086420','1. Meng voor de marinade de masalapasta, tomatenketchup, worcestersaus, het vijfkruidenpoeder, zout en de suiker. Zet het mengsel op een warme plaats tot de  suiker is opgelost. 
2. Bestrijk de stukken kip met de marinade en zet ze 2 uur of een hele nacht in de koelkast. 
3. Laat ze voor het bakken op kamertemperatuur komen. Verwarm de olie in een wok, karahi of koekenpan, bak de helft van de gember en knoflook goudgeel. Voeg de kip toe en bak het vlees bruin. Dek de pan af en bak de kip tot deze gaar is en de olie op de saus drijft. Besprenkel de kip met citroensap, de overgebleven gember en de korianderblaadjes. Meng alles goed. Serveer direct. Lekker met gekookte rijst.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (201,'Karahi-Kip met Munt','','450 g kipfilet, in repen  
3 dl water  
2 el plantaardige olie  
2 bosjes lente-uien, grof gehakt  
1 tl geraspte verse gemberwortel  
1 tl gemalen gedroogde rode chilipepers   
2 el citroensap  
2 el gehakte verse koriander en takjes	voor de garnering  
2 el gehakte verse munt, en takjes voor de garnering  
3 tomaten, zonder zaden, grof gehakt  
1 tl zout','2018-09-26 19:09:45.086420','1. Doe de kip in een grote pan met water, breng dat aan de kook en temper het vuur vervolgens tot matlg. Laat de kip ca. 10 min. koken, tot het water verdampt is en de kip gaar is. Haal de pan van het vuur en zet apart. 
2. Verwarm de olie in een grote pan, voeg de gehakte lente-uien toe en roerbak ze ca. 2 min. Voeg de gekookte repen kippenvlees toe. Roerbak ze ca. 3 min., tot ze bruin zijn. Voeg de geraspte gemberwortel, chilipeper, het citroensap, de gehakte koriander en munt, tomaten en het zout toe, roer voorzichtlg zodat de smaken kunnen vermengen. 
Serveer de curry in een voorverwarmde schaal, garneer het geheel met takjes verse koriander en munt. Lekker met gekookte rijst.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (202,'Kip-Tikka','','450 g kipfilet, in blokjes  
1 tl gemalen verse gemberwortel   
1 tl geperste knoflook  
1 tl chilipoeder  
1/4 tl gemalen kurkuma  
1 tl zout  
l,5 dl yoghurt  
4 el citroensap  
1 el gehakte verse koriander  
1 el plantaardige olie -','2018-09-26 19:09:45.086420','1. Meng kip, gember, knoflook, chilipoeder, kurkuma, zout
2. Leg het kippenvlees op een rooster, in een bakslede of op folie in een vuurvaste schaal, bestrijk het met olie. Verwarm de oven voor op de middelste stand. Bak de kip in 15-20 min. gaar, draai het vlees en bedruip het twee- tot driemaal. 
Serveer met sla, uienringen, limoen partjes en verse koriander.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (203,'Kip-Tikka Masala','','675 g kipfilet  
6 el tlkkapasta  
4 el yoghurt  
2 el plantaardige olie  
1 ui, gehakt  
1 teentje knoflook, geperst  
1 verse groene chilipeper, zonder zaden, gehakt 
2,5 cm verse gemberwortel, geraspt  
1 el tomatenpuree  
1 el gemalen amandelen  
2,5 dl water  
3 el geklaarde boter of boter, gesmolten 50 ml room  
1 el citroensap  
verse koriandertakjes, yoghurt en geroosterd komijnzaad, voor de garnering naanbrood, voor erbij','2018-09-26 19:09:45.086420','1. Snijd kip in blokjes van 2,5 cm. Doe de helft van de tikkapasta en de yoghurt in een schaal, roer de kip erdoorheen. Laat het vlees 20 min. marineren.
2. Verwarm de olie. Bak de ui, knoflook, chilipeper en gember 5 min. Voeg de overgebleven tikkapasta toe en bak het geheel 2 min. Voeg de tomatenpuree, amandelen en het water toe, laat alles 15 min. sudderen. 
3. Steek het kippenvlees aan de houten prikkers, verwarm de grill voor. Bestrijk de kip met de gesmolten boter en bak het vlees ca. 15 min. op de matlg warme grill. Keer de stukken kip af en toe om en bestrijk ze met meer boter. 
4. Pureer de tikkasaus in de keukenmachine tot een glad mengsel. Doe de saus in een pan, voeg de room en het citroensap toe. Haal de kip van de grill, verwijder de prikkers en doe het vlees in de pan. Laat alles 5 min. sudderen. 
Garneer met verse koriander, yoghurt en komijnzaad. Serveer met warm naanbrood.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (204,'Kip-Saag','','225 g verse spinazie, gewassen  
stuk verse gemberwortel, 2,5 cm lang, geraspt  
2 teentjes knoflook, geperst  
1 verse groene chilipeper, grof gehakt 2 dl water 
2 el plantaardige olie 
2 laurierblaadjes  
1/4 tl zwarte peperkorrels  
1 ui, fijngehakt  
4 tomaten, ontveld en fijngehakt  
2 tl kerriepoeder  
1 tl zout  
1 tl chilipoeder  
3 el yoghurt, plus extra, om erbij te serveren  
kippenbouten, zonder vel  
naanbrood, voor erbij','2018-09-26 19:09:45.086420','1. Kook de spinazie zonder water 5 min. in een afgedekte pan. Doe de spinazie, gember, knoflook, chilipeper en 50 ml water in de keukenmachine en pureer het mengsel. 
2. Verwarm de olie, voeg de laurierblaadjes en de peperkorrels toe en bak ze 2 min. Voeg de ui toe en bak alles nog 6-9 min. Voeg de gehakte tomaten toe en laat alles 5 min. sudderen. Voeg het kerriepoeder, zout en chilipoeder toe en meng alles goed. Laat het geheel 2 min. koken. Voeg het spinaziemengsel en het overgebleven water toe en laat het geheel 5 min. sudderen. Voeg de yoghurt lepel voor lepel toe en laat het mengsel 5 min. sudderen. Voeg de kip toe. Dek de pan af en laat de inhoud 25-30 min. koken, tot de kip gaar is. 
Serveer met warm naanbrood, giet er wat yoghurt over en bestrooi met chilipoeder.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (205,'Kip met Groene Masalasaus','-','1 groene appel, geschild, klokhuis verwijderd, in blokjes - 4 el verse korianderblaadjes - 2 el verse muntblaadjes - 1,5 dl yoghurt - 3 el verse roomkaas of ricotta - 2 verse groene chillipepers','2018-09-26 19:09:45.086420','Doe de appel, 3 el koriander, de munt, yoghurt, roomkaas of ricotta, chilipepers','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (206,'Kruidige gegrilde Kip','','12 kippenbouten  
6 el citroensap  
1 tl geraspte verse gemberwortel  
1 tl geperste knoflook  
1 tl gemalen gedroogde rode chilipepers   
1 tl zout  
1 tl bruine suiker  
2 el honing  
2 el gehakte verse koriander, en takjes voor de garnering  
1 verse groene chilipeper, fijngehakt  
2 tl plantaardige olie  
saffraanrijst en een gemengde salade, voor erbij.','2018-09-26 19:09:45.086420','1. Prik met een vork in de kippenbouten, spoel ze af met water, dep ze droog en zet ze apart.
2. Meng citroensap, gember, knoflook, rode chili pepers, zout, suiker en honing. Bestrijk de kippenbouten met het specerijen mengsel en laat ze 45 min. marineren. 
3. Verwarm de grill voor tot matig warm. Voeg de verse koriander en gehakte groene chili peper toe, meng alles goed, leg de gemarineerde kippenbouten in een vuur vaste ovenschaal. Giet de overgebleven marinade over de kip en bestrijk de bouten met olie. Gril de kippenbouten 15-20 min., draai ze af en toe om en bedruip ze regelmatig tot ze gaar en bruin zijn. 
Leg de kip in een voorverwarmde schaal, garneer het geheel met koriandertakjes. Serveer er eventueel saffraanrijst en een salade bij.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (207,'Kip-Korma','','25 g gepelde amandelen  
2 teentjes knoflook, geperst  
stuk verse gemberwortel, 2,5 cm lang, gehakt  
2 el plantaardige olie  
675 g kipfilet, in blokjes  
3 groene kardemompeulen  
1 ui, fijngehakt  
2 tl gemalen komijn  
1/4 tl zout  
1,5 dl yoghurt  
1,75 dl room  
geroosterd amandelschaafsel    
verse koriandertakjes, voor de garneri ng gekookte rijst, voor erbij','2018-09-26 19:09:45.086420','1. Pureer de amandelen, knoflook en gember in de keukenmachine met 2 el water.  
2. Verwarm de olie in een wok, karahi of koekenpan en bak de kip 10 min. Haal de Kip uit de pan en zet apart. 
3. Doe de kardemompeulen in de pan en bak ze 2 min. Voeg de ui toe en bak deze 5 min. Meng de puree van amandelen, knoflook en gember met de kardemompeulen en uien in de pan. Voeg de gemalen komijn en wat zout toe. Bak alles al roerend nog 5 min. Roer de yoghurt lepel voor lepel door het uienmengsel. Kook het mengsel op een laag vuur tot de yoghurt volledig  is opgenomen. 
4. Doe de kip in de pan. Dek de pan af en laat de inhoud 5-6 min. sudderen, tot de kip gaar is. Roer de room erdoor en laat alles nog 5 min. sudderen. Garneer met geroosterd amandelschaafsel en koriander. 
Serveer er gekookte rijst bij.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (208,'Lamsbout in de Mughal-stijl','Als je tljd genoeg hebt, kunt u het vlees enige uren apart zetten bij kamertemperatuur voor u het in de oven doet.','4 grote uien, gehakt  
4 teentjes knoflook  
stuk verse gemberwortel, 5 cm lang, gehakt  
3 el gemalen amandelen  
2 tl gemalen komijn  
2 tl gemalen koriander  
2 tl gemalen kurkuma  
2 tl garam masala  
4-6 verse groene chiIi pepers  
sap van 1 citroen 
3 dl yogurt  
1,8 kg lams-bout  
8-10 kruidnagels  
zout  
1 el amandelschaafsel, voor de garnering   
4 stevige tomaten, gehalveerd en gebakken, voor erbij','2018-09-26 19:09:45.086420','1. Doe de eerste tien ingredienten in de keukenmachine, voeg zout naar smaak toe en pureer het geheel tot een glad mengsel. Voeg de yoghurt geleidelijk toe en meng alles. 
2. Vet een groot, diep bakblik in en verwarm de oven voor op 190 C. 
3. Verwijder het grootste deel van het vet en het vel van het lams-vlees. Maak aan beide zijden, net boven het bot, diepe groeven in het vlees. Maak diagonale inkepingen aan beide zijden van het lams-vlees. Verdeel de kruidnagels over het vlees; druk ze er stevig in. Vul de inkepingen en groeven met een deel van het specerijen mengsel en wrijf de rest over het vlees. Leg het vlees in het bakblik en dek het blik af met folie. Bak het vlees 2- 2 1/2, uur in de oven tot het gaar is, verwijder de folie 10 min. voor het eind van de baktijd. Haal het vlees uit de oven. Zet het 10 min. apart, dan kunt u het aansnijden. 
Garneer de lams-bout met amandelschaafsel en geef de gehalveerde en gebakken tomaten erbij.','/static/img/india.jpg',4,2,2,3,6,1);
INSERT INTO `recipe` VALUES (209,'Rogan Josh','','3 el citroensap  
2,5 dl yoghurt  
1 tl zout  
2 teentjes knoflook, geperst 
stuk verse gemberwortel, 2,5 cm lang, geraspt 
900 g mager lams-vlees, in blokjes  
4 el plantaardige olie  
1/2, tl komijnzaad  
2 laurierblaadjes  
4 groene kardemompeulen  
1 ui, fijngehakt  
2 tl gemalen koriander  
2 tl gemalen komijn  
1 tl chilipoeder  
400 g tomaten uit blik, gehakt  
2 el tomatenpuree  
1,5 dl water  
geroosterd komijnzaad en laurierblaadjes, voor de garnering  
gekookte rijst, voor erbij','2018-09-26 19:09:45.086420','1. Meng het citroensap, zout, de yoghurt, 1 teentje geperste knoflook en de gember in een grote schaal. Voeg het lams-vlees toe en laat dit een nacht in de koelkast marineren. 
2. Verwarm de olie in een wok, karahi of koekenpan en bak het komijnzaad 2 min. tot het begint te springen. Voeg de laurierblaadjes en kardemom toe en bak 2 min. Voeg de ui en de overgebleven knoflook toe en bak ze 5 min. Voeg koriander, komijn en chili-poeder toe en bak 2 min. Voeg het gemarineerde lams-vlees toe en bak alles 5 min. roer af en toe zodat het mengsel niet kan aanbranden. 
3. Voeg de tomaten, tomatenpuree en het water toe. Dek de pan af en laat de inhoud 1-1 1/2 uur sudderen. 
Garneer met geroosterd komijn zaad en laurierblaadjes.','/static/img/india.jpg',4,2,2,3,6,1);
INSERT INTO `recipe` VALUES (210,'Kahari-Lamsvlees','-','1 el tomatenpuree - 1 ,75 dl yogurt - 1 tl garam masala - 1/4, tl komijnzaad - 1 tl zout - 1 tl geperste knoflook - 1 tl geraspte verse gemberwortel - 1 tl chilipoeder - 450 g mager lams-vlees, in repen - 2 el plantaardige olie - 2 uien, gesnipperd - 25 g geklaarde boter','2018-09-26 19:09:45.086420','Meng tomatenpuree, yoghurt, garam masala, komijnzaad, zout, knoflook','/static/img/india.jpg',4,2,2,3,6,1);
INSERT INTO `recipe` VALUES (211,'Gebakken Gamba''s met geroerbakte Specerijen','-','45 ml yoghurt - 1 tl paprikapoeder - 1 tl geraspte verse gemberwortel - 16-20 gepelde, gekookte gamba''s, bevroren exemplaren ontdooid - 1 el plantaardige olie - 3 uien, gesnipperd - 1/2 tl venkelzaad, gemalen - kaneelstokje','2018-09-26 19:09:45.086420','Meng de yoghurt, paprika, gember. Voeg Yoghurt naar smaak toe. Voeg de gamba''s toe m laat ze 30-45 min. op een koele plaats marineren. Verwarm intussen de olie in een wok, karahi of koekenpan en bak de ui, het venkelzaad en kaneelstokje op een matlg vuur tot de uien zacht zijn en goudgeel kleuren. 3 Draai het vuur lager en voeg de geperste knoflook en het chilipoeder toe. Voeg de in stukjes gehakte gele en rode paprika''s toe en roerbak het geheel 3-5 min. Haal de pan van het vuur en doe het uienmengsel in een voorverwarmde schaal, gooi het kaneelstokje weg. Zet de schaal apart. Verwarm de grill voor op de middelste stand. Doe de gemarineerde garnalen in een bakblik of vuurvaste schaal en bak ze aan de bovenkant bruin en tot ze enigszins verschroeid lijken. Voeg de garnalen aan het uien mengsel toe en. garneer met verse koriander. Eventueel serveren met gewone rijst en zwarte linzen.','/static/img/india.jpg',4,2,4,3,6,1);
INSERT INTO `recipe` VALUES (212,'Mais met rijke Uiensaus','-','4 maiskolven, bevroren exemplaren ontdooid - plantaardige olie, voor het bakken - 1 grote u i, fij ngehakt - 2 teentjes knoflook, geperst - stuk gemberwortel','2018-09-26 19:09:45.086420','Halveer de maiskolven met een scherp mes of een hakmes. Verwarm de olie in een wok, karahi of koekenpan en bak de mais goudbruin. Haal de mais uit de pan en zet deze apart. Verwijder de overtollige olie, houd ca. 2 el in de pan achter. Pureer ui, knoflook en gember in een vijzel of keukenmachine. Schep het mengsel in een kom en voeg de specerijen, het chilipoeder, de kerrieblaadjes en suiker toe. Verwarm de olie langzaam en bak het uienmengsel 8-10 min.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (213,'Courgettes met kruidige Tomatensaus','-','575 g courgette - 3 el plantaardige olie - 1/2 tl komijnzaad - 1/2 tl mosterdzaad - 1 ui, gesnipperd - 2 teentjes knoflook, geperst - 1/4 tl gemalen kurkuma - 1/4 tl chilipoeder - 1 tl gemalen koriander - 1 tl gemalen komijn - 1/4 tl zout - 1 el tomatenpuree - 400 g tomaten uit blik, gehakt - 1,5 dl water - 1 el gehakte verse koriander - 1 tl garam masala','2018-09-26 19:09:45.086420','Verwijder de uiteinden van de courgettes en snijd ze in plakken van 1 cm. Verwarm de olie in een wok, karahi of koekenpan. Bak het komijn- en mosterdzaad 2 min., tot het begint te springen. Voeg de ui en de knoflook toe en bak ze 5-6 min. Voeg kurkuma, chilipoeder, gemalen koriander, komijn en zout toe en bak het geheel 2-3 min. Voeg de plakken courgette toe en bak ze 5 min. Voeg de tomatenpuree en de gehakte tomaten toe. Voeg het water toe','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (214,'Groenten met Komijnsmaak EN geroosterde Amandelen','Julienne gesneden groenten geven dit gerecht niet alleen een aantrekkelijk uiterlijk, maar komen ook de smaak ten goede. Gebruik eens julienne gesneden wortels en prei in plaats van peulen en babyma','1 el plantaardige olie - 50 g boter - 1/2 tl gemalen korianderzaad - 1/2 tl wit komijnzaad - 6 gedroogde rode chilipepers - 1 kleine savooienkool, gesneden - 12 peultjes - 3 verse rode chilipepers, zonder zaden, - gesneden - 12 babymaiskolven','2018-09-26 19:09:45.086420','Verwarm de olie en de boter in een wok, karahi of koekenpan en voeg het gemalen korianderzaad, komijnzaad en de gedroogde rode chilipepers toe. Voeg de gesneden kool en de peulen toe en roerbak alles 5 min., tot de kool knapperig begint te worden. Voeg de verse rode chilipepers en de babymais toe en breng het geheel op smaak met zout. Roerbak het mengsel 3 min. Garneer met geroosterde amandelsnippers en verse koriander en dien het gerecht warm op. Het past goed bij vleescurry''s en klassieke pulao.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (215,'Kidneybonen Curry','U kunt ook uitgelekte en gewassen bonen uit blik gebruiken','225 g gedroogde rode kidneybonen - 2 el plantaardige olie - 1/2 tl komijnzaad - 1 ui, gesnipperd - 1 verse groene chilipeper, fijngehakt - 2 teentjes knoflook, geperst - stuk verse gemberwortel, 2','2018-09-26 19:09:45.086420','Doe de kidneybonen in een grote schaal met koud water en laat ze een nacht weken. Giet de bonen af en doe ze in een pan, voeg het dubbele volume aan water toe. Laat ze 10 min, hard koken. Giet ze af, spoel de bonen af en doe ze weer in de pan. Voeg het dubbele volume aan water toe en breng dit aan de kook. Draai het vuur lager en laat de bonen in 1-1 1/2 uur gaar koken. Dit proces is essentleel als u de giftlge stoffen uit de gedroogde kidneybonen wilt verwijderen. Verwarm intussen de olie in een wok, karahi of koekenpan en bak het komijnzaad 2 min., tot het begint te springen. Roer ui','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (216,'Romige Zwarte Linzen','-','175 g zwarte linzen, geweekt 
50 g rode splitlinzen
1,2 dl creme fraiche
1,2 dl yogurt
1 tl maizena
3 el geklaarde boter of plantaardige olie
1 ui, fijngehakt
stuk gemberwortel, 5 cm lang, gemalen
4 verse groene chilipepers, gehakt
1 tomaat, gehakt
1/2 tl chilipoeder','2018-09-26 19:09:45.086420','Doe de zwarte en rode linzen in een pan met water en breng dit aan de kook. Draai het vuur lager en laat de bonen afgedekt sudderen tot ze gaar zijn. Pureer ze met een lepel en laat ze afkoelen.
 Meng de creme fraiche, yoghurt en de maizena in een schaal en roer dit door de  linzen.
 Verwarm 1 el geklaarde boter of olie in een wok, karahi of koekenpan en bak de ui, gember, 2 groene chilipepers en de tomaat tot de ui zacht is. Voeg de gemalen specerijen en het zout toe en bak 2 min. Roer het linzenmengsel erdoor en meng goed.
 Dien het gerecht in een vuurvaste schaal op en houd deze warm. Verwarm de overgebleven geklaarde boter of olie op een laag vuur in een koekenpan en bak de knoflook en de resterende groene pepers goudbruin. Strooi ze over de linzen en roer ze er kort voor het opdienen doorheen. Serveer met extra creme fraiche, zodat men eventueel meer kan toevoegen.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (217,'Kip met Komijnaroma','-','3 el komijnzaad - 3 el plantaardige olie - 1/2  tl zwarte peperkorrels - 4 groene kardemompeulen - 2 verse groene chilipepers, fijngehakt  - 2 teentjes knoflook, geperst - stuk verse gemberwortel, 2,5 cm lang','2018-09-26 19:09:45.086420','Verwarm een wok of een koekenpan op een matlg vuur en rooster 1 el komijnzaad 1-2 min. tot het aroma vrijkomt. Zet apart. Verwarm de olie in een wok of koekenpan en bak het overgebleven  komijnzaad, de peperkorrels en de kardemompeulen ca. 2 min. Voeg de chilipepers, knoflook en geraspte gemberwortel aan de specerijen in de pan toe en bak 2 min. Voeg de gemalen koriander, komijn en het zout toe en bak alles 1-2 min. op een matlg vuur. Voeg de stukken kip toe en meng alles goed. Dek de pan af en laat de inhoud 20-25 min. sudderen. Voeg de garam masala en het geroosterde komijnzaad toe, laat alles nog 5 min. koken. Serveer met komkommerraita.','/static/img/india.jpg',4,2,3,3,6,1);
INSERT INTO `recipe` VALUES (218,'Zoetzure Ananas','U kunt in plaats van ananas ook twee tot drie mango''s gebruiken. Kies rijpe, smaakvolle vruchten. Bereid ze door beide uiteinden van de vruchten te snijden, snijd dicht langs de pit, verwijder het vel en hak het vruchtvlees in blokjes. U kunt mango''s met','800 g ananasschijven of -blokjes, met sap - 1 el plantaardige olie - 1/2  tl zwart mosterdzaad -','2018-09-26 19:09:45.086420','','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (219,'Aardappelen  met geroosterd Maanzaad','Laat de gedroogde chilipepers niet aanbranden, want dan worden ze bitter. Haal ze uit de pan zodra ze zwart kleuren.','3 el wit maanzaad - 3-4 el plantaardige olie - 675 g aardappelen, geschild en in blokjes van 1 cm - ½ tl zwart mosterdzaad - ½ tl uienzaad - ½ tl komijnzaad - ½ tl venkelzaad - 1-2 gedroogde rode chilipepers, gehakt of in kleine stukken gebroken - ½ tl gemalen kurkuma - ½ tl zout - 1,5 dl warm water - verse koriandertakjes','2018-09-26 19:09:45.086420','Verwarm een wok, karahi of koekenpan op een matlg vuur. Draai het vuur als de pan heet is lager en voeg het maanzaad toe. Roerbak het zaad tot dit donkerder kleurt. Haal het uit de pan en laat het afkoelen. Verwarm de plantaardige olie in de pan op een matlg vuur en bak de aardappelblokjes lichtbruin. Haal ze met een schuimspaan uit de pan en laat ze op keukenpapier uitlekken. Voeg het mosterdzaad aan dezelfde olie toe. Voeg zodra dit begint te springen ui-, komijn- en venkelzaad en chilipepers toe. Laat de chilipepers zwart schroeien. Roer de kurkuma erdoor en direct hierna de gebakken aardappelen en het zout. Roer goed en voeg warm water toe. Dek de pan af en draai het vuur lager. Laat de inhoud 8-10 min. bakken, tot de aardappelen gaar zijn. Maal het afgekoelde maanzaad fijn in een vijzel of koffiemolen. Roer de gemalen zaden door de aardappelen. De dikke puree moet aan de aardappelblokjes kleven. Als het mengsel te veel vocht bevat, moet u het op een matlg vuur roerbakken tot de consistentle goed is. Dien het gerecht in een schaal op. Garneer het geheel met koriander en combineer het met poori''s en yoghurt.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (220,'RundvleesCurry uit Madras','-','4 el plantaardige olie - 1 grote ui, gesnipperd - 3-4 kruidnagels - 4 groene kardemompeulen - 2 stuks steranijs - 4 verse groene chilipepers, gehakt - 2 verse rode chilipepers, gehakt - 3 el Madras-masalapasta - 1 tl gemalen kurkuma - 450 g mager rundvlees, in blokjes - 4 el tamarindesap - kristalsuiker','2018-09-26 19:09:45.086420','Verwarm de plantaardige olie op een matlgvuur in een wok, karahi of koekenpan en bak de uien in 8-9 min. goudbruin. Draai het vuur lager, voeg alle specerijen toe en bak alles 2-3 min. Voeg het rundvlees toe en meng alles goed. Dek de pan af en zet het vuur laag tot het vlees gaar is. Verwijder het deksel en draai het vuur enkele min. hoger om overtollig vocht te laten verdampen. Roer het tamarindesap, de suiker en het zout erdoor. Warm het geheel op en garneer met de gehakte korianderblaadjes. Driekleurenpulao en uien-tomatensalade passen goed bij dit gerecht.','/static/img/india.jpg',4,2,2,3,6,1);
INSERT INTO `recipe` VALUES (221,'Chiilivlees met Kerrieblaadjes','-','900 g rund- of varkensvlees, in blokjes - 2 el plantaardige olie - 1 grote ui, gesnipperd - 5 cm verse gemberwortel, geraspt - 4 teentjes knoflook, geperst - 12 kerrieblaadjes - 3 el extra hete currypasta','2018-09-26 19:09:45.086420','Verwarm de olie in een wok, karahi of koekenpan en bak ui, gember, knoflook en kerrieblaadjes tot de ui zacht is. Voeg de currypasta of het kerriepoeder, het chilipoeder, vijfkruidenpoeder','/static/img/india.jpg',4,2,2,3,6,1);
INSERT INTO `recipe` VALUES (222,'Gemarineerde gebakken Vis','Om de smaak te versterken, voegt u aan de specerijen pasta 1 el gehakte verse korianderblaadjes toe.','4 zeebarbelen of snappers plantaardige olie, voor het bakken - 1 kleine ui, grof gehakt - 4 teentjes knoflook, geperst - stuk verse gemberwortel','2018-09-26 19:09:45.086420','Pureer de eerste vijf ingredi�nten met wat zout in de keukenmachine tot een glad mengsel. Maak inkepingen aan beide kanten van de vissen en wrijf ze in met de puree. Laat ze 1 uur staan. Als het zout oplost, komt er overtollig vocht vrij; dep de vis voorzichtlg droog met keukenpapier zonder de puree te verwijderen. Verwarm de olie en bak het komijnzaad en de fijngesneden chilipepers 1 min. Voeg de vissen toe, indien nodig in gedeelten, en bak ze aan een kant. Draai ze voorzichtlg om zodra een kant bruin is. Bak de andere kant goudbruin, laat de vis uitlekken en dien direct op met citroen- of limoenpartjes.','/static/img/india.jpg',4,2,8,3,6,1);
INSERT INTO `recipe` VALUES (223,'Gemengde Groenten met Kokossaus','-','225 g aardappelen, in blokjes van 5 cm - 145 g sperziebonen - 150 g wortels, geschrapt, in stukken van 5 cm - 5 dl heet water - 1 kleine aubergine, ca. 225 g','2018-09-26 19:09:45.086420','Doe de aardappelen, bonen en wortels in een grote pan, voeg 3 dl heet water toe en breng dit aan de kook. Draai het vuur iets lager, dek de pan af en laat de inhoud 5 min. koken. Snijdt de in vieren gedeelde aubergine in stukken van 5 cm. Spoel ze af. Voeg ze toe. Meng het kokosmelkpoeder met 2 dl heet water en voeg dit met het zout aan de groenten toe. Breng aan de kook, dek de pan af en laat 6-7 min. sudderen. Verwarm de olie in een kleine pan op een matlg vuur en voeg de kerrieblaadjes en de chilipepers toe. Voeg direct daarna de komijn, koriander en kurkuma toe. Roerbak de specerijen 15-20 sec.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (224,'Gevulde Aubergines met gekruide Tamarindesaus','-','12 mini-aubergines - 2 el plantaardige olie - 1 kleine ui, gehakt - 2 tl geraspte verse gemberwortel, 2 tl geperste knoflook - 1 tl korianderzaad, 1 tl komijnzaad - 2 tl wit maanzaad, 2 tl sesamzaad - 2 tl gedroogde (ongezoete','2018-09-26 19:09:45.086420','Maak drie diepe inkepingen in de aubergines, snijd ze niet volledig door. Laat ze 20 min. in gezouten water weken. Verwarm de helft van de olie in een pan en bak de ui 3-4 min. Voeg de gember en knoflook toe en bak 30 sec. Voeg het koriander- en komijnzaad toe en bak dit 30 sec., voeg dan het maanzaad, sesamzaad en kokos toe. Roerbak 1 min. Laat het mengsel enigszins afkoelen en pureer de specerijen in de keukenmachine; voeg 7 el warm water toe. Het mengsel moet dik en enigszins grof zijn. Meng de pinda''s, het chilipoeder en het zout met het specerijen mengsel. Laat de aubergines op keukenpapier uitlekken. Vul de inkepingen met het specerijenmengsel en bewaar de rest van het mengsel. Verwarm de overgebleven olie op een matlg vuur in een wok, karahi of koekenpan','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (225,'Aardappelen met Chilipeper-Tamarindesaus','-','450 g kleine nieuwe aardappelen, gewassen en gedroogd - 25 g hele gedroogde, rode chilipepers - 1 1/2  tl komijnzaad - 4 teentjes knoflook - 6 el plantaardige olie - 4 el dik tamarindesap - 2 el tomatenpuree - 4 kerrieblaadjes - 1 tl kristalsuiker - 1/2 tl asafoetlda - zout - koriandertakjes en citroenpartjes, voor de garnering','2018-09-26 19:09:45.086420','Kook de aardappelen tot ze gaar zijn, laat ze niet verkruimelen. Controleer of ze gaar zijn door er met een mes in te prikken; als het mes niet schoon blijft, zijn ze nog niet gaar. Giet ze af en laat de aardappelen in koud water afkoelen zodat ze niet verder kunnen koken. Week de chilipepers 5 min. in warm water. Giet ze af en pureer ze samen met het komijnzaad en de knoflook in een vijzel of keukenmachine tot een grof mengsel. TIP: U kunt in plaats van nieuwe aardappelen ook stukken bataat gebruiken. Verwarm de olie en bak het mengsel en de resterende ingredienten tot de olie zich begint af te scheiden. Voeg de aardappelen toe. Laat het mengsel 5 min. afgedekt sudderen. Garneer met koriander en citroen.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (226,'Gevulde Bananen','-','4 groene bananen of pisangs - 2 el gemalen koriander - 1 el gemalen komijn - 1 tl chilipoeder - 1/2 tl zout - 1/4 tl gemalen kurkuma - 1 tl kristalsuiker - 1 el kikkererwtenmeel - 3 el gehakte, verse koriander, plus extra takjes voor de garnering - 6 el plantaardige olie - 1/2 tl komijnzaad - 1/4 tl zwart mosterdzaad','2018-09-26 19:09:45.086420','Verwijder de schil van de bananen of de pisangs, verdeel ze in drie gelijke stukken. Maak een inkeping in de lengterichtlng van de stukken banaan, snijd ze niet helemaal door. Meng gemalen koriander, komijn, chilipoeder, zout','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (227,'Samosa''s','-','Voor 30 stuks: 1 pak loempiadeeg, ontdooid en in een vochtlge doek gewikkeld plantaardige olie, voor het frituren verse korianderchutney, voor erbij. Vulling: 3 grote aardappelen, gekookt en gepureerd - 75 g diepvrieserwten','2018-09-26 19:09:45.086420','Meng alle ingredienten voor de vulling zorgvuldig in een grote schaal. Voeg zout en citroensap naar smaak toe. Pak een strook deeg, leg 1 el vulling aan een uiteinde en vouw het deeg samen tot een driehoek. Herhaal dit met de andere stukken deeg. Verwarm genoeg olie in de pan om de samosa''s te kunnen frituren. Bak ze in gedeelten goudbruin. Serveer direct. Verse korianderchutney of een chilisaus zijn ideale dipsauzen bij dit gerecht. TIP: Filodeeg vormt een uitstekend alternatlef. Bestrijk de filo-samosa''s met olie en bak ze 25 min. in een hete oven.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (228,'Aardappelen met Yoghurtsaus','-','12 nieuwe aardappelen, gehalveerd - 3 dl yoghurt, geklopt met 3 dl water - 1/4 tl gemalen kurkuma - 1 tl chilipoeder - 1 tl gemalen koriander - 1/2 tl gemalen komijn - 1 tl zout - 1 tl bruine basterdsuiker - 2 el plantaardige olie - 1 tl komijnzaad - 1 el gehakte verse koriander, plus extra - takjes voor de garnering - 2 verse groene chilipepers, gesneden','2018-09-26 19:09:45.086420','Kook de gehalveerde nieuwe aardappelen in de schil in een grote pan met water en zout tot ze net gaar zijn. Giet ze af en zet ze apart. Meng de yoghurt, kurkuma, gemalen koriander, gemalen komijn, suiker, het water','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (229,'SaffraanRijst','-','450 g basmatlrijst, 20-30 min. geweekt in water - 7,5 dl water - 3 groene kardemompeulen - 2 kruidnagels - 1 tl zout - 45 ml halfvolle melk - 1/2 tl safraandraadjes, verkruimeld','2018-09-26 19:09:45.086420','TIP: De saffraanmelk kan worden verwarmd in de magnetron. Meng de melk met de saffraan in een geschikt schaaltje en verwarm 1 min. op een lage stand. Giet de rijst af en doe hem in een koekenpan. Giet het water erbij. Voeg kardemom, kruidnagels en zout toe. Roer en breng aan de kook. Temper het vuur, dek de pan af en laat de rijst 5 min. koken. Doe intussen de melk in een pannetje. Voeg de saffraandraadjes toe en verwarm de melk langzaam. Roer de saffraanmelk door de rijst. Dek weer af en laat alles nog 5-6 min. zachtjes koken. Haal de pan van het vuur zonder het deksel eraf te nemen. Laat de rijst ca. 5 min. staan, maak hem voor het opdienen met een vork los. TIP: Was de rijst voor het weken in koud water voor een langere en drogere korrel.','/static/img/india.jpg',4,2,6,3,6,1);
INSERT INTO `recipe` VALUES (230,'Noten-Pulao','-','1-2 el plantaardige olie - 1 ui, fijngesneden - 1 teentje knoflook, geperst - 1 grote wortel., grof geraspt - 225 g basmatlrijst, 20-30 min. geweekt 1 tl komijnzaadjes - 2 tl gemalen koriander - 2 tl zwarte mosterdzaadjes (naar keuze) 4 groene kardemompeulen - 4','2018-09-26 19:09:45.086420','Verhit de olie. Bak ui, knoflook en wortel 3-4 min. Giet de rijst af en doe hem met de specerijen bij de ui. Bak al roerend 2 min., zodat alle korrels met olie bedekt worden. Doe al roerend de groentebouillon erbij. Voeg laurierblad, zout en peper toe. Breng het geheel aan de kook, zet het vuur zachter, dek af en laat alles heel zachtjes 10-12 min. koken. Haal de pan van het vuur zonder het deksel eraf te halen. Laat 5 min. staan',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (232,'MangoChutney','-','Voor 450G: 3 stevige groene mango''s, in blokjes - 1,5 dl appelazijn - 130 g rietsuiker - 1 kleine verse rode chilipeper, gehalveerd  - 1 stukje verse gember van 2,5 cm','2018-09-26 19:09:45.086420','Doe de stukjes mango in een pan, voeg de appelazijn toe en dek af. Kook 10 min. op laag vuur, roer de overgebleven ingredienten erdoor. Breng al roerend langzaam aan de kook. Zet het vuur laag en laat het mengsel 30 mln. pruttelen, tot het stroperig wordt. Laat afkoelen, schep het dan in een warme gesteriliseerde glazen pot en sluit af. Laat 1 week staan voor gebruik.','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (233,'KorianderChutney','-','Voor 400G: 2 el plantaardige olie - 1 gedroogde rode chilipeper -','2018-09-26 19:09:45.086420','Verhit de olie en bak de eerste acht ingredienten tot het kokos lichtbruin wordt. Breng op smaak en laat afkoelen. Gebruik een stamper om het specerijenmengsel in een vijzel fijn te wrijven met de chili pepers, koriander en muntsaus en wat zout. Roer het citroensap erdoor. Doe over in een gesteriliseerde glazen pot, sluit af en bewaar koel.','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (234,'TomatenChutney','-','Voor 450-500G: 6 el plantaardige olie - 1 kaneelstokje, 5 cm lang - 4 kruidnagels - 1 tl vers geroosterde komijnzaadjes - 1 tl nigellazaadjes - 4 laurierblaadjes - 1 tl mosterdzaadjes, fijngewreven - 4 teentjes knoflook, geperst - stukje verse gember, 5 cm lang  - geraspt 1 tl chilipoeder - 1 tl gemalen geelwortel - 4 el bruine suiker - 800 g tomaten in blik','2018-09-26 19:09:45.086420','Verhit de olie en bak de eerste zes ingredienten. Voeg de knoflook toe en bak alles goudbruin. Voeg de overige specerijen, suiker en het tomatensap toe. Laat op een laag vuur indikken, doe de tomaten erbij en kook 15-20 min. Laat afkoelen en schep in een gesteriliseerde glazen pot en sluit af.','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (235,'Munt-KokosChutney','TIP: Deze chutney kan 5 dagen in de koelkast worden bewaard.','Voor 3,5 DL : 50 g verse muntblaadjes - 6 el geraspt kokos - 1 el sesamzaadjes - 1/4 tl zout - 1,75 dl yoghurt','2018-09-26 19:09:45.086420','Snijd de verse muntblaadjes met een scherp keukenmes zeer fijn. Doe alle ingredienten in een keukenmachine of blender en pureer alles tot een gladde massa. Schep in een gesteriliseerde glazen pot, sluit af en bewaar voor gebruik op een koele plaats.','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (236,'AbrikozenChutney','-','Voor CA. 450G: 450 g gedroogde abrikozen, in kleine blokjes - 1 tl garam masala - 275 g lichtbruine basterdsuiker - 4,5 dl moutazijn - 1 tl verse gember, geraspt - 1 tl zout - 75 g rozijnen - 4,5 dl water','2018-09-26 19:09:45.086420','Doe alle ingredienten in een pan en roer alles goed door. Breng aan de kook, laat onder af en toe roeren 30-35 min. pruttelen. Haal de chutney van het vuur als hij stroperig wordt. Laat de chutney afkoelen, schep hem in een warme gesteriliseerde glazen pot en sluit af. Koel bewaren na','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (237,'Tomaat-ChilipeperChutney','-','Voor CA. 4,75DL: 1 rode paprika - 4 tomaten, fijngesneden - 2 verse groene chilipepers, fijngesneden 1 teentje knoflook, geperst - 1/4 tl zout -','2018-09-26 19:09:45.086420','','/static/img/india.jpg',4,5,6,3,6,1);
INSERT INTO `recipe` VALUES (238,'Tafelzuur van Hete Limoen','-','Voor 450G: 25 limoenen, in partjes - 225 g zout - 50 g fenegriek poeder - 50 g mosterd poeder - 150 g chilipoeder - 1 el gemalen geelwortel - 6 dl mosterdolie - 1 tl asafoetlda - 25 g gele mosterdzaadjes, fijngewreven.','2018-09-26 19:09:45.086420','Doe de limoenen in een grote gesteriliseerde glazen pot of schaal. Voeg het zout toe en schud alles om. Sluit af en laat het 1 week staan op een warme plaats, totdat de limoenen zacht en een beetje vaalbruin zijn geworden. Meng fenegriek, mosterd poeder, chilipoeder en geelwortel en doe ze bij de limoenen. Sluit af en laat nog 2-3 dagen op een warme plaats staan. Verhit de olie en bak de asafoetlda en mosterdzaadjes. Giet de olie over de limoenen als hij begint te walmen. Meng goed. Sluit af en laat alles voor gebruik 1 week op een warme plaats staan.','/static/img/india.jpg',4,6,6,3,6,1);
INSERT INTO `recipe` VALUES (239,'Tafelzuur van Groene Chilipeper','-','Voor 450-550G : 50 g mosterdzaadjes, fijngewreven - 50 g versgemalen komijnzaadjes - 1 1/2 el gemalen geelwortel - 50 g geperste knoflook - 1,5 dl blanke azijn - 75 g kristalsuiker - 2 tl zout - 1,5 dl mosterdolie - 20 kleine teentjes knoflook - 450 g kleine verse groene chilipepers, gehalveerd.','2018-09-26 19:09:45.086420','Meng de mosterdzaadjes, komijn, geelwortel, geperste knoflook, azijn, suiker en het zout in een gesteriliseerde glazen pot of kom. Sluit af en laat 24 uur staan. Op deze manier kunnen de specerijen intrekken en de suiker en het zout smelten. Verhit de mosterdolie en bak het specerijen mengsel zachtjes ca. 5 min. (Houd een raam open tljdens het bakken met mosterdolie','/static/img/india.jpg',4,6,6,3,6,1);
INSERT INTO `recipe` VALUES (240,'Fruitraita','-','Voor 4 personen: 3,5 dl yoghurt - 75 g pitloze druiven, gewassen en gedroogd - 50 g gepelde walnoten - 2 stevige bananen, in plakjes - 1 tl kristalsuiker - 1 tl versgemalen komijnzaad - zout - 1/4 tl vers geroosterde komijnzaadjes  - chilipoeder, voor de garnering.','2018-09-26 19:09:45.086420','Doe de yoghurt, druiven en walnoten in een kom. Schep de plakjes banaan erdoor. Roer de suiker, gemalen komijn en het zout erdoor. Zet in de koelkast en strooi de geroosterde komijnzaadjes en het chilipoeder er voor gebruik overheen.','/static/img/india.jpg',4,6,7,3,6,1);
INSERT INTO `recipe` VALUES (241,'Tomaat-Uisalade','-','2 limoenen - 1/2 tl kristalsuiker - een paar verse takjes koriander, fijngesneden, plus wat extra voor de garnering - 2 uien, fijngesnipperd - 4 stevige tomaten, fijngesneden - 1 komkommer','2018-09-26 19:09:45.086420','Pers de limoenen uit boven een kom. Voeg suiker, zout en peper toe en laat staan tot de suiker en het zout helemaal zijn opgelost. Meng alles goed. Voeg de overige ingredienten toe en meng goed. Laat afkoelen en garneer voor gebruik met verse koriander en munt.','/static/img/india.jpg',4,6,6,3,6,1);
INSERT INTO `recipe` VALUES (242,'Banaan-Kokosraita','-','2 bananen - 3,5 dl yoghurt -  2 el geraspt kokos - 1 el chilipoeder -zout - limoensap.','2018-09-26 19:09:45.086420','Voor een banaan-kokosraita snijdt u, 2 bananen in plakjes. Schep ze door 3,5 dl yoghurt. Roer 2 el geraspt kokos en een snufje chilipoeder erdoor. Voeg zout en limoensap naar smaak toe.','/static/img/india.jpg',4,6,6,3,6,1);
INSERT INTO `recipe` VALUES (243,'Kruidige Yoghurt','-','Voor 4,5 DL: 4,5 dl yoghurt - 1/2 tl versgemalen venkelzaadjes - 1/2 tl kristalsuiker - 4 el plantaardige olie - 1 gedroogde rode chilipeper - 1/4 tl mosterdzaadjes - 1/4 tl komijnzaadjes  - 4-6 kerrieblaadjes - een snufje asafoetlda en gemalen geelwortel - zout','2018-09-26 19:09:45.086420','Meng de yoghurt met de venkel en suiker. Voeg zout toe en zet in de koelkast. Verhit de olie en bak de overige ingredienten. Giet de olie en specerijen over de. yoghurt als de chilipeper donker wordt en meng alles. Dek af en bewaar voor gebruik op een koele plaats.','/static/img/india.jpg',4,6,5,3,6,1);
INSERT INTO `recipe` VALUES (244,'Komkommerraita','Variatie: Gebruik in plaats van komkommer 2 ontvelde, van zaadjes ontdane en fijngesneden tomaten en 1 el gehakte verse koriander.','Voor CA. 6 DL: 1/2 komkommer - 1 verse groene chilipeper, zonder zaden en fijngesneden - 3 dl yoghurt - 1/4 tl zout - 1/4 tl gemalen komijn','2018-09-26 19:09:45.086420','Snijd de komkommer in blokjes en doe ze in een grote kom. Voeg chilipeper toe.  Roer de yoghurt met een vork tot een gladde massa, meng hem dan met het kom kommer- en chilipepermengsel. Roer het zout en de komijn erdoor. Dek de schaal af met vershoudfolie en zet de raita voor gebruik in de koelkast.','/static/img/india.jpg',4,6,6,3,6,1);
INSERT INTO `recipe` VALUES (245,'Chocolade Frangelico pudding met hazelnoot','De pudding kan een dag voor opdienen worden gemaakt en in de koelkast bewaard.','<i>8-10 personen</i> 
4 eidooiers 
100 g poeder suiker 
½ tl vanilla extract 
4 el cocoa poeder 
250 g mascarpone 
60ml frangelico of zoete wijn ( frangelico is een hazelnoot likeur) 
175 ml slagroom 
45 gr geroosterde en fijn gehakte hazelnoot','2018-09-26 19:09:45.086420','1. In een grote metaal of glazenkom, sla de eidooiers en de suiker tot het smuiig is.  2. verwarm de kom aubain marie en sla de substantie tot het dik wordt. voeg de vanille, de cacao, mascarpone, en frangelico toe. blijf roeren tot de pudding dik is.  3. Giet het mensel in kleine thee of expresso kopjes.  4. Laat het 4 uur afkoelen in de koelkast. Maak op met de slagroom en de geroosterde gehakte hazelnoten.','/static/img/choco_frang_pudding.jpg',6,3,5,4,9,1);
INSERT INTO `recipe` VALUES (248,'Mariscada','Zeevruchtensoep','Olijfolie, voor het bakken 
2 middelgrote witte uien, gehakt 
2 middelgrote groene paprika''s, gehakt 
2 kreeften a 650 gr, rompen gescheiden van de  koppen, staart niet gekraakt en in stukken van 2, 5 cm, en scharen gekraakt 
230 gr grote rauwe garnalen, gepeld, zonder darm kanaal, plus schalen 
2, 3 dl tomatensaus uit blik 
2, 3 dl witte wijn 
2 laurier blaadjes 
9 dl strandgapernat 
9 dl water v
24 strandgapers, schoongemaakt 
24 mosselen, schoongemaakt 
Snufje saffraan 
230 gr Sint-Jakobsschelpen, schoongemaakt 
1/2 bosje culantro, fijngehakt 
Zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Schenk een dunne laag olijfolie in een grote pan en fruit 1 ui en 1 paprika tot ze zacht zijn. 

2. Voeg de koppen van de kreeft en de schalen van de garnalen toe en bak tot ze rood kleuren. Vroeger tomatensaus, witte wijn en 1 laurierblaadje toe, schenk het strandgapernat en water erbij en kook minstens 2 uur. Giet af en bewaar de bouillon. 

3. Schenk een dunne laag olijfolie in een middelgrote pan en bak de andere ui en paprika tot ze zacht zijn. 

4. Voeg de strandgapers, mosselen, het andere laurierblaadje en een snufje saffraan toe. Schenk de bewaarde bouillon erbij en laat alles onafafgedekt circa 20 minuten pruttelen. 

5. Voeg de garnalen, Sint-Jakobsschelpen en kreeften toe en kook circa 8 minuten. Voeg de culantro toe en breng op smaak met zout en peper.','/static/img/cari.jpg',10,4,8,5,10,1);
INSERT INTO `recipe` VALUES (249,'Sopa de frijoles negros','Zwarte bonensoep','<i> Voor 4 personen </i> 
1, 8 l water 
230 gr gedroogde zwarte bonen, gedopt en afgespoeld 
1 middelgrote Cubanelle-paprika, in de lengte in vieren 
2 laurierblaadjes 
2 el plus 1, 3 dl olijfolie 
1 rode, groene en gele paprika, fijngehakt 
1 grote witte ui, fijngehakt 
50 ml tomatenpuree 
1/2 el gemalen komijn 
1/2 el gedroogde oregano 
5 teentjes knoflook, fijngehakt 
1 el suiker 
1 el witte azijn 
Zout 
Verse oregano, voor de garnering','2018-09-26 19:09:45.086420','1. Doel water, zwarte bonen, Cubanelle-paprika en laurierblaadjes in een grote pan en breng aan de kook op matig tot hoog vuur. Zet het vuur laag en dek de pan deels af. Kook af en toe roerend circa 1 1/2 uur tot de bonen zacht zijn. 

2. Haal de pan van het vuur, verwijder de paprika en laurierblaadjes en zet apart. 

3. Verhit 2 el olijfolie in een koekenpan en bak paprika''s en ui op matig vuur tot ze zacht zijn. Roer de tomatenpuree erdoor en voeg komijn en oregano toe. Bak circa 5 minuten en zet apart 

4. Doe de rest van de olie in een andere pan en bak het knoflook op matig tot laag vuur goudbruin. Zet de bonen weer op het vuur en voeg paprika mengsel, knoflook met aanhangende olie, suiker en azijn toe. Breng op smaak met zout en kook twintig minuten zachtjes om de smaken met elkaar te laten vermengen. Garneer met een takje verse oregano.','/static/img/cari.jpg',10,4,6,5,10,1);
INSERT INTO `recipe` VALUES (250,'Soup Jookfoyer','Pompoen soep','500 gr callalooblaadjes 
500 gr pompoen 
250 gr okra 
250 gr spinazie 
1, 25 l runderbouillon 
60 gr boter 
1 grote ui, gebakken in olie 
2 el bloem 
1 tl witte peper 
2 scheutjes worcestersaus','2018-09-26 19:09:45.086420','1. Kook de callaloo, pompoen, okra en spinazie in runderbouillon. Voeg de boter en ui toe. Roer de bloem erdoor. Voeg peper, worcestersaus en zout naar smaak toe. 

2. Serveer de soep met wat room.','/static/img/cari.jpg',9,4,6,3,10,1);
INSERT INTO `recipe` VALUES (251,'Garnalen kokos soep','','<i> Voor 2 personen </i> 
3 teentjes knoflook 
1/2 tl korianderzaadjes, geroosterd 
1 blokje kippenbouillon 
Stukje verse gember van 4 cm, geraspt 
500 ml kokosmelk 
60 ml water 
1/2 limoen of 5 a 6 limoenblaadjes, voor de smaak 
2 smalle reepjes Spaanse peper, zonder zaden 
250 gr garnalen, gepeld 
Handjevol basilicum, fijngehakt','2018-09-26 19:09:45.086420','1. Breng alle ingrediënten aan de kook en laat het geheel 15 minuten sudderen 
2. Voeg de garnalen toe aan de soep en kook ze 2 of 3 minuten mee. Serveer de soep gegarneerd met basilicum.','/static/img/cari.jpg',9,4,4,3,10,1);
INSERT INTO `recipe` VALUES (252,'Cocktail tropical','Verse garnalen met tropische cocktailsaus','<i> Voor 6 personen </i> 
1 middelgrote tomaat, gehalveerd 
1 kleine witte ui, gehalveerd 
1 l water met zout 
1 citroen, gehalveerd 
1 middelgrote witte uien, gehalveerd 
500 gr (circa 40 a 50) gepelde rauwe kleine garnalen, overlangs gehalveerd 
Ijskoud water 
1, 3 dl limoensap 
1, 3 dl sinaasappelsap 
1, 3 dl ketchup 
2 el olijfolie 
1 a 2 el zure, hete Mexicaanse saus (zoals temecula, Valentina of Buffalo) 
2 kleine, rijpe avocado''s, geschild, ontpit en in blokjes 
2 middelgrote tomaten, fijngehakt 
1 kleine rode ui, fijngehakt 
1/3 bosje vers gehakte koriander, plus enkele takjes voor de garnering 
Zout 
tostadas, tortillachips of zoute crackers, voor erbij','2018-09-26 19:09:45.086420','1. Gril de gehalveerde tomaat en kleine witte ui en zet apart. 

 2. Doe water met zout, citroen en gehalveerdde middelgrote witte ui in een grote soeppan en breng aan de kook. Voeg de garnalen toe, kook 3 minuten en schep de garnalen in een kom met ijskoud water. Wanneer u geen rauwe garnalen, maar alleen gekookte kunt krijgen, kunt u stapt 2 overslaan. 

3. Pureer gegrilde tomaat, gegrilde ui, limoensap en sinaasappelsap in een keukenmachine. Door de puree in een kom en meng ketchup, hete saus en olijfolie erdoor. Voeg garnalen, avocado, tomaat, rode ui en koriander toe, breng op smaak met zout en zet circa 1 uur in de koelkast. 

4. Schep het mengsel in dessertglazen, cocktailglazen of kommetjes.
Garneer met takjes koriander en serveer met tostadas, tortilla chips of zoute crackers.','/static/img/cari.jpg',10,8,4,2,10,1);
INSERT INTO `recipe` VALUES (253,'Oester cocktail','','<i> Voor 2-12 personen </i> 
24 oesters, zonder schelp 
 Voor de saus:  
250 ml tomatenketchup 
60 ml water 
1 tl verse koriander, fijngehakt 
1/4 tl Spaanse peper, fijngehakt 
1 el verse limoensap 
Peper en zout','2018-09-26 19:09:45.086420','1. Meng de ingrediënten voor de saus en laat alles 1 uur rusten. Verdeel de oesters over 2 glazen. Giet de saus er over en dien ze op.','/static/img/cari.jpg',9,7,4,4,10,1);
INSERT INTO `recipe` VALUES (254,'Ensalada Criolla','Creoolse salade','<i> Voor 4 personen </i> 
1 grote avocado, geschild, ontpit en in stukjes 
2 middelgrote tomaten, in blokjes 
1 middelgrote rode ui, gesnipperd 
6 el vinaigrette Cubana (zie recept vinaigrette cubana) 
Zout','2018-09-26 19:09:45.086420','1. Doe avocado, tomaat en ui in een kom. Voeg de vinaigrette toe, meng en breng op smaak met zout.','/static/img/cari.jpg',9,9,6,2,10,1);
INSERT INTO `recipe` VALUES (255,'Ensalada de Mariscos','Zeevruchtensalade','<i> Voor 4 personen </i> 
 <table><tr><td width=350>
2 citroenen, gehalveerd 
2 laurier blaadjes 
1/2 tl hete pepersaus 
Zout 
230 gr rauwe garnalen, geteld, zonder darmkanaal 
Ijskoud water 
130 gr Sint-Jakobsschelpen 
3 middelgrote pijlinktvissen, in ringen 
Olijfolie, voor het bakken 
2 teentjes knoflook, in plakjes 
24 strandgapers, schoongemaakt 
24 mosselen, schoongemaakt 
50 ml witte wijn, of meer indien nodig 
  </td><td width=350>
1/4 bosje tijm, alleen de blaadjes, fijngehakt 
1 kleine rode ui, fijngehakt 
1 stengel bleekselderij, fijngehakt 
1 geroosterde rode paprika, fijngehakt 
4 verse basilicumblaadjes, fijngehakt 
1 el olijfolie 
1/2 tl vers limoensap 
Basilicumblaadjes, voor de garnering [+ 1 1e regel] 
   </td></table>','2018-09-26 19:09:45.086420','1. Vul een grote soeppan voor 3/4 met water en breng aan de kook. Voeg citroenen, laurierblaadjes, pepersaus en zout toe, en laat enkele minuten koken. Voeg de garnalen toe en kook circa 4 minuten. 

2. Schep de garnalen in een kom met ijskoud water. Breng het kookvocht opnieuw aan de kook en herhaal genoemde werkwijze met de Sint-Jakobsschelpen (kooktijd 3 minuten) en inktvissen ringen (kooktijd 1 minuut). Voeg zonodig meer ijs aan het water toe. 

3. Schenk een dunne laag olijfolie in een koekenpan en bak het knoflook goudbruin. Voeg de strandgapers en wijn toe, waarbij u zonodig extra wijn toevoegt. Stoom afgedekt 4 minuten of tot de eerste strandgapers opengaan. Voeg de mosselen toe en kook tot alle schelpen open zijn. 

4. Haal de strandgapers en mosselen uit de pan en zet apart. Laat de pan op het vuur staan. Doe de tijm in de pan en laat de bouillon tot een vierde inkoken. Zeef en laat op kamertemperatuur komen. 

5. Meng ui, bleekselderij, geroosterde paprika, basilicum, 1 el olijfolie en limoensap in een kom. Halveer de garnalen en Sint-Jakobsschelpen en doe ze samen met de gezeefde bouillon in de kom. Haal de mosselen en strandgapers uit hun schelpen, vroeg ze toe en breng zonodig op smaak met zout en peper. Laat de salade minstens 30 minuten in de koelkast manieren, garneer met het basilicum en serveer.','/static/img/cari.jpg',10,9,4,3,10,1);
INSERT INTO `recipe` VALUES (256,'Tostones y maduros','Zoete en groene bakbanaan','<i> Voor 4 personen </i> 
Voor de tostones y maduros: 
Plantaardige olie, voor het bakken   
2 grote, rijpe bakbananen (maduros), gepeld en in schuine plakken 
2 grote, groene bakbanaan (tostones), gepeld in inschrijven van 4 centimeters 

Voor de rode uien in het zuur: 
1 rode ui, in dunne ringen 
1, 3 dl vers limoensap','2018-09-26 19:09:45.086420','1. Schenk een laag van circa 2, 5 cm olie in een pan en laatste olie gloeiend heet worden. 

2. Voor de maduros: bak de rijpe bak benaderen al omscheppend goudbruin en schep ze op een bord. 

3. Voor de tostones: bak de groene bakbananen al omscheppend circa 8 minuten of tot ze helemaal zacht zijn. Voor ze aan de rijpe bakbananen toe. Leg een natte doek over de bananen en prak ze met uw handen. 

4. Laatste olie weer gloeiend heet worden en bak de geprakt te bakbananen tot ze rondom krokant zijn. Schep de tostonesy maduros op een bord. 

5. Voor de rode ui in het zuur: marineer de ui enkele uren in het limoensap. Schep dit mengsel over de bakbananen en serveer.','/static/img/cari.jpg',10,6,6,5,10,1);
INSERT INTO `recipe` VALUES (257,'Fruitsalade met palmharten','','<i> Voor 4 personen: </i> 
500 gr palmharten, geblancheerd en afgekoeld 
1 kropsla, in de reepjes gescheurd 
4 mango''s, geschild en in dunne schijfjes 
2 carambola''s, in zeer dunne schijfjes 
1 rijpe kanteloep, geschild, zonder pitten en in blokjes 
1/2 appel, geschild en in blokjes 
2 el sinaasappelsap 
6 el limoensap  
2 tl honing 
2 1/2 el lichte mangochutney 
1 tl mosterd poeder 
180 ml koudgeperste olijfolie 
Peper en zout','2018-09-26 19:09:45.086420','1. Leg de palmharten in de koelkast. Maak een bedje van slablaadjes op een platte schaal. Leg hierop de mango, carambola, kanteloep en appel. Besprenkel het fruit met sinaasappelsap. 

2. Snijd de palm harten in acht cm grote stukken en leg deze op het fruit. Maak in de keukenmachine een saus van limoensap, honing, chutney en mosterdpoeder. Zet de machine in een lage stand en giet de olijfolie erbij. 

3. Breng de saus op smaak met peper en zout. Giet de saus (door een zeef, als u de chutneyvruchtjes wilt verwijderen) over de salade. Dien de salade koud op.','/static/img/cari.jpg',9,9,7,4,10,1);
INSERT INTO `recipe` VALUES (258,'Salade van Palmharten','','<i>Voor 2 personen: </i> 
250 gr palmharten 
1 gele paprika, zonder zaden en fijngesneden 
1 rode paprika, zonder zaden en fijngesneden 
1 groene paprika, zonder zaden en fijngesneden 
1 kropsla, in de reepjes gescheurd 
1/2 teentje knoflook 
4 el olijfolie 
4 el Dragonazijn (of azijn van uw keuze) 
Zwarte peper 
2 takjes peterselie','2018-09-26 19:09:45.086420','1. Snijd de palm harten in stukjes van 1 cm. Besprenkel ze met azijn en laatste een nacht in de koelkast staan. Giet ze daarna af en vang de azijn op. Wrijf met het knoflook langs de binnenkant van een houten slakom. Doe de sla erin en voeg palmharten en paprika toe. Schep de sla om. 

2. Maak de dressing van azijn, olijfolie, zwarte peper en eventueel wat zout. Giet de dressing over de salade. Strooi er fijngehakte peterselie over.','/static/img/cari.jpg',9,9,6,3,10,1);
INSERT INTO `recipe` VALUES (259,'Salade met zwarte bonen','','<i> Voor 4 personen: </i> 
250 gr zwarte bonen uit blik 
125 gr papaja, geschild, zonder pitten en in blokjes 
125 gr mango, geschild, zonder pitten en in blokjes 
2 el rode paprika, fijngesneden 
2 el groene paprika, fijngesneden 
2 el gele paprika, fijngesneden 
1/4 tl Spaanse peper, fijngehakt 
2 el vers limoensap 
2 el plantaardige olie 
1 el rozijnen 
2 el verse peterselie 
1 el amandelen, gehakt 
Peper en zout','2018-09-26 19:09:45.086420','1. Schep in een slakom de bonen om met de stukjes fruit en paprika. Roer limoensap en olie door elkaar en giet het mengsel over de salade.  

2. Strooi er rozijnen, peterselie en amandelen over. Serveer deze salade als voorgerecht','/static/img/cari.jpg',9,9,6,3,10,1);
INSERT INTO `recipe` VALUES (260,'Moros y chistianos','Moren en christenen - Rijst met zwarte bonen','<i> Voor 8 tot 10 personen: </i> 
180 gr gedroogde zwarte bonen 
2 l water 
2 1/4 tl zout 
1 takje verse tijm, fijngehakt 
1/2 groene paprika, fijngesneden 
3 el plantaardige olie 
Stukje gepekeld mager varkensvlees, in blokjes 
2 teentjes knoflook, fijngesneden 
1/4 Spaanse peper, zonder zaden en fijngehakt 
2 uien, gesnipperd 
750 gr rijst 
1/2 tl zwarte peper','2018-09-26 19:09:45.086420','1. Was de bonen in een zeef onder koud water tot het water helder is. Breng de bonen in een grote pan op hoog vuur aan de kook in 1 l water, samen met 1 tl zout, de tijm en de helft van de paprika. Draai het vuur laag en kook de bonen in circa 3 uur gaar. Voeg eventueel nog wat water toe. Giet de gare bonen af en bewaar het vocht om de rijst in te koken. 

2. Wrijf 1 el bonen in de vijzel tot een glad mengsel. 

3. Verhit de olie in een grote koekenpan en bak hierin het varkensvlees. Schep het vlees uit de pan en laat het uitlekken op keukenpapier. Zet het vlees apart. 

4. Doe met knoflook, de rest van de paprika, de Spaanse peper en de uisnippers in de koekenpan en fruit ze, al roerende, 5 minuten. Roer de bonenmengsel erdoor. Schep de bonen en het vlees erdoor. Laat het mengsel tien minuten oplaag vuur sudderen. 

5. Schep het geheel met het kookvocht van de bonen in een grote pan en voeg de rijst toe, met 1 1/4 tl zout en zwarte peper. Breng het geheel al roerend aan de kook en laat het nog eens 20 minuten zachtjes doorkoken tot de rijst gaar is en het vocht helemaal verdampt is. Proef of het gerecht voldoende gekruid is en breng het eventueel op smaak met wat peper en zout.','/static/img/cari.jpg',9,6,6,5,10,1);
INSERT INTO `recipe` VALUES (261,'Pimenta dioica','Met piment ingelegde bietjes en eieren','<i> Voor 6 personen: </i> 
6 hardgekookte eieren 
12 bietjes, gekookt en geschild 
1 uitje, in dunne ringen 
6 hele zwarte peperkorrels 
6 witte peperkorrels of 1 Spaanse peper 
1 tl hele piment bessen 
3 hele kruidnagels 
1 tl mout azijn 
1 tl zout 
125 gr basterdsuiker 
1 el Jamaicaanse witte rum','2018-09-26 19:09:45.086420','1. Meng in een vuurvaste kom eieren en bietjes. Voeg peper, Spaanse peper, piment bessen en kruidnagels toe. Breng in een pan azijn aan de kook met zout en suiker. Voeg rum toe. Giet het hete mengsel over de bietjes en eieren. 

2. Laat het geheel afkoelen en zet het een week in de koelkast. Bewaar het maximaal 2 weken in de koelkast.','/static/img/cari.jpg',9,6,6,9,10,1);
INSERT INTO `recipe` VALUES (262,'Creoolse aubergine','','<i> Voor 6 personen: </i> 
3 aubergines, in blokjes en licht gezouten 
2 grote uien, in vieren 
2 teentjes knoflook, fijngesneden 
6 tomaten, ontveld en in vieren 
3 groene paprika''s zonder zaden en fijngehakt 
3 rode paprika''s, zonder zaden en fijngehakt 
1/2 Spaanse peper, zonder zaden en fijngehakt 
1 stengel bleekselderij, fijngehakt 
1 takje peterselie, fijngehakt 
2 el olijfolie 
1 el tomatenpuree 
125 ml water 
Snufje oregano 
Snufje tijm 
1/4 tl zout 
Zwarte peper 
1 el rum 
60 gr Cheddar en Parmezaanse kaas, geraspt','2018-09-26 19:09:45.086420','1. Dep de aubergineblokjes droog en bak ze op matig vuur in de olijfolie. Schep ze van de pan in een oven schaal. Verwarmde oven voor op 150°C. Roerbak ui, knoflook, tomaat, paprika en selderij 5 minuten in de koekenpan. Voeg de overige ingrediënten, behalve de rum, toe en kook er een dikke saus van. Roer de rum door de saus en giet het mengsel over de aubergine. 

2. Strooi de geraspte kaas erover en bak het gerecht 15 à 20 minuten of tot kaas gesmolten en bruin is.','/static/img/cari.jpg',9,6,6,3,10,1);
INSERT INTO `recipe` VALUES (263,'Tropische fruitsalade','','<i> Voor 4 personen: </i> 
 <table><tr><td width=250>
2 grapefruits 
4 sinaasappels 
4 tangarines 
1/2 kleine watermeloen  
2 bananen 
1/2 ananas 
1/2 suiker meloen 
3 carambola''s 
4 pommesiterre (of appels) 
1 stevige mango 
 </td><td width=250>
1/2 stevige, rijpe papaja 
1 el rozijnen 
2 el bruine rum 
Sap van 1 limoen 
1 el Nevis-honing 
2 el siroop 
Scheutje angostura-bitter 
60 ml kersen sap
   </p></td></table>','2018-09-26 19:09:45.086420','1. Schil al het fruit en snijd het in blokjes en plakjes. Doe het fruit in een kom. Giet de overige ingrediënten erover. Schep alles goed om. 

2. Laat de salade 2 uur in de koelkast staan.','/static/img/cari.jpg',9,9,7,5,10,1);
INSERT INTO `recipe` VALUES (264,'Groenebananensalade met rode bonen','','>i> Voor 4 personen: </i> 
1 teentje knoflook 
1 kleine kropsla 
3 tomaten, fijngesneden 
2 uien, in dunne reepjes 
1 wortel, geraspte 
1 rode paprika, in smalle reepjes 
1 gele paprika, in smalle reepjes 
1 groene paprika, in smalle reepjes 
1 blik rode bonen, uitgelekt en afgespoeld 
6 groene bananen, gekookt in schil 
(voor 1 tl azijn aan het water toe, zodat de pan niet zwart wordt) 
10 groene olijven 
10 zwarte olijven 
Parmezaanse kaas, geraspt','2018-09-26 19:09:45.086420','1. Wrijf een houten slakom in met 1/2 teentje knoflook. Rasp de rest van het knoflook in de kom. Snijd de sla en doe de reepjes in de kom. Voeg tomaat, een ui, wortel, paprika en de rode bonen toe. 

2. Schil de afgekoelde bananen en snijd ze in plakjes. Leg de plakjes op de salade en voeg de 2e ui toe. Voeg de olijven toe en bestrooi de salade met geraspte kaas. 

3. Serveer de salade met een dressing van blauwe kaas of van olijfolie en azijn. Voeg eventueel een scheutje rum toe voor een extra Caraibisch smaak je.','/static/img/cari.jpg',9,9,6,3,10,1);
INSERT INTO `recipe` VALUES (265,'Ananas pickels','','2 a 2 ½  kg ananas 
250 ml water 
1 1/2 el zout v
1 tl zwarte peper 
1/2 Spaanse peper, fijngesneden 
15 koriander blaadjes, fijngehakt','2018-09-26 19:09:45.086420','1. Schil de ananas en snijd er plakken van. Snijd de plakken in tweeën en leg ze in een pan. Bewaar de helft van de Spaanse peper en koriander en roer van alle overige ingrediënten een saus. Blijven roeren tot het zout is opgelost. 

2. Legt telkens 4 stukjes ananas tegelijk in de saus en laat ze 50 seconden intrekken. Haal de ananasstukken uit de saus en leg ze in een andere kom. Giet ten slotte de rest van de saus over de ananas. 

3. Voeg het achtergehouden pepertje en de koriander toe.','/static/img/cari.jpg',9,9,7,3,10,1);
INSERT INTO `recipe` VALUES (266,'Mofongo','','<i> Voor 3 personen: </i> 
3 groene bakbananen 
1 l water 
1 tl zout 
1 el olijfolie 
3 teentjes knoflook 
250 gr ossenworst 
250 ml plantaardige olie','2018-09-26 19:09:45.086420','1. Schil de bakbananen en snijd ze in plakjes van 2.5 cm. Week de plakjes 15 minuten in zout water. Laat de plakjes uitlekken. Verwarm de olie in een grote pan. Bak hierin de stukjes banaan zonder dat ze bruin en knapperig worden. Haal ze uit de olie en laat ze op keukenpapier uitlekken.  

2. Stamp het knoflook fijn in de vijzel, giet de olijfolie erbij en roer er een glad papje van. Stamp in een grote vijzel 1/4 worst met een paar plakjes banaan fijn en voeg wat knoflook toe. Voeg geleidelijk de rest van de ingrediënten toe; roer goed. Voeg zout naar smaak toe. 

3. Maak van het mengsel balletjes van 5 cm doorsnede en dien zet heet op. Mofongo kunt u ook maken van de stukjes gekookte, sterk gekruide kip, gebakken varkensvlees of Ham of zelfs van gestoofd rundergehakt.','/static/img/cari.jpg',9,6,7,3,10,1);
INSERT INTO `recipe` VALUES (267,'Lechon assado','speenvarken','speenvarken 
1 l olie 
1 el anatto zaden 
twaalfbitter sinaasappels','2018-09-26 19:09:45.086420','1. Maak het varken grondig schoon. Rijg hem aan het spit en braad hem boven een vuur. 

2. Breng in een grote pan 1 l olie en 1 el anatto zaden aan de kook. Verwijderde zaden als de olie een geel oranje kleur heeft gekregen.
Pers twaalf bittere sinaasappels uit en voeg het sap aan de olie toe. 
3. Bestrijk het varken hiermee. Draai het spit regelmatig om, zodat het vlees gelijkmatig gaar wordt. Bestrijk het vlees zo nu en dan met de olie. Houdt hiermee een uur voor het einde van de baktijd op en laat het vel knapperig worden. Prik met een vleespen in het varken om te controleren of het vlees gaar is; er mag geen bloed aan de pen zitten en het vel moet knapperig zijn. 

Vuistregel: 30 minuten braden voor elke 500 gr vlees. Snijd het vlees zou van het spit en serveer er mofongo bij. 

Dit recept voor geroosterd speenvarken stamp zonder twijfel van de Arawak-en Taino-Indianen. Het speenvarken wordt, meestal in de openlucht, aan een groot spit boven een houtvuur geroosterd en daarbij voortdurend overgoten met zuur sinaasappelsap en anatto. Dat vergt een paar uur, zodat het roosteren spontaan in een klein feestje verandert. Als bijgerecht serveert men gebakken bananen die met schil en al boven het vuur gebakken worden. Als het vel van het varken knapperig is en een diepe, goudbruine kleur heeft gekregen, worden er van het spit sappige stukken afgesneden. Hier worden meestal gebakken bananen, rijst, al dan niet met duivenerwten','/static/img/cari.jpg',9,2,2,5,10,1);
INSERT INTO `recipe` VALUES (268,'Antilliaanse kip','','<i> Voor 4 personen: </i> 
4 stukken kip naar keuze 
125 ml consommé 
2 el sojasaus 
60 ml guavebessen likeur 
60 ml sinaasappelsap 
1 tl venkelzaad 
1/4 tl fijngesneden Spaanse peper 
Peper en zout','2018-09-26 19:09:45.086420','1. Roer alle ingrediënten, behalve het zout, door elkaar en laat de kip hier een nacht in marineren. Leg de kip op een hete gril. Voeg wat zout toe aan de marinade en bestrijk de kip er voortdurend mee tijdens de 15-20 minuten grillen. Zet de grill laag en blijft het vlees bestrijken tot het helemaal gaar is.','/static/img/cari.jpg',9,2,3,3,10,1);
INSERT INTO `recipe` VALUES (269,'Caldosa','Stoofschotel','<i>Voor 6 personen: </i> 
Olijfolie, voor het bakken 
1/2 kip, in vieren 
230 gr ham, in blokjes 
1 witte uien, fijngehakt 
1 middelgrote Cubanelle-paprika, fijngehakt 
2 teentjes knoflook, gehakt 
450 gr rauwe garnalen, gepeld, zonder darmkanaal 
1 tl worcestersaus 
1/4 tl paprikapoeder 
1 laurierblaadje 
1, 3 dl droge witte wijn 
1 el witte wijnazijn 
4 middelgrote tomaten, gehakt 
250 gr witte rijst 
6 dl kippenbouillon','2018-09-26 19:09:45.086420','1. Verhit een dunne laag olijfolie in een koekenpan en bak de kip in circa tien minuten goudbruin. Voeg de ham toe en bak 2 minuten. Voeg de ui, paprika en knoflook toe en laat ze in circa 4 minuten zacht worden. 

2. Breng de garnalen op smaak met worcestersaus en paprikapoeder en doe ze bij de kip. Voeg laurierblaadje ''s, wijn, azijn, tomaten, rijst en kippenbouillon toe en kook afgedekt 30 minuten of tot rijst gaar is; gebruikt u gekookte garnalen, vroeg zijn dan pas een paar minuten voor het einde van de kooktijd toe. Serveer dit soepachtige gerecht eventueel met witte rijst.','/static/img/cari.jpg',10,2,3,4,10,1);
INSERT INTO `recipe` VALUES (270,'Carne mechada','Gestoofd rundvlees op Cubaanse wijze','<i>Voor 4 personen: </i> 
Sap van 1 bittere sinaasappel 
1 teentje knoflook, fijngehakt 
1 runderhaas van 1, 3 kg, schoongemaakt 
6 el olijfolie 
130 gr Ham, in blokjes van 1 bij 1 cm 
3 plakken bacon, in blokjes 
2 grote witte uien, fijngehakt 
50 ml tomatenpuree 
2 middelgrote Cubanelle-paprika ''s, fijngehakt 
1/4 bosje peterselie, de gehakt blaadjes plus stengels 
Zout en versgemalen zwarte peper 
3 laurierblaadje 
2, 3 dl rode wijn 
Peterselie, voor erbij','2018-09-26 19:09:45.086420','1. Voor de marinade: meng de sinaasappelsap en knoflook en zet apart. 

2. Snijd de beide uiteinden van het vlees met een scherp mes voorzichtig overlangs in, zodat er een ruime holte ontstaat. Leg het vlees in een ovenschaal, schenk de marinade erover en laat 2- 3 uur in de koelkast marineren. 

3. Voor de farce: verhit 3 el olijfolie in een pan en bak de ham en bacon bruin. Voeg de uien en paprika ''s toe en bak nog 3 minuten. Roer de tomatenpuree erdoor en bak nog 2 minuten. Schep de gehakte peterselie erdoor en laat het mengsel op kamertemperatuur komen. 

4. Haal het vlees uit de koelkast, vult de holte met de farce en bestrooi met zout en peper. Verwarm de oven voor op 190° C in. 

5. Verhit de rest van de olijfolie in een grote ovenschaal en bak het vlees rondom bruin. Voeg de laurierblaadje ''s, peterseliestengels en eventuele restjes farce toe. Schenk de rode wijn erbij en rooster het vlees circa 1 1/2 uur. Serveer het vlees met zijn jus, maduros en witte rijst en garneer met peterselie.','/static/img/cari.jpg',10,2,2,5,10,1);
INSERT INTO `recipe` VALUES (271,'Curry van geitenvlees','','1 kg geiten-of lams-vlees, in blokjes 
Sap van 2 limoenen 
3 grote uien, gesnipperd 
2 takjes verse tijm, fijngehakt 
2 sprietjes verse bieslook, fijngehakt 
2 bosjes peterselie, fijngehakt 
1 laurierblad 
1 hele paprika, in neteldoek gewikkeld 
1 tl jerk kruiden 
1/2 tl gemalen verse gember 
1 tl piment 
2 el plantaardige olie 
1 tl komijn staat 
5 teentjes knoflook, fijngesneden 
2 el Jamaicaanse kerrie 
2 el zetels tomatenpuree 
2 blikjes kokosmelk 
1 el Jamaicaanse bruine rum 
25 gr Boter','2018-09-26 19:09:45.086420','1. Spoelt het vlees af onder de kraan en dep het droog met keukenpapier. Giet er limoensap over en laat het 15 minuten staan. Doe alle kruiden erbij, behalve komijn, knoflook en kerrie. 

2. Verhit de olie in een grote pan tot hij licht begint te walmen. Fruit de komijn en het knoflook. Voeg al onroerend de kerrie toe en de tomatenpuree. Giet de kokosmelk erbij. Laat het mengsel zachtjes koken tot het begint te borrelen; voeg de gekruide blokjes vlees toe. 

3.Laat de curry circa 40 minuten zacht doorkoken; pas op dat niet al het vocht verdampt en voeg eventueel nog wat water toe. Giet na het verstrijken van de kooktijd de rum bij de curry en smelt er een klontje boter in. 

4. Geef er gekookte witte rijst of rijst met rode nier bomen erbij.','/static/img/cari.jpg',9,2,2,4,9,1);
INSERT INTO `recipe` VALUES (272,'Dominicaanse sancocho','Dominicaanse stoof gerecht','<table><tr><td width=350>        
2 kg kip 
3 el sap van zure sinaasappel 
1 kg karbonades 
750 gr geiten vlees 
1 ui 
3 groene paprika ''s zonder zaden en fijngesneden 
1/2 Spaanse peper, zonder zaden en fijngehakt 
3 scheurtjes worcestersaus 
4 rijpe tomaten, ontveld en fijngesneden 
5 tl zout 
500 gr gepekeld varkensvlees 
500 gr longaniza worst 
Plantaardige olie voor het pakken 
  </td><td width=300>
1 kg zoete aardappelen 
1 kg witte yam 
1 kg yucca v
1 kg malanga 
6 maïskolven 
5 grote bakbananen 
1 1/2 el oregano v
1 tl knoflook, fijngesneden 
1 bosje peterselie, fijngehakt 
4 verse korianderblaadjes, fijngehakt 
2 1/2 el witte azijn 
1 blokje kippenbouillon 
1 blik tomatensaus 
1 kg pompoen
</td></table>','2018-09-26 19:09:45.086420','1. Bereidt het vlees en dag van tevoren. Snijd de kip in stukjes. Verwijder het vel en overtollig vet, en besprenkel de kip met sinaasappelsap. Zet het vlees op met water en een derde van de ui, tomaat, paprika, Spaanse peper, worcestersaus en zout. Ook het geheel 30 minuten. Kook de karbonades en het geitenvlees op dezelfde manier, in verschillende pannen. Laat het vlees afkoelen en zet het in de koelkast. 

2. Snijd de volgende dag het gepekelde varkensvlees in stukjes en bak deze bruin in hete olie. Voeg wat water toe en kook het vlees; laat het niet te gaar worden. Snijd de worst in stukjes en bak deze in olie. Gooi de olie niet weg. Schil de wortelgroenten, snijd ze in stukjes en leg deze in water om te voorkomen dat ze zwart worden. 

3. Breng in een grote pan 6 l water met zout aan de kook. Voeg de stukjes wortelgroenten toe en de olie waarin de worst is gebakken. Doe na 10 minuten het vlees en alle kruiden (ook die waarin het vlees is gekookt) in de pan. Voeg de tomatensaus en de helft van de pompoen toe. 

4. Laat de sancocho 10 minuten koken en voeg dan de rest van de pompoen toe. Laat het gerecht sudderen tot de groenten zacht zijn. Serveer er rijst bij.','/static/img/cari.jpg',9,2,3,4,10,1);
INSERT INTO `recipe` VALUES (273,'Pargo renello','Rode snapper gevuld met schaaldieren','2 el olijfolie 
1 kleine witte ui, fijngehakt 
1 middelgrote rode paprika, fijngehakt 
2 middelgrote tomaten, fijngehakt 
1 teentje knoflook, fijngehakt 
2, 3 dl droge witte wijn 
1 chipotle-peper, fijngehakt 
230 gr rauwe garnalen, gepeld, schoongemaakt, zonder darmkanaal en fijngehakt 
230 gr gekookt kreeftenvlees, fijngehakt 
230 gr krabvlees, zonder stukjes schaal 
1/4 bosje verse peterselie, alleen de blaadjes, fijngehakt 
Zout en versgemalen zwarte peper 
4 rode snappers 
3 lente-uitjes, gesnipperd 
230 gr boter, in blokjes van 2, 5 x 2, 5 cm -
Partjes limoen, gehakte lente-ui en verse peterselie, voor de garnering','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 190° C.Verhit de olijfolie op matig vuur en fruit ui, rode paprika, tomaten en knoflook tot ze zacht zijn. 

2. Voeg 1, 3 dl wijn en de peper toe en kook tot de vloeistof bijna verdampt is. Voeg de garnalen toe en kook 1 minuut. 

3. Roer kreeftenvlees, krabvlees, peterselie en zout en peper erdoor. Haal de pan van het vuur. 

4. Snijd de rode snippers met een scherp mes aan de zijkanten open, zodat u ze kunt open klappen. Snijd ze echter niet helemaal door. Fileer ze en maak ze goed schoon. Vul elke rode snapper met een kwart van de schaaldieren en houdt de vulling op haar plaats met cocktailprikkers. Leg de rode snappers in een ovenschaal, schenk de rest van de wijn erover en voeg de lente-uitjes en boter toe. Bak 25 minuten. Garneer met partjes limoen, lente-ui en peterselie en serveer.','/static/img/cari.jpg',10,2,8,4,10,1);
INSERT INTO `recipe` VALUES (274,'Escabeche de bonito','Tonijn in het zuur','<i> Voor 4 personen: </i> 
1, 3 dl witte azijn 
1, 8 dl extra vergine olijfolie 
2 middelgrote witte uien, in dunne plakken 
1 middelgrote groene paprika, in dunne plakken 
50 gr kappertjes 
10 grote groene olijven, ontpit en in plakjes 
1/2 tl paprikapoeder 
2 el olijfolie 
1, 3 kg tonijn, schoongemaakt, gefileerd en in plakken van 2,5 cm 
2 teentjes knoflook, in dunne plakjes 
Zout en versgemalen zwarte peper 
Partjes citroen, voor de garnering','2018-09-26 19:09:45.086420','1. Voor de marinade: meng azijn, olijfolie, uien, paprika, kappertjes, olijven en paprikapoeder in een kom en zet apart. 

2. Verhit 2 el olijfolie in een middelgrote pan, bak de tonijn en knoflook 2 minuten aan weerszijden en zet apart. 

3. Voeg de marinade toe en kook 4 minuten. Haal de tonijn van het vuur en breng op smaak met zout en peper. Marineer 1 nacht in de koelkast. Garneer met partjes citroen en serveer.','/static/img/cari.jpg',10,2,8,8,10,1);
INSERT INTO `recipe` VALUES (275,'Stoof schotel met schaaldieren','','<i>Voor 4 personen: </i> 
1 el olie 
1 tl gemalen anatto 
250 gr kreeft, met schaal 
125 gr krabvlees 
250 gr garnalen, ongepeld 
125 gr rivierkreeft, met schaal 
250 gr wulken 
250 gr mosselen, met schelp 
250 gr oesters 
2 tomaten, fijngesneden 
2 maiskolven, in stukken 
Kokosmelk 
Sap van 2 limoenen 
1 hele Spaanse peper','2018-09-26 19:09:45.086420','1. Verwarm de olie en een grote aarden pot en voeg de anatto toe. Voeg alle ingrediënten toe; roer goed. Voeg de kokosmelk en het water toe en daarna het limoensap. 

2. Bind het pepertje in een stukje kaasdoek en voeg het toe (om gemakkelijk te verwijderen). Kook alles 25 tot 30 minuten. Serveer er cassave of maïsbrood bij.','/static/img/cari.jpg',9,2,4,4,10,1);
INSERT INTO `recipe` VALUES (276,'Filetes de pescado con coco','Visfilets in kokosmelk','<i> Voor 4 personen:</i>
 <table><tr><td width=350>
4 grote snapperfilets 
Sap van 1 limoen 
Peper en zout 
1/2 tl gedroogde oregano  
1 el olijfolie 
1 ui, gesnipperd 
4 teentjes knoflook, fijngesneden 
1 tomaat, ontveld, zonder pitjes en fijngesneden 
  </td><td width=250>
1 stengel selderij, fijngesneden 
1 blik ongezouten kokosmelk 
125 ml ananassap 
1 laurierblaadje 
1 tl tomatenpuree 
Verse peterselie 
Verse oregano
   </td></table>','2018-09-26 19:09:45.086420','1. Spoel de visfilets af onder koud water en dep ze droog. Besprenkel ze met limoensap en strooi er zout, peper en oregano over. Laatste een paar uur afgedekt staan. Bak ui, knoflook, tomaat en selderij 1 minuut in olie. Roer er kokosmelk, ananassap en tomatenpuree door en voeg het laurierblaadje toe. Laat alles 10 minuten sudderen. 

2. Bak in een andere pan de visfilets. Gids de saus erover en stoof het geheel vijf minuten; draai het één keer om. Strooi er peterselie en oregano over en serveer er gekookte rijst bij.','/static/img/cari.jpg',9,2,8,3,10,1);
INSERT INTO `recipe` VALUES (277,'Pescado con salsa de aguacate','Koude gepocheerde vis met avocadosaus','<i> Voor 8 tot 10 personen: </i> 
1, 8 kg snapper inclusief kop en staart, schoongemaakt en geschubd 
2 uien, in dunne ringen 
2 teentjes knoflook, in dunne plakjes 
3 middelgrote wortelen, in dunne plakjes 
1 selderijstengel, fijngesneden 
3 sprietjes bieslook, fijngehakt 
1 takje verse tijm, fijngehakt 
2 tls zout 
5 hele zwarte peperkorrels 
6 el limoensap 
2,5f l water','2018-09-26 19:09:45.086420','1. Doe alle ingrediënten, behalve de vis, in een ruime, diepe vuurvaste schaal en breng aan de kook. Kook het geheel 15 minuten zacht door. Laat het geheel lauw afkoelen. Wikkelde vis in een stuk kaasdoek; laat aan de zijkanten 10-16 cm doek uitsteken en knoop er keukengaren om. 

2. Leg het vis pakketje op een rooster dat in de schaal past en laat dit in het vocht zakken. De vis moet voor de helft bedekt zijn. Breng het vocht langzaam aan de kook en pocheer de vis oplaag vuur in circa 30 minuten gaar. 

## 3. Haal de vis uit het water en pak hem voorzichtig uit, zodat hij heel blijft. Maak aan weerszijden van de staart kleine inkepingen en trekt het vel er in repen af. Laat de kop en de staart zitten. Verpak de vis in folie en leg hem tenminste een halve dag in de koelkast.','/static/img/cari.jpg',9,2,8,4,10,1);
INSERT INTO `recipe` VALUES (278,'Papaja mango saus','','<i> Voor 1 persoon: </i> 
1 rijpe mango, geschild en in blokjes 
1/2 rijpe papaja, geschild, zonder zaden en in blokjes 
2 el bieslook, gehakt 
1 el verse gember, fijngesneden 
2 el verse koriander, gehakt 
2 el verse rode paprika, in blokjes 
2 el vissaus 
2 el rietsuiker 
Sap van 1 limoen','2018-09-26 19:09:45.086420','1. Doe de mango en de papaja in een kom. Voeg de overige ingrediënten toe en schep alles door elkaar. Bedek de kom af met huishoud folie en laat het geheel 1 uur staan.','/static/img/cari.jpg',9,5,6,4,10,1);
INSERT INTO `recipe` VALUES (279,'Marinado de batidora','Marinade uit de blender','<i> Voor 8 dl: </i> 
1/2 bosje verse peterselie 
1/2 bosje verse koriander 
1/2 bosje verse oregano 
3 laurierblaadje ''s 
6 teentjes hele knoflook, gepeld  
1 middelgrote witte ui, in vieren 
1 middelgrote rode ui, in vieren 
6 zwarte peperkorrels 
2, 3 dl witte wijnazijn 
7 dl olijfolie 
Zout','2018-09-26 19:09:45.086420','1. Meng peterselie, koriander, oregano, laurier, knoflook, ui, peper en azijn in een krachtige blender of keukenmachine. Schenk het mengsel in een kom, voeg de olie toe en breng op smaak met zout. 

2. Deze marinade is geschikt voor varkensvlees, rundvlees en kip.','/static/img/cari.jpg',10,5,6,2,1,1);
INSERT INTO `recipe` VALUES (280,'Vinaigrette Cubana','Cubaanse vinaigrette','<i> Voor 3, 5 dl: </i> 
2 el milde mosterd 
1 grote teen knoflook, geperst 
6 el vers limoensap of witte wijnazijn 
1,8 dl extra vergine olijfolie 
1/4 bosje verse peterselie, alleen de blaadjes, gehakt 
1/4 bosje verse koriander, alleen de blaadjes, gehakt 
Zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Meng mosterd, knoflook en limoensap of azijn in een kom. Klop de olie er gelijkmatige door. Voeg peterselie, koriander, zout en peper toe en meng goed. 

2. Geschikt voor salades.','/static/img/cari.jpg',10,5,6,2,10,1);
INSERT INTO `recipe` VALUES (281,'Salsa criolla','Creoolse saus','<i> voor 4 personen: </i> 
 1, 3 dl extra vergine olijfolie 
3 teentjes knoflook, gehakt 
1/2 laurierblaadje 
2 grote witte uien, fijngehakt 
2 groene paprika ''s, fijngehakt 
5 middelgrote tomaten, fijngehakt 
1/2 tl paprikapoeder 
Zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Verhit de olie in een pan. Fruit knoflook, laurierblaadje ''s, uien, paprika ''s en tomaten op matig vuur en schep om tot de saus dik is. Voeg paprikapoeder toe en haal de pan van het vuur. 

2. Breng de saus op smaak met zout en peper en serveer hem warm of koud bij vlees of gevogelte.','/static/img/cari.jpg',10,5,6,2,10,1);
INSERT INTO `recipe` VALUES (282,'Mojo criollo para viandas y carnes','Hete knoflook saus','<i> Voor 4 personen: </i> 
50 ml olijfolie 
1 middelgrote witte ui, fijngehakt 
6 teentjes knoflook, gehakt 
1/2 bosje verse peterselie, alleen de blaadjes, fijngehakt 
1/2 bosje verse koriander, alleen de blaadjes, fijngehakt 
Sap van 3 limoenen 
1/2 tl zout','2018-09-26 19:09:45.086420','1. Verhit de olijfolie in een middelgrote pan. Fruit de ui en knoflook tot ze geuren. 

2. Haalde pan van het vuur en laat de saus 2 minuten staan. Voeg peterselie, koriander, limoensap en zout toe. Serveer de saus warm met groenten of vlees.','/static/img/cari.jpg',10,5,6,2,10,1);
INSERT INTO `recipe` VALUES (283,'Jamaicaanse barbecue saus','','<i> Voor circa 500 ml saus: </i> 
 <table><tr><td width=300>
125 gr boter 
2 teentjes knoflook, fijngewreven in de vijzel 
2 uien, gesnipperd 
1/2 Spaanse peper, zonder zaden en fijngesneden 
1 tl gemalen tijm 
2 tl mosterd poeder 
125 ml worcestersaus 
2 el tamarindemoes 
  </td><td width=250>
60 gr groene mango, gepureerd 
60 ml azijn 
60 ml tomatensaus 
Sap van 1 limoen 
1 el donkerbruine basterdsuiker 
1/2 tl gemalen piment 
Scheutje bruine Jamaicaanse rum 
1/2 tl zwarte peper 
Zout
   </td></table>','2018-09-26 19:09:45.086420','1. Breng alle ingrediënten al onroerend aan de kook in een pannetje. Let erop dat de boter helemaal smelt. Laat het mengsel afkoelen. 

2. Deze saus kunt u in de koelkast bewaren; in een goed afgesloten pot blijft zij maanden goed.','/static/img/cari.jpg',9,5,6,2,10,1);
INSERT INTO `recipe` VALUES (284,'IJs van granaatappel en oranje bloesem water','ijsdesserts','<i> Voor 6 personen: </i> 
2 tl maïzena 
3 dl melk 
25 gr basterdsuiker 
2de grote granaatappels 
2 el oranje bloesem water 
5 el grenadine 
3 dl slagroom 
Extra granaatappel pitten en oranjebloesem water, voor het serveren','2018-09-26 19:09:45.086420','1. Roer de maïzena in een steelpan met wat melk tot een papje. Roer de overige melk en de suiker erdoor en laat dit al onroerend koken tot het mengsel bindt. Giet het in een kom en laat het afgedekt met vetvrij papier afkoelen.
Snijd de granaatappels doormidden en pers uit op een citruspers des voeg het sap met het bloesem water, de grenadine en de room toe aan het maïzena mengsel en mijn alles luchtig. 

2. Met de hand: roer het mengsel en schenk het in een bakker. Zet het 3-4 uur in de vissers en klop het in die tijd 2 maal. 

3. Met de ijsmachine: laat het mengsel draaien tot het half stijf is.
Schep het ijs op een grote of 6 kleine Fries bestendige schaaltjes en zet het minstens 2 uur of een nacht in de vissers.
Laat het ijs 30 minuten voor serveren in de koelkast zachter worden. Bestrooien ergeren laat appel pitjes over, die nu eerst in bloesem water gedoopt. 

Variatie: om de oosterse smaak van dit dessert te accentueren. In twaalf carbon keurde aan het oranje bloesem water toevoegen.','/static/img/cari.jpg',9,3,5,6,10,1);
INSERT INTO `recipe` VALUES (285,'Bananenrumcake','','2 grote overrijpe bananen 
4 el zure room 
2 el rum 
3 eieren 
90 gr kristalsuiker 
250 gr bloem 
60 gr boter, gesmolten 

Rumsiroop:  
125 ml water 
4 tl limoensap 
125 gr kristalsuiker 
2 el rum','2018-09-26 19:09:45.086420','1. Verwarmde over voor op 200°C. Meng voor het beslag de benanen, zure room en rum. Klop de eieren en suiker door elkaar. Meng de bloem en boter en voeg het bananen mengsel toe. Schep het mengsel in een ingevette cakevorm van 23 cm doorsnede. Bak de cake in 40 tot 45 minuten gaar.  

2. Breng voor het siroopwater, limoensap en suiker aan de kook. Temper het vuur en laat het geheel tien minuten doorkoken. Roer af en toe. Neem de pan van het vuur en roer de rum erdoor. Zet te cake op een rooster. Prik gaatjes in de cake en giet de rum siroop er over.','/static/img/cari.jpg',9,3,7,4,10,1);
INSERT INTO `recipe` VALUES (286,'Kokos toffees','','Geraspt vruchtvlees van 2 kokosnoten 
300 ml kokosmelk 
500 gr suiker 
60 ml gecondenseerde melk','2018-09-26 19:09:45.086420','1. Doe de kokosmelk in een pan en voeg de suiker toe. Breng dit onder voortduren roeren aan de kook. Voeg de geconcentreerde melk toe, zodra het mengsel erg dik wordt. Klop het mengsel met een houten lepel of garde tot het nauwelijks vloeibaar is. Schep in een ingevette schaal tot 2,5 cm hoog.  

2. Laat de toffees opstijven. Snijd hem in driehoekjes of vierkantjes.','/static/img/cari.jpg',9,3,7,3,10,1);
INSERT INTO `recipe` VALUES (287,'Dominicaanse kokos gebakjes','','<i> Voor ongeveer 24 gebakjes: </i> 
 <table><tr><td width=350>
 Voor het deeg:  
500 gr gezreefde bloem 
125 gr bak vet 
125 gr boter 
60 ml koud water 

Voor de vulling: 
500 gr geraspte kokos 
125 gr suiker 
30 ml water 
  </td><td width=250>
1 laurierblaadje 
1 kaneelstokje 
1/2 tl nootmuskaat 
1/2 tl koekkruiden 
Schil van 1 citroen 
1 tl amandelessence 
1 ei 
Paar druppels voedingskleurstoffen 
2 el gehakte amandelen 
   </td></table>','2018-09-26 19:09:45.086420','Voor het deeg:
 1. Kneed bloem, bakvet en boter met de hand. Voeg water toe en maak een stevig deeg. Rol het deeg dun uit. Steek met een hoekvorm van 10 cm vormpjes uit en leg ze in een ingevette en met bloem bestoven muffinvormen. Doe het deeg met uw vingers in de uitsparingen. Snijd van het resterende deeg reepjes van 10 bij 2,5 cm en leg 2 reepjes op elk gebakje. Verwarm de over voor op 1800C.  
Voor de vulling: 

1. Doe kokos, suiker en water in een pan. Vroege laurier, kaneel, nootmuskaat, koek kruiden en citroenschil toe. Verwarm het mengsel tot de kokos doorzichtig wordt. Laat het mengsel iets afkoelen, voeg de amandel essence toe en klop het ei erdoor. 

2. Verdeel het mengsel over de kommen en geef het verschillende kleuren met de kleurstoffen. Schep de vulling in het deeg en strooi de gehakte amandelen er over. Leg de deeg reepjes kruislings over de vulling en druk de uiteinden met een vork en wat water vast. 

3. Besprenkel het deeg met suiker en bestrijk het licht met melk. Bak de gebakjes in een hete oven goudbruin.','/static/img/cari.jpg',9,3,6,3,10,1);
INSERT INTO `recipe` VALUES (288,'Papaja ijs','','4 el pijlwortel meel 
1/2 l melk 
125 ml gecondenseerde melk 
125 gr rietsuiker of 125 zoete gecondenseerd melk 
1 rijpe papaja, geschild, ontpit en gepureerd','2018-09-26 19:09:45.086420','1. Maak een pakje van pijlwortelmeel en wat melk. Breng de rest van de melk aan de kook en roer het papje erdoor. Laat het mengsel 3 minuten indikken op laag vuur. 

2. Haalde pan van het vuur en laat het mengsel afkoelen. Klop de gecondenseerde melk en de suiker (of alleen de zoete gecondenseerde melk) erdoor. Roer tot alles goed is opgelost. 

3. Voeg de gepureerde papaja toe, giet het mengsel in een schaal en zet het in de diepvries. Haal het half bevroren mengsel na een uur uit de diepvries en klop met een vork los. Zet te schaal weer in de diepvries. Herhaal deze handelingen na een uur en nog 2 keer elk halfuur. 

4. Garneer het ijs met fruit.','/static/img/cari.jpg',9,3,5,5,10,1);
INSERT INTO `recipe` VALUES (289,'Jamaicaanse mousse','','90 gr pure chocolade 
30 gr boter 
3 eieren, gesplitst 
4 el rum cream 
125 meter geklopte slagroom','2018-09-26 19:09:45.086420','1. Breek de chocolade in blokjes boven een kom. Paats de kom op een pan met warm water. Voeg de boter toelaat de chocolade en de boter smelten; roer een of 2 keer om. Klop de eierdooiers erdoor. 

2. Haalde kom van de warmtebron en roer de rum cream door het mengsel. Klop het eiwit stijf en schep het chocolademengsel. Schep de slagroom erdoor. 

3. Doe de mousse in schaaltjes en zet deze in de koelkast.','/static/img/cari.jpg',9,3,5,3,10,1);
INSERT INTO `recipe` VALUES (290,'Kort gerookte zalm, gekonfijte limoen','Wijnsuggestie: Sauvignon Undarraga, D.O. Lontue Valley Chili; Spier Chenin, Western Cape, Zuid Afrika','<i> 4 personen </i> 
500 gr zalm, in filets  
Garnituur:  
1 rode ui, fijngesneden 
12 minisneetjes pumpernickel (donker roggebrood uit Westfalen Duitsland) 
Geconfijte limoen 
Aardappelsalade.','2018-09-26 19:09:45.086420','1. Leg een kleine hoeveelheid houtkrullen in de cassette van het rookoventje. 
2. Zet een schaal op de houtkrullen en de grill op de schaal. Bedek de grill met een blad aluminiumfolie en leg daarop de zalm. Zet de cassette op de hittebron. 
3. Schuif het deksel van het rooktoestel open als het hout lichtjes begint te roken. Reken 15 minuten gaar. 
4. Snijd de zalm in schuine plakjes van 2 cm. Leg ze op de minischijfjes pumpernickel.  
Aan tafel:   Geef bij de zalm zure room, kappertjes en rode ui, mierikswortelsaus, of nog beter ''Gekonfijte limoen''. In de plaats van pumpernickel kunt u ook roggebrood geven of een Aardappelsalade met fijne kruiden.','/static/img/ma.jpg',7,7,8,3,12,1);
INSERT INTO `recipe` VALUES (291,'Aardappelsalade met verse kruiden','<i> Wijnsuggestie: </i>  Spier chenin, Western Cape, Zuid Afrika  Sendero Rose, Chili','Voor 4-8 personen 
750 gr aardappelen, kleintjes zoals krielaardappeltjes, gewassen en geborsteld 
zout en vers gemalen peper 
3 eetlepels witte wijnazijn of ciderazijn 
1 eetlepel mosterd van Dijon 
3 eetlepels extra vergine olijfolie 
3 sjalotjes, fijngehakt 
1 eetlepel gehakte peterselie 
1 eetlepel gehakte bieslook 
1 koffielepel gehakte dille 
 Garnituur  
enkele pijpjes bieslook 
enkele takjes dille 
ma65','2018-09-26 19:09:45.086420','1. Kook de aardappelen in zout water of stoom ze. 
2. Meng in een kom azijn, zout, peper en mosterd. Als de ingredi','/static/img/ma.jpg',11,6,6,3,1,1);
INSERT INTO `recipe` VALUES (295,'Gekonfijte limoen','N','Voor een bokaal: 
14 sappige limoenen 
5 eetlepels zeezout 
11 cl water 
250 gr griessuiker 
12 kruidnagels 
12 zwarte peperbolletjes 
ma65','2018-09-26 19:09:45.086420','1. Bedek een rechthoekige glazen schotel met blaadjes keukenrol. Snijd 7 limoenen in heel dunne schijfjes. Schik ze naast elkaar op het papier. Bestrooi met zout. Zet enkele uren opzij. Draai de limoenschijfjes om en bestrooi ook de andere zijde met zout. Bedek met keukenrol en zet koel weg. 
2. Schep de volgende dag de limoenschijfjes in een vergiet en spoel ze goed af. 
3. Schep de limoenschijfjes in een pannetje, bedek met water en laat 30  minuten pruttelen tot ze zacht zijn. Snijd de schijfjes in vier. Laat uitlekken en zet opzij. 
4. Pers de resterende limoenen. U hebt zowat 2 dl sap nodig. 
5. Neem een pannetje en giet er het limoensap in, water, suiker en de specerijen. Verhit op een zacht vuurtje en roer tot de suiker gesmolten is. Laat 25 minuten verder koken zonder deksel. De vloeistof moet siroopachtig worden. 
6. Verwijder de kruiden en voeg de stukjes limoen toe. Giet in een bokaal en dek af. Laat 1 maand rusten alvorens te gebruiken. 
 Aan tafel:  
Gekonfijte limoenen passen perfect bij verse of gerookte vis en bij gevogelte. 
 Goed om te weten:  
Was de limoenen zorgvuldig voor u ze snijdt. Om tijd te winnen, kunt u de kruiden in een katoenen zakje stoppen. Zo kunt u ze in een keer verwijderen.','/static/img/ma.jpg',1,6,7,8,12,1);
INSERT INTO `recipe` VALUES (301,'Tips over grillades','N','ma65','2018-09-26 19:09:45.086420','Dit is koken op een directe warmtebron: houtskool van de barbeque, of binnen op een gietijzeren grillplaat of een electrische grill.  Deze methode is geschikt voor vlees, kip, stevige vis, schelp-en schaaldieren maar ook voor groente en fruit.  <i> Als u een barbeque gebruikt: </i>  Reken op een half uur voordat de houtskool goed gloeit. Plaats het rooster ongeveer 10 cm boven het vuur.  <i> Hoe meet je de temperatuur van de barbeque? </i>  Houd de binnenkant van uw hand dichtbij het rooster. U meet de temperatuur al naargelang de tijd dat u uw hand boven het vuur kunt houden.  Aantal seconden voordat u uw hand moet weghalen - Temperatuur van de barbeque  2 seconden - erg heet  3 seconden - middelmatig heet  4 seconden - gemiddeld warm  5 seconden - matig warm  6 seconden - lauw   tips   1. Kies malse, niet te dikke stukken.  2. Marineer de ingrediënten in een marinade waar citrusfruit','/static/img/koken.jpg',1,1,1,1,1,1);
INSERT INTO `recipe` VALUES (302,'Gegrilde seizoensgroenten','','<i> 4 personen </i>   Marinade   2 eetlepeps basalmico  zout en peper  1 koffielepel tijm  2 eetlepels olijfolie  2 middelgrote courgettes, schuin in schijfjes gesneden  2 rode paprika''s, ontdaan van zaadlijsten en in reepjes van 1 cm gesneden  2 rode uien, in kwartjes gesneden  12 groene asperges, zonder het harde gedeelte   Garnituur   50 gr Parmezaankrullen  enkele takjes tijm  ma65','2018-09-26 19:09:45.086420','1. Voor de marinade: meng in een slakom de basalmico, zout, peper, tijm en olijfolie.  2. Voeg de groenten toe. Gebruik uw 2 handen voor het mengen, zodat de groenten goed doordrenkt worden met de marinade. Laat tenminste 15 minuten marineren.  3. Verwarm de grill/ barbeque voor. 4. Schik de groenteschijfjes op de grill of de barbeque. Grill 3 minuten aan een zijde, draai om en laat nog 2 minuten garen.  5. Breng zo nodig verder op smaak. Presenteer de groenten op een schaal of op een groot bord. Versier met Parmezaankrullen en takjes tijm. Serveer meteen.   Aan tafel:   Deze gegrilde groenten vormen het ideale bijgerecht bij vlees','/static/img/ma.jpg',3,6,6,4,1,1);
INSERT INTO `recipe` VALUES (303,'Bakken en braden zonder stress','N','','2018-09-26 19:09:45.086420','<i> De temperatuur van de oven </i> 
Heeft u de indruk dat uw oven niet heet genoeg is of juist het tegenovergestelde? Wordt u taart aan de ene kant altijd sneller bruin dan aan de andere kant? Het is van belang om te weten of de oventemperatuur overeenkomt met de temperatuur die de thermostaat aangeeft. Dat komt u te weten door een oventhermometer rechts en een tweede links in uw oven te leggen en de oven aan te zetten. De thermometers geven de re&euml;le temperatuur van uw oven weer.   Kookwekker   Zorg dat u altijd een kookwekker binnen handbereik heeft, zodat niets fout kan gaan. Digitale wekkers zijn veruit het handigst.   De binnentemperatuur van vlees, kip en vis   Verminder de kookstress door een vleesthermometer te gebruiken. Hij ziet eruit als een dikke naald verbonden aan een wijzerplaat die de temperatuur aanduidt.  Steek de thermometer ongeveer tot aan het midden in het dikste gedeelte van het vlees of gevogelte. Zorg ervoor niet dichtbij een stuk bot te prikken. De naald vangt de warmte in het ingredi&euml;nt op en geeft de temperatuur weer op de wijzerplaat.','/static/img/koken.jpg',1,1,1,1,1,1);
INSERT INTO `recipe` VALUES (304,'Tarte tartin met peren, kardemom en pistaches','<i> Wijnsuggestie: </i>  Vouvray Demi-sec, Appelation Vouvray Controlee, Frankrijk  Les Grangelles Moelleux, Appelation Bergerac Controlee, Frankrijk','','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 200 C.  2. Meng suiker, kaneel en kardemom.  3. Laat 1 eetlepel boter smelten in een bakvorm. Giet de helft van het mengsel van suiker en kruiden in de gesmolten boter.  Roer goed om de suiker en de kaneel te mengen.  4. Van zodra de boter begint te schuimen, bedekt u de bodem van de bakvorm met een cirkel van peren in kwartjes. Drop op deze laag blokjes boter en bestrooi met het mengsel van suiker en kruiden.  5. Als er peren over zijn, maak dan een tweede laag, bestrooid met een tweede laag suiker met kruiden.  6. Haal van het vuur zodra de peren doordrenkt zijn. Laat de vorm enkele minuten afkoelen.  7. Leg voorzichtig het bladerdeeg over de peren. Duw de rand van het deeg tussen het fruit en de wanden van de bakvorm. Prik met een vork gaatjes in het deeg. Laat 25 minuten bakken tot het deeg goudgeel kleurt.  8. Haal de taart uit de oven en laat afkoelen. Zegt een patisserierooster over de bakvorm en keer om, terwijl u de randen met beide handen vasthoudt. Doe dit bij voorkeur over een vergiet','/static/img/ma.jpg',8,3,7,4,1,1);
INSERT INTO `recipe` VALUES (305,'Thaise gebakjes met garnalen','<i> Wijnsuggestie: </i>  Chateau La Tuilerie, Appellation Graves, Controlee, Frankrijk  Bergerac Blanc, Appellation Bergerac Controlee, Frankrijk','','2018-09-26 19:09:45.086420','1. Hak in de kom van de keukenrobot het visvlees en de garnalen grof. Meng met de jonge uitjes, de look, de geraspte gember, de 5-kruiden, het chilipepertje, de limoenschil en het limoensap. Voeg het eiwit toe','/static/img/ma.jpg',13,7,4,10,1,1);
INSERT INTO `recipe` VALUES (306,'Spiesjes van tijgergarnalen, salsa van ananas','<i> Wijnsuggestie: </i>  Hanepoot, Wine of western cape, Zuid-Afrika  Pinot gris, Domaines Schlumberger appelation Alsace, Controlee','','2018-09-26 19:09:45.086420','1. Verwarm de grill voor en bestrijk met olijfolie.  2. Snijd de ananas in blokjes. Zet even opzij.  3. Meng in een slakom de ananasblokjes, de rode ui, de geraspte schil en het sap van de limoen, de koriander, het chilipepertje en de rest van de olie. Breng op smaak met zout en peper. Zet heel koel weg.  4. Rijg de garnalen op bamboestokjes, van de staart naar de kop. Bestrijk met olijfolie.  Grill de garnalen 3 minuten aan elke kant. De garnalen moeten rozig zijn en het vlees ondoorschijnend. Bestrooi met zout en peper.  6. Serveer met de salse van ananas. Versier met enkele takjes koriander.   Aan tafel:   geef hierbij een rijstsalade of taboule.   Goed om te weten:   door de garnalen van staart tot kop op stokjes te rijgen','/static/img/ma.jpg',3,8,4,3,1,1);
INSERT INTO `recipe` VALUES (308,'Salade van herfstvruchten met vin santo en gember','<i> Wijnsuggestie: </i>  Eiswein, Oostenrijk  Domainedu Cinquau, appellation jurancon controlee, frankrijk','<i> 4 personen </i>  2 appels, geshild','2018-09-26 19:09:45.086420','1. Besprenkel de blokjes appel en peer met citroensap. Meng in een slakom de appels, peren, witte en blauwe druiven en de verse vijgen. Zet koel weg tot u opdient.  2. Vul een steelpannetje met de rietsuiker, het vanillepoeder en de gehakte gember en de wijn. Breng aan de kook en laat ongeveer 3 minuten pruttelen. Laat afkoelen.  3. Leg de ijsbolletjes in coupes of in glazen met een voet. Overgiet met de met vanille en gember geparfumeerde wijn.  4. Versier met blaadjes munt en een amandelkoekje.   Aan tafel:  Serveer dit dessert met slagroom   Goed om te weten   De vin santo kunt u ook vervangen door griekse of spaanse muskaat of door een rivesaltes.','/static/img/ma.jpg',6,3,7,3,12,1);
INSERT INTO `recipe` VALUES (310,'In pancetta gewikkelde gebraden witvis met citroen mayonaise en asperges','<i>Wijnsuggestie: </i>  Australische witte - Semillon','<i>Voor 4 personen:</i> 
4 witvisfilets van ongeveer 2,5 cm dik, van 200 gr elk, ontveld en zonder graten 
Neem voor de witvis: schelvis, zeeduivel, wijting of koolvis. 
2 takjes rozenmarijn zonder steel in kleine stukjes gesneden. 
De geraspte schil en het sap van 2 citroenen 
2 grote bossen asperges schoongemaakt 
4 eetlepels zelfgemaakte mayonaise 
ma65','2018-09-26 19:09:45.086420','Verwarm de oven voor op 200°C of stand 6. Bestrooi de visfiles met de rozenmarijn, de citroenschil en peper. Rol de 4 pancetta plakjes om ieder stuk witvis. Verhit een koekepan, giet er een scheutje olie in en leg de stukken vis erin met de mooiste kant naar boven. Bak ze 1 minuut. Leg daarna de stukken vis in een ovenschaal en zet ze voor 10 tot 12 minuten in de oven. 

Kook de aspersges in een aspergepan tot ze gaar zijn. Dien de vis en de asperges samen op en besprenkel ze met de mayonaise die verdunt is met het citroensap.','/static/img/ma.jpg',1,2,8,3,12,1);
INSERT INTO `recipe` VALUES (311,'Geroosterd konijn met olijven op zijn toscaans','<i>Wijnsuggestie</i>  Brunello di Montalcino D.O.C.G., Italie  Chianti Classico D.O.C.G., Italie','Voor 4 Personen 
Voor de Marinade 
sap van 1 citroen 
zout, peper 
4 el olijf olie 
2 el tijmblaadjes 
1 takje rozenmarijn zonder stengel, gehakt 
2 blaadjes laurier 
1 konijn van 1,250 kg 
12 zwarte of groene olijfen 

Garnituur 
enkele blaadjes platte peterselie 
ma65','2018-09-26 19:09:45.086420','1. Doe het citroensap, zout en peper in een slakom. Meng goed. Voeg 3 el olie, thijm, rozemarijn en de larierblaadjes toe. Meng opnieuw. 
2. Voeg de stukken konijn toe en laat 30 minuten marineren 
3. Verwarm de oven voor op 180°C 
4. Bestrijk een ovenvaste schaal met de rest van de olie 
5. Leg de gemarineerde stukken konijn in de schotel. Schik rondom olijven. 
6. Laat 25 minuten in de oven garen. 
7. Haal de schotel uit de oven, bedek met aluminiumfolie en laat 10 minuten rusten. 
8. verdeel over de borden. Versier met blaadjes platte peterselie.','/static/img/ma.jpg',6,2,2,10,12,1);
INSERT INTO `recipe` VALUES (312,'Mayonaise','','1 grote eidooier ( Biologisch ) 
1 tl Dijon-mosterd 
5,5 dl olijf olie 
1 citroen 
zout en peper 
ma65','2018-09-26 19:09:45.086420','Doe de eidooier en mosterd in een kom en klop ze door elkaar. Begin terwijl je klopt heel langzaam drupje voor drupje de olie toe te voegen. Zorg dat de olie goed opgenomen wordt. Wanneer je alle olie hebt toegevoegd doe je er een flinke kneep citroensap bij. Breng de mayo op smaak met zout en peper uit de molen. Zet de mayo direct in de koelkast tot je hem gebruikt.','/static/img/ma.jpg',1,5,5,3,1,1);
INSERT INTO `recipe` VALUES (313,'Thaise soep met kippenreepjes en rode kerrie','','<i>4 personen</i> 
1 eetlepel arachideolie 
325 gr kippenfilet, in dunnen reepsjes gesneden  120 gr extra fijne boontjes, in 2 gebroken  1 eetlepel rode kerriepasta  1 liter kippenbouillon  25 cl kokosmelk  1 eetlepel vissaus (Nam Pla of Nuoc-Nam)  1 bosje jonge uitjes, schuin versneden  sap van 1/2 limoen   Garnituur','2018-09-26 19:09:45.086420','1. Verhit de olie in een wok of een braadpan.  2. Bak de reepjes kip gedurende 2 minuten aan.  3. Voeg de boontjes toe en laat 1 minuut bakken.  4. Voeg de rode kerriepasta toe en meng goed, zodat de kip en de boontjes ermee bedekt zijn.  5. Voeg de kippenbouillon toe, de kokosmelk en de vissaus. Zet het deksel op de pan en breng aan de kook. Als het kookpunt bereikt is, zet u het vuur voor de helft lager. Laat het mengsel nog 10 minuten verder garen. Kruid met zout en peper.  6. Voeg de jonge uitjes en het limoensap toe. Laat 2 minuten verder koken.  7. Voeg zo nodig nog zout en/of peper bij. Versier met snipperjtes basilicum.   Aan tafel:  Ter afwisseling kunt u deze soep ook bereiden met garnalen of Jacobsschelpen.','/static/img/ma.jpg',13,4,3,4,12,1);
INSERT INTO `recipe` VALUES (314,'Garnalencocktail','','<i> 4personen </i>  1 krop sla  1 little gem  desgewenst 1 bakje tuinkers, geknipt  600 gr kleine, zoete garnalen, vers of uit de diepvries, van goede kwaliteit.  2 rijpe avocado''s  zeezout en zwarte peper uit de molen  cayennepeper  1 citroen','2018-09-26 19:09:45.086420','1. Trek de blaadjes van de krop sla en de little gem los. Was en droog de groene blaadjes en zet opzij. Laat de verse of ontdooide garnalen uitlekken.  2. Roer de mayonaise, de ketchup, de worchesterhiresaus en de brandy door elkaar totdat het een mooie dunne roze saus is. Breng op smaak met citroensap.  3. Doe de sneden brood in een keukenmachine tot grove kruimels. Doe een flinke scheut in een koekenpan, doe er een snufje peper en zout toe en bak de kruimels tot ze goudbruin en krokant zijn. Leg ze op een stuk keukenpapier om uit te lekken. 4. Snijd de avocado''s in de lengte doormidden en draai de twee helften van elkaar. Leg ze op een plank om de pit eruit te halen. Ontdoe de avocado''s van hun schil, snijd ze in drie of vier parten en verdeel ze over de vier borden.  5. Verdeel de garnalen in 4 porties en leg ze op de avocado. Maak de sla aan met een kneepje citroensap, een snufje peper en zout en een drupje olijfolie. Hussel de blaadjes met de dressing en leg een een mooi bergje ervan naast en om de avocado en de garnalen.  6. Schep nu voorzichtig de cocktailsaus erover
  Aan tafel:  Dit gerecht is nog lekkerder met krab of kreeft.
  Goed om te weten   Little Gem is een kleine gekropte Romeinse sla met gekrulde blaadjes, waarbij alleen de zeer korte en zoete hartbladeren worden aangeboden.
Omwille van zijn stevige blaadjes is hij in Groot-Brittannië een populaire groente om te dippen. De Engelsen durven dit ook Sugar Cos noemen. Sugar vanwege zijn zoetheid en Cos vanwege het feit dat de Romeinen hem ontdekten op het Griekse eiland Kos.','/static/img/ma.jpg',1,7,4,1,12,1);
INSERT INTO `recipe` VALUES (315,'Vacherins met passievruchtenroom en aardbeien','Een vacherin is een ondiep mandje van eiwitschuim, gevuld met gearomatiseerde slagroom en lekkere vruchten.','Voor 6 personen 
3 eiwitten van grote scharreleieren 
2 tl citroensap 
150 gr fijne kristalsuiker 

Passievruchtenroom: 
6 passievruchten 
200 gr mascarpone 
1½ dl creme fraiche 
5 el zure room 
beetje poedersuiker 
1½ dl double cream of slagroom 

Serveren met: 
circa 250 gr gemengde vruchten, bv frambozen, aalbessen, bosaardbeitjes, in plakjes. poedersuiker om de vacherins te bestrooien. 
ma65','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op hooguit 110°C. Bekleed  twee bakplaten met met vellen bakpapier. Teken op het bakpapier 6 cirkels van 8 cm. 
2. Klop in een kom de eiwitten met het citroensap tot vrij stijve pieken, niet te stijf anders wordt het schuim droog en korrelig. Klop geluidelijk de suiker er door heen, een eetlepel tegelijk, zodat het eiwitschuim glad en glanzend wordt. 
3. Schep de meringue in een spuitzak met een grote, gladde spuitmond van 1-1½ cm. Spuit de cirkels vol met ringen schuim. Spuit op elke cirkel langs de randen 2 ringen zodat er een bakje ontstaat. 
4. Droog de vacherins minstens 2 uur. Licht de vacherins op met een spatel: ze zijn gaar als ze gemakkelijk loslaten, vanbuiten knapperig zijn en van binnen nog wat zacht. Laat ze nog 10 minuten op de bakplaat staan, trek voorzichtig het papier los en laat ze volledig afkoelen op een rooster. 
5. Snijd intussen de passievruchten doormidden. Schep de inhoud met pitjes en al in een pannetje en laat de pulp inkoken tot de helft, Druk het sap met de bolle kant van een houten pollepel door een zeef. De pitjes zijn niet nodig. 
6. Roer in een kom de mascarpone, creme fraiche en zure room door elkaar. Meng het geconcentreerde passievruchtensap erdoor. Voeg zonodig wat poedersuiker toe. Klop de slagroom niet al te stijf en spatel het door de passievruchtenroom. 
7. Schep vlak voor het serveren de passievruchtenroom in de vacherins en schep de vruchten erop. Bestuif ze licht met poedersuiker.','/static/img/ma.jpg',8,3,7,6,12,1);
INSERT INTO `recipe` VALUES (316,'Gebraden lams-bout met aubergines en uien','<i> Wijnsuggestie: </i>  Barolo','<i> 6 personen </i>  1 lams-bout met bot, van 2 kg, bij voorkeur van de biologische of scharrelslager  olijfolie  zeezout of zwarte peper uit de molen  3 ronde, paarse aubergines of 4 gewone  2 rode uien, gepeld en elk in ongeveer 6 parten gesneden  1 eetlepel gedroogde oregano  een bosje verse rozemarijn','2018-09-26 19:09:45.086420','1.Verwarm de oven voor op 220 C of stand 7. Wrijf je  lams-bout aan alle kanten in met olijfolie, zout en peper en leg hem in een braadslee. Braad hem een nalf uur in de voorverwarmde oven. Halveer ondertussen de aubergines en snijd ze vervolgens in stukken en parten van ongeveer 5 cm dik. Hussel de parten ui door een beetje olijfolie, wat zout en peper, en de gedroogde oregano.  2. Giet wanneer het lams-vlees de oven uitkomt het meeste van het vet weg en bestrooi het vlees met de gehakte rozemarijn. Leg de stukken aubergine en ui rond het lams-vlees in de braadslee en zet die nog ongeveer een uur in de oven.  3. Maak intussen je tomatensaus. Bak de knoflook en de gehakte peterseliestelen een minuut in een pan in een scheutje olijfolie, doe er dan de tomaten, een mespunt zout en peper','/static/img/ma.jpg',6,2,2,1,12,1);
INSERT INTO `recipe` VALUES (317,'Gebraden lams-rack en dauphinois van aardappelen en bloemkool','<i> wijnsuggestie: </i>  Chileens rode wijn - Cabernet Sauvignon','<i> 4 personen </i>   voor de dauphinois   3 dl slagroom  2 dl melk  4 tenen knoflook, gepeld en in dunne plakjes gesneden  2 laurierblaadjes  een kwart van een muskaatnoot  zeezout en zwarte peper uit de molen  een klont boter  600 gr aardappelen, geschild en in plakken van ongeveer 1 cm dik gesneden  een paar takjes verse tijm, alleen de blaadjes  een handvol vers van het stuk geraspte parmezaanse kaas  2 lams-racks van elk 8 ribben, bij voorkeur van de scharrel - of biologische slager','2018-09-26 19:09:45.086420','1. Verwarm de over voor op 200 C of stand 6. Breng de room, de melk, de in plakjes gesneden knoflook en de laurierblaadjes in een pan aan de kook en rasp er de nootmuskaat bij. Houd het mengsel 5 minuten tegen de kook aan. Zet de pan van het vuur, voeg zout en peper aan het roommengsel toe en verwijder de laurierblaadjes. Wrijf een grote aardewerken schaal in met de boter. Leg een laagje aardappelschijfjes op de bodem, strooi er wat tijm over, leg er een laagje bloemkoolroosjes op','/static/img/ma.jpg',1,2,2,1,12,1);
INSERT INTO `recipe` VALUES (318,'In de pan gebakken entrecotes met eenvoudige botersaus met Chianti en aardappelpuree met olijfolie','<i> Wijnsuggestie:</i>  Amerikaanse Rode - Zinfandel','<i> 2 personen</i> 
Voor de aardappelpuree met olijfolie 
400 gr aardappelen, geschild en gehalveerd 
zeezout en zwarte peper uit de molen 
olijfolie 
een handvol vers geraspte Parmezaanse kaas 
een klont boter 
2 entrecotes van elk 200 gr, bij voorkeur van de biologische of scharrelslager, van 2,5 cm dik, het vet ingekerfd  zeezout en zwarte peper uit de molen  olijfolie  2 klonten boter  2 sjalotten of 1 kleine rode ui, gepeld en in kleine blokjes gesneden  een paar takjes verse tijm, alleen de blaadjes  1 groot wijnglas Chianti  een paar takjes waterkers  extra vierge olijfolie van goede kwaliteit','2018-09-26 19:09:45.086420','1. Doe de aardappelen in een grote pan met gezouten water, breng ze aan de kook en houd ze tegen de kook aan tot ze gaar zijn. Laat ze uitlekken in een vergiet en laat ze 4 minuten in de vergiet staan, zodat het vocht de tijd krijgt te verdampen. Doe de aardappelen terug in de pan en prak ze tot puree. Roer er een flinke scheut olijfolie, de parmezaanse kaas en een klont boter door. Proef, voeg naar smaak zout en peper toe en doe de puree over in een kom. Bedek de kom met plasticfolie en hang hem in een pan met zachtjes kokend water om de puree warm te houden.  2.  Verhit een braadpan, die zo groot is dat beide entrecotes erin kunnen liggen zonder dat ze elkaar raken. Bestrooi de entrecotes met zout en peper en kwast ze in met oijfolie. Houd met een tang het vette stuk van het vlees tegen de bodem van de pan om het vetu uit te bakken en kleur te geven. Bak','/static/img/ma.jpg',1,2,2,3,12,1);
INSERT INTO `recipe` VALUES (319,'Geroosterde biefstukken van de haas met superromige witte bonen met prei','<i> Wijnsuggestie: </i>  Italiaanse rode - Nero d''Avola','<i> 4 personen </i>  4 preien, gewassen, schoongemaakt en in dunne plakjes gesneden  een klein bosje verse tijm, alleen de blaadjes  2 tenen knoflook, gepeld en fijngehakt  olijfolie  een klont boter  een wijnglas witte wijn  500 gr grote witte bonen van goede kwaliteit uit blik of pot','2018-09-26 19:09:45.086420','1. Laat in een pan met dikke bodem op een laag vuur de prei, tijm en knoflook 20 minuten zweten in een scheutje olijfolie en de boter, tot ze zacht en zoet zijn. Zet het vuur hoog en giet de witte wijn erbij. Laat de wijn aan de kook komen, doe er dan de bonen bij en zoveel water dat de bonen bijna onder staan. Houd ze 5 tot 10 minuten tegen de kook aan, tot de bonen mooi romig zijn. Voeg er de peterselie, de creme fraiche en een flinke scheut extra vierge olijfoie aan toe. Proef of er nog zout of kruiderij bij moet.  2. Verhit een grillpan tot hij gloeiend heet is. Bestrooi je biefstukken met zout en pepr en wrijf ze in met wat ollijfolie. Gril een biedfstuk van 4 cm dik 2 tot 3 minuten aan elke kant','/static/img/ma.jpg',6,2,2,1,12,1);
INSERT INTO `recipe` VALUES (320,'In de schelp gebakken coquilles (Jacobschelp) met zoete tomaten-basilicumsaus','<i> Wijnsuggestie: </i>  Chileense witte wijn - Sauvignon Blanc','<i> 10 personen </i> 
10 stuk cocquilles groot formaat
500 gr rijpe tomaten 
2 tenen knoflook 
3 takken basilicum 
2 el basalmico 
Zeezout 
Zwarte peper 
10 plakken pancetta 
Vierge olijfolie','2018-09-26 19:09:45.086420','1. Strooi een flinke laag zout of rijst op de bodem van een bakblik en strijk de laag glad.
Hierin blijven de schelpen recht liggen en voorkom je dat ze in het blik gaan schuiven. 
2. Om de saus te maken hoef je alleen een handvol zeer rijpe, verse tomaten te nemen, de pitjes te verwijderen en ze samen met een halve teen gepelde knoflook, en een handvol vers basilicum , een scheutje basalmico, een flinke snuf zeezout en  zwarte peper uit de molen, en een klontje boter in een keukenmachine te doen. Laat de machine even draaien en schep 3 eetlepels van de saus in de diepte helft van elke schelp. 
3. Leg 1 of 2 van de schelpdieren op de saus en bedek ze met een plakje pancetta. Leg de schelpen naast elkaar in het bakblik en besprenkel ze met een klein beetje extra vierge olijfolie. Leg de platte schelpen erop. 
4. Verwarm de oven voor op 170 C of stand 3 en bak de schelpen ongeveer 15 minuten . dat klinkt misschien een beetje lang, maar het duurt even voordat de hitte goed tot de koude saus en coquilles is doorgedrongen.

 Aan Tafel:  Voordat ze in de oven gaan kun je ze een paar uur in de koelkast bewaren, zodat je ze klaar hebt staan als je een diner met meerdere gangen maakt. Maar je kunt ze ook direct verder klaarmaken.','/static/img/ma.jpg',6,7,4,1,1,1);
INSERT INTO `recipe` VALUES (321,'Passato di faglioli -Witte bonen puree','','<i> 6 personen </i>    
400 gr gedroogde canellini bonen 
1 handvol verse salieblaadjes 
6 eetlepels koud geperste olijfolie 
zout 
versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Week de bonen 12 uur in een grote kom water.  2. Giet de bonen af en doe ze in een pan. Voeg de salie toe en giet erzoveel water bij zodat ze onderstaan. Leg het deksel op de pan en breng de inhoud op een laagvuur langzaam aan de kook. Laat de bonen in ongeveer 1,5 uur zachtjes gaar sudderen.  3. Schep de bonen uit de pan en draai ze door fijne schijf van een groente molen.
Doe 3 eetlepels van de olijfolie in een koekenpan voeg de bonenpuree toe en zet de pan op een laag vuur laat een paar minuten bakken onder een paar minuten af en toe omscheppen toe het vocht verdampt is. Breng op smaak met zout en peper.
4. Schep de puree op een dienschaal en dien onmiddellijk op. 

 Aan Tafel:   In Florence worden gepureerde bonen met verschillende vleesgerechten geserveerd, net zoals dat het geval is met aardappelpuree in andere delen van Italie. Dezelfde puree kan ook op minder traditionele manieren gebruikt worden, zoals in een vulling voor ravioli, of verdund met wat bouillion of gesmolten boter als een saus voor pasta of groenten.','/static/img/ma.jpg',6,6,6,1,12,1);
INSERT INTO `recipe` VALUES (322,'Brassato al chianti - Runderrollade in Chianti','','<i> 6 personen </i> 
1,2 kg runderrollade van de dunne lende of het dekstuk van de bovenbil 
1 fles chianti riserva van 7,5 dl 
1 wortel geschraapt en in plakken 
1 ui in plakken gesneden 
1 stengel bleekselderij en in plakken 
2 laurierbladen 
0,5 eetlepel hele zwarte peperkorrels 
1 eetlepel jeneverbessen 
6 plakken porcini 
3 eetlepels koud geperste olijfolie 
2 pruimtomaten ontveld en gehakt 
zout','2018-09-26 19:09:45.086420','1. Doe het vlees in een grote kom en giet er de wijn over. Voeg de wortel en ui, bleekselderij en laurierbladen, peperkorrels en jeneverbessen toe. Zet de kom in de koelkast en laat 24 uur marineren. Keer het vlees af en toe om zodat het vochtig blijft.  2. Week de plakken boleet 30 minuten in warm water. Neem intussen het vlees uit de marinade  en dep het droog met keuken papier. Zeef de marinade en zet de groente weg. Bewaar het vocht van de marinade.  3. Verhit de olie op een matig vuur in een ovale pan die net groot genoeg is voor de rollade. Leg er de rollade in en braad die in circa 10 minuten rondom bruin aan.  4. Laat intussen de boleten uitlekken. En bewaar het weeknat. Zeef het weeknat en  zet de boleten en het zeefnat weg.  
Draai het vuur onder het vlees laag. Voeg de bewaarde groenten en  boleten toe en breng op smaak met wat zout. Giet er wat van de marinade bij. Leg het deksel op de pan en laat zachtjes sudderen. Giet er af en toe wat marinade of weekvocht van de boleten er bij zodat de rollade altijd vochtig blijft.  5. Neem na 4 uur  het vlees uit de pan en doe het op een dienschaal en snijd het vlees in plakken  en houd dit warm.  6. Passeer de groente door een fijne zeef en doe ze terug in de pan. Roer de groente puree door het kooknat en laat op een matig vuur koken tot de saus dikker word.  7. Giet de saus over de plakken vlees en dien onmiddellijk op.  
Aan Tafel:  U kunt voor een smoorschotel verschillende stukken rundvlees gebruiken, maar een van de beste is klapstuk of vlees van de bovenbil. Het vlees wordt meestal minstens 4 uur gesmoord om mals te worden.','/static/img/ma.jpg',6,2,2,1,12,1);
INSERT INTO `recipe` VALUES (323,'Zuppa di sogliole e triglie - Soep met tong en mul','','<i> 6 personen </i> 
700 gr tongfilets (2 stuks) 
700 gr mullen (3 stuks) 
4 eetlepels koud geperste olijfolie 
2 theelepels knoflook gepeld en gehakt + 1 gepelde teen 
1 kleine ui gehakt 
1 wortel geschraapt en gehakt 
1 stengel bleeksnelderij gehakt 
2 eetlepels gehakte snijpeterselie 
2,5 dl droge witte wijn 
600 gr pruimtomaten ontveld en gehakt 
zout 
vers gemalen zwarte peper 
6 sneden grof boeren brood','2018-09-26 19:09:45.086420','1. Snij de koppen van de vis en bewaar ze. Fileer de vis en verwijder de graten. leg de filet en de koppen weg.  2. Verwarm de olijfolie in een zwarte pan op een laag vuur. Doe er de gehakte ui, knoflook, wortel, bleekselderij en peterselie bij. En fruit alles circa 5 minuten tot de ui glazig is. Voeg de viskoppen en de wijn toe. En laat circa 10 minuten koken tot de wijn verdampt is. Voeg de tomaten toe en laat circa 40 minuten koken tot de saus dik begint te worden.  3. Warm de oven voor op 180 graden.  4. Neem de viskoppen uit de pan en gooi ze weg. Zeef de saus in een groente molen. De gepureerde saus terug in de pan en voeg de visfilets toe. Breng op smaak met zout en peper. Laat niet langer dan 10 minuten op laag vuur sudderen. Waarbij er zonodig wat water bij giet om de saus vrij dun te houden.  5. Rooster intussen de snede brood goudgeel in de oven. Wrijf een kant van elke snee toast in met een hele teen knoflook. Leg de snede toast met de knoflook kant boven in de soepborden.  6. Schep de soep en vis over de toast en dien onmiddellijk op.   
Aan Tafel:  Livorno is zowel beroemd om zijn tong als om zijn mul. Plaatselijke koks gebruiken beide vissoorten voor deze heerlijke en voedzame soep dei meestal als hoofdgerecht wordt gesreveerd.','/static/img/ma.jpg',6,4,8,1,12,1);
INSERT INTO `recipe` VALUES (324,'Brodo di Fagiano - Fazantsoep','','<i> 6 personen </i> 
1 fazant 
3 liter water 
1wortel, geschraapt en gehakt 
1 stengel bleekselderij, bijgesneden en gehakt 
1 ui, gehakt 
3 laurierblaadjes 
1 theelepel zwarte peperkorrels 
zout 
1,2 dl vin Santo of een witte dessertwijn','2018-09-26 19:09:45.086420','1. Doe de fazant in een diepe pan. Voeg het water, de wortel, bleekselderij, ui, laurierblaadjes en peperkorrels toe en breng aan de kook. Draai het vuur laag, leg het deksel schuin op de pan en laat 4 uur sudderen. Het vocht moet dan tot circa 1
Aan Tafel:  Fazanten moeten gehangen worden voor het gebruik. Traditioneel wordt dit gedaan door ze op een koele en winderige plek te laten hangen tot de kop van het lichaam los komt. De fazant moet daarbij wel beschermd zijn tegen vliegende insekten die het vlees oneetbaar zouden kunnen maken.','/static/img/ma.jpg',6,4,3,1,12,1);
INSERT INTO `recipe` VALUES (325,'Salsa di pommodoro - Tomatensaus','','<i> Voor 1/2 liter saus </i> 
4 eetlepels extra virgine olijfolie 
2 tenen knoflook 
1 kg pommodore ontveld, fijngehakt 
zout 
handvol verse basilicum of 1 eetlepel droge oregano','2018-09-26 19:09:45.086420','1. Verhit 3 lepels olijfolie in een pan boven een laag vuur. voeg hieraan de knoflook toe en laat dit 3 minuten zachtjes glazig worden. Voeg de tomaten toe en laat deze 50 minuten op een laag vuur sudderen, zodat er een mooie saus ontstaat.  2. Breng de saus op smaak met zout. Schep de resterende eetlepel olie en de basilicum of oregano door de saus  
Aan Tafel:  ''s Zomers, wanneer de tomaten rijp zijn en op het hoogtepunt van hun smaak, zijn ze geschikt om in een saus te verwerken. De rest van het jaar kunt u eignelijk beter tomaten uit blik gebruiken; deze hebben veel meer smaak dan verse tomaten die buiten het topseizoen zijn geoogst. Koop blikken van een goed merk; er is veel kaf onder het koren. De mindere merken zijn vaal van kleur en bevatten meestal veel sap.','/static/img/ma.jpg',6,6,6,1,12,1);
INSERT INTO `recipe` VALUES (326,'Mejillones escabechados - Gemarineerde mosselen','','2 kg Mosselen 
3 el Olijfolie 
1 Ui 
1 stengel Bleekselderij 
2 Worteltjes 
1 Prei 
2 teentjes Knoflook 
1 thl Zout 
1 glas Witte wijn 
2.5 dl Vis- of groentebouillon 
1 Laurierblad  
Vinaigrettesaus:  
2 Eieren, hardgekookt 
2 el Mosterd 
3 el Wijnazijn 
1.5 kopje Olijfolie 
0.5 bosje Peterselie 
0.5 bosje Bieslook 
1 Ui 
Zout 
Zwarte peper 
Suiker','2018-09-26 19:09:45.086420','1. De mosselen onder stromend water afborstelen. Olijfolie in een pan verhitten en de fijngesnipperde ui glazig fruiten.  2. Bleekselderij, worteltjes en prei schoonmaken, wassen, kleinsnijden en even met de ui meesmoren.  3. Het teentje knoflook in een vijzel met zout inwrijven en bij de groenten doen. Witte wijn en vis- of groentebouillon erbij gieten, laurierblad toevoegen en aan de kook brengen. De mosselen hierin koken totdat ze open zijn.  4.	De mosselen pellen en op een platte schaal leggen, vinaigrettesaus erover gieten en 2-3 uur in de koelkast marineren.   Vinaigrette   1. De eieren pellen en halveren. De dooiers eruit halen','/static/img/ma.jpg',2,7,4,1,12,1);
INSERT INTO `recipe` VALUES (327,'Pasticcio di Caccia - Wildterrine','','<i> 6 personen </i> 
1 fazant van circa 1,5 kg, met de lever 
4 eetlepels koudgeperste olijfolie 
180 gr milde Italiaanse worst, ontveld en verkruimeld 
1 ui, gehakt 
2 tenen knoflook, gepeld en gehakt 
3 verse laurierblaadjes 
1 eetlepel jeneverbessen 
1,2 dl vin Santo of een witte dessertwijn 
zout en vers gemalen peper 
2 eierdooiers 
100 gr boter op kamertemperatuur, in kleine stukje gesneden, plus extra voor het invetten van de pan.','2018-09-26 19:09:45.086420','1. Verdeel de fazant in grote stukken  2. Verhit de olijfolie in een zware pan op een matig vuur. Doe er de stukken fazant, lever, worst, ui, knoflook, laurierblaadjes en jeneverbessen in en laat alles onder af en toe omscheppen circa 10 minuten bakken tot de fazant goudbruin is.  3. 
Gier er de wijn bij en schraap met een polllepel alle aanbaksel los. Breng op smaak met zout en peper. Leg het deksel op de pan en laat circa 1 uur op een laag vuur sudderen. Gier er zonodig wat water bij om de inhoud vochtig te houden.  4. Neem de pan van het vuur en laat alles afkoelen. Ontbeen de fazant en doe het vlees in een keuken machine. Verwijder de laurierblaadjes. Doe de rest van de ingrediënten van de pan in de keukenmachine. Voeg de eierdooiers en de stukjes boter toe en draai tot een homogeen, stevig mengsel.  5. Bekleed een broodvorm van 8 bij 20 cm met vetvrij papier en vet dan het papier royaal in met de zachte boter. Schep het fazanten mengsel in de pan en strijk de bovenkant glad. Dek de pan af en zet hem circa 2 uur in de koelkast voor het serveren.  6. Keer de broodvorm om op een dienschaal, haal de vorm eraf en pel het papier eraf. Serveer op kamertemperatuur.  
Aan Tafel:   Deze terrine wordt gemaakt met de vangst van de dag van fazant tot haas. U kunt in plaats van het wild ook de voor de handel gefokte, half-wilde parelhoen of kwartel gebruiken.','/static/img/ma.jpg',6,7,3,1,12,1);
INSERT INTO `recipe` VALUES (328,'Terrine de Gibier a plume - Terrine van wild en gevogelte','','2 wilde vogels, of meer als ze klein zijn, in stukken verdeeld  
 Bouillon:  
1 ui grof gehakt 
1 wortel, in plakken gesneden 
1 laurierblaadje 
1 takje verse tijm 
in stukken verdeelde karkassen van het gevogelte 
zout 
150 gr gevogelte lever 
500 gr worstevlees 
125 gr rauwe ham, zoals proscuitto, fijngehakt 
1 ui gesnipperd en in 1 eetlepel olijfolie gaar maar niet bruin gefruit 
grote snuf grof zout 
2 tenen knoflook 
60 gr vers broodkruim 
grote snuf gemengde gedroogde Provençaalse kruiden 
4 eetlepels marc de provence of cognac 
3 eieren 
zout, versgemalen peper en gemalen piment 
dunne plakken vers vetspek 
kokend water','2018-09-26 19:09:45.086420','1. Snijd het vlees van de stukken gevogelte en zet het weg met de harten, levers en maagjes. Verwijder het vel. Breek eventueel te grote stukken karkassen.  2. Maak de bouillon. Doe de ui, wortel, het laurierblad en de tijm in een bouillonpan en leg er de stukken karkas op. Giet er zoveel koud water bij dat alles goed onder staat en breng aan de kook. Schep alle naar boven drijvende schuim af en breng op smaak met zout.Temper het vuur zodat de bouillon blijft sudderen., leg het deksel schuin op de pan  en laat 2 uur trekken. Zeef de bouillon, doe hem terug in de pan en laat zachtjes koken tot hij tot circa 1
3. Snijd het borstvlees van het gevogelte in blokjes van ½ cm Hak de rest van het vlees in grote stukken en doe dat in een keukenmachine. Voeg de harten, maagjes, levers en de extra lever toe, Draai alles tot een gladde puree.  4.
Doe al het vlees en de gefruite ui in een grote kom. Doe de knoflook en het zout in een vijzel en stamp tot een pasta. Schep er het broodkruim door, giet er vervolgens de ingekookte bouillon bij e roer alles door tot  een pasta. Schep het knoflookmengsel bij het vleesmengsel en voeg de kruiden, cognac en eieren toe. Breng op smaak met wat zout, peper en piment en meng alles goed met uw handen.  5. Warm de oven voor op 165 C. Bekleed een terrine, of meer, afhankelijk van de grootte, met de vellen vetspek. Druk de vellen stevig tegen de randen en bodems van de terrines aan. Schep grote lepels van het mengsel in de terrines en druk het stevig aan zodat er geen luchtbellen in zitten. Druk een vel vetspek bovenop het mengel en sluit de terrines af met een deksel of een stuk aluminiumfolie.  6. Zet de terrines in een grote pan, giet er zoveel water bij dat het tot halverwege de terrines komt en zet in de oven. Laat kleinere terrines (1 liter inhoud) circa 1 uur koken
Worstevlees:  
1. Kies 1 kg varkensvlees in een verhouding van circa twee delen mager vlees tot een deel vet vlees. Vlees van de buik, schouder of hals zijn alle geschikt. Snijd het vlees in grote stukken en bestrooi die aan alle kanten met grof zout.  2. Doe ze in een bak of grote ovenschotel (die mag niet van metaal zijn) dek af met plastic folie en zet een nacht weg. Giet daarna het vocht af, spoelde stukken goed af, laat ze uitlekken en dep ze dan droog.  3. Snijd het vlees kleiner en haal het door de middelgrove schijf van een vleesmolen.  4. Strooi flink wat peper over het gehakt, voeg een paar korrels vers gestampte piment en een vleug nootmuskaat tot. Strooi er wat gemengde, gedroogde Provençaalse kruiden over, besprenkel met 4 eetlepels witte wijn en meng alles goed met uw handen.  5. Bak een kleine balletjes in wat olijfolie en zout om smaak te controleren.  
Aan Tafel:   Wilde eend, fazant, patrijs en houtsnip zijn allemaal heerlijke onderdelen van een wildterrine, net als Europese wilde konijnen. Gefokte eenden zijn ook geschikt. Zorg er in ieder geval voor dat alle gevogelte samen met het hart, de lever, en maag worden geleverd. Gebruik wat verkrijgbaar is en vul zonodig aan met tamme eend of konijn. Truffels zijn altijd welkom.','/static/img/ma.jpg',8,7,3,1,12,1);
INSERT INTO `recipe` VALUES (329,'Perenchutney','','2 peren 
1 kleine chilipeper 
1 teentje knoflook 
1 klein stukje gember 
1 kaneelstokje 
snufje kruidnagelpoeder 
50 gr suiker 
2 el appelciderazijn','2018-09-26 19:09:45.086420','1. Schil de peren en verwijder het klokhuis. Snijd ze in grove stukken.  2. Doe alle ingredienten in een kleine pan en laat ze al roerend zachtjes koken tot de suiker is opgelost.  3. Voeg de peren toe en laat ze koken tot ze zacht zijn. Dit duurt ca. 15 minuten','/static/img/ma.jpg',1,6,7,3,12,1);
INSERT INTO `recipe` VALUES (330,'Gratin van aardappels en paddestoelen','','15 gr gedroogde (wilde) paddestoelen, zoals eekhoorntjesbrood, cantharellen of shiitake 
kokend water naar behoefte 
8  aardappels, 900 g – 1 kg 
1 ½  eetlepel boter 
500 gr witte champignons in dunne plakjes gesneden 
2 eetlepels gehakte verste tijm 
zout en vers gemalen peper 
90 gr blauwe kaas, zoals gorganozola, stilton of Roquefort op kamertemperatuur 
6,25 dl room 
60 gr versgeraspte parmezaanse kaas','2018-09-26 19:09:45.086420','1. Week de paddestoelen in een kom en bedek ze met water. Laat ze ongeveer 30 minuten weken, tot ze zacht zijn. Laat ze uitlekken, hak ze in grove stukken en zet ze opzij.  2. Schuif het ovenrooster bovenin de oven en verwarm de oven voor op 200 C. Vet een gratineerschaal of andere ovenschotel van 3 liter inhoud licht in met olie.  3. Snijd de aardappels in dunne plakjes en zet die zolang opzijn in een kom met water.  4. Smelt de boter in een grote koekenpan op een hoog vuur. Voeg de champignons, de geweekte paddestoelen en de tijm toe en bak 8-10 minuten tot de paddestoelen zacht zijn en het vrij gekomen vocht volledig verdampt is; roer regelmatig. Voeg zout en peper toe.  5. Vermeng de blauwe kaas en de room in een kom tot een gladde massa en voeg zout en peper naar smaak toe.  6. Leg eenderde van de aardappels op de bodem van de Gratineerschaal. Bedek ze met de helft van de paddestoelen. Voeg de helft van de overgebleven aardappels toe en bedek deze weer met de overige paddestoelen. Eindig met de laatste aardappels en bedek deze met het kaas-room mengsel. Bestrooi de bovenkant gelijkmatig met Parmezaanse kaas.  7. Zet de schaal 40-50 minuten in de oven tot de aardappels gaar zijn en de room bijna helemaal opgenomen is. Dien heet op','/static/img/ma.jpg',1,1,1,1,1,1);
INSERT INTO `recipe` VALUES (331,'Yung Yok Pin - Mongoolse lams-bout','Noord-China','1 Grote lams-bout  
Saus:  
6 teentjes knoflook, uitgeperst 
6 plakken gemberwortel, fijngehakt 
2 uien, in dunne ringen gesneden 
1,2 liter bouillion 
75 ml sojasaus 
3 eetlepels sojabonenpasta of hoisinsaus 
10 ml gedroogde chilipeper of chilisaus 
1/2 tl vijfkruiden poeder
2 el suiker 
3 dl rode wijn
1 blokje kippebouillon','2018-09-26 19:09:45.086420','1. Doe de ingredienten voor de saus in een pan en roer ze goed. Breng alles aan de kook en laat het 45 minuten zachtjes doorkoken.  2. Leg de lams-bout in een andere grote pan of vuurbestendige schaal. Giet de saus er overheen. Breng alles aan de kook en laat het 
2 1/2 uur heel zachtjes koken, waarbij om het 1/2 uur de lams-bout gekeerd wordt. Haal de pan van het vuur en laat het vlees in de saus afkoelen en laat het vervolgens nog eens 3 uur marineren ( of eventueel de hele nacht ).
3. Leg de lams-bout ongeveer 1 uur voor het eten in een braadslede en plaats die in een voorverwarmde oven +/- 180 graden. Laat 1 uur in de oven staan.
Snijd de lams-bout in grote eenhapsplakken en serveer warm of koud met sausjes zoals een mengsel van sojasaus, hoisinsaus en sherry, of sojasaus met azijn.','/static/img/china.jpg',19,2,2,6,1,1);
INSERT INTO `recipe` VALUES (332,'Cavolini gratinati - Spruitjes au gratin','','<i> 6 personen </i> 
700 gr stevige spruitjes, zo groot als een walnoot, schoongemaakt 
Peper en zout naar smaak   Bechamelsaus:  
75 gr boter 
60 gr bloem 
Versgeraspte nootmuskaat 
6 dl hete melk 
30 gr dolcelatte, in blokjes ,br>
60 gr parmezaan, versgeraspt','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 180 C.  2. 
Kook de spruitjes 20 minuten in water met zout en laat ze uitlekken  3.Maak de bechamel: smelt de boter in een pan, voeg de bloem toe en roer het mengsel glad. Voeg wat peper, zout en nootmuskaat toe. Giet de hete melk, onder voortdurend roeren, beetje bij beetje langzaam in de pan. Blijf roeren en voeg, als u alle melk hebt toegevoegd, de dolcelatte en de parmezaan toe. Kook de saus 3 minuten door.  4. Beboter een ovenschotel of een braadslede en leg alle spruitjes erin. Verdeel de bechamel er gelijkmatig over en zet 15 minuten in de voorverwarmde oven.   Aan Tafel:  Gratinati betekent altijd dat het gerecht in een ondiepe schaal is bereid, meestal in een ovenschaal of een braadsleede','/static/img/ma.jpg',6,6,6,1,12,1);
INSERT INTO `recipe` VALUES (333,'Komkommerijs','','2 komkommers (ongeveer 600 g)
50 cl slagroom 
20 takjes bieslook 
beetje dragon 
zout en peper','2018-09-26 19:09:45.086420','','/static/img/ma.jpg',1,7,6,3,NULL,NULL);
INSERT INTO `recipe` VALUES (335,'Pasta alla Ricotta - Pasta met spinazie en ricotta','','500 gr Pasta om te kunnen vullen 
600 gr spinazie, bijgesneden 
300 gr ricotta 
3 eetlepels versgeraspte Parmezaanse kaas 
1 ei, losgeklopt  
snufje versgeraspte nootmuskaat 
zout','2018-09-26 19:09:45.086420','1. Verwarm de oven op 180 C.  2. Breng een pan met water aan de kook met een beetje zout. Voeg daarna de pasta toe en laat gedurende 5 minuten koken.  3. Maak ondertussen de vulling kook de spinazie in circa 2 minuten gaar in wat gezouten koken water. Laat goed uitlekken en knijp er al het overtollige vocht uit. Hak de spinazie fijn en doe in een kom. Doe er de ricotta, Parmezaanse kaas, het ei en de nootmuskaat bij en schep alles goed om. Breng op smaak met zout.  4. Lepel wat van de vuling in een ronde pasta. Zet het in de oven en laat de pasta ongeveer 5 minuten garen.  5. Neem de pasta uit de oven en schik op een bord en giet hierover overheerlijke eigengemaakte tomatensaus over met een klein beetje basilicum. Dien onmiddelijk op.','/static/img/ma.jpg',6,7,6,1,12,1);
INSERT INTO `recipe` VALUES (336,'Franse uiensoep','','<i> 6 personen </i>  
50 gr boter 
750 gr uien 
2 tenen knoflook, fijngesneden 
45 gr bloem 
2 liter runder-of kippenbouilon  
2,5 dl witte wijn  
1 laurierblad 
2 takjes tijm  
12 sneetjes van een baquette van een dag oud 
100 gr gruyere, fijngeraspt','2018-09-26 19:09:45.086420','1. Verhit de boter in een grote koekenpan met zware bodem en voeg de uien toe. Fruit de uien 25 minuten op laag vuur, onder af en toe roeren, tot ze goudbruin kleuren en glazig worden.  
2. Voeg de knoflook en bloem toe en roer nog 2 minuten. Schenk de bouillon en witte wijn er geleidelijk bij, roer goed en breng het geheel aan   de kook. voeg de laurier, tijm en zout en peper toe, leg het deksel op de pan en laat het geheel 25 minuten sudderen. Verwijder de kruiden en breng op smaak. Verwarm de grill voor.  
3. Gril de sneetjes brood en verdeel ze over zes soepkommen. Schenk de soep erbij, strooi er wat geraspte kaas over en zet de soepkommen nog even onder de grill, tot de kaas smelt en lichtbruin kleurt. 
 Aan Tafel:  
De oorsprong van deze soep - waarvan de populariteit onbetwistbaar is - blijft twijfelachtig, hoewel er verschillende streken in Frankrijk zijn die het originele recept maar al te graag opeisen.  
Oorsprong: Slow cooking bldz 13','/static/img/koken.jpg',8,4,6,10,1,4);
INSERT INTO `recipe` VALUES (337,'Minestrone alla genovese','','<i> 6 personen </i> 
220 gr borlottibonen 
50 gr boter 
1 grote ui, fijngesneden  
1 teen knoflook, fijngesneden 
15 gr peterselie, fijngesneden 
2 Saliebladeren 
100 gr pancetta, in blokjes  
2 stengels bleekselderij, gehalveerd en in plakjes 
2 wortels, in plakjes 
3 aardappelen, geschild  
1 theelepel tomatenpuree 
400 gr tomaten uit blik, gehakt 
8 blaadjes basilicum 
3 liter kippen-of groentenbouillon 
2 courgettes 
220 gr doperwten 
120 gr sperziebonen, in stukjes 
1/4 kool, fijngesenden 
150 gr ditalini (of een andere kleine pastasoort) 
6 eetlepels kant-en-klare pesto 
geraspte parmezaanse kaas','2018-09-26 19:09:45.086420','1. Week de borlottibonen een avond van tevoren in koud water. Giet ze de volgende ochtend af en spoel ze goed met koud water af. Kook ze zachtjes circa 30 minuten in licht gezouten water op laag vuur. 
2. Verhit de boter in een grote pan en voeg de ui, knoflook, peterselie, salie en pancetta toe. Bak het geheel op laag vuur, onder af en toe roeren, gedurende 10 minuten zachtjes door tot de ui zacht en goudbruin is. 
3. Voeg de hele aardappelen, bleekselderij en wortels toe en bak ze 5 minuten. Roer de tomatenpuree, de tomaten en de borlottibonen erdoor. Strooi er flink wat versgemalen zwarte peper over. Voeg de bouillon toe en breng het geheel aan de kook. Leg het deksel op de pan en laat het geheel 2 uur zachtjes koken, roer af en toe. 
4. Als de aardappelen nog niet uit elkaar gevallen zijn, breek ze dan met een vork grofweg in stukken. Breng op smaak en voeg de courgettes, doperwten, sperziebonen, kool en pasta toe. Kook het geheel op laag vuur zachtjes door tot de pasta al dente is. Garneer met basilicum en een flinke lepel pesto ern serveer er parmezaanse kaas bij. 
 Aan Tafel:  
Bijna alle regio in Italie kent zijn eigen minestrone. In dit recept wordt er vlak voor het serveren nog een flinke hoeveelheid pesto toegevoegd. Andere versies, zoals die van Milaan, gebruiken arboriorijst in plaats van pasta. 

Oorsprong: Slow Cooking blz 13','/static/img/koken.jpg',6,4,6,5,1,4);
INSERT INTO `recipe` VALUES (338,'Harira - Kikkererwten-lamssoep','','<i> 4-6 personen </i> 
2 eetlepels olijfolie 
2 kleine uien, fijngesneden 
2 tenen knoflook, uitgeperst  
500 gr mager lams-vlees, in kleine stukjes 
1,5 theelepel gemalen komijn 
2 theelepels paprikapoeder 
1/2 theelepel gemalen kruidnagels 
1 laurierblad  
2 eetlepels tomatenpuree 
1 liter runderbouillon 
3 x 300 gr kikkererwten, geweekt 
800 gr tomaten (uit blik), grof gesneden 
30 gr verse koriander, fijngesneden en wat extra korianderblaadjes 
geroosterd pittabrood','2018-09-26 19:09:45.086420','1. Verhit de olijfolie in een pan met zware bodem. Voeg de ui en knoflook toe en fruit ze gedurende 5 minuten tot de ui zacht is. Voeg het vlees toe en braad het op hoog vuur tot het mooi bruin is. 
2. Voeg de kruiden en laurier toe en bak ze mee tot ze een heerlijke geur verspreiden. Roer de tomatenpuree erdoor en bak het geheel nog eens 2 minuten onder voortdurend roeren. Roer de bouillon erdoor en breng het geheel aan de kook.  
3. Voeg de kikkererwten, tomaten en gesneden koriander toe. Roer goed en breng het geheel aan de kook. Draai het vuur lager en laat de soep met het deksel op de pan 2 uur zachtjes doorkoken tot het vlees mals is. Roer af en toe. Voeg naar smaak zout en peper toe. 
4. Garneer de soep met de korianderblaadjes en zwarte olijven. Serveer hem met geroosterd pittabrood, besprenkeld met wat olijfolie. 
 Aan Tafel:  
Deze voedzame en geurige Marokkaanse soep vormt het hele jaar door een smakelijke lunch. Serveer de soep met pittabrood voor een authentiek oosters tintje. 
Oorsprong: Slow Cooking blz 13','/static/img/koken.jpg',15,4,2,5,1,4);
INSERT INTO `recipe` VALUES (339,'Borsjtsj - Russische bietensoep','','<i> 8-10 personen </i> 
1,2 kg rode bieten, goed schoongemaakt 
olijfolie 
1 kg mager rundvlees 
1 grote ui, in dunne plakjes 
5 tenen knoflook, fijngesneden 
1 theelepel karwijzaad 
2 wortels, in plakjes 
1 laurierblad 
snufje piment 
1,8 liter runderbouillon 
400 gr verse tomaten (of uit blik), fijngehakt 
1 eetlepel tomatenpuree 
1 grote aardappel, in blokjes 
1/2 rode kool, fijngesneden 
1,2 dl appelazijn 
1/2 theelepel bruine suiker 
3 eetlepels fijngehakte dille 
2 eetlepels fijngehakte peterselie 
zure room','2018-09-26 19:09:45.086420','1. Leg de bieten in een pan en overgiet ze krap met water. Breng het water aan de kook, draai het vuur laag en kook de bieten 40 minuten, tot ze van binnen zacht zijn. Haal de pan van het vuur en laat de bieten in het kookvocht afkoelen. 
2. Braad het rundvlees intussen op hoog vuur aan in een gietijzeren stoofpan. Haal het vlees uit de pan en zet het apart. Fruit de ui in de pan. Voeg de knoflook en het karwijzaad toe en bak alles nog 1 minuut. Pas op dat je de knoflook niet laat aanbranden. Doe het vlees en zijn jus weer terug in de pan en voeg de wortelplakjes, het laurierblad en piment toe. Giet de runderbouillon en 1 liter water erbij en breng het geheel aan de kook. Schuim het oppervlak nu en dan af. Draai het vuur laag en kook het geheel, deels afgedekt, 2-2,5 uur zachtjes door tot het vlees mals is. Haal de pan van het vuur en neem met een schuimspaan voorzichtig de stukjes vlees uit de pan. Zet het vlees apart. Zeef de bouillon en verwijder de groenten. Haal de bieten uit hun kookvocht. Houd 1 liter kookvocht apart. Schil de bieten en raps ze grof. 
3. Zet de bouillon weer op het vuur en voeg de tomaten, tomatenpuree, aardappel, rode kool, bieten en 1 liter kookvocht, de azijn en suiker toe. Kook het geheel 15 minuten zachtjes door. Voeg dan het vlees toe en laat het nog eens 10 minuten sudderen. Strooi de dille en peterselie erover, en voeg naar smaak zout en peper toe. Dien de soep heet op met een flinke scheut zure room en serveer er roggebrood of boekweitbrood bij. 
 Aan tafel:   Doe het op z''n Russisch: serveer de borsjtsj met een glaasje ijskoude wodka. De borsjtsj smaakt nog beter als hij met twee soorten vlees bereid wordt, bijvoorbeeld runder- en varkensvlees. Je kunt ook kiezen voor borsjtsj met vis, bijvoorbeeld in plakjes gesneden steurfilet.','/static/img/koken.jpg',16,4,2,5,1,4);
INSERT INTO `recipe` VALUES (342,'Bisque van garnalen','','<i> Voor 4 personen </i> 
120 gr boter 
1/2 ui, fijngesneden 
1/2 wortel, fijngesneden 
1/2 stengel bleekselderij 
1 teen knoflook, fijngesneden 
750 gr rauwe garnalen 
1 eetlepel cognac 
1 eetlepel tomatenpuree 
1 laurierblad 
snufje tijm 
1 eetlepel fijngehakte dragon 
snufje cayennepeper 
2 dl wijn 
1 liter vis- of kippenbouillion 
1 eetlepel creme fraiche','2018-09-26 19:09:45.086420','1. Verhit 25 gram van de boter in een koekenpan op hoog vuur. Voeg de groenten en knoflook toe. Dek de pan af en bak ze 5 minuten op middelmatig vuur tot ze zacht maar niet te bruin zijn. Voeg de garnalen toe en bak het geheel nog eens 5 minuten tot de garnalen roze kleuren. 
2. Verhoog het vuur, giet de cognac erbij, breng het geheel aan de kook en flambeer het. Voeg als de vlam gedooft is, de tomatenpuree, het laurierblad, de gehakte dragon en cayennepeper toe en roer het geheel 4-5 minuten om. Schenk de witte wijn erbij. Voeg als de wijn indikt 6 dl van de vis- of kippenbouillion toe. Breng alles weer aan de kook, draai het vuur laag, dek de pan opnieuw  af en laat het geheel 18-20 minuten sudderen. Zeef het mangsel en houd de garnalen en vloeistof apart. Laat de garnalen uitlekken in een vergiet en pel ze. Schenk de gezeefde vloeistof weer in de  pan. 
3. Haal de garnalen uit de vergiet. Houd 10 garnalen apart voor de boter. Doe de overige garnalen in een keukenmachine en pureer ze samen met 1,2 dl van de gezeefde vloeistof grofweg door elkaar. Giet dit mengsel door een zeef bij de rest van de vloeistof in de pan. Bewaar de overgebleven stukjes garnaal in de zeef. Kook de soep op laag vuur zachtjes door en haal af en toe de zichtbare olie van het oppervlak. 
4. Verhit voor de garnalenboter de boter in een pannetje. Voeg de stukjes garnaal en 6 van de 10 hele garnalen toe. Bak alles 2-3 minuten onder voortdurend roeren. Schep het mengsel in een keukenmachine, pureer het en druk het door een zeef met een houten pollepel. Zet het botermengsel in de koelkast om op te laten stijven. 
5. Zeef de soep opnieuw voor een nog fijnere structuur. Verwijder de laatste restjes overtollige olie. Verwarm de soep op laag vuur en giet de rest van de bouillion erbij. Klop vlak voor het serveren de creme fraiche erdoor. Haal de soep van het vuur en roer de garnalenboter erdoor, een lepel per keer. Breng de soep op smaak met cayennepeper, zout en peper. Serveer de soep met toast, croutons en stokbrood en garneer elk bord met een hele garnaal. 
 Aan Tafel:   Iedere liefhebber van schaal- en schelpdieren zal het spectrum van smaken in deze soep, dat varieert van de zoetheid van de cognac tot de rijkdom van de garnaleboter, zeer waarderen.','/static/img/koken.jpg',8,4,4,10,1,4);
INSERT INTO `recipe` VALUES (343,'Bouillabaisse','','<i> 6 personen </i> 
 Rouille  
1 rode paprika 
1 snee witbrood, zonder korst 
1 rode chilipeper 
2 tenen knoflook 
1 eierdooier 
1 aardappel 
1/2 eetlepel olijfolie 
 Soep  
18 mosselen 
1 kg vis, schoongemaakt, bijvoorbeeld kabeljauw, zeeduivel, rode poon of wijting 
2 eetlepels olijfolie 
1 kleine venkelknol, in kleine plakjes 
1 ui, fijngesneden 
750 gr rijpe tomaten  
1,2 liter visbouillion of water 
snufje saffraan 
bouquet garni 
5 cm lang stukje sinaasappelschil','2018-09-26 19:09:45.086420','1. Verwarm voor de rouille de grill voor. Snijd de paprika doormidden, verwijder de zaden en zaadlijsten en leg hem net zolang onder de grill tot het velletje  hier en daar zwart blakert. Laat de paprika afkoelen, verwijder het velletje en snijd hem in grove stukken.  
2. Week het brood in 3 eetlepels water en knijp het met de hand uit. Pureer de paprika, de chilipeper, het brood, de knoflook en de eierdooier in een keukenmachine. Schenk de olijfolie er geleidelijk bij en mix net zolang tot de rouille glad is en de textuur heeft van dikke mayonaise. Dek de kom af en zet hem in de koelkast. 
3. Borstel de mosselen voor de soep onder koud stromend water schoon en verwijder de baarden. Gooi gebroken en open exemplaren weg. Snijd de vis in stukken. 
4. Verhit de olijfolie in een pan. Fruit hierin de ui en venkel zachtjes gedurende 5 minuten. 
5. Kruis de tomaten in en leg ze ongeveer 20 seconden in kokend water. Ontvel ze en snijd het vruchtvlees in stukjes. Bak ze gedurende 3 minuten in een pan. Voeg de bouillion, saffraan, het bouquet garni en de sinaasappelschil toe. Kook het geheel 10 minuten. Verwijder het bouquet garni en druk de soep door een zeef of pureer hem in een keukenmachine. Schenk de soep weer in de (schoongemaakte) pan. Voeg zout en peper naar smaak toe en breng hem weer aan de kook. Draai het vuur laag en voeg de vis en mosselen toe. Kook het geheel nog eens 5 minuten tot de vis zacht is en de mosselen openstaan. Gooi de dichte mosselen weg. Serveer de soep met de rouille en brood. 
 Aan Tafel:  
Elk zichzelf respecterend Frans vissersplaatsje heeft zijn eigen vissoep, met name in Marseille geniet de soep grote populariteit. Er bestaan vele variaties op bouillabaisse. Deze soep wordt meestal met hele vis bereid, maar je kunt ook voor filets kiezen.','/static/img/koken.jpg',8,4,8,10,NULL,NULL);
INSERT INTO `recipe` VALUES (344,'Zwarte risotto','','<i> 4 personen </i> 
2 middelgrote pijlinktvissen 
1 liter visbouillion 
100 gram boter 
1 rode ui, fijngesneden 
2 tenen knoflook, uitgeperst 
350 gr risotto rijst 
3 zakjes inkt 
1,5 dl witte wijn 
2 eetlepels olijfolie','2018-09-26 19:09:45.086420','1. Maak de pijlinktvisjes schoon. Pak elke pijlinktvis vast bij het lijfje en trek voorzichtig de tentakels met de ingewanden los. Verwijder ook het doorschijnende rugschild uit het lijfje. Verwijder de bek. Spoel het lijfje en de tentakels goed schoon. Laat het lijfje heel maar snijd de tentakels fijn. 
2. Breng de visbouillion in een pannetje aan de kook, draai het vuur laag en laat hem zachtjes koken. Verhit de boter in een pan met zwarte bodem en fruit hierin de ui. Draai het vuur hoog en voeg de stukjes inktvis toe. Bak ze 3-5 minuten. Wacht tot de inktvis niet meer doorzichtig is, voeg dan de knoflook toe en roer goed. Voeg de rijst toe en draai het vuur laag. Breng de rijst op smaak met zout en peper en roer goed. Schenk de inkt en de witte wijn erbij. Draai het vuur hoger en roer net zolang tot al htr vocht is opgenomen. 
3. Voeg een soeplepel visbouillion toe en kook het geheel op middelmatig vuur onder voortdurend roeren. Als de bouillion is opgenomen voeg dan weer een soeplepel toe. Ga zo''n 20 minuten door, totdat alle bouillion is opgenomen en de rijst al dente is. (je hebt msischien niet alle bouillion nodig of juist wat meer: elke risotto is weer anders) Verhit de olijfolie in een pan en bak hierin kort de tentakels. Garneer de risotto met de tentakels en dien hem warm op. 
 Aan Tafel: 
Zakjes inkt zijn bij de visboer verkrijgbaar als kleurstof voor de pasta. Omdat het hier om fruits de mer gaat, wordt deze risotto niet met parmezaanse kaas geserveerd.','/static/img/koken.jpg',6,7,8,4,1,4);
INSERT INTO `recipe` VALUES (345,'Risotto met Asperges','','<i> 4 personen </i> 
1 kg asperges 
5 dl kippenbouillion 
5 dl groentenbouillion 
4 eetlepels olijfolie 
1 kleine ui, fijngesneden 
350 gr risottorijst 
75 gr parmezaanse kaas, geraspt 
3 eetlepels creme fraiche','2018-09-26 19:09:45.086420','1. Was en schil de asperges en verwijder de houtige uiteinden. snijd de zachte aspergepunten los en houd ze apart. Kook de asperges 15 minuten in licht gezouten water. Giet ze af en pureer ze samen met de kippen- en groentenbouillion in een keukenmachine. Doe het mengsel in een pannetje, breng het aan de kook en laat het zachtjes doorkoken. Kook de aspergepunten 1 minuut, giet ze af en leg ze daarna in ijskoud water. 
2. Verhit de boter in een pan met zware bodem en fruit hierin de ui. Voeg de rijst toe en draai het vuur laag. Roer goed. Voeg een soeplepel visbouillion toe en kook het geheel op middelmatig vuur onder voortdurend roeren. Voeg, als de bouillion is opgenomen, weer een soeplepel toe. Ga zo''n 20 minuten door, totdat alle bouillion is opgenomen en de rijst al dente is (je hebt misschien niet alle bouillion nodig of juist meer: elke risotto is weer anders.) 
3. Voeg de parmezaanse kaas en de creme fraiche toe en tot slot, voorzichtig, de aspergepunten. voeg zout en peper naar smaak toe en serveer de risotto warm. 
 Aan Tafel:  
Deze risotto dankt zijn bijzondere smaak aan de asperges in de bouillion die door de rijst opgenomen wordt. De creme fraiche wordt net voor het serveren toegevoegd en geeft dit gerecht zijn romige structuur.','/static/img/koken.jpg',6,7,6,4,1,4);
INSERT INTO `recipe` VALUES (346,'Groenteterrine met kruidensaus','','<i> 8 - 10 personen </i> 
400 gram pastinaken, in stukjes 
350 gram bataten, in stukjes 
8 grote bladeren van een snijbiet 
6 aspergepunten 
3 kleine courgettes 
8 sperziebonen 
250 gram creme fraiche 
6 theelepels gelatinepoeder 
 Kruidensaus  
1 eetlepel fijngehakte peterselie 
1 eetlepel fijngehakte kervel 
1 eetlepel fijngehakte basilicum 
geraspte schil van 1 kleine citroen 
300 gram creme fraiche','2018-09-26 19:09:45.086420','1. Vul een pan met water en kook hierin de pastinaken en bataten in 25 minuten gaar. giet ze af en laat ze afkoelen. Blancheer de bladeren van de snijbiet in kokend water, haal ze er met een schuimspaan voorzichtig uit en leg ze te drogen op een theedoek. 
2. Vet een terrine- of cakevorm (20 x 7 x 9 cm) licht in. Bekleed hem met plasicfolie. Schik de bietenbladeren op de bodem en langs de zijkanten (hud voldoende over om ook de bovenkant te bedekken). 
3. Snijd de aspergepunten aan de onderzijde af op dezelfde lengte als de terrinevorm. Snijd de courgettes in de lengte doormidden. Stoom de asperges, courgettes en sperziebonen in 6 minuten gaar. Spoel ze onder koud water af, zodat ze hun kleur behouden. Dep ze droog met keukenpapier. 
4. Pureer de pastinaken en bataten met de creme fraiche in een keukenmachine. Voeg naar smaak zoutg en peper toe. Giet 4 eetlepels water in een kommetje en strooi de gelatinepoeder erover. Laat het mengsel 5 minuten staan tot het sponzig is en zet het kommetje dan op een pan met kokend water tot het mengsel helemaal gesmolten is. Voeg het toe aan de puree en roer het er goed doorheen. 
5. Schep een kwart van de puree in de terrinevorm en schik er zes asperges op - laat ze allemaal dezelfde kant op wijzwen. Voeg weer een kwart van de puree toe en leg hier de courgettes op, met de platte, gesneden kant naar boven. Schep hier weer een kwart van de puree eroverheen en leg de sperciebonen er netjes op. Voeg dan de resterende puree toe. Vouw de bietenbladeren en het plasticfolie over de bovenkant, zodat alles goed bedekt is. Zet de terrine een nacht in de koelkast. Stort hem op een schotel en snijd hem in plakken. 
6. Spatel voor de kruidensaus de fijngehakte kruiden en de citroensap door de creme fraiche en breng het geheel op smaak met zout en peper. Geef de kruidensaus er apart bij. 
 Aan Tafel:
Om ervoor te zorgen dat deze terrine een genot is voor het oog en de tong, worden de groenten allemaal even groot gesneden en worden de verschillende laagjes zorgvuldig aangebracht.','/static/img/koken.jpg',1,7,6,4,1,4);
INSERT INTO `recipe` VALUES (347,'Uientaart','','<i> 6 personen </i> 
450 gram kruimeldeeg 
50 gram boter 
500 gr uien 
4 takjes tijm 
3 eieren 
3 eetlepels creme fraiche 
60 gram geraspte gruyere 
geraspte nootmuskaat','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 180 C. Bedek de bodem van een taart- of quichevorm met een doorsnede van 23 cm met deeg. Druk het deeg goed plat. Breng hierop een blinde vulling* van gedroogde bonen of speciale kleikorrels aan en leg hier bakpapier overheen om te voorkomen dat het deeg blazen vormt. Bak het deeg (zonder vulling)10 minuten, verwijder de blinde vulling en het bakpapier en bak het geheel nog eens 3-5 minuten tot het deeg iets kleurt. 
2. Verit intussen de boter in een kleine koekenpan en fruit de uien 10-15 minuten, onder voortdurend roeren, tot ze zacht en lichtbruin zijn. Voeg de tijm toe en roer alles goed om. Laat het uienmengsel afkoelen. Klop de eieren samen met de  creme fraiche los en voeg de geraspte kaas toe. Breng het geheel op smaak met zout, peper en nootmuskaat. 
3. Schik de uien over de taartbodem en schenk het eiermengsel eroverheen. Bak de taart 35-40 minuten in de oven tot hij mooi bruin kleurt. Laat de taart nog 5 minuten in de vorm zitten voor je hem serveert.  
Aan Tafel:  
Fruit de uien heel langzaam op laag vuur zodat de smaak goed vrijkomt. Ze mogen amper verkleuren.','/static/img/koken.jpg',8,7,6,10,1,4);
INSERT INTO `recipe` VALUES (348,'Stifado','','<i> 6-8 personen </i> 
4 eetlepels olijfolie 
1,8 kg mager rundvlees (schouderstuk), in blokjes van 3 cm 
1 theelepel gemalen komijn 
2 uien, fijngesneden 
3 tenen knoflook, uitgeperst 
2,5 dl droge rode wijn 
3 eetlepels tomatenpuree 
4 eetlepels rodewijnazijn 
2 stokjes kaneel 
10 kruidnagels 
2 laurierbladeren 
2 theelepels suiker 
1 kg kleine uitjes, geschild 
4 eetlepels krenten 
200 gram feta, in kleine blokjes','2018-09-26 19:09:45.086420','1. Verhit 2 eetlepeles olijfolie in een grote koekenpan en braad het rundvlees hierin rondom aan, voeg indien gewenst nog wat meer olie toe. Leg het rundvlees in een kom en bestrooi het met komijn. Voeg nog wat meer olie toe en fruit de ui en de knoflook 5-6 minuten op laag vuur. Voeg het rundvlees weer toe. 
2. Blus het vlees af met de wijn. Voeg 5 dl water, de tomatenpuree en rodewijnazijn toe en breng het geheel aan de kook. Roer de kaneel, kruidnagels, laurier en suiker erdoor en voeg naar smaak zout en versgemalen peper toe. Draai het vuur laag, leg het deksel op de pan en kook het mengsel 1 uur op laag vuur. 
3. Kerf een kruis in de onderkant van de uitjes en voeg ze samen met de krenten toe aan het gerecht. Laat het geheel nog 1,5 uur zachtjes koken tot het vlees mals is en de saus ingedikt. Verwijdere de kaneelstokjes en de laurierblaadjes. Roer de kaas erdoor en kook het geheel nog eens, zonder deksel, 3-4 minuten op laag vuur. voeg eventueel naar smaak zout en peper toe. Serveer het gerecht rechtstreeks uit de pam en geef er rijst bij.  
Aan Tafel:  
Het is de zoutzure combinatie die deze Griekse stoofschotel zijn unieke karakter geeft. Serveer de stifado rechtstreekts uit de pan, zodat iedereen aan tafel van het exotische aroma kan genieten.','/static/img/koken.jpg',17,2,2,5,1,4);
INSERT INTO `recipe` VALUES (349,'Chili con carne','','<i> 8 personen </i> 
275 gr gedroogde bruine bonen 
3 eetlepels olijfolie 
2 uien, fijngesneden 
2 grote tenen knoflook, uitgeperst 
4 groene chilipepers (middelgroot), zaadjes verwijderd, fijngesneden 
100 gram champignons, in dunne plakjes 
800 gram rundvlees (mager schouderstuk) 
2 theelepels gemalen komijn 
1/2 theelepel gemalen kaneel 
1 theelepel poedersuiker 
2 laurierbladeren 
2 x 400 gram tomaten uit blik 
2 dl runderbouillion 
1 rode paprika, in stukjes 
6 eetlepels verse koriander  
25 gram pure, bittere chocolade, geraspt 
1 rijpe avocado 
1/2 rode ui, fijngesneden 
250 gram zure room','2018-09-26 19:09:45.086420','1. Doe de bruine bonen in een kom en giet er koud water op. Laat ze een nacht staan, giet ze af en spoel ze onder koud stromend water schoon. Doe de bonen in een pan met kokend water en kook ze 40 minuten op laag vuur. Giet ze af. 
2. Verhit 2 eetlepels olijfolie in een koekenpan. Bak de uien 10 minuten tot ze zacht zijn en glazig zijn. Voeg de knoflook, pepertjes en champignons toe en bak het geheel nog 5 minuten, onder af en toe roeren. Schep het mengsel met een schuimspaan op een bord. Giet de rest van de olie in de pan en braad hierin de stukjes rundvlees aan. 
3. Voeg het uienmengsel met de komijn, kaneel, suiker, laurier, tomaten, runderbouillion en bonen toe. Roer alles goed om en breng het geheel aan de kook. Draai het vuur laag, leg het deksel op de pan en laat het geheel 1 uur zachtjes koken. Voeg de paprika toe en laat het nog eens 30 minuten sudderen. 
4. Voeg 4 eetlepels korianderblaadjes en de chocolade toe. Voeg eventueel naar smaak nog wat zout en chilipeper toe. 
5. Maak de avocado schoon, snijd hem in stukjes en roer deze met de rode ui en de resterende korianderblaadjes tot een pasta. Garneer elk bord met een lepel zure room en een lepel van het avocadomengsel.  
Aan Tafel: 
Alle smaken van Texas verenigen zich in deze chili, waarvan alleen de naam Mexicaans is. De champignons versterken de vleesachtige smaak en textuur, en de chocolade voegt zijn specifieke kenmerken aan het gerecht toe. Gebruik nog wat extra chilipeper als je van pittig houdt!','/static/img/koken.jpg',18,2,2,5,1,4);
INSERT INTO `recipe` VALUES (350,'Tagliatelle met bolognaisesaus','','<i> 4 personen </i> 
60 gram boter 
1 grote ui, fijngesneden 
1 stengel bleekselderij, fijngesneden 
1 wortel, fijngesneden 
90 gram pancetta of bacon, fijngesneden 
220 gram gehakt rundvlees 
220 gr gehakt varkensvlees 
2 takjes oregano, fijngehakt, of 1/4 theelepel gedroogde oregano 
snufje nootmuskaat 
120 gram kippenlevertjes, schoongemaakt en fijngesneden 
1,2 dl droge witte wijn 
1,8 dl melk 
400 gram tomaten uit blik 
2,5 dl runderbouillion 
400 gram gedroogde tagliatelle of 500 gram verse 
geraspte parmezaanse kaas','2018-09-26 19:09:45.086420','1. Verhit voor de bolognaisesaus de boter in een grote koekenpan of wok en voeg de ui, bleekselderij, wortel en bacon toe. Bak ze onder af en toe roeren 6-8 minuten op middelmatig vuur. 
2. Voeg het rundvlees, varkensvlees en de oregano toe. Voeg naar smaak zout, peper en nootmuskaat toe. Bak het geheel 5 minuten tot het vlees van kleur verandert maar nog niet bruin is. Voeg de kippenlevertjes toe en bak ze 1-2 minuten mee, tot ze van kleur veranderen. 
3. Schenk de wijn erbij, draai het vuur hoger en kook het geheel 2-3 minuten, tot de wijn opgenomen is. Roer 1,2 dl van de melk erdoor, draai het vuur laag en laat het geheel 10 minuten sudderen. Voeg de tomaten en de helft van de bouillion toe, bedek de pan gedeeltelijk en laat de saus op laag vuur gedurende 3 uur zachtjes koken. Voeg indien nodig nog wat bouillion toe om de saus vochtig te houden. 
4. Kook intussen de tagliatelle in een pan ruim, licht gezouten water tot hij al dente is. Roer de rest van de melk 5 minuten voor het serveren door de saus. Voeg eventueel nog wat zout en peper toe. Giet de tagliatelle af, roer de saus erdoor en serveer het geheel met parmezaanse kaas.  
Aan Tafel:  
Spaghetti bolognaise is een van ''s werelds populairste Italiaanse gerechten. In Italie wordt de bekende bolognaisesaus (ragu) echter niet met spaghetti maar emt tagliatelle geserveerd.','/static/img/koken.jpg',6,7,2,5,1,4);
INSERT INTO `recipe` VALUES (351,'Pepersoep met kip','Nigeria','<i>6-8 personen </i>
1 Hele Kip, in stukken 
5 eetlepels Citroensap
1 liter water 
1 Ui, gehakt
2 teentjes Knoflook
2 eetlepels verkruimelde Gedroogde cayennepeper 
zout naar smaak 
1 liter Kippenbouillon 
1 liter Gedroogde gerookte garnalen 
2 eetlepels Verse munt 
takjes verse munt voor garnering 
4 eetlepels Specerijen mengsel voor pepersoep 
2 eetlepels gehakte gedroogde garnalen (Afrikaanse toko)

 Specerijenmengsel voor pepersoep
1 eetlepel atariko
1 eetlepel uda
1 eetlepel gbafilo
1 eetlepel gemberpoeder
1 eetlepel uyayak
1 eetlepel rigije in vijzel fijn malen','2018-09-26 19:09:45.086420','1. Was de stukken kip, wrijf ze in met citroensap. 
2. Doe de kip in pan met water, ui, knoflook en verkruimelde cayennepeper, zout naar smaak toevoegen en breng op hoog vuur aan de kook. 
3. Zet het vuur wat lager en laat het geheel 30 minuten zachtjes koken.
4. Voeg kippenbouillon en kruidenmengsel toe en laat nog eens 30 minuten koken, of tot de kip gaar is. 
5. Roer garnalen en munt erdoor en laag nog 10 minuten koken. Serveer in soepkommen en garneer met een paar takjes verse munt. 
Aan Tafel:  Pepersoep is erg geliefd in Nigeria en kan worden gemaakt met kip, vis, geiten- of schapenvlees, wild of orgaanvlees. De soep hoort pittig gekruid zijn.','/static/img/africa_cooking.jpg',30,4,3,10,13,5);
INSERT INTO `recipe` VALUES (356,'Nkatenkwan - kippen-pindasoep','N','<i>6-8 personen</i>
150 gram geroosterde pinda''s, zonder vliesjes
1 liter water of kippenbouillon
1 kip, in stukken
zout naar smaak
cayennepeper naar smaak
3 grote tomaten, ontveld, zonder zaden en grof gehakt
1 grote ui, in dunne ringen
1 eetlepel water','2018-09-26 19:09:45.086420','1. Maal pinda’s met wat water fijn in de keukenmachine tot een dikke massa.
2. Was de stukken kip en doe ze met water of kippenbouillon in grote soeppan. Breng aan de kook, voeg cayenne peper, gehakte tomaten en ui toe. 
3. Zet het vuur laag en laat het geheel met het deksel op de pan 35 minuten zachtjes koken. 
4. Schep de uien zodra ze zacht zijn samen met de tomaten uit de soep, pureer ze in een groentemolen  en doe ze terug in de soep. Roer het water water door de pindamassa en roer dit mengsel geleidelijk door de soep.
5. Laat op laag vuur nog gedurende 15 - 20 minuten koken, of totdat alle smaken gemengd zijn.
 Aan Tafel:
Serveer warm met fufu','/static/img/africa_cooking.jpg',21,4,3,10,13,5);
INSERT INTO `recipe` VALUES (357,'Kerriekool','N','<i> 4-6 personen </i>
1 middelgrote (Groene) kool
1.2 dl water 
2 eetlepels boter
3 Uien, grofgehakt
1 eetlepel bloem
1 eetlepel madraskerriepoeder
1,2 dl Melk','2018-09-26 19:09:45.086420','1. Snijd de kool in repen van 2,5 cm en haal de bladeren los. Kook de kool in het water in een zware koekenpan met deksel gedurende ongeveer 20 minuten totdat hij zacht is. 
2. Laat intussen de boter smelten in een tweede koekenpan en fruit de ui glazig. Voeg de bloem en het kerriepoeder toe en roer tot alles goed gemengd is. Laat 2-3 min koken, voeg de melk toe en laat al roerend koken tot er een gladden saus ontstaat.
3. Laat gekookte kool uitlekken en doe hem in een schaal. Giet de kerriesaus eroverheen en serveer warm.
Aan Tafel:
Langs de kust van Kenia wordt al eeuwenlang handelgedreven met de landen in het oosten. In het seizoen zijn in de haven van Mombasa overal de latijnzeilen van de dhows te zien die over de Indische Oceaan varen. De Arabische en oosterse invloeden zijn terug te vinden in de specerijen die op de markt te koop zijn en in de kerrie die in vele gerechten zit, bijvoorbeeld in deze kerriekool.','/static/img/africa_cooking.jpg',22,6,6,3,13,5);
INSERT INTO `recipe` VALUES (358,'Pompoenkoekjes','N','<i>8-10 personen</i>
1.2 liter gekookte pompoen
5 dl geraspte pompoen
1.5 theelepel bakpoeder
50 gram bloem
1/4 theelepel kaneelpoeder of naar smaak
snufje zout
1 ei
plantaardige olie, om te frituren
Kaneelsuiker, om over de koekjes te strooien (verhouding 1 : 2)','2018-09-26 19:09:45.086420','1. Prak de gekookte pompoen met vork fijn
2. Dompel geraspte rauwe pompoen even in kokend water om te blancheren. Laat het goed uitlekken en doe bij het geprakte pompoenvlees.
3. Voeg het bakpoeder, de bloem, het kaneelpoeder, het zout en het ei toe en klop alles tot gladde massa.
4. Verwarm in een zware, gietijzeren pan of frituurpan de olie tot 190 C. Laat als de olie heet is telkens 1 eetlepel beslag in de olie vallen. Bak niet te veel pompoenkoekjes tegelijk, anders koelt de olie te veel af en wordt de kooktijd te lang. Bak de koekjes aan beide kanten goudbruin. 
5. Laat ze uitlekken op keukenpapier, leg ze op een schaal, strooi er kaneelsuiker over en serveer warm.
Aan Tafel:
Voor dit gerecht wordt in Zuid-Afrika de platte, witte boer-pompoen gebruikt, maar u kunt er elke andere pompoen met stevig vruchtvlees voor gebruiken. Maak kaneelsuiker van twee delen suiker en een deel kaneelpoeder. Kaneelsuiker blijft in een afgesloten pot maandenlang goed.','/static/img/africa_cooking.jpg',23,6,6,10,13,5);
INSERT INTO `recipe` VALUES (359,'Irio - groentestoofschotel','N','<i>6 personen</i>
2.5 dl maiskorrels (vers /diepvries)
2.5 dl kidneybonen, gekookt
4 middelgrote aardappelen, geschild en in blokjes van 2,5 cm
500 gr spinazie, gewassen en gehakt
zout en vers gemalen zwarte peper','2018-09-26 19:09:45.086420','1. Doe alle ingrediënten in een grote pan en giet er zo veel water bij dat ze onderstaan. Breng op laag vuur aan de kook en kook de aardappelen gaar.
2. Giet af en serveer warm. Op het bord worden de ingredienten geprakt.
 Aan Tafel
Dit keniaanse gerecht lijkt erg op het Ghanese abrow ne ase. Hier worden ook nog aardappelen en bladgroenten (hier spinazie) toegevoegd.','/static/img/africa_cooking.jpg',22,6,6,4,13,5);
INSERT INTO `recipe` VALUES (360,'Spinazie met pompoen','N','<i>6 personen</i>
gekookte spinazie, een halve maatbeker vol, zie gestoomde spinazie
gekookte (calabaza) pompoen, een halve maatbeker vol, zie gekookte pompoen
2 eetlepels Arachide olie
2 middelgrote uien in ringen
zout naar smaak','2018-09-26 19:09:45.086420','1. Kook in afzonderlijke pannen spinanzie en  pompoen gaar en laat afkoelen.
2. Fruit uien licht bruin, voeg spinazie, pompoen en zout naar smaak toe.
3. Laat op een vrij hoog vuur bakken tot dat er een licht bruin korstje vormt.
Aan Tafel:
Dit gerecht is makkelijk te maken, al dan niet met voorgekookte ingredienten. Aangezien er al recepten voor gekookte pompoen en gestoomde spinazie op deze wegsite staan, geef ik hier de bereidingswijze voor reeds gekookte ingredienten.','/static/img/africa_cooking.jpg',22,6,6,4,13,5);
INSERT INTO `recipe` VALUES (361,'Gestoomde Spinazie','N','<i>4 personen </i>
2 kg verse bladspinazie
2 eetlepels water','2018-09-26 19:09:45.086420','1. Was de spinazie goed. Er kan zand in zitten, en niets is zo vervelend als een hap zand. Doe de spinazie met het water in een pan. 
2. Laat het geheel met het deksel op de pan zachtjes koken gedurende 5 minuten of totdat de spinazie zacht is. 
3. Serveer warm met pili-pili saus, ata, pikante saus, of een beetje barissa
 Aan Tafel:
Het franse woord voor spinazie, epinard, is afgeleid van het woord dat de moren in andalusie gebruikten: isbinah. Niemand weet precies waar spinazie vandaan komt, maar er wordt wel gedacht aan Perzie of Tibet. Hoewel spinazie in Afrika niet zo heel bekend is, omdat deze groente beter gedijt in een matig klimaat, wordt hij vaak gebruikt in plaats van andere bladgroenten. Hier volgt een basisrecept voor gekookt spinazie. Aangezien spinazie bij het koken nogal slinkt, heeft u minstens 500 gram per persoon nodig.','/static/img/africa_cooking.jpg',30,6,6,1,13,5);
INSERT INTO `recipe` VALUES (362,'Gekookte pompoen','N','<i>4-6 personen</i>
500 gram calabazza-pompoen
zout en versgemalen zwarte peper naar smaak
1 eetlepel boter','2018-09-26 19:09:45.086420','1. Schil de pompoen en snijd het vruchtvlees in blokjes van 2 centimeter. Doe deze in een pan en giet er zo veel water bij dat ze onderstaan. 
2. Breng aan de kook, zet het vuur lager en laat het geheel 10 minuten zachtjes koken, of totdat de pompoen zacht is. Giet af, strooi er zout en peper naar smaak over en serveer warm met de boter.
Aan Tafel: 
Calabaza-pompoen wordt in Oost-en West Afrika op zo veel verschillende manieren gegeten en zo algemeen gebruikt, dat het maar moeilijk te geloven is dat deze pompoen uit Amerika afkomstig is. Kalebassen en meloenen worden echter al duizenden jaren lang gegeten in Afrika, en veel van de recepten waarvoor tegenwoordig pompoen wordt gebruikt, werden oorspronkelijk bereid met een of andere kalebas of meloen. Dit is een van simpelste en smakelijkste manieren om een calbaza-pompoen klaar te maken.','/static/img/africa_cooking.jpg',22,6,6,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (363,'Kaaps = maleise pompoen','N','<i>4 personen</i> 
500 gram calabaza-pompoen
125 gram Gedroogde abrikozen 
1.2 dl sinasappelsap (vers)
1.5 thl bruine suiker
0.75 thl kaneelpoeder
1 eetlepel Boter','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 180 C.
2. Wrijf ovenschaal in met beetje olie.
3. Doe de pompoen, abrikozen en het sinasappelsap in de ovenschaal. Bestrooi met bruine suiker, kaneel en leg er klontjes boter bovenop. 
4. Dek de schaal af met alluminiumfolie en zet hem in de oven gedurende 30 minuten, of totdat de pompoen zacht is. Serveer warm.
Aan Tafel:
Al voor de komst van de Europeanen werden in Afrika kalebassen gegeten. Dit calabaza-recept, met een uit het caribisch gebied afkomstige pompoensoort, lijkt op candied sweet potatoes, de  geglaceerde zoete aardappelen die in Amerika veel met kerstmis worden gegeten, maar heeft door toevoeging van gehakte gedroogde abrikozen een Zuid-Afrikaans tintje. Gebruik in plaats van een calabaza een butternut- of acorn-pompoen (kastanje pompoen)','/static/img/africa_cooking.jpg',23,6,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (364,'Groentecurry','N','<i>8 personen</i>
7 eetlepels Zonnebloemolie
8 kleine aardappelen geschild en grof gehakt
2 eetlepels boter
2 grote uien, in dunne ringen
2 grote rijpe tomaten, ontveld, zaden verwijderd en grof gehakt
1.5 theelepel verse gember, fijngehakt
3 theelepels knoflook, fijngehakt
1 kleine groene spaanse peper (jalapeno of een andere hete peper)
1.5 eetlepel kerriepoeder, mild
0.5 Savooienkooltje, fijngesneden
8 wortels, geschild en in juliennereepjes
0.75 maatbeker bloemkoolroosjes
0.5 maatbeker doperwten, vers of uit de diepvries','2018-09-26 19:09:45.086420','1. Laat olie warm worden in een grote zware pan en bak de aardappelen in 5 minuten goudbruin. laat aardappelen uitlekken op keukenpapier en zet ze apart.
2. Doe de boter met de uien in de pan en laat de uien bakken gedurende 5 minuten, of totdat ze zacht zijn en iets beginnen te bruinen. Voeg de tomaten en specerijen toe en laat het geheel met het deksel op de pan nog 15 minuten zachtjes koken.
3. Voeg de aardappelen, kool, wortels en bloemkool toe en laat nog 15 minuten koken.
4. Voeg tenslotte de dopwerwten toe en laat deze in ongeveer 3 minuten gaar worden. Serveer met witte rijst.
Aan Tafel:
Indiase invloeden zijn goed merkbaar in de Zuid-Afrikaanse keuken, maar in de streek rond Kaapstad is de Kaaps-Maleise gemeenschap culinair het belangrijkste. Hier houden ze van de mildere curry''s uit Zuidoost-Azie, waarvan deze groentecurry een uitstekend voorbeeld is.','/static/img/africa_cooking.jpg',23,6,6,4,13,5);
INSERT INTO `recipe` VALUES (365,'Ye’ Abesha Gomen - snijkool','N','<i>4-6 personen </i>
500 gram snijkool (te vervangen door boerenkool)
3 eetlepels olijfolie
2.5 dl rode ui, gehakt
0.75 theelepel knoflook, gehakt
0.5 theelepel verse gember, fijngehakt
zout naar smaak
3 middelgrote spaanse pepers (anaheim-pepers of andere tamelijk milde groene pepers), in dunne reepjes','2018-09-26 19:09:45.086420','1. Was de snijkool, verwijder lelijke bladeren en snijd dikke, houtige stelen weg. 
2. Doe de groente dan in een pan met 2.5 dl water en breng met het deksel op de pan aan de kook. Zet het vuur lager en laat het geheel koken gedurende 20 minuten of tot de kool gaar is. Giet de kool af maar bewaar het kookvocht en snijd de kool in stukken
3. Laat in een zware koekenpan de olie heet worden  en bak de uien lichtbruin. Voeg de kool toe samen met het bewaarde kookvocht, de resterende 2.5 dl water, de knoflook en de gember. Laat zonder deksel bijna droog koken.
4. Voeg de pepertjes toe en laat nog 5 minuten koken. Serveer warm of op kamertemperatuur.
3. Laat zonder deksel groentemengsel bijna droogkoken
4. Voeg pepertjes toe, laat nog 5 min door koken. Serveer warm of op kamertemp.
Aan Tafel:
Een royaal gebruik van bladgroente is een van de kenmerken van de Afrikaanse keuken. Hier krijgt snijkool (collard green), een groente die veel wordt gebruikt door Amerikanen van Afrikaanse afkomst, een Ethiopisch accent in een gerecht dat warm of op kamertemperatuur geserveerd kan worden.','/static/img/africa_cooking.jpg',24,6,6,4,13,5);
INSERT INTO `recipe` VALUES (366,'Viskoekjes','Nigeria','<i>4-6 personen</i>
0.5 maatbeker gekookte vis zonder graten en in stukjes
0.5 maatbeker yampuree
3 eetlepels arachide olie
1 eetlepel gesmolten boter
zout en versgemalen zwarte peper naar smaak
0.75 thl cayenne peper, of naar smaak
1 ei','2018-09-26 19:09:45.086420','1. Meng vis met yam, 1 el olie, de boter, zout en peper en de cayennepeper. Klop het ei los en voeg dit toe; zorg ervoor dat alles goed gemengd wordt. 
2. Maak van het mengsel met uw handen 12 platte koekjes
3. Laat de resterende olie heet worden in eeb zware koekenpan en bak de koekjes in kleine porties op hoog vuur aan ele kant gedurende 3 minuten, of totdat ze goudbruin zijn.
4. Laat ze uitlekken op keukenpapier en serveer
Aan Tafel:
In de Afrikaanse keuken zijn restjes nooit een probleem. Als ze al niet worden opgegeten door een of ander familielid of aan de armen in de buurt worden geschonken, krijgen ze een tweede leven in de volgende maaltijd. Hier worden van restjes vis met yam koekjes gemaakt die in de pan goudbruin worden gebakken.','/static/img/africa_cooking.jpg',30,6,8,4,13,5);
INSERT INTO `recipe` VALUES (367,'Soupikanya  - Senegalese gumbo','N','<i>6 personen </i>
zout naar smaak
1 liter water
drie vissteaks van 2.5 cm dik, van stevige vis (bv kabeljauw)
750 g Okra (jonge)
2 kleine aubergines gepeld en grof gehakt
1 middelgrote ui, gepeld en geraspt
2 teentjes knoflook, fijngehakt
1 stukje guedge (te vervangen door stevige gerookte vis)
1 stukje yete (te vervangen door zware gerookte vis)
2 eetlepels rode palmolie','2018-09-26 19:09:45.086420','1. Pocheer vis zachtjes in gezouten water.
2. Bewaar vis en kookvocht apart.
3. Was de okra’s, verwijder uiteinden en gooi lelijke of harde exemplaren weg, stamp de okra’s tot een dikke massa.
4. Voeg gestampte okra’s, aubergine, ui, knoflook, guedge en yete toe aan kookvocht, kook in 10 min gaar.
5. Snijd gekookte vis in stukjes en voeg toe aan stoofschotel.
6. Voeg op het laatst de palmolie toe en breng het geheel weer kort aan de kook.
7. Serveren met gekookte rijst.
Aan Tafel:
Deze soep is eigenlijk meer een stoofschotel, die de rijke smaak heeft van zeevruchten en okra''s. Kanya betekent ''okra'' in het Wolof, een van de talen die in Senegal gesproken worden. De ''soep'' wordt afgemaakt met een scheut rode palmolie. Hier volgt een basisrecept, maar er zijn talloze varianten te maken door toevoeging van een paar garnalen, stukjes schelpdieren, enzevoort. Du guedge en yete die in het recept gebruikt worden, zijn sterk geurende stukjes gedroogd en gerookt weekdier en gedroogde en gerookte vis, verkrijgbaar in Afrikaanse winkels. Soupikanya is een gelatineachtig gerecht - niet geschikt voor wie niet van de slijmerige okra''s houdt.','/static/img/africa_cooking.jpg',25,2,8,4,13,5);
INSERT INTO `recipe` VALUES (368,'Chicken Sosaties - pikante kipspiesen','N','<i>4-6 personen</i>
750 gr Kipfilet
2 eetlepels plantaardige olie
4 Uien, in dunne ringen
1 eetlepel heet madraskerriepoeder
2 teentjes knoflook, geperst
1 flinke theelepel Korianderzaad, gemalen
1 eetepel basterdsuiker (geel)
2.5 dl citroensap, vers','2018-09-26 19:09:45.086420','1. Snijd kip in blokjes van 2 cm en leg deze in een diepe kom van zuurbestendig materiaal. Laat de olie heet worden in een zuurbestendige pan en bak de uien lichtbruin
2. Voeg overige ingrediënten toe en laat al roerend 2 minuten koken op laag vuur, zodat suiker oplost.
3. Laat de marinade afkoelen en giet deze over de kip. Trek aluminiumfolie over de kom en zet hem 24 uur in de koelkast.
4. Haal de stukjes kip als u klaar bent om de kip te gaan grillen uit de marinade, laat ze uitlekken, rijg ze aan spiesen en rooster of gril ze gedurende 10 minuten, waarbij u ze eenmaal omkeert, of totdat de kip door en door gaar is. 
5. Lekker met abrikozenchutney, limoen-atjar of zoetzure peren.
Aan Tafel:
Det term sosatie komt van het Maleise woord sate,  dat pikante saus betekent, en sesate, dat vlees op pennen betekent. Vroeger werd het op de Kaap gespeld als soesaties, sasaties en sassatees. Van oudsher wordt sosatie bereid van lams-vlees, maar kip wordt steeds populairder. In supermarkten in de grote steden zijn zelfs gemarineerde stukjes kip te krijgen die al aan de spiesen zijn geregen. De kip moet voor bereiding 24 uur marineren.','/static/img/africa_cooking.jpg',23,2,3,3,13,5);
INSERT INTO `recipe` VALUES (369,'Abrikozenchutney','N','<i>Voor 5 deciliter</i>
250 gr gedroogde abrikozen
4 verse abrikozen, ontpit
1 teentje knoflook, gehakt 
3 verse spaanse pepers (thaise pepers of andere zeer hete pepers), of naar smaak
1 stuk verse gember ter grootte van een duim
1,2 dl appelazijn
8 eetlepels suiker','2018-09-26 19:09:45.086420','1. Laat de gedroogde abrikozen 1 uur weken in zo veel water dat ze onderstaan. Giet ze af en bewaar 4 eetlepels van het weekvocht.
2. Draai de geweekte abrikozen, de verse abrikozen, de knoflook, pepertjes en gember in keukenmachine tot een dikke massa. Doe deze in een pan met het bewaarde water en de overige ingredienten en roer om alles goed te mengen. 3. Breng het mengsel aan de kook, zet het vuur laag en laat het mengsel onder af en toe roeren 30 minuten koken, of totdat de chutney dikker wordt.
4. Schep de hete chutney in gesteriliseerde potten. De chutney is in de koelkast enekele dagen houdbaar. Wilt u een grotere hoeveelheid maken en bewaren, steriliseer de potten met chutney in een waterbad.
Aan Tafel:
De Zuid-Afrikaanse chutneys, sambals en atjars maken deel uit van het culinaire erfgoed dat immigranten uit India en Zuidoost-Azie meebrachten. In dit recept worden abrikozen gebruikt uit de boomgaarden rondom Kaapstad.','/static/img/africa_cooking.jpg',23,6,7,10,13,NULL);
INSERT INTO `recipe` VALUES (370,'Poires A L''Aigre-Doux - Zoutzure peren','','<i>6-8 personen</i>
1 kg kleine zoete peren (bv Gieser Wildeman)
2 liter appelazijn
4 stukjes pijpkaneel a 7,5 cm
6 hele kruidnagels
250 gram poedersuiker','2018-09-26 19:09:45.086420','1. Schil de peertjes en zet ze op in een pan met zo veel water dat ze onderstaan. Breng de peertjes langzaam aan de kook en laat ze koken tot ze zacht maar nog wel stevig zijn.
2. Giet de peertjes af en leg ze in een pot die groot genoeg is voor de peertjes en de azijn. 
3. Doe de overige ingredienten in een pan (van zuurbestendig materiaal) en breng ze onder af en toe roeren langzaam aan de kook. Giet deze vloeistof over de peertjes en laat deze 24 uur in de koelkast marineren. 
4. Giet de vloeistof weer in een pan en breng opnieuw aan de kook. Giet de vloeistof dan weer over de peertjes. Doe dit drie keer en laat de peertjes tussendoor 24 uur marineren, totdat de peertjes goed doortrokken zijn van de vloeistof.  
5. Laat ze op kamertemperatuur komen, sluit de pot goed af en bewaar deze in de koelkast. Serveer de peertjes bij tajines of bij gebraden vlees.
Aan Tafel:
Peren-pickle hoort bij gebraden vlees en feestgerechten, deze peertjes worden van oudsher geserveerd bij gekookt vlees en tajines. Met hetzelfde recept kunt u zoetzure meloenen of appels maken. Maak de peertjes drie dagen voordat u ze wilt eten.','/static/img/africa_cooking.jpg',28,6,7,1,13,5);
INSERT INTO `recipe` VALUES (371,'Limoen-atjar','N','<i>voor 5 deciliter Atjar</i>
3 platte ansjovisfilets en de olie uit het blikje
3 teentjes knoflook
1 flinke theelepel fenegiekpoeder
1 flinke theelepel kurkuma
1 flinke theelepel gehakte spaanse peper (habanero of een andere extreem hete peper), of naar smaak 3 eetlepels madraskerriepoeder
<i>Limoen-Atjar</i>
12 limoenen 
1 liter water
1 eetlepel grof zout
5 dl atjar-marinade
5-6 eetlepels mosterdzaad
2 laurierbladeren','2018-09-26 19:09:45.086420','<i>Atjar</i>
1. Maal in een keukenmachine de anjovisfilets met de olie en de knoflook tot een dunne pasta. 
2. Giet het mengsel in een pannetje, voeg alle andere ingredienten toe en breng de atjar op middelhoog vuur aan de kook.
3. Hierna is de atjar klaar voor gebruik in de limoen-atjar of andere recepten. 
<i>Limoen-atjar</i>
1. Was de limoenen. Snijd ze met een scherp mesje in vieren, maar zodanig dat ze aan de onderkant nog vastzitten.
2. leg de limoenen in een grote kom van materiaal dat niet reageert op zuur, giet er zoveel water bij dat ze onderstaan, voeg het zout toe en laat ze 4 dagen bij kamertemperatuur staan. Leg de limoenen in een gesteriliseerde pot.
3. Breng de atjar-marinade aan de kook en voeg het mosterdzaad en de laurierbladeren toe. Giet het mengsel over de limoenen, sluit de pot en bewaar hem in de koelkast.
4. Laat de pickle voor het serveren 1 week staan. De limoenen worden met schil en al gegeten bij Zuid-Afrikaanse curry''s en andere gerechten.
 Aan Tafel
Atjar kwam in Zuid-Afrika terecht via de Kaapse Maleiers, die worden beschouwd als de beste koks van het land. Het lijkt erg op de achars van het Indiase subcontinent, onder andere door het gebruik van fenergiek, kurkuma en kerrie.
Net als de geconserveerde citroenen in het noorden, in de Marokkaanse keuken, is limoen-atjar een bijgerecht in de Maleise keuken in Zuid-Afrika. Maak dit gerecht 11 dagen voor gebruik.','/static/img/africa_cooking.jpg',23,6,6,1,NULL,NULL);
INSERT INTO `recipe` VALUES (372,'Yassa au poulet Classique - klassieke yassa-kip','N','<i>6 personen</i>
4 eetlepels citroensap, vers
4 grote uien, in ringen
zout en versgemalen zwarte peper naar smaak
5 eetlepels arachideolie
1 spaanse peper(habanero of een andere extreem hete peper)
1 braadkip in stukken (1100-2000 gram)
1.2 dl water','2018-09-26 19:09:45.086420','1. Maak de avond tevoren in een diepe kom de marinade van het citroensap, de uien, 4 eetlepels arachide-olie, zout en peper. Prik de peper in met een vork en voeg hem toe aan de marinade

2. Is het gerecht heet genoeg naar uw smaak, haal de peper er dan uit (voor echte peperliefhebbers kunt u hem fijngehakt apart serveren).

3. Leg de stukken kip in de marinade, trek er plasticfolie overheen en zet de kip een nacht in de koelkast. Heeft u haast, beperk de marineertijd dan tot 2 uur. De smaak wordt dan echter minder intens.

4.Verwarm de grill voor als u klaar bent om te gaan koken. Haal de kip uit de marinade, maar bewaar deze. Gril de stukken kip kort, totdat ze aan beide kanten bruin zijn. Zet ze apart. Schep de uien uit de marinade.

5. Laat in een diepe koekenpan de resterende eetlepel olie heet worden en fruit de uien op middelhoog vuur zacht en glazig.

6. Voeg de rest van de marinade toe en laat de vloeistof goed warm worden. Voeg de stukken kip en het water toe en meng alles goed. Laat de stukken kip op laag vuur met het deksel op de pan helemaal gaar worden.

7. Serveren de yassa warm en geef er witte rijst bij. 
Aan tafel:
De lekkerste smaak krijgt u door de kip een nacht (of minstens 2 uur) te laten marineren.','/static/img/africa_cooking.jpg',25,2,3,1,13,5);
INSERT INTO `recipe` VALUES (373,'Lamb Sosaties - pikante lams-spiezen','N','<i> voor 30 sosaties</i>
2 kilo Lamsbout
1 eetlepel boter
2 grote uien, in dunne ringen
3.5 dl water
3.5 dl appelazijn
150 gr abrikozenjam 
10 halve gedroogde abrikozen, in kleine stukjes 
1 Laurierblad
een volle eetlepel suiker
Zout en versgemalen zwarte peper naar smaak','2018-09-26 19:09:45.086420','1. Snijd het lams-vlees in blokjes van 2 cm en leg deze in een diepe, zuurbestendige schaal.
2. Laat de boter in een zuurbestendige pan zo heet worden dat hij begint te schuimen. Voeg de uien toe en bak ze lichtbruin, blus af met water, laat nog 2 min door koken, zodat uien zacht zijn.
3. Voeg de resterende ingrediënten toe en breng ze op middelhoog vuur aan de kook. Laat 3 minuten koken, zet het vuur uit, laat de marinade afkoelen en giet deze over het vlees.Trek plasticfolie over de schaal en zet 2-3 dagen in de koelkast
4. Laat het vlees voordat u het op de bbq legt goed uitlekken, maar bewaar de marinade. Rijg het lams-vlees  aan spiesjen. 
5. Rooster deze boven hete houtskool of onder de grill gedurende 15 minuten, of totdat het lams-vlees gaar genoeg is.
6. Serveer warm, samen met bijvoorbeeld  abrikozenchutney, of zoetzure peren   
Aan Tafel:
Bij een Zuid-Afrikaans braai oftewel barbeque nemen de sosaties een belangrijke plaats in. In traditionele recepten wordt het vlees een dag of drie, vier gemarineerd, wat een heerlijk mals resultaat oplevert. In dit recept wordt het twee tot drie dagen gemarineerd. Van oudsher wordt lams-vlees gebruikt, maar u kunt ook kip, vis en zelfs grote garnalen aan spiesen rijgen en aan de grote Zuid-Afrikaanse barbequegod offeren.','/static/img/africa_cooking.jpg',23,2,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (374,'Dumbun Nama - rundvleessnippers','Nigeria','<i>4 personen</i>
500 gr rosbief
0.6 dl water
arachide olie, voor te frituren
1.5 thl cayennepeper
1.5 thl gemberpoeder
zout naar smaak','2018-09-26 19:09:45.086420','1. Snijd het vlees in stukken van 7,5 cm, leg deze met het water in een pan en kook ze met het deksel op de pan op laag vuur gedurende 20 minuten, of totdat ze goed gaar zijn. 
2. Verwarm de olie tot 190 C in de frituurpan.
3. Leg het vlees in een vijzel en stamp het tot snippers. Bak deze snippers in porties in de hete olie.
4. Meng de droge ingredienten en strooi ze over de gefrituurde vleessnippers. Serveer warm
Aan Tafel:
In sommige delen van Nigeria worden deze knapperige reepjes rundvlees geserveerd als snack of over een salade gestrooid. Door de gember hebben ze een pikante, bijna Aziatische smaak.','/static/img/africa_cooking.jpg',30,2,2,1,13,5);
INSERT INTO `recipe` VALUES (375,'Romazava - Malagassische stoofschotel met verschillende soorten vlees','N','<i>6-8 personen</i>
1 eetlepel Arachideolie
500 gr rundstoofvlees in stukken van 2,5 cm
500 gram varkenschouder, in stukken van 2,5 cm
3 hele kipfilet, in stukken
6 grote rijpe tomaten, ontveld, zaadjes verwijderd en grof gehakt
2 middelgrote uien, grof gehakt
7 teentjes knoflook, fijngehakt
5 cm stuk verse gember, geschild en in fijne reepjes
500 gram verse spinazie, gewassen en in reepjes
zout en versgemalen zwarte peper naar smaak','2018-09-26 19:09:45.086420','1. Laat de olie heet worden in een zware pan en schroei het rundvlees dicht zonder het bruin te laten worden. Voeg zoveel water toe dat het vlees onderstaat, bren aan de kook en laat gedurende 30 minuten koken.
2. Voeg  het varkensvlees toe en laat het geheel nog 30 minuten koken.
3. Voeg de stukken kipfilet toe en laat het geheel nog 10 minuten koken.
4. Voeg de tomaten toe en laat ze meekomen totdat ze door de saus zijn opgenomen.
5. Voeg de uien, knoflook en gember toe en laat nog 10 minuten koken, of totdat dese gaar maar nog wel stevig zijn.
6. Voeg tenslotte de spinazie en zout en peper naar smaak toe en roer totdat de spinazie geslonken en net gaar is.
7. Serveer met witte rijst
Aan Tafel:
Dit is het nationale gerecht van Madagaskar. De truc is om alle verschillende soorten vlees zo te koken dat ze op hetzelfde moment helemaal gaar zijn. Ze worden daarom op verschillende tijdstippen toegevoegd.','/static/img/africa_cooking.jpg',26,2,2,10,13,5);
INSERT INTO `recipe` VALUES (376,'Bobotie - vleespastei','','<i>6-8 personen</i>
2 sneetjes stevig witbrood
2.5 dl melk
2 middelgrote uien, fijngehakt
1 teentje knoflook, fijngehakt
1 eetlepel boter
900 gr fijngehakt gekookt lams-vlees
1 eetlepel suiker
zout naar smaak
2 eetlepels tamarinde water
3 eetlepels amandelsnippers
2 eieren
3 limoenblaadjes
3 laurierblaadjes
Tamarinde water
60 gram tamarinde pulp in 2,5 dl water 25 minuten koken en daarna zeven.','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 190 C.
2. Week het brood 20 minuten in 4 eetlepels melk en knijp het uit.
3. Bak intusen de uien en knoflook in een koekenpan lichtbruin in de boter
4. Meng in een grote kom het vlees met het geweekte brood, het kerriepoeder, de suiker, het zout, het tamarindewater en de amandelen. Voeg 1 ei toe en roer om alle ingredienten goed te mengen.
5. Schep de bobotie in een ingevette vuurvaste schaal, verdeel de laurier- en limoenblaadjes over mengsel. Zet dan 30 minuten in de oven.
6. Giet het vet af.
7. Klop het resterende ei door de overgebleven melk, giet dit mengsel over de bovenkant en zet de bobotie terug in de oven tot die stevig, maar niet droog is.
8. Bobotie wordt van oudsher geserveerd met rijst, chutney en andere curry-bijgerechten naar keuze.
Aan Tafel:
Dit klassieke Zuid-Afrikaanse gerecht wordt gemaakt met lams--of rundergehakt en is waarschijnlijk ontstaan als een creatieve manier om restjes te verwerken. Hildgonda Duckitt geeft in haar kookboek uit 1917 een recept van haar moeder; het lijkt opvallend veel op moderne recepten. Hildegonda spelt het gerecht als bobotee en geeft aan dat het wellicht uit India komt, wat tegenstrijdig is met de Kaaps-Maleise oorsprong die er tegenwoordig vaak aan wordt toegekend.
Wilt u bobotie op de ouderwetse manier serveren, schep het dan in afzonderlijke soufflebakjes en bak deze in de oven. Leg voor het serveren een schijfje citroen op de bakjes.','/static/img/africa_cooking.jpg',23,2,2,1,13,5);
INSERT INTO `recipe` VALUES (377,'Abacates com Mel - avocado''s met honing','N','<i>4 personen</i>
2 grote avocado''s
honing naar smaak','2018-09-26 19:09:45.086420','1. Snijd de avocado overlangs en verwijder de pit. Schep het vruchtvlees uit de avocodo zonder de schil te beschadigen.
2. Leg het vruchtvlees in een kom en voeg honing naar smaak toe.
3. Schep de gezoete avocado weer terug in de schil  
Aan Tafel:
Dit toetjesrecept uit de Kaapverdische eilanden is ongewoon, omdat avocado wordt gebruikt in een zoet recept. U moet het leren eten, dat is waar, maar dat zal u vast niet zwaar vallen. De combinatie van avocado en zoete smaken is waarschijnlijk Portugees van oorsprong; het enige andere recept dat ik ken waarin avocado''s als dessert worden gebruikt, is een Braziliaans recept voor avocadocreme met suiker. Van oudsher wordt hiervoor suikerrietstroop gebruikt; ik heb deze vervangen door bijenhoning. Kies wat u het lekkerste vindt of kunt krijgen.','/static/img/africa_cooking.jpg',29,3,7,2,13,5);
INSERT INTO `recipe` VALUES (378,'Masala for tea  - theespecerijen','N','<i>voor ongeveer 300 gr</i>
120 gram oerzoet
60 gram gemberwortel, gedroogd
30 gram pijpkaneel
30 gram tellicherry-(zwarte) peper
30 gram kruidnagels, heel
30 g zwarte kardemonzaden, peul verwijderd','2018-09-26 19:09:45.086420','1. Rooster alle specerijen in een zware droge koekenpan op middelhoog vuur gedurende 5 minuten, of totdat zij geuren.
2. Maal ze in een specerijenmolen fijn.
3. Laat het poeder afkoelen en bewaar het in een luchtdicht afgesloten pot.
4. Strooi tijdens het trekken van de thee een  snufje van het mengsel in de pot.
Aan Tafel:
Oerzoet is te koop in natuurvoedingswinkels, indien u het niet kunt krijgen dan kunt u dit evt vervangen door bruine kandijsuiker.','/static/img/africa_cooking.jpg',22,10,5,1,13,5);
INSERT INTO `recipe` VALUES (379,'Gingembre - gemberwater','N','2 stukken verse gember a 6 cm
1 liter water
65 gram poedersuiker, of naar smaak
0.25 thl oranjebloesemwater of naar smaak
1 eetlepel vers citroensap (naar keuze)
Kaasdoek','2018-09-26 19:09:45.086420','1. Pureer gember in keukenmachine tot pulp(Voeg in het begin eventueel een beetje water toe).
2. Leg de gemberpulp op stukje kaasdoek en vouw dit dicht.
3. Leg dit met het water, de suiker en het oranjebloesemwater in een grote kan en laat het 1 uur trekken.
4. Verwijder het zakje en bewaar het gemberwater in de koelkast. 
5. Gekoeld serveren met drupje citroensap   
Aan Tafel: 
In veel dranken in West-Afrika zit gember. In een traditionele drank wordt water geparfumeerd met geschrapte, in een vijzel fijngestampte gember. In plaasts van een vijzel gebruikt dit recept een keukenmachine.','/static/img/africa_cooking.jpg',27,10,5,1,13,5);
INSERT INTO `recipe` VALUES (380,'Akara - bonenbeignets','Nigeria','0.5 maatbeker lima bonen (grote witte bonen)
Plantaardige olie (voorkeur rode palmolie)om te frituren 
3.75 dl koud water
0.75 thl fijngehakte spaanse peper (habanero of een andere extreem hete peper), of naar smaak
1 kleine ui, fijngehakt
zout naar smaak','2018-09-26 19:09:45.086420','1. Week de bonen een nacht in ruim koud water. Verwijder de volgende dag de velletjes door de bonen tussen uw handen te wrijven.
2. Verwarm frituurolie tot 190 C
3. Maal de ontvliesde bonen in een keukenmachine tot een gladde massa. Doe deze in een grote kom. Klop het botermengsel met een houtenlepel luchtig en voeg geleidelijk al roerend het water toe; voeg zoveel water toe dat er een mengsel ontstaat dat makkelijk van de lepel valt. Voeg de spaanse peper, ui en zout toe. Roer totdat alle ingredienten goed gemengd zijn.
4. Schep vervolgens wat akra op een eetlepel en laat dit in hete olie glijden.
5. Bak zo telkens een paar eetlepels van het mengsel tegelijk in de hete olie. Laat de akra in 2 minuten aan elke kant goudbruin bakken. Laat uitlekken op keukenpapier. Serveer warm.
Aan Tafel:
Veel mensen beschouwen deze witte bonenbeignets als een typisch Nigeriaans gerecht. Van oudsher komen ze uit West-Nigeria, maar ze zijn de grenzen van dit land en de Atlantische Oceaan overgestoken en daardoor een typisch gerecht geworden van Afrikanen van beide zijden van de Atlantische Oceaan. Frituren, een traditionele Afrikaanse bereidingstechniek, wordt veel toegepast in de Afrikaans-Atlantische wereld.
Deze Nigeriaanse beignets vindt men ook overal in Brazilie als acarage. Ze zijn dan meestal gemaakt van ogenbonen. Ze komen veel voor in het Caribische gebied en er staat zelfs een recept voor acara in het koosjere kookboek van de Mikwe Israel-Emmanuel Synagoge op Curacao, een van de oudste synagogen op het westelijk halfrond!
Er zijn verschillende soorten Nigeriaanse akara. Akara van witte bonen en palmolie is het bekendst en wordt het meest gegeten. Als u op uw cholesterol moet letten en liever niet te veel palmolie gebruikt, kunt u de helft ervan vervangen door een oliesoort met veel onverzadigde vetzuren, of gebruik alleen ander olie. Maar ik raad u aan de akara ten minste 1 maal op de traditionele manier te maken.','/static/img/africa_cooking.jpg',30,7,6,1,13,5);
INSERT INTO `recipe` VALUES (381,'Kokos chips','N','<i>8-10 personen</i>
1 kokosnoot','2018-09-26 19:09:45.086420','1. Maak kokos noot open door hem 10 minuten te verwarmen op 180 C in de oven en met de hamer een klap te geven op de breuklijn.
2. Haal het vruchtvlees eruit en bewaar het kokoswater voor een ander gerecht. Verwijder het bruine vlies om het vruchtvlees en snijd de kokosnoot met een aardappelmesje of dunschiller in lange, dunne repen.
3. Leg deze op een bakblik en zet ze 5 minuten onder een hete grill totdat ze licht geroosterd zijn. Houd ze goed in de gaten, want ze zijn in een oogwenk zwart.
4. Warm serveren bij een drankje. 
Aan Tafel:
Deze kleine geroosterde schijfjes kokos zijn een uitvinding van Afrikanen in den vreemde. Worden de stukjes kokos nog kleiner gesneden, dan zijn ze ideaal om over curry''s of toetjes te strooien.','/static/img/africa_cooking.jpg',30,7,7,1,13,5);
INSERT INTO `recipe` VALUES (382,'Dothotse  - geroosterde pompoenzaden','N','<i>Voor een kom pompoenzaden</i>
zaden van een grote pompoen
zout naar smaak','2018-09-26 19:09:45.086420','1. Was de pompoenzaden en verwijder restjes vruchtvlees. Droog zaden op keukenpapier
2. laat een zware koekenpan heet worden en doe de natte zaden erin. Laat ze op middelhoog vuur bakken gedurende 5 minuten, of totdat de zaden beginnen open te springen.
3. Strooi er zout naar smaak over en serveer warm.
Aan Tafel:
In veel traditionele Afrikaanse culturen wordt in de voedselketen niets verspild. Er wordt gesmuld van ingewanden, larven worden met smaak verorberd en zaden en bladeren van planten vormen de basis van menig populair gerecht.
Dat geldt ook voor pompoenzaden. Van oudsher worden ze gegeten bij saus of pap, maar ook wel als snack of bij een drankje. Als u meloenzaden gebruikt, krijgt u de snack die in Nigeria egusi genoemd wordt en ook in andere recepten gebruikt wordt.','/static/img/africa_cooking.jpg',23,7,5,1,NULL,NULL);
INSERT INTO `recipe` VALUES (383,'Avocado-papaja salade','N','<i>4 personen</i>
2 grote avocado''s
1 kleine papaja
1 rode grapefruit
1 klein kropje sla 
1 eetlepel vers citroensap
2 eetlepels extra virgine olijfolie
zout en versgemalen zwarte peper naar smaak','2018-09-26 19:09:45.086420','1. Schil de avocado en papaje en verwijder de pitten of vliezen.
2. Snijd het vruchtvlees in stukjes van 2,5 cm en meng deze in een middelgrote kom. Schil de grapefruit en snijd deze met een scherp mesje in partjes, zodat het dunne vliesje achterblijft. Snijd de partjes doormidden en doe ze bij het avocado-papaja mengsel.
3. Pluk, was en droog de sla
4. Schik de slabladeren op een schaal en schep de gemengde vruchten erop.
5. Maak vinaigrette van citroensap, olijfolie, zout en peper, giet dit over de vruchten.
6. Serveer direct.
Aan tafel:
Salades in de westerse betekenis zijn een recente verschijning op Afrikaanse tafels, maar ze winnen terrein en veel koks, thuis en in restaurants, maken overvloedig gebruik van de grote keus aan (blad)groenten die voorhanden is. In deze salade, geinspireerd op een salade uit de koloniale periode van Kenia, worden avocado, papaja en grapefruit gebruikt. In de oorspronkelijke versie werd onder nadere ruim 1 deciliter mayonaise gebruikt.','/static/img/africa_cooking.jpg',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (384,'Yamsalade','Nigeria','<i>4 personen</i>
500 gr gekookte yams, in blokjes
2 grote uien, gehakt
1 kleine rode paprika, zaden verwijderd en gehakt
1 kleine groene paprika, zaden verwijderd en gehakt 
4 eetlepels mayonaise
Krop sla','2018-09-26 19:09:45.086420','1. Meng alle ingrediënten in een grote kom, trek er plastic folie overheen en zet de kom 1 uur in de koelkast, zodat de smaken goed intrekken.

2. Serveer gekoeld, zo uit de kom of schik de salade op een mooie schaal op een bedje sla.
Aan Tafel:
Dit is de West-Afrikaanse variant op de aardappelsalde uit het zuiden van de Verenigde Staten, met echte Afrikaanse Yam (en geen zoete aardappelen!). Net zoals bij aardappelsalade kan er van alles in zitten, van stukjes rode en groene paprika tot Europees getinte toevoegingen als stukjes zoetzure augurk, dunne plakjes bleekselderij en fijngehakt hardgekookt ei.','/static/img/africa_cooking.jpg',30,9,6,1,13,5);
INSERT INTO `recipe` VALUES (385,'Rooibeet Slaai - bietjessalade','N','<i>4-6 personen</i>
500 gram rode bietjes, gesneden
2 middelgrote uien, in dunne ringen gesneden en onder de koude kraan losgehaald
2 eetlepels rode wijnazijn
Zout en suiker naar smaak','2018-09-26 19:09:45.086420','1. Kook rode bietjes gaar, snijd in dunne plakken
2. Meng de azijn met de peper en het zout en giet het mengsel over de bietjes, waarbij u ervoor zorgt dat de groente goed bedekt wordt. Trek plasicfolie over de kom en zet hem 2 uur in de koelkast. 
3. Serveer gekoeld.
Aan Tafel:
Dit is een Europees gerecht dat op de Zuid-Afrikaanse tafel terecht is gekomen. Ik gebruik bietjes uit pot, maar u kunt ook verse bietjes - gekookt, geschild en in plakken gesneden - gebruiken','/static/img/africa_cooking.jpg',23,9,6,1,13,5);
INSERT INTO `recipe` VALUES (386,'Manchupa - Kaapverdische stoofschotel','','<i>40-45 personen</i>
1800 gram varkenspootjes, schoongemaakt en in vieren gehakt. 
675 gram gezouten en gerookte varkensribbetjes, in stukken van 5 cm
2 eetlepels plantaardige olie
100-125 gram zuurkoolspek, in blokjes
3 middelgrote uien, grof gehakt
3 laurierbladeren
8 liter water
900 gram gedroogde mais (witte hominy), gewassen en gecontroleerd op steentjes
225 gram kleine gedrooge limabonen, gewassen en gecontroleerd op steentjes
225 gram gedroogde ogenbonen, gewassen en gecontroleerd op steentjes
675 gram verse varkensribbetjs, in stukken van 5 cm
2 gerookte varkensschenkels (675 gram per stuk)
1 spaanse peper (habanero of andere extreem hete peper), ingeprikt met een vork
1 kg boerenkool, schoongemaakt, geblancheerd en gehakt
4 eetlepels paprikapoeder
2 teentjes knoflook, fijngehakt
zout en versgemalen zwarte peper naar smaak
1350 gram (calabaza)pompoen, geschild en in blokjes van 2,5 cm','2018-09-26 19:09:45.086420','1. Bereid eerst de varkenspootjes en de gerookte varkensribbetjes voor: breng ze in een grote pan aan de kook met zo veel water dat ze onderstaan en laat ze 3-5 minuten koken. Giet ze af, spoel af met koud water en bewaar dat.
2. laat de olie heet worden in een soeppan met een inhoud van 18 liter, voeg het zuurkoolspek toe en bak het grootste deel van het vet uit.
3. Voeg de uien en laurierbladeren toe en fruit de uien glazig. Voeg het water toe. Laat het water weer aan de kook komen, doe het deksel op de pan en laat het geheel 30 minuten zachtjes koken.
4. Voeg de bonen toe en laat nog 30 minuten koken. 
5. Voeg de varkenspootjes, de gerookte en verse varkensribbetjes, de gerookte varkenspootjes, de spaanse peper en de knoflook toe en laat 1 uur koken, waarbij u af en toe controleert of de manchupa niet aanbrandt.
6. Voeg naarmate het mengsel dikker wordt meer heet water toe. Laat het geheel met het deksel op de pan 2,5 uur koken, waarbij u regelmatig controleert of het mengsel niet aanbrandt en het vlees en de mais goed gaar worden. 
7. Haal alleen het deksel van de pan om te roeren. Draai de pan van tijd tot tijd een slag, zodat alles gelijkmatig verhit wordt. 
8.Verwijder de Spaanse peper als het gerecht voldoende heet is (serveer de peper desgewenst apart voor peperliefhebbers). 
9. Voeg aan het einde van de kooktijd de boerenkool en het paprikapoeder en zout en peper toe. Laat nog 5 minuten koken en voeg de pompoen toe. De manchupa is klaar als de pompoen gaar is.
Aan Tafel   
Kaapverdianen houden ervan om in echt Afrikaanse stijl grote gezelschappen te ontvangen. Deze feestschotel met verschillende soorten vlees is net als zijn Braziliaanse tegenhanger feijoada gee gerecht dat in kleine hoeveelheden kan worden bereid. Van oudsher wordt het op zaterdag gemaakt, in grote hoeveelheden, zodat iedereen die langskomt, kan mee-eten. Een mooi voorbeeld om na te volgen. Wilt u een heleboel mensen uitnodigen en trakteren op iets lekkers, maak dan een grote pan manchupa. Geef er sloten vinho verde bij en zet een cd op met de kaapverdische blues van cesaria evora, of draai muziek van Os Tubaroes of Finacon.','/static/img/africa_cooking.jpg',29,2,2,1,13,5);
INSERT INTO `recipe` VALUES (387,'Blauwe-kaasmousse met gekonfijte groene vijgen','N','<i>6 personen</i>
1 eetlepel gelatine
125 ml warme kipfond 
250 gram roomkaas 
30 gram blauwe kaas 
125 ml mayonaise
0.5 thl paprikapoeder
0.5 thl zout
125 ml room
gekonfijte groene vijgen','2018-09-26 19:09:45.086420','1. Strooi de gelatine in de warma kipfond, laat dit weken en roer tot de gelatine is opgelost. Laat afkoelen. Vermeng de roomkaas, blauwe kaas, mayonaise, paprikapoeder en het zout. Roer er de gelatine door.
2. Sla de room stijf en vouw deze voorzichtig door de mousse. Schenk in zes licht ingevette bakjes (of een grote vorm) en laat in de koelkast in een paar uur stijf worden.
3. Stort de mousse vlak voor het serveren en geef er gekonfijte groene vijgen bij. Garneer met reepjes spaanse peper
Aan Tafel:
De Nederlanders behoren tot de beste kaasmakers ter wereld, een talent dat zij meebrachten toen zij zich vestigden op de Kaap. Gekonfijte vijgen worden vaak bij kaas gegeten als dessert. Hier is een variatie op dat thema.','/static/img/africa_cooking.jpg',23,7,9,4,13,6);
INSERT INTO `recipe` VALUES (388,'Pindasoep','Afrikaanse Pindasoep','<i> Voor 4 personen </i> 
3 el pindakaas ( van de natuurwinkel zonder stukjes noot) 
1.5 l bouillon  
2 el tomatenpuree 
1 ui, gesnipperd 
2 plakjes verse gemberwortel, geschild, fijngehakt 
1/4 tl gedroogde tijm 
1 laurierblaadje 
zoet en chilipoeder 
225 gr witte yam, in blokjes 
10 kleine okra''s, afgehaald','2018-09-26 19:09:45.086420','1. Doe de pindakaas in een kom, voeg 3 dl bouillon en de tomatenpuree toe en meng alles tot een gladde pasta 

2. Schep het pindakaas mengsel in een pan en voeg de ui, gember, tijm, laurier het zout, chillipoeder en de resterende bouillon toe. Verhit het geheel op een laag vuur tot het begint te pruttelen.

3. Laat de soep onder of en toe roeren 1 uur koken.

4. Voeg de stukjes yam toe en laat nog eens 10 min. koken. Voeg eventueel de orka''s toe en laat nog even koken tot de orka''s gaar zijn.','/static/img/africa_cooking.jpg',30,4,6,10,13,7);
INSERT INTO `recipe` VALUES (389,'Kreeftpate','N','<i>8-10 personen</i>
3 kreeftenstaarten
500 ml water
klein bosje verse kruiden (peterselie, tijm, oregano, laurierblad
150 gram boter
1 kleine ui, fijngesneden
4 eetlepels room
2 eetlepels cognac
nootmuskaat, cayennepeper, zout','2018-09-26 19:09:45.086420','1. Haal de kreeft uit zijn schaal en verwijder het darmpje. Snijd het vlees in stukjes. Houd dit apart terwijl u de fond bereidt.
2. Breek de schalen in stukjes en doe ze in een kleine pan met het water en de kruiden. Breng aan de kook, zet het vuur lager en laat 10-15 minuten zachtjes koken tot het vocht is ingedampt tot 2 eetlepels. Zeef de fond en houd hem apart.
3. Verwarm de helft van de boter in een kleine koekenpan en fruit de ui goudbruin. voeg de kreeft toe en bak deze 2-3 minuten zachtjes, tot hij net gaar is.
4. Meng de rest van de boter, ingekookte fond, room en cognac en breng op smaak met wat nootmuskaat, cayennepeper en zout.
5. Doe de kreeftpate in kleine bakjes (eventueel met behulp van een spuitzak) en bewaar hem maximaal 3 dagen in de koelkast.
6. Garneer met citroen en serveer op kamertemperatuur met toast.
Aan Tafel:
Dit is een moderne versie van de eenvoudige pate die ooit gemaakt werd van gepureerd kreeftenvlees gemengd met schapenstaartvet en kruiden. Deze zware pate met zijn subtiele smaak is favoriet voor dineetjes.','/static/img/africa_cooking.jpg',23,7,4,4,13,6);
INSERT INTO `recipe` VALUES (390,'Maissoep met Bakbanaan','Deze soep komt uit Kameroen. Het is belangrijk dat de bakbananen rijp zijn.','<i> voor 4 personen </i>
25 gr boter
1 ui, gesnipperd 
1 teentje knoflook, geperst 
275 gr gele bakbananen, gepeld, in plakjes 
1 grote tomaat, gepeld in stukjes 
175 gr mais 
1 tl gedroogde dragon, gemalen 
9 dl groente of kippebouillon 
1 verse groene chillipeper, zonder zaad, fijngehakt 
snufje fijn geraspte nootmuskaat 
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Smeld de boter in een pan op middelhoog vuur. Fruit de ui en knoflook een paar minuten.

2. Voeg de bananen, tomaat en de mais toe en bak 5 min.

3. Voeg de dragon, bouillon, verse chillipeper, peper en zout toe en laat alles 10 min. zachtjes koken. Roer de nootmuskaat erdoor en serveer meteen.','/static/img/africa_cooking.jpg',30,4,6,3,13,7);
INSERT INTO `recipe` VALUES (391,'Groene asperges met pittige mayonaise','N','<i>6-8 personen</i>
2 bakjes groene asperges, schoongemaakt
4 hardgekookte eieren
Pittige mayonaise
2 eierdooiers
0.25 thl zout
0.5 thl chilipoeder
0.5 thl mosterdpoeder
3 eetlepels citroensap
375 ml plantaardige olie','2018-09-26 19:09:45.086420','1. Stoom de asperges tot ze gaar zijn, of kook ze zachtjes in licht gezouten water in een afgesloten pan - ze moeten een beetje slap hangen als u ze optilt. Laat goed uitlekken.
2. Pittige Mayonaise Doe dooiers, zout, chili- en mosterdpoeder in een keukenmachine en klop tot het mengsel dik is. Voeg, terwijl de machine draait, langzaam het citroensap toe en schenk er de olie in een dun straaltje bij.
3. Zet in de koelkast (hier kan de mayonaise 3 dagen bewaard worden).
4. Leg porties asperges op borden en schep er wat mayonaise over; serveer de rest apart. Garneer met partjes hardgekookte eieren.','/static/img/africa_cooking.jpg',23,7,6,1,13,6);
INSERT INTO `recipe` VALUES (392,'Struisvogelcarpaccio met gemarineerde groente','N','<i>4 personen</i>
250 gram struisvogelfilet zonder vetrandjes
olijfolie
1 kleine ui, in ringen
1 rode paprika, zonder zaadjes en in reepjes
1 gele paprika, zonder zaadjes en in reepjes
3 teentjes knoflook, in plakjes
2 eetlepels uitgelekte kappertjes
2 eetlepels wijnazijn
geraspte schil en sap van een 0.5 kleine citroen
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Laat het vlees stevig worden (maar niet bevriezen) in de diepvries. Snijd het in flinterdunne plakjes - bij voorkeur met een snijmachine - en rangschik ze op een bord. Dek het bord af met huishoudfolie en bewaar in de koelkast.<P>
2. Verwarm een beetje olijfolie in een koekenpan en fruit de ui glazig. Voeg de rode en gele paprika''s en knoflook toe en roerbak dit tot alles zacht is. Haal de pan van het vuur, breng op smaak met zout en peper en voeg de kappertjes toe.
3. Schenk 4 eetlepels olijfolie in een kom, klop er de azijn, citroenschil en het citroensap door, breng op smaak met zout en peper. Schenk over de groente, dek af en laat koud worden.
4. Serveren: Leg de groente op het vlees. Sprenkel de dressing erover. Garneer eventueel met stukjes rocketsla.
Aan Tafel:
De meeste mensen willen geen rauw vlees eten, maar carpaccio is een moderne klassieker geworden, waarvan de populariteit snel stijgt. Hij kan gemaakt worden van struisvogel, rundvlees of hert. Het vlees en de groente kunnen een paar uur vante voren bereid worden. Bewaar apart, afgedekt en in de koelkast.','/static/img/africa_cooking.jpg',23,7,2,1,13,6);
INSERT INTO `recipe` VALUES (393,'Spinazie-en-appelsoep','N','<i>8 personen</i>
1.2 kg spinazie, goed gewassen
50 gram boter
4 preien, fijngesneden
2 granny smith appels, in stukjes
1 liter warme kippenfond
zout en vergemalen zwarte peper
0.5 thl nootmuskaat
250 ml room
citroensap','2018-09-26 19:09:45.086420','1. Stroop de dikke stelen van de spinazie. Hak de bladeren grof. Smelt de boter in een grote pan en fruit de prei tot hij zacht is. Voeg de appel en natte spinazie toe, doe de deksel erop en stoof alles 5 minuten onder af en toe roeren.
2. Schenk de fond erbij en voeg zout, peper en nootmuskaat toe. Dek af en laat ongeveer 20 minuten zachtjes koken.
3. Pureer de soep. Voeg bijna alle room en het citroensap toe, warm de soep goed door. Garneer met de rest van de room.<P>    
Aan Tafel:
Lang voor de komst van Europese kolonisten groeiden er eetbare kruiden en planten in het wild op de hellingen van de Tafelberg en in het omringende land. Algauw maakte men soep van planten als zuring, wateruintjie (zweepcactus), wilde kool en spinazie. Later werden er gekweekte groenten van het seizoen toegevoegd. Dit gerecht weerspiegeld de tamelijk eenvoudige recepten uit het verleden en het genoegen van het combineren van zoet en zuur in een gerecht.','/static/img/africa_cooking.jpg',23,4,6,1,NULL,NULL);
INSERT INTO `recipe` VALUES (394,'Kerrie-Vissoep','N','<i>8-10 personen</i>
2-3 kleine vissen (ongeveer 3 kilo in totaal), gefileerd (bewaar de koppen en graten)
boter, plantaardige olie 
2 uien, fijngesneden
2 wortelen, geschrapt en fijngesneden
2 selderijstengels, fijngehakt
2 teentjes knoflook, heel fijn gehakt
0.5 theelepel geplette verse gember
2 thl kerriepoeder
1 Spaanse peper, in plakjes zonder zaadjes
0.5 thl saffraandraadjes, geweekt in warm water, of 0.5 thl kurkuma
4 rijpe tomaten, geblancheerd, ontveld en in stukjes, of 400 gram tomaten uit blik, gehakt (niet uitlekken)
125 ml droge witte wijn
1,5 dl water
4 aardappels, geschild en in kleine blokjes
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Was de koppen en graten. Ontvel de vis en snijd hem in stukken. Verwarm een beetje boter en olie in een grote pan en bak de ui, wortel, sellerie, knoflook en gember goudbruin.
2. Roer er kerrie, Spaanse peper en saffraan of kurkuma door. Voeg tomaat, wijn, water en vissenkoppen en graten toe. Doe de deksel erop en laat de soep 20 minuten zachtjes koken.
3. Verwijder de graten en koppen. Voeg aardappel toe en breng op smaak met zout en peper. Dek af en kook ongeveer 10 minuten zachtjes tot de aardappel zacht is.
4. Voeg de vis toe en kook nog eens 5 minuten tot deze gaar is. Controleer of er nog zout bij moet. Serveer met bruinbrood en garneer eventueel met korianderblaadjes.
Aan Tafel:
In dorpen waar men leeft van de zee en waar alles wordt benut, is dit een geliefde soep. De smaak is trouw aan de Kaaps-Maleise koks, die snoekkopsoep met kerrie tot hun favourieten rekenen.
De beste vissoep wordt gemaakt van verschillende soorten vis. Als u deze soep van tevoren wilt maken, bereid hem dan tot waar u de vis toevoegt. Bewaar de soep maximaal een dag in de koelkast, warm hem op, voeg de vis toe en voltooi het recept. Garneer de soep met plakjes hardgekookt ei, net zoals met vroeger deed.','/static/img/africa_cooking.jpg',23,4,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (395,'Kippensoep','N','<i> 10 personen</i>
1 kip
boter
zout en versgemalen zwarte peper
1 grote ui, fijngesneden
2 wortelen, in plakjes
1 selderijstengel, in plakjes
1 bosje verse kruiden (peterselie, laurierblad, venkel
6 kardemompeulen, gekneusd
0.5 thl saffraandraadjes, geweekt in een beetje warm water of een 0.5 thl kurkuma
2 liter warme kippenfond
250 ml gekookte rijst
250 ml kokosmelk
2 eierdooiers
250 ml room','2018-09-26 19:09:45.086420','1. Snijd de kip in stukken, was hem en dep hem droog. Verhit een beetje boter in een grote pan en bak de kip rondom lichtbruin. Bestrooi met zout en peper en voeg de ui, wortel, selderij, kruiden, kardemom en saffraan of kurkuma toe.
2. Schenk de fond erover, deksel erop en laat 45 minuten zachtjes koken tot de kip gaar is. Haal de kip uit de pan en laat hem afkoelen. Verwijder het vel en de botten, snijd het vlees klein en bewaar dit in een afgedekte schaal.
3. Zeef de soep boven een schone pan, voeg de rijst toe, doe een deksel op de pan en kook de soep ongeveer 20 minuten tot de rijst helemaal zacht is.
4. voeg de kokosmelk en het kippenvlees toe en breng aan de kook. Klop de dooiers los met de room en roer ze door de soep. Haal de pan van het vuur voor de soep weer aan de kook komt.
5. Serveer warm.
Aan Tafel:
Dit is een vrije aanpassing van de vele variaties van deze populaire soep. Foelie wordt vervangen door kardemom en saffraan of kurkuma, een perfecte achtergrond voor de ondertoon van kokosnoot.
Mogelijke garneringen zijn verse korianderblaadjes of takjes waterkers, dat in het wild groeide in de sloten op de Kaap en dat vroeger gegeten werd met wilde sla als salade. Een andere Afrikaanse mogelijkheid is het toevoegen van een handvol geplette, geroosterde pinda''s','/static/img/africa_cooking.jpg',23,4,3,1,NULL,NULL);
INSERT INTO `recipe` VALUES (396,'Kip - Vis soep met tomaat en Chayote','Chayote is familie van de pompoen, en kan op de zelfde manier worden gebruikt als courgette','<i>Voor 4 Personen</i>
225 gr kipfilet 
1 teentje knoflook, geperst 
snufje versgeraspte nootmuskaat 
25 gr boter 
1/2 ui, gesnipperd 
1 el tomatenpuree 
400 gr tomaten uit blik, gepureerd 
1,2 l kippen bouillon 
1 verse groene of rode chillipeper, zonder zaad, fijn gehakt 
1 tl gedroogde oregano 
1/2 tl gedroogde tijm 
1 chayote a ca. 350 gr, geschild, in blokjes 
50 gr gerookte schelvis, zonder vel, in blokjes 
zout en versgemalen zwarte peper 
verse bieslook, gekipt. voor de ganering','2018-09-26 19:09:45.086420','<i>Voor 4 personen</i>
1. Snijd de kipfilet in blokjes, leg de stukjes in een schaal en strooi er zout, peper, knoflook en nootmuskaat over. Schep het vlees door de specerijen en laat ca. 30 min marineren.

2. Smelt de boter in een grote pan, voeg de gemarineerde stukjes kip  toe en bak de kip 5-6 min. op een middelhoog vuur. Voeg  de ui toe en bak alles nog eens 5 min., tot de ui zacht begint te worden.

3. Voeg de tomatenpuree, de gepureerde tomaten, bouillon, verse chillipeper, kruiden en blokjes chayote toe. Breng het geheel aan de kook en laat het afgedekt 35 min. zachtjes koken.

4. Voeg de gerookte vis toe en laat alles nog 5 min. zachtjes koken. Breng de soep indien nodig nog op smaak met versgemalen zwarte peper en zout. Garneer de soep tot slot met het geknipte bieslook.','/static/img/africa_cooking.jpg',30,4,8,4,13,7);
INSERT INTO `recipe` VALUES (397,'Pittige tomatensoep','N','<i>6-8 personen</i>
50 gram boter
1 ui, fijngesenden
1 kg rijpe tomaten, geblancheerd, ontveld, in blokjes
2 el bloem
1 liter warme kippenfond
1 kleine spaanse peper, zonder zaadjes, fijngehakt
1 thl paprikapoeder
1 thl suiker
2 kaneelstokjes
2 kruidnagels
1 laurierblad, licht gekneusd
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Smelt de boter in een grote pan en fruit de ui glazig. voeg de tomaat, bloem, fond, Spaanse peper, paprikapoeder, suiker
2. Verwijder de kaneelstokjes en het laurierblad en pureer de soep of laat hem zoals hij is, als u dat lekker vindt.
3. Serveer warm of koud, eventueel met een scheut creme fraiche.
Aan Tafel:
Deze tongstrelende versie van tomatensoep wordt gemaakt op de manier waarop Indiase gemeenschap in Zuid-Afrika hem het lekkerst vindt, maar u kunt de spaanse peper weglaten als u minder pittige soep wilt.
De soep kan een dag of twee van tevoren gemaakt worden; dek hem af en bewaar in de koelkast.','/static/img/africa_cooking.jpg',23,4,6,1,13,6);
INSERT INTO `recipe` VALUES (398,'Yamballetjes','Tip: Voeg nog wat fijngehakte verse kruiden toe aan het yam mengsel: peterselie, bieslook en koriander','<i>24 stuks</i>
450 gr witte yam 
2 el gesnipperde ui 
3 el gehakte tomaat 
1/2 tl fijngehakte verse tijm 
1 verse groene chillipeper, fijngehakt 
1 el gesnipperde lente ui 
1 teentje knoflook, geperst 
1 ei, losgeklopt 
zout en versgemalen peper 
plantaardige olie, voor het frituren  
met zout en perer gemende bloem, voor het bestuiven','2018-09-26 19:09:45.086420','1. Schil de yams, snijd ze in stukken en kook ze in licht gezouten water in ca. 30 min. gaar. Giet ze af en pureer ze.

2. Voeg de ui, tomaten, tijm, chillipeper, lente-ui en knoflook toe en roer het ei erdoor. Breng het geheel op smaak met pezo en meng het goed.

3. Neem een dessertlepel van het mengsel en maak er een balletje van. Rol het yamballetje door de bloem. Maak de overige balletjes net zo.

4. Verhit wat olie in een grote pan en frituur de yamballetjes in porties in een paar minuten goudbruin. Laat ze uitlekken op keukenpapier. Houd ze warm terwijl tot alle balletje gefrituurd zijn. Serveer ze warm.','/static/img/africa_cooking.jpg',30,6,6,3,13,7);
INSERT INTO `recipe` VALUES (399,'Slaphakskeentjies','N','<i>6-8 personen</i>
1 kg zilveruien, gepeld
3 eieren
2 eetlepels suiker
1 thl mosterdpoeder
0.5 thl zout
125 ml azijn
2 eetlepels water
200 ml melk of room','2018-09-26 19:09:45.086420','1. Kook de uien in kokend water met zout tot ze net gaar zijn. Laat ze uitlekken en houd ze warm of laat afkoelen.
2. Klop met een garde de eieren, suiker, mosterd, en het zout in een middelgrote pan schuimig. Voeg de azijn, het water en de melk of room toe en laat dit heel zachtjes koken op een laag vuur, onder af en toe roeren, tot de saus bindt.
3. Schenk over de uien en serveer gelijk of laat het afkoelen.','/static/img/africa_cooking.jpg',23,6,6,1,13,6);
INSERT INTO `recipe` VALUES (400,'Bieten-en-uiensalade','N','<i>6 personen</i>
6-8 middelgrote bieten, gewassen
125 ml rode-wijnazijn
2 eetlepels bruine suiker
0.5 thl zwarte peperkorrels
1 ui, fijngesneden
4 eetlepels water
1 laurierblad
1 thl zout','2018-09-26 19:09:45.086420','1. Snijd de bladeren van de bieten, laat stukje steel zitten om ''bloeden''in het kookwater te voorkomen. Zet onder koud water, breng aan de kook met de deksel schuin op de pan en kook in ongeveer 45 minuten gaar. Laat de bieten uitlekken, verwijder het vel en snijd ze in plakken.
2. Doe de azijn, bruine suiker, peperkorrels, ui, het water, laurierblad en zout in een middelgrote pan. Doe de deksel erop en breng aan de kook. Schenk over de biejtes en laat het gerecht afkoelen.
Aan Tafel:
Een bijgerecht dat erg populair is in de Afrikaner gemeenschap. Ringetjes spaanse peper geven het gerecht een Kaaps-Maleis en Indiaas tintje. De smaak wordt lekkerder als de salade een paar dagen staat.','/static/img/africa_cooking.jpg',23,9,6,1,13,6);
INSERT INTO `recipe` VALUES (401,'Wortelsalade','N','<i>4-6 personen</i>
500 gram wortelen, in dunne reepjes
1 kleine spaanse peper, in plakjes, zonder zaadjes
1 ui, fijngesneden
125 ml water
125 ml rode-wijnazijn
4 eetlepels plantaardige olie
100 ml suiker
1 thl worcestersaus
0.5 thl mosterd','2018-09-26 19:09:45.086420','1. Kook de wortelen in wat gezouten water tot ze gaar maar nog knapperig zijn. Spoel af met koud water en doe in een kom.
2. Doe de rest van de ingredienten in een pan en  breng aan de kook. Roer tot de suiker is opgelost. schenk de warme saus over de wortelen en laat dit 1-2 uur marineren.
3. Serveer koud.','/static/img/africa_cooking.jpg',23,9,6,1,13,6);
INSERT INTO `recipe` VALUES (402,'Kameroense suya','Suya zijn kebabs van vlees of kip.','<i>Voor 6 personen</i>
450 gr vanglap ( rundvlees ) 
1/2 tl suiker 
1 tl knoflook poeder 
1 tl gemberpoeder 
1 tl paprikapoeder 
1 tl kaneel 
snufje chillipoeder 
2 tl uienzout
50 gr pinda''s, fijngemalen 
plantaardige olie, voor het bestruiken','2018-09-26 19:09:45.086420','1. Snijd het vlees in reepjes van 2.5 cm breed. Leg de reepjes in een ondiepe schaal.

2. Meng de suiker, het knoflookpoeder, de specerijen, uienzout en de pinda''s in een kommetje. Strooi de mix over het vlees en schep het vlees om.

3. Rijg de reepjes vlees aan zes sateprikkers; duw het vlees goed aan. Leg de kebabs met aluminiumfolie afgedekt weg. Laat het vlees op een koele plaats een paar uur marineren.

4. Bestrijk het vlees voor met olie voor de kebabs op de BBQ gaan.','/static/img/africa_cooking.jpg',30,2,2,1,13,7);
INSERT INTO `recipe` VALUES (403,'Stamkoring met ui, tomaten en noten','N','<i>6 personen</i>
200 gram stampkoring (tarwe)
750 ml kippenfond, of water
0.5 thl zout
2 uien, fijngehakt
30 gram boter
1 kleine groene spaanse peper, zonder zaadjes en in stukjes
3-4 rijpe tomaten, geblancheerd, ontveld en in stukjes
0.5 thl kurkuma
100 gram cashewnoten of geroosterde pinda''s','2018-09-26 19:09:45.086420','1. spoel de stampkoring af onder koud water en doe hem in een pan met de fond of het water, en het zout. Doe een deksel op de pan en kook alles ongeveer 40 minuten zachtjes tot de stampkoring gaar is. Giet af
2. Fruit de ui lichtjes in de boter in een schone pan. Voeg de spaanse peper, tomaat en kurkuma toe en bak dit nog een paar minuten.
3. Roer de uitgelekte stampkoring erdoor en warm alles goed door. Voeg de noten vlak voor het opdienen toe.
Aan Tafel
Ronde tarwekorrels zijn een smakelijk alternatief voor rijst en hoewel tarwe meestal gewoon gekookt wordt, kan het makkelijk veranderd worden in iets heel bijzonders, gelijk aan de verschillende manieren om Italiaanse risotto te maken.','/static/img/africa_cooking.jpg',23,6,1,1,NULL,NULL);
INSERT INTO `recipe` VALUES (404,'Maleise rijst met erwten','N','<i>6-8 personen</i><P>
500 ml rijst
boter, plantaardige olie
1 grote ui, gehakt
1 thl komijnzaadjes
3 kardemompeulen
2 kassiastokjes of 1 kaneelstokje
3 kruidnagels
0,5 thl gemalen piment
2 thl zout
1 liter water
500 ml erwten (uit blik)','2018-09-26 19:09:45.086420','1. Verhit wat boter en olie in een middelgrote pan en fruit de ui goudbruin. Voeg komijn, kardemom, kassia of kaneel, kruidnagel en het piment toe en bak alles 30 seconden.
2. Roer de rijst erdoor, voeg dan zout en water toe. Dek af en laat zachtjes koken tot al het vocht opgenomen en de rijst gaar is.
3. Roer de erwten erdoor en warm door.','/static/img/africa_cooking.jpg',23,6,6,1,13,6);
INSERT INTO `recipe` VALUES (405,'Spinazie met courgettes en plakjes biltong','N','<i> 4 personen</i>
1 bosje spinazie, goed gewassen
4 middelgrote courgettes
boter
zout, versgemalen zwarte peper
nootmuskaat
100 gram biltong, in dunne plakjes','2018-09-26 19:09:45.086420','1. Laat de spinazie een beetje uitlekken, stroop de steeltjes eraf en scheur de blaadjes in stukjes. Snijd de courgettes met een dunschiller in de lengte in dunne reepjes.
2. Verhit de boter in ee ruime pan en bak de courgette gaar. Voeg de spinazie toe. Dek af en laat een paar minuten stomen - hij mag niet te slap worden.
3. Haal de pan van het vuur, breng op smaak met peper, zout en nootmuskaat en schep de biltong erdoor. Dien gelijk op.
Aan Tafel:
Dit moderne recept weerspiegelt een versmelting van elkaar aanvullende en tegenstrijdige smaken. Als u biltong kiest, neem er dan een die nog een beetje nat is - de kleur en textuur zijn beter.','/static/img/africa_cooking.jpg',23,6,6,1,13,6);
INSERT INTO `recipe` VALUES (406,'Geglaceerde wortelen','N','<i>8 personen</i>
2 bosjes wortelen, geschrapt
125 ml water
150 gram boter
80  ml honing of bruine suiker
5-6 dunne plakjes verse gember
0.5 thl nootmuskaat
citroensap','2018-09-26 19:09:45.086420','1. Snijd de wortelen in dunne plakjes. Verwarm het water in een wijde pan, voeg de wortelen, boter, honing, gember, nootmuskaat en wat citroensap toe. 
2. Dek af en kook 5-8 minuten zachtjes tot de wortelen bijna gaar zijn. Haal de deksel eraf en kook verder tot de saus ingekookt is tot een glace.
3. Gooi de gember weg: dien warm op.
Aan tafel
Vroeger pureerde men wortelen en aardappels met boter, melk en een snufje folie of nootmuskaat. Voor chiquere gelegenheden werden dooiers toegevoegd en geklopt eiwit erdoor gevouwen voor een lichte souffle. Zoete, geglaceerde wortelen zijn nog populairder.','/static/img/africa_cooking.jpg',23,6,6,1,NULL,NULL);
INSERT INTO `recipe` VALUES (407,'Pittige aardappelpuree','N','<i> 5-6 personen</i>
4 grote aardappelen, geschild en in blokjes (ongeveer 600 gram)
zout
100 gram ghee of boter
4-5 kardemompeulen, gekneusd
2 uien, fijngesneden
1 kleine groene spaande peper, fijngesneden en zonder zaadjes
of 0.5 thl groene massala
1 el citroensap
klein bosje verse koriander
gewassen, gedroogd en fijngehakt.','2018-09-26 19:09:45.086420','1. Kook de aardappels in gezouten water. Giet bijna al het vocht af en stamp ze fijn met de helft van de ghee of boter (voeg wat melk toe als de puree te dik is.)
2. Verhit de rest van de ghee of boter in een koekenpan, voeg de kardemom en de ui toe en fruit deze goudbruin
3. Voeg de spaanse peper of groene massala toe, meng met de puree en het citroensap en warm goed door. Roer de koriander er vlak voor het opdienen door. 
Aan Tafel:
Indiase aardappelpuree; Kaapse Maleiers brengen hun puree eenvoudigweg op smaak met nootmuskaat.','/static/img/africa_cooking.jpg',23,6,6,1,13,6);
INSERT INTO `recipe` VALUES (408,'Geglaceerde zoete aardappels','N','<i>6 personen</i>
1 kg zoete aardappels, geschild en in blokjes
1-2 kaneelstokjes
stukje gedroogde maartjie-schil, of een paar stukjes sinaasappelschil
100 gram boter
125 ml bruine suiker
2 dunne plakjes verse gember, of 0,25 thl gedroogde gember
125 ml water
4 eetlepels medium-dry sherry','2018-09-26 19:09:45.086420','1. Warm de grill van uw oven voor. Doe de zoete aardappelen, kaneel, maartjie- of sinaasappelschil, boter, bruine suiker, gember en het water in een pan. Dek af en laat ongeveer 10 minuten sudderen tot alles gaar is.
2. Haal de deksel eraf en kook op wat hoger vuur tot de zoete aardappel geglaceerd en het meeste vocht geabsorbeerd is. Schud de pan zo nu en dan, om aanbakken te voorkomen.
3. Doe de zoete aardappels in een ovenvaste schaal, schenk de sherry erover en bak ze lichtbruin onder de grill.
Aan Tafel
Patat bevredigt de Zuid-Afrikaase voorliefde voor iets zoet bij hun vlees. Voordat suiker verkrijgbaar was, was honing de zoetmaker en werd er schapenstaartvet gebruikt in plaats van boter. Koks uit de Karoo bereiden wilde kambro (een aardappelachtige knol van soms we 10 kg) ook op deze manier. Het hele gerecht kan gebakken worden in de oven; in een niet al te hete oven duurt dit zo''n 50 minuten. Bak het eerst afgedekt, en aan het eind onafgedekt, zodat de bovenkant bruint.','/static/img/africa_cooking.jpg',23,6,6,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (409,'Bloemkool met kaasaus','N','<i>6-8 personen</i>
1 middelgrote bloemkool
zout
750 ml melk
1 kleine ui, gepeld
1 laurierblad
2 kruidnagels
3 zwarte peperkorrels
50 gram boter
4 eetlepels bloem
0,5 thl mosterd
100 gr geraspte-kaas
125 ml vers wit-broodkruim','2018-09-26 19:09:45.086420','1.Laat de bloemkool heel of verdeel hem in roosjes. Laat hem een tijdje staan in koud water en giet af. Kook hem gaar in zout water (niet te gaar). giet af en leg in een ovenschaal. Warm de oven voor op 200C.
2. Doe melk, ui, laurierblad, kruidnagel en peperkorrels in een pan. Dek af, breng aan de kook en laat 10-15 minuten staan, zodat de smaak kan intrekken. Schenk door een zeef.
3. Smelt de boter in een schone pan, haal van het vuur en roer de bloem en mosterd erdoor. Roer langzaam de warme melk erdoor tot een glad mengsel ontstaat. Kook de saus al roerend 3-4 minuten, tot hij bindt.
4. Haal van het vuur en roer de helft van de kaas erdoor. Schenk dit over de bloemkool, bestrooi met de rest van de kaas en het broodkruim en bak de bloemkool ongeveer 15-20 minuten in de oven tot de saus gegratineerd is.','/static/img/africa_cooking.jpg',23,6,5,1,13,NULL);
INSERT INTO `recipe` VALUES (410,'Pompoen met kaneel','N','<i>6 personen</i>
1 kg pompoen
zout
200 ml water of sinaasappelsap
1 kaneelstlokje
80 ml bruine suiker
100 gram boter
3 eetlepels cognac (desgewenst)','2018-09-26 19:09:45.086420','1.Warm de oven voor op 180 C. Snijd de pompoen in plakken van 5 cm - verwijder de pitten (bewaar ze voor geroosterde pompoenpitten) - en snijd deze in blokjes. Leg de blokjes pompoen in een ovenschaal die wijd genoeg is, zodat veel van de pompoen wordt blootgesteld aan de hitte en goed bruin wordt.
2. Bstrooi met zout, voeg water of sinaasappelsap toe, brokkel de kaneel erover, bestrooi met suiker, doe er klontjes boter op en dek af met aluminiumfolie. Bak 30 minuten, verwijder de folie en bak nog een 30-45 minuten tot de pompoen gaar en mooi bruin is - schakel de grill aan het eind van de baktijd in als u hem nog bruiner wilt.
3. Verwarm de cognac, steek hem aan en flambeer de pompoen. Als u de tijd hebt, laat de schaal dan 30 minuten op een warme plek staan alvorens hem op te dienen.  Aan Tafel Pompenen werden geteeld lang voordat de kaap gekoloniseerd werd en de mensen op het platteland bereidden ze op eenvoudige wijze - in plakjes en gekookt, gepureerd of met maiskorrels, maismeel of bonen. De Hollandse gewoonte om boter en suiker toe te voegen, die al blijkt uit de oudste geschreven recepten, is nog altijd een populair gebruik. Een manier was om boter, zout, suiker, kaneel','/static/img/africa_cooking.jpg',23,5,1,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (411,'Tartaarsaus','N','<i>4 personen</i>
250 ml mayonaise
2 hardgekookte eieren, geprakt
1,5 thl dijonmosterd
1 eetlepel gehakte verse peterselie
1 eetlepel gehakte bieslook
1 eetlepel kappertjes of gehakte augurk','2018-09-26 19:09:45.086420','1. Meng de ingredienten door elkaar en controleer de smaak, voeg eventueel wat zout en peper of citroensap toe. Zet afgedekt weg in de koelkast.','/static/img/africa_cooking.jpg',23,5,1,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (412,'Smoorvis','N','<i>4 personen</i>
500 gram gerookte vis, ontgraat, ontveld en in stukjes
2 uien, fijngesneden
boter, plantaardige olie
2 aardappels, geschild en in kleine blokjes
1 thl geplette verse gember
1-2 rode of groene spaanse pepers, fijngesneden, zonder zaadjes
2 grote, rijpe tomaten geblancheerd, ontveld en in stukjes
500 ml gekookte rijst
4 eetlepels rozijnen (desgewenst)
zout, versgemalen zwarte peper
citroensap','2018-09-26 19:09:45.086420','1. Fruit de ui in een beetje boter en olie in een grote koekenpan. Voeg de aardappel toe en bak hem bruin. Roer de gember, Spaanse peper en tomaat erdoor. Roer af en toe.
2. Meng de vis, rijst en rozijnen erdoor. Dek de pan af en stoom het gerecht op een laag vuur tot het heet is en de aardappels gaar zijn.
3. Breng op smaak met peper en zout. Doe de smoorvis in een warme schaal en besprenkel flink met citroensap.
Aan Tafel:
Gesmoorde vis werd oorspronkelijk bereid met vis die gezouten was en gedroogd in de zeebries. Nadat hij geweekt was in water, werd het vlees gesnipperd en gesmoord in pittige rijst.
Tegenwoordig wordt meestal gerookte vis gebruikt. Hoewel het lijkt op veel pittig gekruide rijstgerechten uit India, wordt dit recept toegeschreven aan Kaapse Maleiers, die al eeuwen dergelijke gerechten bereiden met uiteenlopende  ingredienten, zoals kreeft en hardgekookte pinguineieren, of minder exotische vis en kippeneieren.
Krab en mosselen worden ook gebruikt. Smoorvis moet sterk van smaak zijn en niet te droog of te vochtig. Het is heerlijk met volkoren brood en atjar.','/static/img/africa_cooking.jpg',23,2,8,1,13,6);
INSERT INTO `recipe` VALUES (413,'Penangvis','N','<i>4 personen</i>
750 gram gefileerde vis zonder vel
50 gram gedroogd tamarindezaad
ghee of boter
2 uien, fijngesneden
2 thl kerriepoeder
0,5 thl geperste knoflook
0,25 thl gemberpoeder
1 eetlepel citroensap
zout
250 ml kokosmelk
250 ml visfond','2018-09-26 19:09:45.086420','1. Snijd de vis in dikke plakken. Week de tamarinde een halfuur in een beetje warm water. Zeef dit en gooi de zaadjes weg. Verhit de boter in een ruime koekenpan. Fruit de ui goudbruin. Roer er de kerrie, knoflook, gember, het citroensap en tamarinde water door. Breng op smaak met zout.
2. Schenk de kokosmelk en visfond erbj en breng aan de kook. Voeg de vis toe en stoof hem, zonder deksel, ongeveer 5 minuten tot hij gaar is. Serveer met rijst of aardappels en atjar.
Aan Tafel:
Dit eeuwenoude recept kan gemaakt worden met elke soort vis.','/static/img/africa_cooking.jpg',23,2,8,1,13,6);
INSERT INTO `recipe` VALUES (414,'Massala-vis','N','<i>6-8 personen</i>
750 gram gefileerde vis (met of zonder vel)
2 thl gemalen komijn
2 thl koriander
1 thl knoflook 
1-2 groene spaanse pepers, fijngehakt
0.5 thl zout
1 thl kurkuma
2 eetlepels plantaardige olie
1 eetlepel citroensap','2018-09-26 19:09:45.086420','1. Snijd de vis in porties. Meng de overige ingredienten tot een pasta, wrijf de vis hiermee in en laat 1 uur staan. (of dek hem af en bewaar maximaal 5 uur in de koelkast)
2. Bak de vis gaar in plantaardige olie; ongeveer 4-5 minuten per kant. Serveer met atjar en partjes citroen.
Aan Tafel:
Dit oosterse gerecht - zowel opgeschreven door Indiase als Kaaps-Maleise koks - is heerlijk, wat voor vis u ook gebruikt.','/static/img/africa_cooking.jpg',23,2,8,1,13,NULL);
INSERT INTO `recipe` VALUES (415,'Ingemaakte vis','N','<i>6-8 personen</i>
1,7-2 kg gefileerde vis, ontveld
plantaardige olie
750 ml wijnazijn
250 ml water
200 ml suiker
1 eetlepel kurkuma
1,5 thl zout
1 eetlepel zwarte peperkorrels
1 eetlepel korianderzaad
4 grote uien, in dunne ringen
6 citroen-of laurierblaadjes
2 spaanse pepers, in plakjes, zonder zaadjes
4 dunne plakjes verse gember
3 eetlepels bloem
250 ml rozijnen (desgewenst)','2018-09-26 19:09:45.086420','1. Snijd de vis in blokjes van 3 cm. Bak deze gaar in olie; laat goed uitlekken op keukenpapier
2. Doe azijn, water, suiker, kurkuma, kerriepoeder, zout, peperkorrels en korianderzaad in een grote pan en breng aan de kook. 
3. Voeg uien, citroen-of laurierblaadjes, spaanse pepers en gember toe, dek af en laat 10-12 minuten stoven. De ui moet nog stevig zijn. Zeef het inmaakvocht boven een schone pan (bewaar de ui) en breng aan de kook.
4. Maak van wat saus en de bloem een dun papje, roer door de rest van de saus en breng 2 minuten aan de kook om te binden.<P>
5. Doe laagjes vis, rozemarijn en ui in een grote glazen pot, schenk de saus erover, dek af en zet in de koelkast. Ingemaakte vis kan gegeten worden zodra hij is afgekoeld, maar de smaak is na een paar dagen een stuk lekkerder. Stevige vis blijft in de koelkast wel 6 maanden goed; delicate vis, zoals heek en kob kunt u 2-3 maanden bewaren.
Aan Tafel:
Begin 19de eeuw was het Green Point-terrein aan de rand van Kaapstad een racebaan waar men twee keer per jaar bijeenkwam voor een dag vol sport en culinaire heerlijkheden, zoals speenvarken, braaied snoek, watermeloenkonfijt en ingemaakte vis.
Dit recept was bedacht door kaapse maleiers, ervaren vissers die ongelooflijk handig zijn in het zo lang mogelijk conserveren van hun vangst. Het recept belicht duidelijk het effect van de oosterse invloeden op de lokale keuken.
Generaties huisvrouwen hebben geprofiteerd van het visseizoen om vis in grote hoeveelheden in te maken en te bewaren voor de komende maanden. Stevige atoen en geelstaart horsmakreel zijn het best, maar andere vis kan ook worden gebruikt - zelfs eenvoudige heek. 
Als u een hele vis koopt om te fileren, neem er dan een van 2,5 - 3 kg. Volgens de traditionele manier wordt de vis eerst gebakken voor u hem inmaakt, maar u kunt hem ook garen in de oven of magnetron.','/static/img/africa_cooking.jpg',23,2,8,1,13,6);
INSERT INTO `recipe` VALUES (416,'Forel met gekruide spinazia','N','<i>2 personen</i>
2 hele forellen van 300 gram
50 gram boter
1 kleine ui, fijngesneden
0,5 thl geperste knoflook
250 gram champignons, in plakjes
1 bosje spinazie, gewassen uitgelekt en fijngesneden (verwijder dikke nerven)
1 rijpe tomaat, in kleien blokjes
1 eetlepel gehakte verse kruiden (peterselie, venkel , tijm)
zout, versgemalen zwarte peper
4 eetlepels citroensap
200 ml witte wijn
125 ml room','2018-09-26 19:09:45.086420','1. Maak de forel goed schoon. Warm de oven voor op 180C. Verhit de boter in een middelgrote pan en bak ui, knoflook en champignons een paar minuten zachtjes tot ze gaar zijn.
2. Voeg de spinazie, tomaat, kruiden, peper en het zout toe, dek af en laat 5 minuten heel zachtjes smoren. Laat afkoelen.
3. Vul de forellen met het spinaziemengsel. Leg ze in een ovenschaal en voeg het citroensap en de wijn toe. Bestrooi met zout en peper, dek af met aluminiumfolie en bak de forellen in 20 minuten gaar.
4. Leg de vis op warme borden. Doe de room bij het kookvocht in de ovenschaal en kook dit, onafgedekt, op het fornuis in tot een dunne saus. Schenk naast de forel.','/static/img/africa_cooking.jpg',23,2,8,1,NULL,NULL);
INSERT INTO `recipe` VALUES (417,'Mosselen in saffraan-kerriesaus','N','<i>6 personen</i>
36 mosselen, schoon geborsteld
400 gram bladerdeeg
1 ei, losgeklopt
6 saffraandraadjes
125 ml warm water
500 ml droge witte wijn
1 ui, fijngesneden
2 eetlepels gehakte verse peterselie
1 thl kerriepoeder
125 ml room
500 gram jonge spinazie
boter
200 ml fijngesneden tomaat','2018-09-26 19:09:45.086420','1. Warm de oven voor op 200C.
2. Snijd het bladerdeeg in zes driehoeken. Leg ze op een licht ingevette bakplaat en bestrijk ze met ei. Bak ze in 15-20 minuten gaar en goudbruin. Snijd de driehoeken als ze nog warm zijn dwars doormidden.
3. Week de saffraan 30 minuten in warm water. Breng de wijn met de ui en peterselie in een grote pan aan de kook. Voeg de mosselen toe, dek af en kook ze 5 minuten op een hoog vuur tot ze opengaan. Haal de pan van het vuur, gooi de schelpen weg en verwijder de baard van de mosselen.
4. Voeg de kerriepoeder toe aan de fond en kook hem onafgedekt tot de helft in. Voeg de room toe en kook nogmaals in tot de saus bindt (hij moet sterk van smaak zijn en van nature zout door de mosselen). Zeef boven een schone pan en voeg de saffraan toe.
5. blancheer de spinazie 2 minuten in zout, kokend water. Laat uitlekken. Bak hem vlak voor het serveren nog eens 2 minuten in wat boter.
6. Serveren: Verwarm de mosselen in de saus. Leg een beetje spinazie op elk bord. Leg een bladerdeeghelftje erop, schep er mosselen en saus over, dek af met bladerdeeg met ei en garneer met gehakte tomaat.
Aan Tafel:
Deze moderne versie van een klassiek kaaps recept is een vast gerecht in het geprezen restaurant Constantia Uitsig in het hart van het kaapse wijnland.','/static/img/africa_cooking.jpg',22,2,4,1,13,6);
INSERT INTO `recipe` VALUES (418,'Kaaps-Hollandse kippastei','N','<i>5 personen</i>
400 gram bladerdeeg
1 grote kip
boter
1 grote ui, fijngesneden
zout en versgemalen zwarte peper
125 ml droge witte wijn
250 ml kippenfond
10 zwarte peperkorrels
3 kruidnagels
6 pimentbessen
2 eetlepels sago
2 eierdooiers, losgeklopt
citroensap
200 gram ham, in blokjes
2 hardgekookte eieren in plakjes
1 eierdooier, vermengd met wat melk','2018-09-26 19:09:45.086420','1. Snijd de kip in vieren. Verhit een beetje boter in een grote pan en fruit de ui goudbruin. Voeg de kip toe en bak hem goed bruin. Bestrooi met zout en peper; voeg de wijn en kippenfond toe. 
2. Doe de peperkorrels, kruidnagels en pimentbessen in een zakje van kaasdoek en leg dit in de pan. Dek af en laat ongeveer 50 minuten koken tot het vlees van het bot valt.
3. Haal de kip uit de saus, laat hem iets afkoelen, verwijder het vel en de botten. Snijd het vlees in kleine stukjes en zet dit apart. Voeg de sago toe aan de pan, dek af en laat 15 minuten stoven tot hij transparant is. 
4. Haal van het vuur, verwijder het kruidenbuiltje en roer de dooier erdoor voor een dikke, romige saus. Breng op smaak  met wat citroensap. 
5. Roer de kip en ham door de saus. Schep de helft in een beboterde pasteischaal. Leg er plakjes hardgekookt ei op en bedek dit met de rest van de kip. Laat afkoelen tot kamertemperatuur.
6. Warm de oven voor op 200 C. Dek de pastei af met bladerdeeg en versier met deegblaadjes. Bestrijk met ei en melk en bak hem ongeveer 20 minuten tot het deeg knapperig en bruin is. Serveer met gele rijst en blatjang
Aan Tafel
Pasteien waren erg in de mode in het Nederland van de 18de eeuw, een trend die zich uitbreidde naar de kaap. Zij behoorden ook tot de eerste producten die verkocht werden door de vrije bakkers in de kolonie.
Hoenderpastei wordt geassocieerd met feesten - kerstmis, verjaardagen en vooral Kaaps-Maleise trouwfeesten. De scharrelkippen van vroeger hadden veel meer smaak dan de legbatterij-kippen van nu, dus de bereidingswijze van deze pastei wijkt iets af van het eenvoudige recept van vroeger.','/static/img/africa_cooking.jpg',23,2,3,1,NULL,NULL);
INSERT INTO `recipe` VALUES (419,'Kaaps-Maleise kipcurry','N','<i>4-6 personen</i>
1 grote kip, in stukken of 1,5 kg kippenbouten
zout en versgemalen zwarte peper
plantaardige olie
2 grote uien, grof gehakt
1-2 groene spaanse pepers, fijngesneden, zonder zaadjes
2 kassia- of kaneelstokjes
1 thl geperste knoflook
1 thl geplette verse gember
1 eetlepel geroosterde massala
1 thl kurkuma
1 thl gemalen komijn
1 thl gemalen koriander
0,5 thl gemalen kardemom
3-4 grote, rijpe tomaten, geblancheerd, ontveld en fijngesneden
500 ml warme kokosmelk, of kippenfond','2018-09-26 19:09:45.086420','1. Verwijder het vel en bestrooi de kip met zout en peper. Verhit wat olie in een grote pan en fruit de ui goudbruin.
2. Roer er de spaanse peper, kassia- of kaneelstokjes, knoflook, gember, massala, kurkuma, komijn, koriander en kardemom door en bak dit 30 seconden (niet laten aanbranden). Voeg de tomaat en kokosmelk of kippenfond toe.
3. Doe de kip in de pan, dek hem af en laat hem 45-50 minuten heel zachtjes koken tot hij gaar is. controleer de smaak en voeg eventueel zout toe. Doe de curry in een warme schaal, garneer eventueel met korianderblaadjes en serveer met rijst en sambal.
Aan Tafel:
Maleise curry''s zijn heerlijk complex van smaak en vaak milder dan Indiase curry''s','/static/img/africa_cooking.jpg',23,2,3,1,13,6);
INSERT INTO `recipe` VALUES (420,'Met mosterd geglaceerde beenham','N','<i>10-12 personen</i>
1 beenham
1 ui, in vieren
2 wortelen, in vieren
3 laurierblaadjes
1 thl zwarte peperkorrels
1 eetlepel gemalen piment
Mosterdglace
kruidnagels
125 ml abrokozengelei
1 eetlepel dijonmosterd
2 eetlepels grove mosterd
1 theelepel engelse mosterdpoeder
2 eetlepels sinaasappelsap','2018-09-26 19:09:45.086420','1. Weeg de beenham voor de bereidingstijd: 20 minuten per 500 gram. Leg hem in een grote pan, zet onder koud water. Voeg de ui,wortel, laurierblaadjes, peperkorrels en het piment toe, dek af en kook hem heel zachtjes gaar.
2. Warm de oven voor op 200 C. Haal de ham uit de pan, leg in een braadslee en laat afkoelen. Snijd het vet weg tot op 10 mm en maak met een mes een ruitpatroon in de ham. Prik er flink wat kruidnagels in.
3. Roer de jam, mosterd, mosterdpoeder en het sinaasappelsap door elkaar en bestrijk hiermee de ham. Bak hem, onafgedekt, 20-30 minuten totdat de buitenkant knapperig is. Bedruip af en toe met jus.
Aan Tafel:
Voordat er suiker werd verbouwd, gebruikte men honing om hammen te conserveren. Kaapse ham - enorm populair in de 18e eeuw - was een varkenspoot die een maand gepekeld was met zout water; en vervolgens drie weken gerookt werd in een schoorsteen. Dankzij de moderne technologie hoeft dit niet meer zo omslachtig en malse beenham blijft een traktatie - vooral met kerstmis.','/static/img/africa_cooking.jpg',23,2,2,1,13,NULL);
INSERT INTO `recipe` VALUES (421,'Tomatenbredie','N','<i>4-6 personen</i>
1,2 kg mager stoofvlees van schaap of lam, in blokjes
zout, versgemalen zwarte peper
bloem, plantaardige olie
2 uien, in ringen
3 teentjes knoflook, geplet
1 thl geplette verse gember
4 kardemompeulen
0,5 thl korianderzaad
0,5 thl venkelzaad
1 eetlepel gehakte verse tijm
1 eetlepel gehakte verse majoraan
1-2 kleine groene of rode spaanse pepers, in plakjes, zonder zaadjes
1 kg rijpe tomaten, geblancheerd, ontveld en in blokjes
1 thl bruine suiker','2018-09-26 19:09:45.086420','1. Bestrooi het vlees met peper en bloem. Verhit wat olie in een grote pan en braad het vlees beetje bij beetje aan. Doe al het vlees in de pan, voeg de ui  , knoflook en gember toe en bak dit op een hoog vuur tot de ui goudbruin is.
2. Plet de kardemom, koriander- en venkelzaadjes in een vijzel en doe ze in de pan samen met de tijm, majoraan, spaanse peper, tomaat en bruine suiker. Voeg zout toe. 
3. Dek af en laat heel zachtjes stoven tot het vlees helemaal gaar is, onder af en toe roeren. Voeg wat water of fond toe als de bredie te droog wordt; haal de deksel aan het eind van de bereidingstijd van de pan als hij te nat is.
4. De bereidingstijd loopt uieen van 1-2 uur, afhankelijk van het soort vlees. Schep het vet dat komt bovendrijven voorzichtig af.
5. Serveer met witte rijst en gekookte aardappels, of kook de aardappels het laatste halfuur mee met de bredie.
Variaties Vervang de tomaten door het volgende:
Pompoenbredie: 1 kg pompoenblokjes. Vul de kruiden aan met een kaneelstokje.
Snijbonenbredie: 300 gram snijbonen, schoongemaakt en gesneden. Voeg 0,25 thl nootmuskaat toe aan de kruiden.
Waterblommetjiebredie: 800 gram waterblommetjies, schoongemaakt en geweekt in zout water, 1 groene appel, geschild en geraspt, of 1 bosje zuring, gehakt. voeg wat nootmuskaat toe aan de kruiden.
Aan Tafel:
Bredies werden ingevoerd door oosterse slaven en algauw werden er ingredienten als kool, snijbiet, spinazie en zuring in verwerkt. De naam is echter afkomstig uit Madagascar, een eiland met sterke handelsbanden met India en Maleisie.
Het geheim van een heerlijke bredie ligt in een uitgebalanceerde kruiderij en het op de juiste manier smoren van het vlees en de ui. Lang, zachtjes koken betekent dat het vlees vrijwel van het bot valt en een wordt met de saus. Gebruik heel weinig extra vocht, omdat de smaak moet komen van het vocht in het vlees en de groente. Bredie smaakt nog lekkerder als u het een dag of twee van tevoren maakt en weer opwarmt.','/static/img/africa_cooking.jpg',23,2,2,1,NULL,NULL);
INSERT INTO `recipe` VALUES (422,'Denningvleis','N','<i>6-8 personen</i>
1,5 kg lams-stoofvlees, in blokjes
plantaardige olie
4 uien, grof gehakt
1 thl geperste knoflook
1 groene spaanse peper, gesneden, zonder zaadjes
1 thl nootmuskaat
6 kruidnagels
2 laurierblaadjes
0,5 thl gemalen piment
zout, versgemalen zwarte peper
250 ml warm water
50 gram gedroogd tamarindezaad','2018-09-26 19:09:45.086420','1. Bruin het vlees in hete olie. Haal het vlees uit de pan en houd apart. Fruit de ui, knoflook en spaanse peper. 
2. Doe het vlees terug in de pan met de nootmuskaat, kruidnagel, laurierblaadjes, het piment en wat zout en peper. schenk de helft van het water erbij, dek af en stoof zachtjes tot het vlees gaar is - dit duurt 60-90 minuten, afhankelijk van het vlees. Voeg af en toe extra water toe, als dat nodig is.
3. Week ondertussen de tamarinde in de rest van het warme water. Zeef de tamarinde, gooi de zaadjes weg en voeg het vocht ongeveer 30 minuten voor het vlees gaar is toe. serveer met rijst en atjar, of met gestoofd, gedroogd fruit.
Aan Tafel:
Dit recept, door de maleiers meegenomen uit java en onderdeel van een bataafse rijsttafel, vindt zijn oorsprong in het javaanse dendeng, een gerecht oorspronkelijk bereid met het vlees van de waterbuffel, dat geconserveerd werd met zout en kruiden, gedroogd in de zon en gebakken in kokosolie. Het wordt traditioneel op smaak gebracht met tamarinde - het gedroogde fruit van een Indiase boom. Als u dit niet kunt vinden, vervang het dan door een scheutje wijnazijn of citroensap.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (423,'Lamsvlees met lavendel','N','<i>8 personen</i>
1 grote lams-bout (ongeveer 2 kg)
zout en versgemalen zwarte peper
500 ml karnemelk
125 ml olijfolie
gepelde teentjes van 1 bol knoflook
4 eetlepels fijngehakte verse lavendelblaadjes
grote bos verse lavendel
geraspte schil en sap van 1 kleine citroen
2 eetlepels maismeel
250 ml room
4 eetlepels medium sherry','2018-09-26 19:09:45.086420','1. Leg het lams-vlees op een braadslee en bestrooi het met zout en peper. Meng de karnemelk, de olijfolie, knoflookteentjes, gehakte lavendel, citroenrasp en het citroensap door elkaar en schenk dit over het vlees.
2. Laat dit bij kamertemperatuur 3-4 uur marineren (of een nacht in de koelkast).
3. warm de oven voor op 200 C. Leg de lavendelblaadjes op het vlees, dek af met folie en braad het 30 minuten. Zet de oven op 160 C en braad het vlees nog eens 1,5 uur tot een vleesthermometer een interne temperatuur van 65C aangeeft. Draai het vlees af en toe om. Leg in een schone braadslee. Zet de oven op 220 C en braad het vlees, onafgedekt, in 20 minuten bruin.
4. Roer het maismeel en de room door elkaar en voeg dit toe aan ht braadnat, pureer de knoflookteentjes en klop tot de saus glad en gebonden is (karnemelk schift tijdens het braden. roer de sherry erdoor.
Aan Tafel:
Lang geleden hielden de hottentotten in de karoo dikstaartschapen. later voerden de 1820 British settlers merino''s in, die leefden van de aromatische wilde struiken, waardoor zij stevig en smakelijk werden. 
Dit recept komt uit de karoo, waar zowel lams-vlees als lavendel volop aanwezig zijn - maar u kunt de lavendel ook vervangen door rozemarijn. Oude lams-vleesrecepten waren erg zwaar; omdat het vlees gestoofd werd in zijn eigen vet, of het vet van de staart. 
Nu verwijderen de koks voor het koken bijna al het vet en gebruiken ze olie om het vlees te bakken. Zuid-Afrikanen houden van lang en lamgzaam bereid lams-vlees, zodat het door en door gaar is - rozig vlees is zeldzaam in boerekos of de Kaaps-Maleise keuken, waar gebraden lams-vlees boudvleis (lamsbout) heet.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (424,'Giema curry','N','<i>8 personen</i>
1 kg rundergehakt
plantaardige olie
2 uien, fijngesneden
1 eetelepel geperste knoflook
1 eetlepel geplette verse gember
2 kassiastokjes
4 kardemompeulen, gekneusd
4 kruidnagels
4-5 curryblaadjes (murraye koenigii)
spaanse peper, in plakjes, zonder zaadjes
2 thl gemalen koriander
2 thl gemalen komijn
1,5 thl kurkuma
400 gram tomaten uit blik, in stukjes (niet uitgelekt)
70 gram tomatenpuree
zout en versgemalen zwarte peper
500 gram erwten (uit blik)
6 hardgekookte eieren, in vieren','2018-09-26 19:09:45.086420','1. Fruit de ui goudbruin in de hete olie in een grote pan. voeg de knoflook en gember toe, dan de kassia, kardemom, kruidnagel, curryblaadjes
2. Roer de tomaten en tomatenpuree erdoor, breng op smaak met zout en peper. Dek af en laat 45-60 minuten zachtjes stoven, onder af en toe roeren, tot het vlees helemaal gaar is. Voeg alleen wat kokend water toe als de curry te droog wordt. voeg de erwten toe en warm ze door. Garneer met partjes hardgekookt ei en eventueel korianderblaadjes.
Salomi: maak roti en wikkel deze rond een lepel giema curry.
Aan Tafel:
Curry gehakt is een Indiase en Kaaps-Malaise favoriet. Er zijn veel manieren om het te kruiden, dus volg gerust uw eigen favoriete smaak. Als u wilt, kunt u het recept aanvullen met blokjes aardappel. In plaast van, of naast de spaanse peper kunt u elke massala van uw keuze gebruiken om het gerecht pittig te maken.','/static/img/africa_cooking.jpg',23,2,2,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (425,'Bobotie','','<i> 8 personen</i>
1 kg lams-- of rundergehakt, of een combinatie
boter, plantaardige olie
2 uien, fijngesneden
0,5 thl geperste knoflook
1 eetlepel kerriepoeder
1 thl gemalen kurkuma
2 sneetjes brood, verkruimeld
4 eetlepels melk
1 ei
1 thl zout, versgemalen zwarte peper
100 gram gedroogde abrikozen, fijngesneden
1 granny smith-appel geschild, zonder klokhuis en in stukjes
4 eetlepels rozijnen
50 gram geschaafde amandelen, geroosterd in een droge koekenpan
geraspte schil en sap van 0,5 kleine citroen
6 citroen-,sinaasappel- of laurierblaajdes
Saus
250 ml melk
2 eieren
0.5 thl zout','2018-09-26 19:09:45.086420','1. Warm de oven voor op 160C. Beboter een grote ovenschaal. Verhit boter en olie in een pan en fruit de ui en knoflook glazig. Roer de kerriepoeder en kurkuma erdoor, en bak dit kort mee. Haal de pan van het vuur.
2. Doe het gehakt erbij. Vermeng met broodkruim met de melk, ei, peper, abrikozen, appel, rozijnen, amandelen, citroenrasp
3. Rol de blaadjes op en stop ze in het gehakt. Dek af met folie en bak het gehakt 75 minuten. Zet de oven op 200 C. 
4.Vermeng de ingredienten voor de saus (er kan extra saus nodig zijn als u een grote ovenschaal gebruikt), schenk over het gehakt en bak dit nog eens 15 minuten onafgedekt, tot de bovenkant gebruind en gaar is.
5. Serveer met gele rijst en blatjang
Aan Tafel:
Dit is een van de nationale gerechten van Zuid-Afrka. Het recept werd geselecteerd voor een internationaal kookboek dat in 1951 werd uitgegeven door de verenigde naties. Bobotie is een Kaaps-Maleise creatie en hierin wordt nog veel meer komijn, koriander en kruidnagel verwerkt. Eenzelfde soort gerecht werd bekend in Europa in de Middeleeuwen, nadat de kruisvaarders kurkuma hadden meegebracht uit het Oosten.
Toen de eerste Hollandse kolonisten arriveerden, was Holland vooral beinvloed door de italiaanse keuken en een favoriet gerecht was gehakt vlees gebakken met kerriesaus, opgepept met rode spaanse peper en gezoet met geblancheerde amandelen. Er zijn veel lokale variaties, maar het gehakt moet zacht en romig van textuur zijn, dus het moet lang en langzaam bereid worden.
Vroeger voegden koks wat tamarindewater toe; in de modernere vorm worden citroenrasp en sap gebruikt.','/static/img/koken.jpg',23,2,2,1,1,6);
INSERT INTO `recipe` VALUES (426,'Frikkadelle','N','<i>6-8 personen</i>
1 kg lams--of rundergehakt, of een combinatie
1 ui, fijngesneden
4 eetlepels gehakte verse peterselie
1 thl gemalen koriander
0,5 thl gemalen kruidnagel
1 thl zout, versgemalen zwarte peper
2 sneetjes brood
125 ml melk
1 ei, losgeklopt','2018-09-26 19:09:45.086420','1. Kneed ui, peterselie, koriander, kruidnagel, zout en peper in een kom door het gehakt. (Als u van knoflook houdt, kunt u wat geperste teentjes toevoegen.)
2. Week het brood in de melk, verkruimel het en doe het bij het gehakt, samen met het ei. Laat minstens 30 minuten staan op een koude plek, zodat de smaken zich vermengen
3. Vorm 16 ballen. Bak deze in 12-15 minuten gaar in olie op halfhoog vuur, keer ze af en toe. Zorg dat ze goed gaar zijn (maar laat ze niet aanbakken). 
4. Leg ze op een warme schaal en serveer met gekruide tomatensaus.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (427,'Gebraden kwartel met bessensaus','N','<i> 6 personen</i>
12 kwartels
50 gram boter
honing
zout en versgemalen zwarte peper
850 ml kippenfond
80 ml van der hum of andere citruslikeur
100 gram verse frambozen','2018-09-26 19:09:45.086420','1. Warm de oven voor op 200 C. Verhit de boter in een koekenpan en bak de kwartels rondom bruin. Houd de pan bij de hand; hierin wordt de saus gemaakt.
2. Schik de vogels in een braadslee, schep de boter erover en voeg een beetje honing toe. Braad ze, onafgedekt, in 20 minuten gaar, bedruip ze een of twee keer. Bestrooi met een beetje zout en peper en leg ze op een warme schaal. Kook ondertussen de fond tot de helft in.
3. Warm de koekenpan weer op, voeg de likeur toe en flambeer hem. Schenk de fond erbij, breng aan de kook en voeg zout en peper toe. Doe vlak voor het opdienen de frambozen in de saus en warm ze door.
4. Serveer de kwartels en saus apart.
Aan Tafel:
Kwartel is of gefokt of geschoten, in welk geval hij meestal taaier is en 24 uur zou moeten hangen voor hij geplukt en schoongemaakt wordt voor het koken. Dit gerecht is afkomstig uit de KwaZulu-Natal Midlands, waar zowel kwartel als frambozen veel voorkomen.','/static/img/africa_cooking.jpg',23,2,3,1,NULL,NULL);
INSERT INTO `recipe` VALUES (428,'Gestoofde parelhoen','N','<i>8 personen</i>  
3 parelhoenders met organen (niet de levers)
250 gram ontbijtspek, in stukjes<br.
boter, plantaardige olie
1 grote ui, fijngesneden
10-12 gepelde teentjes knoflook
grote bos, verse kruiden (peterselie, tijm, oregano)
375 ml droge rode wijn
500 ml kippenfond
zout en versgemalen zwarte peper
200 gram gemengd droog fruit
200 ml port
45 ml marula- of cranberrygelei','2018-09-26 19:09:45.086420','1. Maak de parelhoenders schoon en halveer ze. Bak spek krokant in wat boter en olie in een grote pan. Doe de ui en knoflook erbij en fruit ze glazig.
2. Braad de parelhoenders en het orgaanvlees lichtjes aan. Voeg kruiden, wijn, fond, zout en peper toe. Dek af en laat 2-2,5 uur zachtjes stoven tot de vogels gaar zijn.
3. voeg ongeveer 30 minuten voor het eind van de kooktijd het gedroogde fruit toe. Leg het vlees en fruit op een warme schaal.
4. ontvet de saus. Voeg de port en marula-of cranberrygelei toe. Schenk de saus over en rond de vogels. 
Aan Tafel
Gevogelte zoals parelhoen moet lang, langzaam en met veel vocht bereid worden, omdat het vlees erg mager en meestal een beetje taai is. U kunt de parelhoen vervangen door twee kleine kippen.','/static/img/africa_cooking.jpg',23,2,3,1,13,6);
INSERT INTO `recipe` VALUES (429,'Boerewors','N','<i> Voldoende voor 3,5 kg</i>
2 kg volwassen rundvlees van de voorhand
1 kg vet varkensvlees (nek, schouder of buik)
3 eetlepels korianderzaadjes
1 thl hele kruidnagels
2 eetlepels zout
1 eetlepel versgemalen zwarte peper
0,5 thl nootmuskaat
2 thl gemalen piment
2 thl bruine suiker
125 ml droge rode wijn of wijnazijn
90 gram dikke, natuurlijke worstvellen, geweekt in water','2018-09-26 19:09:45.086420','1. Ontdoe het rund-en varkensvlees van alle pezen. snijd het vlees in repen vna circa 3 cm in doorsnee en doe ze ongeveer 30 minuten in de vriezer. 
2. Maal het vlees met een gehaktmolen, naar believen grof of fijn. Probeer bij het malen zo min mogelijk gebruik te maken van de stamper. Maal tot slot een stuk brood om de laatste restjes vlees uit de molen te verwijderen.
3. Rooster de koriander en kruidnagels in een droge koekenpan tot ze gaan geuren. Stamp ze fijn in een vijzel en verwijder de schilletjes met een zeef.
4. Sprenkel samen met de resterende kruiden en suiker over het gehakte vlees. Meng de rode wijn of azijn lichtjes door het vleesmengsel.
5. giet de worstvellen af, plaats een eind over de vulhoorn en blijf doorduwen tot er nog 10 cm naar beneden hangt. Knoop dit einde dicht.
6. Doe het mengsel in kleine hoeveelheden in de vulhoorn terwijl u het worstvel licht tegen de hoorn gedrukt houdt om te voorkomen dat het vel ervan af rolt. Kneed de worst met uw handen egaal. vul het vel niet te vol, want dan barst de worst tijdens het braden; en probeer luchtbellen te voorkomen.
Aan Tafel:
De oorsprong van de pittige boerenworst wordt toegewezen an vroege duitse kolonisten, die alles wisten over worstmaken. Voor het verschijnen van gehaktmolens in de 19e eeuw, werd het vlees klein gehakt. Boerewors maken is een persoonlijke en bevredigende (maar tijdrovende) bezigheid, iets wat je niet op de dag van de braai wilt doen. Worst moet, voor de beste smaak en malsheid, enige dagen rijpen in de koelkast, voordat hij wordt bereid.
Bevroren kan hij tot 3 maanden bewaard blijven. boerewors kan ook worden gedroogd.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (430,'soutribbetjes','N','<i>4 personen</i>
1,5- 2 kg rib van lam of varken
1 eetlepel koriander
4 eetlepels grof zout
2 thl bruine suiker
0,5 thl salpeter','2018-09-26 19:09:45.086420','1. Verwijder overtollig vet en zaag de botten door zodat de porties na bereiding eenvoudiger kunnen worden gesneden. Snijd het vet in, zodat het makkelijker smelt.
2. Rooster de korianderzaadjes in een droge koekenpan totdat ze lichtbruin en geurig zijn. Stamp ze fijn in een vijzel en meng ze met zout, bruine suiker en salpeter. Wrijf het mengsel in het vlees en plaats het geheel enkele uren op een rooster op een koele plaats met goede luchtciruclatie.
3. Leg voor het grillen de ribbetjies 30 minuten in koud water om het overtollige zoutmengsel te verwijderen. u kunt het vlees voorkoken om de griltijd te verminderen en het vlees malser te maken. (dit gaat wel ten koste van de smaak)
4. Zorg voor voldoende houtskool voor ongeveer 1 uur. Begin met het vlees hoog boven het vuur te leggen, om het langzaam te laten sudderen en licht te bruinen. Als het vuur minder wordt, plaatst u het rooster dichter bij de kooltjes.
5. Snijd het krokante vlees in vingergrote porties. Serveer ze als snack met citroenpartjes, vor een lichtzure smaak.
Aan Tafel:
Knapperig krokante zoute ribbetjes kunnen worden bereid van lams--of varkensvlees. het recept was bedacht voordat invriezen mogelijk was en vlees werd geconserveerd in pekel, gemaakt van water, salpeter, grof zout en bruine suiker.
In de Karoo is hout voor houtskool schaars, daarom bereiden koks daar een unieke specialiteit, kliprib (steenribbetjes). Deze zijn gebakken tussen roodgloeiende stenen.','/static/img/africa_cooking.jpg',23,2,2,1,NULL,NULL);
INSERT INTO `recipe` VALUES (431,'Kebaps van boerewors en mango met mangosalsa','N','<i> 4 personen</i>
12 stukken boerewors
4 rijpe mango''s
citroenblaadjes
olijfolie
Mango Salsa
1 rijpe mango, ontpit, geschild en in blokjes gesneden
0,25 komkommer, in stukjes en ontdaan van zaadjes
1 kleine ui, gesneden, geblancheerd en uigelekt','2018-09-26 19:09:45.086420','Salsa 
1. Meng de mango, komkommer en ui in een kleine schaal. Meng met een beetje olijfolie. Strooi in een droge koekenpan geroosterde sesamzaadjes als  garnering over de salsa. Bedek de salsa en laat hem goed afkoelen.
Kebabs
Schil de mango''s en snijd het vruchtvlees van de pit. Rijg de stukken aan spiesen met boerewors en citroenblaadjes. Besmeer ze royaal met olijfolie. Gril de Kebabs 6-7 minuten boven niet te hete kooltjes, keer ze regelmatig om totdat ze knapperig en gaar zijn. Serveer  de salsa apart.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (432,'Lamsvlees massala','N','<i> 6 personen</i>
6-12 stukken lams-vlees, lende of bout (1-2 per persoon)
zout en versgemalen zwarte peper
Massala Marinade
125 ml plantaardige olie
4 eetlepels chutney
2 eetlepels citroensap
1 eetlepel geperste knoflook
2 thl gekneusde groene gember
2 thl gemalen koriander
1 thl gekneusde rode spaanse pepers','2018-09-26 19:09:45.086420','1. Snijd de stukken vlees en bestrooi ze met zout en peper.
2. Meng de ingrediënten voor de marinade in een platte, niet metalen schaal. Voeg de stukken vlees toe en wentel ze in de marinade. Bedek de schaal en zet hem circa 4 uur weg. Keer de stukken af en toe.
3. Gril boven een matig heet vuur gedurende 5 minuten tot ze knapperig van buiten en roze van binnen zijn. Serveer met Maleise rijst met erwten en miele wheels.
Aan Tafel
Ofschoon het grillen van vlees niet kenmerkend is voor de Kaaps-Maleise keuken zitten in deze marinade wel hun favoriete smaken.','/static/img/africa_cooking.jpg',23,2,2,1,13,6);
INSERT INTO `recipe` VALUES (433,'Sosaties','N','<i>16 stuks</i>
1 grote lams-bout (2-2,5 kg), ontbeend en in stukken
125 gram gedroogde abrikozen
schapenvet of zwoerdloos doorregen spek
Marinade
2 grote uien, gepeld en in vieren gesneden
125 ml witte wijnazijn
375 ml droge rode wijn
12 citroenbladeren, gekneusd
3-4 dunne plakken groene gember
1 eetlepel bruine suiker
3 eetlepels kerriepoeder
2 eetlepels gemalen koriander
1 thl piment
0,5 thl gemalen kaneel
0,5 thl gemalen komijn
2 thl zout, versgemalen zwarte peper
0,25 thl gemalen kardemom','2018-09-26 19:09:45.086420','1. Leg het lams-vlees in een niet-metalen schaal. Laat de ingrediënten voor de marinade in een gesloten pan 5 minuten sudderen. Koel het mengsel af en bedek het vlees ermee. Bedek de schaal en zet het vlees 3-5 dagen in de koelkast. Keer het een of tweemaal per dag.
2. Doe de gedroogde abrikozen in een schaal, giet er kokend water over en laat circa twee uur staan. Snipper het vet zo dun mogelijk, of snijd het spek in blokjes. Rijg het vet, vlees, abrikozen en uien (uit de marinade) op spiesen. 
3. Leg de sosaties terug in de marinade tot ze worden gegrild. Gril de spiesen 15-20 minuten boven hete kolen en bedruip ze met marinade. Het lams-vlees moet in het midden nog roze zijn.
Aan Tafel:
Herbergen in oud Kaapstad stonden bekend als Sosatie en Rice Houses ter ere van deze heerlijke kebabs. Zoals zoveel gekruide, half geconserveerde gerechten, waren sosaties populair als padkos (reiskost)tijdens lange tochten. Alle soorten vlees zijn geschikt. 
Spek kan worden gebruikt, maar het vet rond schapenieren heeft de fijnste textuur - het smelt en bevochtigt tijdens het bereiden.','/static/img/africa_cooking.jpg',23,2,2,1,13,NULL);
INSERT INTO `recipe` VALUES (434,'Visbraai met abrikozenglazuur','N','<i> 8-10 personen</i>
1 hele vis van circa 3 kg
zout
plantaardige olie
125 ml zachte abrikozenjam
3 eetlepels worcestersaus','2018-09-26 19:09:45.086420','1. Verwijder de kop en snijd de vis in twee filets. Wrijf de vis lichtjes in met zout en zet hem 1-2 uur op een koele plaats om aan de lucht te drogen. 
2. Spoel het overtollige zout af. Bestrijk zowel de huid als het vlees van de vis en een scharnierend rooster rijkelijk met olie. Leg de vis in het rooster.  
3. Meng de jam met de worcestersaus en bestrijk de vleeszijde met het mengsel. Doe dit ruim voor het grillen zodat de smaak in de vis kan trekken. Sluit het rooster en gril de vis, vlees beneden, boven hete kolen tot hij perfect bruin is. Dit duurt circa 5-10 minuten, naargelang de hitte van het vuur. Keer de filets, bedruip ze en gril ze, huid beneden, in 2-3 minuten gaar. Serveer met partjes citroen.
Aan Tafel:
De bevolking van de westkust grilt zijn snoek (een Afrikaanse zeevis) al vele jaren op deze manier. Het stevige, smaakvolle vlees combineert goed met het zure, fruitige glazuur. Elke met de hengel gevangen zeevis is geschikt. Strooi voor een extra aroma verse kruiden op de kolen. De vis kan bij slecht weer ook in de oven worden gegrild.','/static/img/africa_cooking.jpg',23,2,8,1,NULL,NULL);
INSERT INTO `recipe` VALUES (435,'Vijgen in ham','N','Rijpe stevige vijgen
zwoerdloze (doorregen)ham','2018-09-26 19:09:45.086420','1. Schil de vijgen en verpak ze in zwoerdloze ham. Maak de uiteinden met tandenstokers aan elkaar. Gril ze boven hete kolen totdat de ham knapperig is en de vijgen heet zijn.
Aan Tafel:
Tijdens het korte vijgenseizoen is dit een favoriet gerecht voor bij de braai. Dit gerecht kan een dag voor de braai worden gemaakt, mits afgedekt en koel bewaard.','/static/img/africa_cooking.jpg',23,6,7,1,13,NULL);
INSERT INTO `recipe` VALUES (436,'Kreeftbraai','N','<i>4 personen</i>
4 grote, verse kreeften, of kreeftenstaarten
zout en versgemalen zwarte peper
knoflook-kruidenboter','2018-09-26 19:09:45.086420','1. Leg de kreeft met gestrekte staart op zijn buik op een plank. Zet een groot scherp mes over de hele lengte van de rug vanaf het hoorntje tussen de ogen. Druk het mes krachtig neer (of sla er op) om de schaal te splijten. Snijd de staart door. Verwijder de ingewanden, spoel de helften schoon en dep ze droog.
2. Bestrooi de helften met zout en peper en besmeer ze met knoflook-kruidenboter. Leg ze op een ingevette rooster boven gemiddeld hete kolen.
3. Gril de kreeft tot het vlees lichtbruin is. Keer ze om, bedruip ze rijkelijk en gril nog eens 10-15 minuten totdat het vlees ondoorschijnend is en makkelijk uit de schaal los komt.
4. Serveer met mayonaise
Aan Tafel:
Grillen is de aloude manier om kreeft te bereiden - aan het strand tussen lagen vers verzameld zeewier of boven de sintels van een wrakhoutvuurtje. 
Vers (binnen 2 dagen na de vangst) is de beste en - volgens kenners - de enige manier om kreeft te eten. Invriezen gaat ten koste van smaak en textuur.','/static/img/africa_cooking.jpg',23,2,4,1,13,6);
INSERT INTO `recipe` VALUES (437,'Kreeft met Citroengras','Kreeft met Citroengras en koriandercreme. Moet 3 uur marineren!','<i>Voor 6-8 personen</i>
8 grote kreeftenstaarten
9 lange stengels citroengras
4 el olijfolie
2 tl seamolie
1 tl geperste knoflook
1/2 tl gekneusde groene gember
4 el medium-dry sherry

Koriandercreme
1/2 bodje verse korianderbladjes, goed gewassen, gedroogd en fijngesneden
fijn geraspte schil van een 1/2 sinaasappel
3 el sinaasappelsap
125 ml zure room of gewone yoghurt
2 tl sojasaus
1 tl sesamolie
1/4 tl zout','2018-09-26 19:09:45.086420','Koriandercreme
1. Meng de ingredienten en zet in de koelkast
De Kreeften.
2. Verwijder de schaal en aders van de staarten. Snijd de eindjes van de stengels citroengras en verwijder de harde buitenste laag. Snijd ze in handige lengte. Spies de staarten op de stengels em leg ze op een niet metale schaal.

3. Doe het resterende  citroengras in stukjes in een kom. Roer er de olijfolie, sesamolie, knoflook, gember en sherry door. Giet over de kreeft en laat circa 3 uur intrekken.

4. Gril de staarten in circa 6 minuten gaar en lichtbruin boven gemiddeld hete kolen. Serveer met koriandercreme.','/static/img/africa_cooking.jpg',30,7,4,3,13,6);
INSERT INTO `recipe` VALUES (438,'Potbrood','N','<i> 1 brood</i>
400 gram bakmeel
2 x 10 gram instant gedroogde gist
1 thl suiker
1 thl zout
2 eetlepels plantaardige olie
circa 250 ml warm water','2018-09-26 19:09:45.086420','1. Zeef het meel in een grote beslagkom en meng er gist, suiker en zout door. Maak een kuiltje in het midden en giet er de olie en het water is. Kneed tot een glad deeg (afhankelijk van opnamevermogen van het meel kan het nodgi zijn wat extra water toe te  voegen).
2. Kneed dit vervolgens enkele minuten tot een soepel en elastisch geheel. Doe het deeg in een ingevette kom, bedek het luchtig met ingevet plasticfolie (dit voorkomt uitdrogen en u kunt tegeljkertijd zien wat er gebeurt) en laat het op een warme plaats rijzen tot dubbele grootte.
3. Kneed het deeg weer een keer en doe het in een goed ingevette pot. Bedek het als voorheen en laat het op een warme plaats rijzen tot dubbele grootte.
4. Zet de pot op een bed van niet warme kolen (als de pot poten heeft, druk deze dan in de grond). Leg een schep kolen boven op de deksel voor een krokante korst. De baktijd hangt af van de hitte van de kolen - circa 1- 1,5 uur zou voldoende moeten zijn. Als een metalen pin schoon uit het brood komt en als het hol klinkt wanneer er op wordt geklopt dan is het brood gaar. Laat het brood op een rooster afkoelen. Serveer met boter.','/static/img/africa_cooking.jpg',23,6,1,1,NULL,NULL);
INSERT INTO `recipe` VALUES (439,'Kweepeersambal','N','<i>250 ml</i>
1 rijpe kweepeer
zout
1 kleine ui, geraspt
0,5 thl geperste knoflook
1 kleine rode of groene spaanse peper, van zaadlijsten ontdaan en heel fijn gesneden
2 eetlepels suiker
2 eetlepels citroensap','2018-09-26 19:09:45.086420','1. Schil en ontpit de kweepeer. Rasp of snipper hem fijn. Bestrooi de snippers met zout en zet 1-2 uur weg.
2. Spoel ze onder koud stromend water, laat ze uitlekken en droog ze met een schone theedoek. 
3. Meng ze met de overige ingredienten, bedek de sambal en zet hem koel wet tot hij nodig is.
Aan Tafel:
Ooit werden de overvloedige oogsten kweeperen geconserveerd door ze te zouten, drogen en in manden te verpakken. Ze werden ook gekonfijt en, zoals in dit Kaaps-Maleise recept, tot sambal verwerkt. Deze sambal is heerlijk bij curry''s en gerechten met gerookte vis, en kan een dag of twee tevoren worden gemaakt.','/static/img/africa_cooking.jpg',23,5,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (440,'Garnalen in Amandelsaus','Mauritius','<i>Voor 4 Personen</i>

450 gr ongekookte reuzengarnalen
6 dl water
3 dunne plakjes gemberwortel, geschild
2 tl kerriepoeder
2 teentjes knoflook, geperst
15 boter
4 el gemalen amandelen
1 verse groene chilepeper,zonder zaad, fijngehakt
3 el kook- of slankroom
zout en versgemalen peper

Voor de groente
1 el mosterdolie
1 el plantaardige olie
i ui, in ringen
1/2 rode paprika, in dunne reepjes
1/2 groene paprika in dunne reepjes
1 chayote, geschild, in reepjes','2018-09-26 19:09:45.086420','1. Pel de garnalen en doe de schalen, water en gember ij een pan. Laat onafgedekt 15 min. sudderen tot het vocht voor de helft is ingekookt. Zeef alles en gooi de schalen en gember weg.
2. Verwijder de zwarte ader uit de garnalen. Leg ze in een kom en bestrooi met kerriepoeder, knoflook en peper en zout. Zet apart.
3. Verhit de olien in een koekenpan en roerbak de groenten 5 minuten. Breng op smaak met peper en zout. Schep de groenten in een kom en houd ze warm.
4. Wrijf de koekenpan schoon en smelt de boter of margarine. Bak de garnalen 5 minuten tot ze roze zijn. Schep ze op het groentebedje, dek het geheel af en houd het warm.
5. Roerbak de gemalen amandelen en chilipeper een paar seconden in de koekenpan. Voeg bouillion toe en breng aan de kook. Draai het vuur laag en roer de room door de bouillion. Verhit het mengsel nog een paar minuten, maar laat het niet aan de kook komen. Schenk de saus over de groenten en garnalen en serveer','/static/img/africa_cooking.jpg',30,7,4,1,13,7);
INSERT INTO `recipe` VALUES (441,'Bananensambal','N','<i> 4-6 personen</i>
3-4 rijpe bananen
1 teentje knoflook, geperst
1 groene spaanse peper, van zaadlijsten ontdaan en heel fijn gesneden
0,5 bosje verse korianderblaadjes, gewassen, gedroogd en fijngehakt
250 ml yoghurt
1 eetlepel citroensap
zout','2018-09-26 19:09:45.086420','1. Pel de bananen en snijd ze in plakken. Meng de knoflook, spaanse peper, koriander, yoghurt, het citroensap en het zout. Roer er voorzichtig de bananen door. Serveer koel.
 Komkommersambal
Vervang de bananen door een 0,5 komkommer, grof geraspt en goed uitgelekt.
Walnoot-komkommersambal
Vervang de bananen door 100 gram gehakte walnoten, 6 fijngehakte lente-uitjes en een 0,25 komkommer, grof geraspt en goed uitgelekt.','/static/img/africa_cooking.jpg',23,5,7,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (442,'Appel-Muntsaus','N','<i>250 ml </i>
2 grote granny smith appels, geschild, van klokhuis ontdaan en gesneden
250 ml verse muntblaadjes, afgespoeld en drooggedept
2 thl komijnzaad
1 thl zout
0,5 thl groene massala
1 eetlepel citroensap','2018-09-26 19:09:45.086420','1. Doe alle ingredienten in een keukenmachine of blender en pureer ze tot een dikke saus. Serveer koud.
 Aan Tafel:
Deze pittige Indiase saus is snel gemaakt en heerlijk bij een curry of gegrild lams-vlees.','/static/img/africa_cooking.jpg',23,5,7,1,13,6);
INSERT INTO `recipe` VALUES (443,'Groente-Atjar','','<i> 1 liter</i>
750 gram gemengde groenten (uien, bloemkool, broccoli, rode, gele of groene paprika, worteltjes, komkommer, sperciebonen)
geschilde teentjes van 1 bol knoflook
Inmaakmengsel
500 ml wijn-of moutazijn
200 ml water
2 eetlepels bruine suiker
5 dunne plakjes groene gember
1 thl zout
1 thl zwarte peperkorrels
1 thl kurkuma (koenjit)','2018-09-26 19:09:45.086420','1. Snijd alle groenten in even grote stukken - in plakken, reepjes of roosjes - zodat ze gelijkmatig koken. Meng de ingredienten van het inmaakmengsel in een grote pan. Sluit de pan en breng het mengsel aan de kook. Voeg de gesneden groenten toe en laat 4-5 minuten zachtjes koken, zonder deksel, tot de groenten gaar maar nog knapperig zijn.
2. Laat de atjar een beetje afkoelen en vul er hete, gesteriliseerde potten mee. Sluit de potten goed af en zet ze op een koele, donkere plaats. Atjar verbeterd mettertijd van smaak, maar eenmaal geopend moet hij koel worden bewaard.
 Aan Tafel:
Voor deze atjar geldt: hoe jonger en verser de gebruikte groenten, des te beter het resultaat. Aan de atjar kunnen ook vruchten en noten worden toegevoegd, zoals walnoten, geblancheerde amandelen, stukjes abrikoos of partjes naartjie (manderijn)
Laat u bij het maken van dit recept leiden door kleur, textuur en beschikbaarheid van de ingredienten.','/static/img/koken.jpg',23,5,6,1,12,NULL);
INSERT INTO `recipe` VALUES (445,'Pindasaus','N','200 gr pindapasta
1/2 liter water
chilipeper, fijngehakt, na smaak
3 tomaten,ontpeld, ontpit, in blokjes
3 middelgrote uien, fijn gehakt
4 el arachideolie
3 teentjes knoflook
zout','2018-09-26 19:09:45.086420','1. Plaats het water op een vuur. Zodra het lauw is, los je er de pindapasta in op. Laatrusten.

2. Fruit de uien in de warme olie tot ze glazig zijn. Voeg al roerend de tomaten de fijngehakte knoflook en de cilipeper toe.

3. Voeg de opgeloste pindapasta en wat zout toe. Laat het geheel 20 minuten stoven op een zacht vuurtje. Roer geregeld om te voorkomen dat de saus aanbakt.','/static/img/africa_cooking.jpg',30,5,5,4,13,8);
INSERT INTO `recipe` VALUES (446,'avacadosaus','De saus smaakt heerlijk bij salades en koud blank vlees.','<i>Voor 6 Personen</i>
1 zeer rijpe avocado
4 el room
2 el citroensap
1 el olie
1/2 el knoflook, fijngehakt
1/2 el suiker
enkele druppels tabasco
zout','2018-09-26 19:09:45.086420','1. Maak de avocado schoon, doe hem in een kom en besprenkel hem meteen met het citroensap om te voorkomen dat hij zwart kleurt. Voeg de andere ingredienten toe en mix alles. Kruid naar smaak voor je de saus serveert.','/static/img/africa_cooking.jpg',30,5,6,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (447,'chutney van  gember en limoen','Smaakt lekker bij gegrilde gerechten en kerrieschotels','<i>Voor 10 Personen</i>
10 cl sinaasappelsap
3 el citroensap
1 grote ui, in dunne plakjes gesneden
2 el knoflook, fijngehakt
2 el verse gember wortel, fijngehakt
1 laurierblad
4 kruidnagel
1 dl wijnazijn
100 gr suiker
60 gr rozijnen, geweekt in 2el rum','2018-09-26 19:09:45.086420','1. Schil de limoenen en pers ze uit. Bewaar het vruchtvlees. Meng het limoensap met de 2 andere sappen. Doe de sappen in een pan en voeg alle andere ingredienten toe, met uitzondering van het vruchtvlees. Laat ongeveer 20 minuten op en zacht vuur koken.

2. Haal van het vuur, voeg het vruchtvlees toe en laat het geheel afkoelen. Chutney in de koelkast bewaren','/static/img/africa_cooking.jpg',30,5,5,4,13,8);
INSERT INTO `recipe` VALUES (448,'Krokodillensteak met kruiden','N','<i>Voor 4 Personen</i>
4 Krokodillensteaks
1 grote ui, grof gesnipperd
1 wortel
1 prei
1 chayote
4 tomaten, gepeld en ontpit
zout
1 chilipeper
2 kruidnagels
1/2 tl knoflook, fijngehakt
1 mespuntje koriander poeder
2 el olie
25 cl water','2018-09-26 19:09:45.086420','1. Snijd de wortel en de prei in schijfjes en spoel ze goed schoon in water. Maak de chayote schoon, snijd hem doormidden, verwijder het hard en spoel hem schoon. Hak hem in grote blokken.

2. Doe de ui in de hete olie in een koekepan, bak het enkele minuten en voeg de wortel, prei en tomaten toe. Voeg enkele minuten later ook de krok-steaks, de kruiden en het zout toe.

3. Giet 25 cl water bij het geheel en voeg de chayote toe. Plaats een deksel op de pan en laat het geheel 10 minuten stoven. De chayote mag niet helemaal zachtgekookt worden.

4. Voeg een beetje citroensap toe bij het opdienen.','/static/img/africa_cooking.jpg',30,2,2,3,13,8);
INSERT INTO `recipe` VALUES (449,'Mango-Atjar','N','<i>1 liter</i>
1 kg (5-6) groene, onrijpe mango''s
1 ui, in dikke plakken gesneden
100 gram gesnipperde amandelen
1 thl zout
250 ml suiker
375 ml mout-of wijnazijn
2 groene of rode spaanse pepers, zonder zaadlijksten en fijngesneden
2 eetlepels gekneusde groene gember
1 eetlepel geperste knoflook','2018-09-26 19:09:45.086420','1. Schil en ontpit de mango''s en snijd ze in grote stukken. Doe de mango met de uien en amandelen in een grote pan. Bestrooi met zout. Voeg de rest van de ingredienten toe, roer voorzichtig, slut de pan en laat 15 minuten koken. 
2. Haal de deksel van de pan en laat het mengsel nog eens 10-15 minuten koken, onder af en toe roeren, tot de saus zichtbaar dikker wordt.
3. Doe het warme mengsel in een hete, gestriliseerde pot en sluit deze af. Bewaar op een koele donkere plaats. Bewaar de pot na opening in een koelkast.
Aan Tafel
Dit javaanse recept is een van de oudste genoteerde recepten voor atjar en iedere streek kent zijn eigen variant. De vroegste Kaaps-maliese mango-atjar verschilt van dit modernere Indiase recept. De vruchten werden ontpit, gesneden en enkele dagen geweekt in water, vervolgens gedroogd en gekruid met in olie gebakken knoflook, fenegriek, kurkuma, spaanse peper en kerriepoeder.','/static/img/africa_cooking.jpg',22,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (450,'Blatjang','N','<i>2,5 liter</i>
250 gram gedroogde abrikozen, fijngehakt
250 gram pitloze rozijnen
3 liter wijnazijn
4 grote uien, fijngehakt
4 tenen knoflook, geperst
500 gram bruine suiker
200 gram amandelsnippers
2 eetlepels zout
45 ml gemalen gember
2 eetlepels koriander
2 eetlepels mosterdzaadjes
2 thl chilipoeder','2018-09-26 19:09:45.086420','1. Meng de abrikozen, rozijnene en azijn in een pan van 5 liter. Laat de vruchten een nacht weken. Of, bij minder beschikbare tijd, sluit de pan, breng het mengsel aan de kook, zet het weg en laat het ongeveer 2 uur staan.
2. Voeg de overige ingredienten toe en kook alles zonder deksel boven een niet te hoog vuur. Roer aanvankelijk af en toe, en constant tegen het einde van de bereidingstijd als de hoeveelheid tot circa eenderde geslonken is en de blatjang mooi dik is.  Dit duurt 1,5 -2 uur.
3. Laat een beetje in het vriesvak afkoelen om te testen of de consistentie goed is. Giet de blatjang in hete, gesteriliseerde potten, sluit ze en bewaar ze op een koele, donkere plaats.
Aan Tafel:','/static/img/africa_cooking.jpg',23,6,7,1,13,6);
INSERT INTO `recipe` VALUES (451,'Gekonfijte groene vijgen','N','<i> 2 potten van 500 gram</i>
1 kg stevige, rijpe  groene vijgen (steeltjes intact)
1 eetlepel gebluste kalk
2,5 liter koud water
1,2 kg suiker
1 kaneelstokje
2 eetlepels citroensap','2018-09-26 19:09:45.086420','1. Snijd een kruis aan de basis van iedere vijg. Meng de kalk in het water, voeg de vijgen toe en laat ze een nachts staan. Hierdoor blijven de vruchten zacht en de schil stevig. Spoel ze zorgvuldig af.
2. Zet de vijgen in een pan onder schoon water en breng aan de kook. Kook ze zacht in circa 15 minuten. Haal ze uit het water en laat ze uitlekken. 
3. Vul het water aan tot 2 liter. Voeg suiker, kaneel en citroensap toe en breng aan de kook. Roer tot de suiker is opgelost.Voeg een voor een de vijgen toe en kook ze circa 45 minuten tot ze doorschijnend zijn. 
4. Leg de vijgen in een hete, droge, gesteriliseerde pot en vul hem met siroop.','/static/img/africa_cooking.jpg',23,6,7,1,NULL,NULL);
INSERT INTO `recipe` VALUES (452,'Gekonfijte sinaasappels','N','<i> voor 2 potten van 500 gram</i>
1 kg sinaasappels
zout
1 kg suiker
1,5 liter water
3 eetlepels citroensap','2018-09-26 19:09:45.086420','1. Rasp het oranje van de schil, maar laat het witte velletje zitten (de siroop kan zo de vrucht binnendringen). Wrijf de vruchten in met zout om verkleuren te voorkomen en leg ze 30 minuten in een schaal. Overgiet ze met kokend water en laat ze staan tot het water koud is. Spoel de sinaasappels grondig af, leg ze terug in de schaal en zet ze onder koud water. Laat ze een nacht staan om de bittere smaak te verwijderen.
2. Snijd een diep, smal kruis in de basis van iedere sinaasappel en verwijder de pitjes door de vruchten zachtjes tussen de handen te rollen en zachtjes te drukken. leg de sinaasappels in een schaal met kokend water tot de buitenste laag zacht is (circa 20 minuten). Als er gemakkelijk een lucifer kan worden in gedrukt zijn ze goed. Naar wens kunnen de vruchten worden gehalveerd.
3. Breng in een grote pan suiker, water en citroensap langzaam aan de kook en roer tot de suiker is opgelost. (laat de siroop niet koken voordat de suiker is opgelost). Voeg het fruit toe en kook het circa 60 minuten tot de vruchten doorschijnend zijn en de siroop ingedikt. Verwijder af en toe het schuim van het oppervlak.
4. Als de siroop eerder klaar is dan het fruit, voeg dan dunne siroop toe. Als het fruit eerder klaar is dan de siroop, haal dan de vruchten uit de pan en laat de saus op hoog vuur indikken en voeg op het laatst de vruchten weer toe.
5. Haal het fruit met een schuimspaan uit de siroop en doe ze in hete, droge gesteriliseerde potten. Plaats halve sinaasappels met het snijvlak tegen het glas. vul tot de rand met kokende siroop en laat het afkoelen. Bedek met waspapier gedrenkt in cognac. Sluit de potten
Aan Tafel
Soms werden voor het inmaken aardenwerken potten gebruikt die met een ossenblaas werden afgesloten. Sevilla-sinaasappels zijn de beste en het lekkerst om te konfijten. Maar ze zijn slechts kort leverbaar en elke andere soort kan worden gebruikt.','/static/img/africa_cooking.jpg',23,6,7,1,13,6);
INSERT INTO `recipe` VALUES (453,'Aardbeienmousse','N','<i>8 personen</i>
500 gram aardbeien, gewassen en zonder kroontjes
125 ml basterdsuiker
200 ml yoghurt
4 eetlepels port of zoete sherry
2 eetlepels (20 gram) poedergelatine
250 ml slagroom','2018-09-26 19:09:45.086420','1. Pureer de aarbeien in een keukenmachine samen met de basterdsuiker. Voeg de yoghurt toe.
2. Verwarm de port of sherry (niet laten koken), strooi er de gelatine over en laat deze de vloeistof opzuigen. Roer goed door en laat afkoelen. Roer de gelatine door het aardbeienmengsel.
3. Klop de slagroom stijf en schep deze voorzichtig met een grote lepel door het aarbeienmengsel. Giet de mousse in glazen. Zet koel weg om op te stijven. Garneer naar believen met slagroom, hele aardbeien en twijgjes tijm.
Aan tafel:
De beroemde bloemenverkopers van Kaapstad, waarvan de bloemen ooit Adderley street opfleurden, werden voorafgegaan door aardbeien verkopers. Behalve voor heerlijke recepten, werden de bladeren van aardbeistruiken gebruikt als huismiddeltje voor wittere tanden - ze verwijderen tandsteen. tot aan het begin van de 20st eeuw was gelatine onbekend. Daarvoor gebruikte men visslijm en zeewier (agar-agar) om koude pudding op te stijven.','/static/img/africa_cooking.jpg',23,3,7,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (454,'gemengde bessen met indiase kaas','N','<i>4-6 personen</i>
500 gram gemengde bessen (aardbeien, kaapse kruisbessen, taybessen, blauwe bessen)
Indiase kaas
50 gram gehakte amandelen
250 gram roomkaas of cottage cheese
125 ml basterdsuiker
0,5 thl nootmuskaat
1 thl kardemom
250 ml slagroom','2018-09-26 19:09:45.086420','1. Was de bessen en verwijder de steeltjes. Doe ze in hoge glazen of dessertschaaltjes. Bedek ze en zet ze in de koelkast.
 Indiase kaas
2. Rooster de amandelen in een droge koekenpan. Laat ze afkoelen. Klop de roomkaas of cottage cheese samen met de basterdsuiker, nootmuskaar en kardemom tot alles goed gemengd is. Klop de slagroom stijf en schep deze door de amandelen.
3. Haal de bessen uit de koelkast en bedek ze rijkelijk met de Indiase kaas.
Aan tafel:
In vervlogen dagen vond metn bramen alleen in Kwa-Zulu-Natal. Deze waren tijdens de boerenoorlog met het paardenvoer meegekomen uit engeland.
Tegenwoordig kweekt men allelei bessen op Kaap Boland. Hier lijkt het klimaat en de grond op de streken in Zuid-europa, waar de vruchten het best gedijen. De bessen worden begeleid door een traditioneel indiaas dessert - seekhund of sikhund. dit kan ook zonder de vruchten worden gesreveerd.','/static/img/africa_cooking.jpg',23,3,7,1,13,6);
INSERT INTO `recipe` VALUES (455,'Kip met kerrie en gember','N','<i>Voor 4 Personen</i>
3 el Olie 
400 gr kipfilet in reepjes
500 gr kokosmelk
2 el verse gemberwortel, fijngehakt
1 tl knoflook, fijngehakt
1 kaneelstokje
1 steranijs
2 el kerriepoeder
1 grote aubergine, in stukken
1 grote ui, gesnipperd
zout','2018-09-26 19:09:45.086420','1. Verhit de olie in een pan en  bak de ui goudbruin. Voeg de knoflook toe en laat enkele minuten bakken. Voeg de kerriepoder toe en roer het geheel goed. Voeg na 1 minuut 3 el water toe, om de bittere smaak te laten verdwijnen.

2. Giet de kokosmelk en alle kruiden in de pan. Zodra de melk kookt, voeg je de kip en de aubergine toe en laat je het geheel 10 minuten koken.

3. Serveren met rijst, mangochutney, yoghurt met schijfjes bannan en zoetzure komkommer.','/static/img/africa_cooking.jpg',30,2,3,4,13,8);
INSERT INTO `recipe` VALUES (456,'Haantje gegrild op makala','makala is houtskool','<i>Voor 4 Personen</i>
2 Haantjes of 4 piepkuikens of kippen vleugeltjes circa 400 gr
2 citroenen, het sap
1 mp chilipeperpasta
tijm
8 el gember marinade','2018-09-26 19:09:45.086420','1. Verdeel de haantjes in de lengte van de rug in 2 helften. Smeer ze in met de marinade en het citroensap en laat 1 uur rusten in de koelkost.

2. Rooster de haantjes gedurende 35 minuten op de bbq.

3. Serveer met een saus met gember en citroen.','/static/img/africa_cooking.jpg',30,2,3,4,13,8);
INSERT INTO `recipe` VALUES (457,'Gember marinade','De marinade kan 1 week in de koelkast bewaart worden','<i>Voor 1 liter Marinade</i>
70 cl Arachide olie 
100 gr verse gemberwortel, gehakt 
7 sjalotten, gesnipperd 
2 middelgrote uien, gesnipperd 
2 el provencaalse kruiden 
2 teentjes knoflook, geperst 
1 el zout 
1 tl chilipeperpasta','2018-09-26 19:09:45.086420','1. Meng de ingredienten tot je een smeuige massa krijgt.

2. Voor Vis marinade voeg je nog citroensap toe','/static/img/africa_cooking.jpg',30,5,5,3,13,8);
INSERT INTO `recipe` VALUES (459,'kip met yassa','Senegal','<i>Voor 4 Personen</i>
1 grote kip 
7 grote uien, in ringen gesneden
4 limoenen, het sap 
10 cl arachide olie 
1 grote chilipeper 
2 el mosterd 
5 dl water 
2 laurierblaadjes 
zout','2018-09-26 19:09:45.086420','1. Verdeel de kip in stukken en smeer in met de mosterd en limoensap. Laat 30 min. rusten

2. Verhit de olie en braad de stukken kip aan. Als ze mmoi bruin zijn, leg ze dan in een kookpot, samen met de ui en de mosterd en de laurierblaadjes. Voeg het water en de kruiden toe, plaats een deksel en laat 40 minuten koken. ( Roer na 20 minuten het geheel door)

3. Serveer met witte rijst','/static/img/africa_cooking.jpg',30,2,3,10,13,8);
INSERT INTO `recipe` VALUES (460,'Eendenfilet met mango','N','<i>Voor 4 Personen</i>
3 eendenfilets 
4 el mangochutney 
1 rijpe mango, ongepeld en in schijfjes gesneden 
4 el water 
gemale zwarte peper 
zout','2018-09-26 19:09:45.086420','1. Breng diagonaal enkele inkepingen aan in het vel van de eendenfilets en bestrooi langs beide kanten met peper en zout. Leg de filets met het vel neer beneden in een warme pan. Bak gedurende 6-7 minuten op een hoog vuur. Laat daarna nog 10 miniuten bakken op een laag vuur. Draai de stukken om en bak de andere zijde nog 5 minuten. Leg het vlees opzij.

2.  de saus 
Los de chutney op in het water, verwarm dit mengsel en laat indien nodig inkoken.

3. Snijd de eendenfilets in schijven, schik ze samen met de mango op een schaal. Overgiet het met de saus

4. Serveer met schijfjes zoute aardappel. gebakken in de oven.','/static/img/africa_cooking.jpg',30,2,3,4,13,8);
INSERT INTO `recipe` VALUES (461,'Rundvlees met gombo''s','N','<i>Voor 4 Personen</i>
700 gr Gombo''s 
800 gr runderentrecote 
1 dl arachide olie 
2 tomaten, ontvelt, ontpit, in blokjes 
1 teentje knoflook, geperst 
3 dl runderbouillon 
1 grote ui, gesnipperd 
tijm 
laurier 
1 hele chilipeper 
zout','2018-09-26 19:09:45.086420','1. Verwijder de stelen van de gombo''s en snijd ze in dikke schijven.

2. Snijd het vlees in blokjes. Bak de stukken bruin en leg ze opzij.

3. Bak de uien en de knoflook bruin in de pan waar net het vlees uit is. Voeg daarbij de tomaten en de gombo''s. Roer goed, voeg wat zout toe en laat 5 minuten stoven op een zacht vuur. Voeg het vlees toe en de chilipeper, bouillon, tijm en de laurier. Laat het geheel nog 30 minuten zachtjes doorkoken.','/static/img/africa_cooking.jpg',30,2,2,10,13,8);
INSERT INTO `recipe` VALUES (462,'Katvis met saus','N','<i>Voor 4 personen</i>
4 steaks van 200 gr of filets, katvis, meerval
4 el palmolie 
2 tomaten, in blokjes 
1 middelgrote ui, gesnipperd 
1 tl kurkuma 
zout 
chilipepers, naar smaak 
3 dl water','2018-09-26 19:09:45.086420','1. Verhit de de palmolie in een steelpan. Als ze van kleur verandert en geel wordt, voeg je de ui toe, laat enkele minuten fruiten. Als de ui glazig wordt, voeg je de tomaten en de kurkuma toe, die je 3 tot 4 minuten bakt.

2. Bak de steaks om en om, voeg de saus toe. Voeg het zout, chilipepers en het water toe. Laat het geheel eerst 5 minuten hard koken, zet vervolgens het vuur lager en laat 10 minuten sudderen.
Indien nodig de vis verwijderen en de saus laten inkoken.','/static/img/africa_cooking.jpg',30,2,8,3,13,8);
INSERT INTO `recipe` VALUES (463,'gepaneerde katvis','N','<i>Voor 4 Personen</i>
800 gr vis files, in dunne sneetjew 
2 eiwitten 
8 el paneermeel 
zout, peper 
2 el boter 
3 el olie 
1/2 tl paprikapoeder','2018-09-26 19:09:45.086420','1. Kruid de vis met peper en zout en bestrooi met paprikapoeder.

2. Klop met een vork het eiwit los in een diep bord. Strooi het paneermeel in een plat bord. Wentel de visfilet sneetjes eerst in het paneermeel, daarna in het eiwit en dan weer door het paneermeel.

3. Verhit de olie en de boter in de pan en bak de vis gedurende 4 minuten aan elke kant.

4. Serveer met een schijfje citroen.','/static/img/africa_cooking.jpg',30,2,8,4,13,8);
INSERT INTO `recipe` VALUES (464,'Gemarineerde tilapiafilet','N','<i>Voor 4 personen</i>
400 gr tilapiafilet 
1 dl kokosmelk 
2 limoenen, het sap 
2 cm gemberwortel, fijngehakt 
verse dille 
zout','2018-09-26 19:09:45.086420','1. Snijd de filets in sneetjes van 1/2 cm leg ze op een bord met limoensap. Kruid ze met zout, voeg de gember toe en laat 30 minuten rusten op een koele plaats. Voeg de kokosmelk toe, en laat opnieuw 15 minuten rusten.

2. laat de filets uitlekken, schik ze op een bord of of kopje, en versier ze met de dille, citroenschijfje en tomaten.','/static/img/africa_cooking.jpg',30,7,8,3,13,8);
INSERT INTO `recipe` VALUES (465,'Zomerpudding','N','<i>6 personen</i>
1 kg rijpe gemengde vruchten
125 ml basterdsuiker
1 kaneelstokje
1 eetlepel citroensap
4 eetlepels water
10-12 sneetjes witbrood, 1 dag oud, zonder korst','2018-09-26 19:09:45.086420','1. Maak de vruchten schoon en spoel ze voorzichtig onder koud water. Doe ze in een pan met de basterdsuiker, kaneel, het citroensap en water. Verwarm ze zachtjes tot de suiker oplost en het sap gaat lopen. Giet de vruchtensiroop af in een maatbeker en verwijder het kaneelstokje.
2. Bekleed een puddingvorm van 1 liter met brood. Snijd de sneetjes in de juiste vorm (rond voor de bodem en wigvormig voor de zijkanten). Lepel het fruit in de vorm. Snijd meer brood en bedek hiermee de bovenkant. Giet de vruchtensiroop over de pudding en bedek de puddingvorm met huishoudfolie en leg er een schaal met iets zwaars op als pers. Zet de pudding een nacht in de koelkast.
3. Stort de pudding op een bord en giet er de resterende siroop over. Garneer met blaadjes munt en verse vruchten.
Aan Tafel
Het romantische verhaal gaat dat dit dessert uitgevonden is in Engeland als een viering van de zomer, als de tuinen vol rijp fruit staan.
Vroeger bereidde men in de kaapkolonie de pudding van moerbeien en het liefst alleen van gevallen vruchten - ongetwijfeld de zoetste. De pudding moet een dag van te voren worden bereidt, zodat het brood al het fruitsap heeft opgenomen en de pudding mooi stevig is geworden. Gebruik voor de pudding bijvoorbeeld rijpe frambozen, taybessen, ontpitte kersen, bramen, moerbeien en aardbeien.','/static/img/africa_cooking.jpg',23,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (466,'Khulfi','N','<i> voor 2 liter; 8-10 personen</i>
500 ml volle melk
4 eetlepels maizena
100 gram gehakte amandelen
50 gram pistachenootjes, gepeld en fijngehakt
0,25 thl gemalen kardemom
397 gram blik gecondenseerde melk
1 eetlepel vanille-essence of rozenwater','2018-09-26 19:09:45.086420','1. Meet 125 ml melk af in een beker en vermeng het met de maizena. Rooster de noten in een droge koekenpan. Koel ze. Breng de overige melk aan de kook met de kardemom. Voeg het maizenamengsel toe en kook het 3-4 minuten, roer het goed tot het dik wordt.
2. Haal van het vuur en  meng met de gecondenseerde melk, noten en vanille-essence of rozenwater. Giet het mengsel in een metalen kom en zet het in de diepvriezer. Roer het om de 30 minuten door. Na een paar uur is het ijs te stijf om geroerd te worden, meng het dan in een keukenmachine of met een mixer romig. Laat het weer bevriezen en herhaal het proces enkele keren. Bevries
Aan Tafel:
Roomijs is een goede manier om pittige maaltijden af te sluiten. Vandaar dat veel indiase restaurants roomijs op het menu hebben staan. Gecondenseerde melk is verkrijgbaar in blik. Haal het ijs enige tijd voor het serveren uit de vriezer','/static/img/africa_cooking.jpg',23,3,5,1,13,6);
INSERT INTO `recipe` VALUES (467,'Souskluitjies','N','<i>6 personen</i>
500 ml bloem
4 eetlepels basterdsuiker
1 eetlepel bakpoeder
0,25 thl zout
1 thl gemalen kaneel
50 gram boter, in kleine blokjes gesneden
3 eieren
200 ml melk
1 thl vanille-essence
gesmolten boter
kaneelsuiker','2018-09-26 19:09:45.086420','1. Zeef de bloem met de basterdsuiker, de bakpoeder, het zout en het kaneel in een kom. Roer er de stukjes boter door tot een korrelige massa. Meng de eieren met de melk en vanille-essence. Meng dit door het bloemmengsel tot een dik beslag.
2. Vul een pan half met water en breng het aan de kook. Laat, met korte tussenpozen, eetlepels van het beslag in het water glijden. Sluit de pan en kook 6-7 minuten boven hoog vuur. Laat de deksel op de pan, anders blijven de souskluitjies plat. Haal ze met een schuimspaan uit het water en leg ze op warme dessertschalen. Ga door tot al het beslag op is.
3. Giet een beetje gesmolten boter over de souskluitjies en bestrooi ze met kaneelsuiker. Serveer warm.
 Aan Tafel:
Souskluitjies (ookwel melkkluitjies of melkfrummeltjies genoemd) waren vaak onderdeel van een huwelijksmenu bij de nederlanders in de kaapkolonie.
Dit recept voor ''Ouma van Wyk''s trouwdagsouskluitjies'' stamt uit 1912. Ze werden gefotografeerd in Onze Rust bij Bloemenfontein, Vrijstaat.','/static/img/africa_cooking.jpg',23,3,5,1,13,6);
INSERT INTO `recipe` VALUES (468,'Scampi met banaan en kerriesaus','N','<i>Voor 6 personen</i>
36 scampi 
1 el droge sherry 
2 rijpe bananen 
1/3 tl knoflook, fijngehakt 
1 dl melk 
2 el madras kerriepoeder 
2 el limoensap 
zout,peper 
1 el bieslook','2018-09-26 19:09:45.086420','1. Mix de gepelde bananen. Voeg het limoensap, melk, knoflook, kerrie en het zout. Mix alles tot je een smeuïge massa krijgt.

2. Verwarm de sherry in een pan. Zodra de sherry kookt voeg je de bananen saus toe. Verwarm enkele minuten op een zacht vuur.

3. Maak de scampi schoon zonder de staarten te verwijderen. Open de rug om het darmkanaal te verwijderen.

4. Verhit de olie in een grote pan en leg er de scampi in. Kruid met peper en zout. Bak ze 2 minuten. Leg opzij.

5. Schik de scampi op een schaal en overgiet ze met de saus en bestrooi met bieslook.','/static/img/africa_cooking.jpg',30,6,4,4,13,8);
INSERT INTO `recipe` VALUES (469,'Hertzogkoekjes','N','<i>24-36 stuks</i>
kortdeeg van zelfrijzend bakmeel
450 gram zachte abrikozenjam
het wit van 4 eieren
250 ml basterdsuiker
0,5 thl vanillen-essence
500 ml geraspte kokos','2018-09-26 19:09:45.086420','1. Rol het korstdeeg uit op een met bloem bestrooid werkvlak en steek er rondjes uit. Bekleed de ingevette gebaksvormpjes met de deegrondjes en vul ze met abrikozenjam.
2. Verwarm de oven op 180 C. Klop het eiwit stijf, voeg de basterdsuiker toe in porties van 4 eetlepels en klop goed na iedere toevoeging. Roer er de vanille-essence en kokos door. Bedek ieder koekje met het mengsel. Bak ze 15 minuten tot de bovenkant goudbruin is. Laat ze een paar minuten afkoelen in de vorm, haal ze er uit en laat ze op een rooster afkoelen.
Aan Tafel:
Deze zijn vernoemd naar generaal J.B.M. Hertzog, tussen 1924 en 1939 de eerste permier van de unie van zuid-afrika.','/static/img/africa_cooking.jpg',23,3,5,1,13,6);
INSERT INTO `recipe` VALUES (470,'gebakken appels met gekarameliseerde peren','N','<i>6 personen</i>
6 granny smith-appels
36 hele kruidnagels
3 eetlepels medium-dry sherry
80 ml bruine suiker
100 gram boter, in blokjes gesneden
Gekarameliseerde peren
125 ml sinaasappelsap
4 peren, geschild, zonder klokhuis, gesneden
1 kaneelstokje
4 eetlepel vloeibare honing
4 eetlepel bruine suiker
3 thl geraspte sinaasappelschil','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 160C. Vet een kleine, diepe ovenschaal in. Verwijder de klokhuizen van de appels met een appelboor en snijd de schil rond het midden in. Maak in iedere appel zes kleine inkepinkjes en stop er de kruidnagels in. Zet de appels naast elkaar in de ovenschaal. Overgiet ze met sherry en strooi er de bruine suiker over. Stop circa 1 thl boter in elke appel en bak ze, onbedekt, 60 minuten. Begiet ze enkele malen met de siroop.
Peren Verwarm het sinaasappelsap in een koekenpan. Voeg peren, kaneel, honing, suiker, sinaasappelrasp en resterende boter toe. Kook dit alles krachtig, onbedekt, tot de peren zacht zijn en de saus licht glazig is ingedikt.
Plaats de warme appels op een dienschaal en leg er de peren rond. Serveer met custardvla of slagroom.','/static/img/africa_cooking.jpg',23,3,7,1,13,6);
INSERT INTO `recipe` VALUES (472,'Mais koekjes','Of je nu vegetariër bent of niet, ze zijn om je vingers bij af te likken!','<i>Voor 4 Personen</i>
300 gr mais, uit blik, uitgelekt 
200 gr tarwemeel 
2 dl melk 
1 tl knoflook, fijngehakt 
1 el bladpeterselie, fijngehakt 
1 tl verse gemberwortel, fijngehakt 
2 hele eieren 
1/2 zakje chemische gist baking powder 
2 dl maisolie','2018-09-26 19:09:45.086420','Gebruik verse mais of mais uit blik. Laat de mais uit blik voor gebruik goed uitlekken.

1. Meng alle ingrediënten, behalve de mais. Laat alles 15 minuten rusten. Voeg daarna de mais toe.

2. Verhit 2 el olie in de pan en schep er meet een eetlepel hoopjes van het mengsel in. Bak het mensel enkele minuten op een zacht vuur, draai het om en bak ook de andere kant goudbruin. Zorg er voor dat het mengsel goed doorbakken is. 

3. Serveer als garnituur bij vlees of met een salade.','/static/img/africa_cooking.jpg',30,6,6,4,13,8);
INSERT INTO `recipe` VALUES (473,'Gebakken garnalen','N','<i>4 personen</i>
450 gram ongepelde reuzegarnalen
2 eetlepels olijfolie
25-40 gr boter
2 teentjes knoflook, geperst
1 thl komijnpoeder
0,5 thl gemberpoeder
2 thl paprikapoeder
0,25 thl cayennepoeder
partjes citroen en takjes verse koriander, voor de garnering','2018-09-26 19:09:45.086420','1. Trek de kop, schalen, poten en staart los van de garnalen. Snijd met een scherp mes langs de rug van de garnalen en verwijder de donkere ader.
2. Verhit de olie en boter in een koekenpan. Voeg de knoflook toe zodra de boter begint te sissen en bak die circa 30 seconden.
3. Voeg het komijn, gember- en paprikapoeder en de cayenepeper toe. Roerbak alles een paar seconden en voeg dan de garnalen toe. Roerbak ze 2-3 minuten op hoog vuur tot ze roze zijn.
4. Verdeel de garnalen over vier warme borden en schep er wat boter en specerijen op. Garneer het gerecht met partjes citroen en koriander.','/static/img/africa_cooking.jpg',30,7,4,1,13,7);
INSERT INTO `recipe` VALUES (474,'Gebakken braam in kokossaus','N','<i>4 personen</i>
4 middelgrote bramen
sap van 1 citroen
1 thl knoflookpoeder
zout en versgemalen zwarte peper
plantaardige olie, voor het bakken
 voor de kokossaus
4,5 dl water
2 plakjesw verse gemberwortel, geschild
25-40 gr santen of 4-6 eetlepels dikke kokosmelk
2 eetlepels plantaardige olie
1 rode ui, in ringen
2 teentjes knoflook, geperst
1 groene chilipeper, zonder zaad, in stukjes
1 eetlepel fijngehakte verse koriander.','2018-09-26 19:09:45.086420','1. Snijd de vissen in tweeen en sprenkel het citroensap erover. Bestrooi met knoflookpoeder, zout en peper. Laat de vis op een koele plaats een paar uur marinern.
2. Verhit wat olie in een koekenpan. Dep de vis droog en bak hem 10 minuten.; keer de vis eenmaal om. Zet apart.
3. Voor de saus: doe het water en de plakjes gember in een pan. Breng het water aan de kook en houdt het tegen het kookpunt aan tot het vocht is ingekookt tot 3 dl. Schep de gember uit de pan, maar gooi hem niet weg. Voeg de santen (of kokosmelk) toe en roer tot die is opgelost.
4. Verhit de olie in een wok of pan en fruit de ui en knoflook 2-3 minuten. Voeg de bewaarde gember, kokosbouillion, chilipeper en koriander toe. Roer alles goed en leg dan voorzichtig de vis erin. Kook de vis in 10 minuten zachtjes gaar. Schep hem in een voorverwarmde schaal. Breng de saus op smaak en schenk die over de vis. Serveer meteen.','/static/img/africa_cooking.jpg',31,2,8,1,13,7);
INSERT INTO `recipe` VALUES (475,'Tanzaniaanse viscurry','N','<i>2-3 personen</i>
1 grote snapper of brasem
1 citroen
3 eetlepels plantaardige olie
1 ui, gesnipperd
2 teentjes knoflook, geperst
3 eetlepels kerriepoeder
400 gram stukjes tomaten uit blik
1 flinke eetlepel pindakaas, bij voorkeur ongezouten
0,5 groene paprika, in stukjes
2 plakjes verse gemberwortel, fijngehakt
1 verse groene chilipoeder, zonder zaad, fijgehakt
ca 6 dl visbouillion
1 eetlepel fijngehakte verse koriander
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Strooi peper en zout over de vis en knijp er een halve citroen boven uit. Dek af en laat 2 uur marineren.
2. verhit de olie en fruit ui en knoflook 5-6 minuten. Draai het vuur laag en voeg het kerriepoeder toe. Roer alles goed.
3.Roer de tomaten erdoor en voeg de pindakaas toe. Meng alles goed. Voeg de paprika, gember, chilipeper en bouillion toe. Roer het geheel goed en laat het 10 minuten zachtjes koken.
4. Snijd de vis in stukken en leg die in de saus. Laat alles nog eens 20 minuten zachtjes koken, tot de vis gaar is. Schenp de vis met een schuimspaan uit de pan en leg de stukken op een bord.
5. Roer de koriander door de saus en voeg peper en zout toe naar smaak. Is de saus erg dik, voeg dan wat bouillion of water toe. Doe de vis weer in de pan, verhit alles en serveer meteen.
Aan Tafel:
Tanzania heeft enkele meren en grenst aan zee, dus is het logisch dat hier veel visrecepten bestaan. Ondanks de eenvoudige bereidingswijze smaakt deze vis verrukkelijk.','/static/img/africa_cooking.jpg',30,2,8,1,13,7);
INSERT INTO `recipe` VALUES (476,'Tilapia in mango-tomatensaus','N','<i>4 personen</i>
4 tilapia''s
sap van 0,5 citroen
2 teentjes knoflook, geperst
0,5 thl gedroogde tijm
2 eetlepels gesnipperde lente-ui
plantaardige olie, voor het bakken
bloem, voor het bestuiven
2 eetlepels arachide olie
15 boter of margarine
1 ui, gesnipperd
3 tomaten, ontveld in stukjes
1 thl kurkuma
4 eetlepels witte wijn
1 verse groene chilipeper, zonder zaad, fijngehakt
6 dl visbouillion
1 thl suiker
1 onrijpe middelgrote mango, geschild, in stukjes
1 eetlepel fijngehakte verse peterselie
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Leg de vis in een schaal, sprenkel het citroensap erover en wrijf de vissen in met knoflook, tijm en wat peper en zout.
2. Vul de holtes van de vis met wat lente-ui. Dek ze af met plasticfolie en laat de vis een paar uur tot 1 nacht in de koelkast marineren.
3. Verhit de plantaardige olie in een koekenpan. Bestuif de vissen met een laagje bloem en bak ze dan aan beide zijden in een paar minuten goudbruin. Schep ze uit de pan en leg ze op een bord. Zet ze apart.
4. Verhit de arachideolie en boter of margarine in een pan en fruit de ui 4-5 minuten. Voeg de tomaten toe en bak ze een paar minuten mee.
5. Voeg kurkumapoeder, wijn, chilipeper, visbouillion en suiker toe en roer goed. Breng aan de kook en laat het afgedekt 10 minuten zachtjes koken. Leg de vissen erin en laat alles 15-20 minuten koken.
6. Leg de stukje mango om de vis heen. Laat alles nog 1-2 minuten koken. Schep de vis met een schuimspaan in een voorverwarmde schaal en verdeel  de mango-tomatensaus erover. Garneer het gerecht met fijngehakte peterselie en serveer het meteen.
Aan Tafel:
De wat zoete smaak van de tilapia wordt nog geaccentueerd als de vis met fruit wordt klaargemaakt. Tilapia wordt veel gegeten in Afrika, Israel en Libanon.','/static/img/africa_cooking.jpg',30,2,7,1,13,NULL);
INSERT INTO `recipe` VALUES (477,'Oost - Afrikaanse gebraden kip','N','<i>6 personen</i>
1.8-2 kg kip
2 eetlepels zachte boter
3 teentjes knoflook, geperst
1 thl versgemalen zwarte peper
1 thl kurkumapoeder
0,5 thl komijnpoeder
1 thl gedroogde tijm
1 eetlepel fijngehakte verse koriander
4 eetlepels dikke kokosmelk
4 eetlepels medium dry sherry
1 thl tomatenpuree
zout en chilipoeder','2018-09-26 19:09:45.086420','1. Verwijder de organen uit de kip en gooi ze weg. Spoel zo nodig de lichaamsholte uit en dep het vel droog. Meng de boter en de overige ingredienten in een kom tot een dikke pasta.
2. Trek het vel iets weg van het vlees en stop wat kruidenboter tussen vlees en vel. Wrijf ook het vel, de poten en de vleugels in met de kruidenboter. Bewaar nog wat kruidenboter voor de laatste bereidingsstap.
3. Leg de kip in een braadslee, dek af met plasicfolie en laat de kip 1 nacht in de koelkast marineren.
4. Verwarm de oven voor op 190C. Leg een stuk aluminiumfolie over de kip en braad haar 1 uur in de oven. Draai haar om en bedruip haar met het vleesvocht. Dek haar weer af  met folie en braad haar nog 30 minuten.
5. Verwijder de folie en leg de kip met de borst naar boven. Wrijf haar in met nog wat kruidenboter en braad haar nog 10-15 minuten tot het vel mooi goudbruin is. Lekker bij een rijstschotel of salade.
Aan Tafel:
De kip wordt ingewreven met pikante boter en dan weggezet om te marineren. Dat geeft een heerlijke smaak. Bedruip de kip regelmatig tijdens het braden. In plaats van komijnpoeder en gedroogde tijm kan men ook korianderpoeder gebruiken.','/static/img/africa_cooking.jpg',30,2,3,1,13,7);
INSERT INTO `recipe` VALUES (478,'Yassa - Kip','N','<i>4 personen</i>
1,5 dl citroensap
4 eetlepels moutazijn
3 uien, in ringen
4 eetlepels plantaardige of arachide olie
1 kg kip, in stukken
1 takje verse tijm
1 verse groene chilipeper, zonder zaad, fijngehakt
2 laurierblaadjes
4,5 dl kippenbouillion','2018-09-26 19:09:45.086420','1. Meng citroensap, azijn, uien en 2 eetlepels olie. Leg de stukken kip in een schaal en giet de citroenmarinade erover. Dek de kip af en laat haar 3 uur op een koele plaats marineren.
2. Verhit de resterende olie in een grote pan en bak de stukken kip in 4-5 minuten bruin.
3. Voeg de gemarineerde uien toe. Bak alles 3 minuten en voeg dan de marinade, tijm, chilipeper, laurierblaadjes en de helft van de bouillion toe.
4. Doe een deksel op de pan en kook de kip zachtjes in circa 35 minuten gaar. Voeg nog wat bouillon toe als de saus te veel is verdampt. Serveer de kip warm.
Aan Tafel:
Yassa is het nationale gerecht van senegal. Het kan worden gemaakt met kip, kalkoen of vis. De marinade met citroensap geeft de saus de kenmerkende scherpe smaak.','/static/img/africa_cooking.jpg',25,2,3,1,13,NULL);
INSERT INTO `recipe` VALUES (479,'Palaver - kip','N','<i>4 personen</i>
675 gram kipfilet
3 teentjes knolook, geperst
2 eetlepels boter of margarine
2 eetlepels plantaardige of palmolie
1 ui, gesnipperd
4 tomaten, ontveld, in stukjes
2 eetlepel pindakaas 
6 dl kippenbouillon of water
1 takje verse tijm of 1 thl gedroogde tijm
225 gr diepvriesspinazie, ontdooid, fijngesneden
1 verse rode of groene chilipeper, zonder zaad, fijngehakt
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Snijd de kipfilets in dunnen reepjes, doe ze in een kom en meng ze met de knoflook en wat peper en zout.
2. Smelt de boter of margarine en bak de reepjes kip op middelhoog vuur. Schep ze af en toe om, zodat ze egaal bruin worden. Schep de reepjes kip met een schuimspaan op een bord.
3. Verhit de olie in een grote pan, voeg de ui en tomaten toe en bak ze 5 minuten op hoog vuur.
4. Draai het vuur laag en voeg de pindakaas en de helft van de bouillion of het water toe. Meng alles goed.
5. Laat het mengsel al roerend 4-5 minuten koken. Voeg de rest van de bouillion of het water, de tijm, spinazie, chilipeper en peper en zout toe. Roer de stukken kip erdoor en laat alles 10-15 minuten op  middelhoog vuur koken
6. Schep de kip en saus in een warme schaal en geef er gekookte yams en gekookte of gemalen rijst bij.
Aan Tafel:
De bereiding van dit stoofgerecht schijnt altijd gepaard te zijn gegaan met ruzie, wat de intrigerende naam verklaart. En nog steeds kan met het niet eens worden over het recept. Pallaver kan worden bereid met rundvlees, kip of vis. Bitterblad hoort erbij, maar spinazie, zoals voor dit recept werd gebruikt, is een uitstekende vervanger.
Tip: Heeft u weinig tijd, dan is diepvriesspinazie een uitkomst, maar fijngesneden verse spinazie geeft dit gerecht een heerlijke frisse smaak. In plaats van pindakaas kun u egusi (gemalen meloenpitten) gebruiken.','/static/img/africa_cooking.jpg',30,2,3,1,NULL,NULL);
INSERT INTO `recipe` VALUES (480,'Kuku','N','<i>4-6 personen</i>
6 kippenbouten
0,5-0,75 thl gemberpoeder
50 gram gedroogde mungbonen
4 eetlepels maisolie
2 uien, gesnipperd
2 teentjes knoflook, geperst
5 tomaten, ontveld, in stukjes
1 verse groene chilipeper, zonder zaad, fijngehakt
2 eetlepels citroensap
3 dl kokosmelk
3 dl water
1 eetlepel fijngehakte verse koriander
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Strooi gemberpoeder en peper en zout over de kip en laat hem op een koele plaats marineren. Kook de mungbonen in een pan met water in 35 minuten gaar. Laat ze uitlekken en pureer ze.
2. Verhit de olie in een grote pan op middelhoog vuur en bak de stukken kip (eventueel in porties) rondom bruin. Leg ze op een bord en zet ze apart. Bewaar het bakvocht in de pan.
3. Fruit de ui, knoflook 5 minuten in dezelfde pan. Voeg de stukjes tomaat en de chilipeper toe en roerbak alles nog 1-2 minuten. Voeg de gepureerde mungbonen en het citroensap toe. 
4. Giet de kokosmelk erbij. Laat het geheel 5 minuten zachtjes koken en voeg dan de stukken kip toe (eventueel wat water als de saus te dik is). Roer de fijngehakte koriander erdoor en laat alles circa 35 minuten zachtjes koken tot de kip gaar is . Lekker met bladgroente en rijst of chapati''s
Aan Tafel:
Dit keniase stoofgerecht smaakt wat zurig. De saus wordt gebonden met gepureerde mungbonen en op smaak gebracht met chilipeper en kokosmelk.','/static/img/africa_cooking.jpg',22,2,3,1,13,7);
INSERT INTO `recipe` VALUES (481,'Lamsvlees met zwartogenbonen en pompoen','N','<i>4 personen</i>
450 gram mager lams-- of schapenvlees, zonder bot, in blokjes
1 liter kip of vleesbouillion of water
75 gr zwarte ogenbonen, 6 uur tot 1 nacht geweekt
1 ui, gesnipperd
2 teentjes knoflook, geperst
2,5 eetlepel tomatenpuree
1,5 thl gedroogde tijm
1,5 thl plantaardige of palmolie
1 thl koekkruiden
0,5 thl versgemalen zwarte peper
115 gram pompoen, in stukjes
zout en een scheutje hot peper sauce','2018-09-26 19:09:45.086420','1. Doe het vlees en de bouillion of het water in een grote pan en breng aan de kook. Schep eventueel schuim af en laat alles afgedekt 1 uur zachtjes koken.
2. Voeg de uitgelekte bonen toe en laat alles nog eens ca 35 minuten koken.
3. Voeg de ui, de knoflook, de tomatenpuree, de tijm, olie, de koekkruiden, wat peper en zout en de hot pepper sauce toe en laat alles nog 15 minuten koken.
4. Voeg de pompoen toe en laat alles 10 minuten zachtjes koken; de pompoen is dan bijna tot moes gekookt. Lekker met gekookte yam, bakbanaan of zoet aardappels.','/static/img/africa_cooking.jpg',30,2,2,1,13,NULL);
INSERT INTO `recipe` VALUES (482,'Keniase stoofschotel van mungbonen','N','<i>4 personen</i>
225 gram mungbonen, 1 nacht geweekt
25 gr ghee of boter
2 teentjes knoflook, geperst
1 rode ui, gesnipperd
2 eetlepels tomatenpuree
0,5 groene paprika, zonder zaad, in stukjes
0,5 rode paprika, zonder zaad, in stukjes
1 verse groene chilipeper, zonder zaad, fijngehakt
3 dl water','2018-09-26 19:09:45.086420','1. Doe de mungbonen in een grote pan en voeg zo veel water toe dat ze onderstaan. Breng alles aan de kook en kook de bonen tot ze zeer zacht zijn en het water is verdampt. Neem de pan van het vuur en prak de bonen fijn met een vork of aardappelstamper. Zet apart.
2. Verhit de ghee of boter in een andere pan, voeg de ui en de knoflook toe en bak beide in 4-5 minuten goudbruin. voeg de tomatenpuree toe en kook al roerend 2-3 minuten
3. Voeg de bonenpuree toe en schep alles om. Voeg paprika''s en chilipeper toe.
4. Voeg het water toe en meng alle ingredienten goed.
5. Schep het mengsel in een schone pan en laat het circa 10 minuten zachtjes koken. Schep het stoofgerecht dan in een schaal en serveer het meteen.
Aan Tafel:
Dit gerecht heet in kenia dengu en is een goed  voorbeeld van hoe men in Afrika variatie brengt in voeding die in belangrijke mate  afhankelijk is van seizoensproducten.
Mungbonen zijn in de meeste toko''s wel verkrijgbaar. Eventueel kunt u ze vervangen door groene linzen.','/static/img/africa_cooking.jpg',22,2,6,1,13,7);
INSERT INTO `recipe` VALUES (483,'Tanzaniaanse groenterijst','N','<i> 4 personen</i>
350 gram basmatirijst
3 eetlepels plantaardige olie
1 ui, gesnipperd
2 teentjes knoflook, geperst
7,5 dl groentebouillion of water
115 gram mais
0,5 rode of groene paprika, zonder zaad, in stukjes
1 grote wortel, geraspt','2018-09-26 19:09:45.086420','1. Was de rijst in een zeef onder koud stromend water. Laat de rijst can 15 minuten uitlekken
2. Verhit de olie in een grote pan, voeg de ui toe en bak hem in een paar minuten zacht.
3. Voeg de rijst toe en roerbak het geheel circa 10 minuten. Het is belangrijk dat de rijst niet aankoekt aan de bodem van de pan.
4. Voeg de knoflook en de bouillion of het water toe en roer alles goed. Breng het geheel aan de kook en kook het 5 minuten op hoog vuur. Draai het vuur laag  en kook het afgedekt nog 20 minuten.
5. Strooi eerst de maiskorrels over de rijst, strooi dan de stukjes paprika erover en tot slot de geraspte wortle.
6. Dek de pan goed af en stoom de rijst en groenten zachtjes gaar. Roer alles los met een vork en serveer de rijst meteen.
Aan Tafel:
Deze rijst ziet er heel kleurrijk uit door de gele mais, oranje wortel en rode paprika. Dit bijgerecht is heerlijk bij gegrilde of gebakken kip. De rijst is echter ook geschikt als vulling voor gebakken vis. In Tanzania wordt er bij deze rijst vaak kachumball gegeven, een heerlijke verfrisende chutney.','/static/img/africa_cooking.jpg',30,6,6,1,NULL,NULL);
INSERT INTO `recipe` VALUES (484,'Abesha gomen','N','<i>4 personen</i>
450 gram collard of boerenkool
4 eetlepels olijfolie
2 kleine rode uien, gesnipperd
1 teentje knoflook, geperst
0,5 thl geraspte verse gemberwortel
2 verse groene chilipepers, zonder zaad, fijngehakt
1,5 dl groentenbouillion of water
1 rode paprika, in reepjes
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Was de groente en trek de blaadjes van de steeltjes. Stoom de groente circa 5 minuten boven een pan kokend water tot hij wat is geslonken.
2. Laat de groente afkoelen op een bord. Leg hem in een zeef en druk het overtollige water eruit.
3. Snijd de groente fijn met een groot, scherp mes.
4. Verhit de olie in een pan en fruit de ui. Voeg de knoflook en de gember toe en bak alles een paar minten, voeg dan de chilipepers en een beetje bouillion of water toe en laat alles 2 minuten koken.
5. Voeg de groente, de rode paprika en de resterende bouillion of het water toe. Breng op smaak en meng alles goed. Laat alles afgedekt nog 15 minuten zachtjes koken. Serveer het bijgerecht meteen.
Aan Tafel:
Dit gerecht heet in Ethiopie Abesha gomen en kan worden gemaakt met collard, groene kool of boerenkool. In ethiopie serveert men het op injera, een pannekoekachtig brood.
Gewoonlijk wordt dit gerecht langer en met meer vocht gekookt. De kooktijd is teruggebracht van 45 minuten naar 15 minuten. Wilt u een authentiekere smaak, dan laat u de rijst langer koken en voegt u meer bouillion of water toe. Groene kool of boerenkool is een alternatief voor collard.','/static/img/africa_cooking.jpg',24,6,6,1,13,NULL);
INSERT INTO `recipe` VALUES (485,'Salade van groene linzen','N','<i>4 personen</i>
225 gram groene linzen, afgespoeld
2 tomaten, ontveld, in stukjes
1 rode ui, gesnipperd
1 verse groene chilipeper, zonder zaad, fijngehakt
4 eetlepels citroensap
5 eetlepels olijfolie
0,5 thl grove mosterd
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Doe de linzen in een pan, voeg zo veel water toe dat ze onderstaan en breng het geheel aan de kook. Laat het 45 minuten zachtjes koken. Giet de linzen af, doe ze in een kom en prak ze een beetje fijn.
2. Voeg de tomaten, de ui, de chilipeper, het citroensap, de olijfolie, de mosterd en peper en zout toe. Meng alles goed. Laat het geheel afkoelen en zet het in de koelkast. Lekker bij vlees- of visgerechten.
Aan Tafel:
Dit is een Ethiopisch specialiteit. Deze salade van groene linzen en tomaten wordt traditioneel op smaak gebracht met seanfitch, een soort mosterd gemaakt van een peperachtig kruid. In dit recept wordt gewone mosterd gebruikt.','/static/img/africa_cooking.jpg',24,6,6,1,13,NULL);
INSERT INTO `recipe` VALUES (486,'Makande','N','<i>3-4 personen</i>
225 gram gedroogde kidneybonen, 1 nacht geweekt
1 ui, gesnipperd
2 teentjes knoflook, geperst
5 gram santen of 1,75 dl dikke kokosmelk
225 gr diepvriesmais
3 dl groentebouillion of water
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Laat de bonen uitlekken en doe ze in een pan. Voeg zoveel water toe dat de bonen onderstaan en breng het geheel aan de kook. Laat ze 15 minuten flink doorkoken en laat ze dan nog 1 uur zachtjes koken. Voeg zo nodig extra water toe. Laat de bonen uitlekken.
2. Doe de bonen in een schone pan met de ui, de knoflook, de santen of de dikker kokosmelk, de mais en peper en zout.
3. Voeg de bouillion of het water toe, breng aan de kook en laat het 20 minuten zachtjes koken. Roer alles af en toe door om de santen op te lossen of de kokosmelk erdoor te mengen.
4. Voeg eventueel nog peper en zout naar smaak toe en schep de makande in een voorverwarmde schaal. Serveer er een salade van tomaat en ui bij.
 Aan Tafel:
Dit eenvoudige stoofgerecht van mais en rode kidneybonen is een standaardlunch voor veel tanzanianen. In betere tijden wordt er nog vlees aan toegevoegd.','/static/img/africa_cooking.jpg',30,6,6,1,13,7);
INSERT INTO `recipe` VALUES (487,'Kachumbali','N','<i>4-6 personen</i>
2 rode uien
4 tomaten
1 verse groene chilipeper
0,5 komkommer
1 wortel
sap van 1 citroen
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Snijd de uien in zeer dunne ringen en snijd de tomaten in dunne plakjes. Leg alles in een kom.
2. Schil de komkommer en wortel en snijd ze in dunne plakjes. Doe ze in de kom bij de tomaten en ui. Snijd de chilipeper in de lengte in tweeen, verwijder het zaad en hak het vruchtvlees zeer fijn.
3. Sprenkel het citroensap over de salade. Breng alles op smaak met peper en zout en schep alles om. Serveer als bijgerecht, salade of relish.
Aan Tafel:
Deze relish komt uit Tanzania, waar hij vaak bij gegrild vlees of gegrilde vis wordt gegeven. Tanzania behoort tot de belangrijkste chilipeper producerende landen en voor een zo authentiek mogelijk tintje moeten de chilipepers in dit gerecht heet zijn. Jalapenopepers zijn bijzonder geschikt.','/static/img/africa_cooking.jpg',30,6,6,1,13,NULL);
INSERT INTO `recipe` VALUES (488,'Kokosrelisch','N','<i> 50 gram</i>
50 gram vers of gedroogde kokos
1 verse rode chilipeper
2 thl citroensap
0,5 thl zout
2 thl water','2018-09-26 19:09:45.086420','1. Rasp het verse kokos en doe het in een kom. Voeg bij het gebruik van gedroogd kokos voldoende water toe om het vochtig te maken.
2. Snijd de chilipeper in tweeen en verwijder het zaad. Hak het vruchtvlees in kleine stukjes. Gebruik hier circa 0,25 theelepel van, of meer naar smaak.
3. Voeg het citroensap, zout, water en de fijngehakte chilipeper toe aan het kokos. Schep alles goed om.
4. Geef de relish bij koud vlees of bij vis, of als bijgerecht.
Aan Tafel:
Deze mix van kokos en citroensap resulteert in een verfrissende relish. De stukjes fijngehakte chilipper zijn net voldoende om de smaakpapillen te prikkelen.','/static/img/africa_cooking.jpg',30,6,7,1,13,7);
INSERT INTO `recipe` VALUES (489,'Marokkaans brood','N','<i>2 broden</i>
275 gr tarwemeel
175 gr volkorenmeel
2 thl zout
ca 2,5 dl warme melk en water, gemengd
2 thl sesamzaad
Giststarter    
1,5 dl warme melk en warm water, gemengd
1 thl kristalsuiker
2 thl gedroogde gist.','2018-09-26 19:09:45.086420','1. Maak eerst de gist. Doe het melkwatermengsel in een kom of maatbeker, roer de suiker erdoor en strooi de gist erover. Roer goed en laat het mengsel 10 minuten op een warme plaats staan tot de gist begint te schuimen
2. Meng de tarwe-volkorenmeel en het zout. Voeg het gistmengsel en voldoende van het melk-watermengsel toe om een vrij zacht deeg te maken. Kneed het tot een bal en dan nog 10 minuten op een bloem bestoven werkvlak.
3. Verdeel het deeg in twee ballen van gelijke grootte. Leg ze op een met bloem bestoven bakplaat en druk ze wat platter tot ze een doorsnee hebben van 13-15 cm
4. Leg een vel ingevette plasticfolie of een schone, vochtige doek over het deeg en laat het op een warme plaats 1-1,5 uur rijzen. De broden kunnen worden gebakken als het deeg terugveert als u er met een vinger zachtjes op drukt.
5. Verwarm de oven voor op 200C. Strooi sesamzaad over de broden en bak ze 12 minuten in de oven. Verlaag de temperatuur tot 150C en bak de broden nog 20-30 minuten, tot ze goudbruin zijn en hol klinken als u op de onderkant klopt. Serveer het brood warm.','/static/img/africa_cooking.jpg',15,6,1,1,13,NULL);
INSERT INTO `recipe` VALUES (490,'Banaan met notenkorst','N','<i>3 personen</i>
6 rijpe maar stevige bananen
2 eetlepels fijngehakte ongezouten cashewnoten
2 eetlepels fijngehakte ongezouten pinda''s
2 eetlepels gedroogde kokos
0,5-1 eetlepel rietsuiker
1 thl kaneel
0,5 thl versgeraspte nootmuskaat
1,5 dl sinaasappelsap
4 eetlepels rum
15 gram boter of margarine
slagroom, voor erbij','2018-09-26 19:09:45.086420','1. Verwarm de oven voor op 200C. snijd de bananen in plakjes en leg ze in een ingevette, ondiepe ovenschaal.
2. Meng de cashewnoten, de pinda''s, het kokos, de suiker, de kaneel en de nootmuskaat in een kom.
3. Giet het sinaasappelsap en de rum over de bananen. Strooi het notenmengsel erover.
4. Verdeel klontjes boter of margarine over de noten en bak het gerecht 15-20 minuten; de bananen zijn dan goudkleurig en de saus bubbelt. Serveer met slagroom','/static/img/africa_cooking.jpg',30,3,7,1,13,7);
INSERT INTO `recipe` VALUES (491,'Verse ananas met kokos','N','<i>4 personen</i>
1 verse ananas, geschild
vers kokosschaafsel
3 dl ananassap
4 eetlepels kokoslikeur
2,5 cm ingemaakte stemgember plus
3 eetlepels gembersiroop','2018-09-26 19:09:45.086420','1. Snijd de ananas in plakken. Leg de plakken in een schaal en verdeel het kokos erover.
2. Doe het ananassap en de kokoslikeur in een pan en verhit het mengsel langzaam.
3. Snijd de stemgember in dunne plakjes en doe ze met de siroop in de pan. Breng het geheel tot het kookpunt en laat het zachtjes koken tot het vocht iets is ingedikt en de saus vrij dik is geworden.
4. Giet de saus over de ananas en het kokos. Laat het geheel afkoelen en zet het tot gebruik in de koelkast.','/static/img/africa_cooking.jpg',30,3,7,1,13,7);
INSERT INTO `recipe` VALUES (492,'Passievruchtenmousse','N','<i>6 personen</i>
4 dl slagroom
12 passievruchten
3 gelatinevellen
2 eetlepels bloemsuiker','2018-09-26 19:09:45.086420','1. Week de gelatine in koud water.
2. Houd 3 eetlepels room apart. Klop de rest van de room, voeg de suiker toe en hef voorzichtig onder de room. 
3. Snijd de passievruchten in twee, haal het vruchtvlees uit met een lepel en schep het in een kom. Voeg de 3 eetlepels aparte room en de gelatine toe, meng goed en voeg tot slot de geklopte room toe.
4. Meng voorzichtig en schep in afzonderlijke potjes. laat gedurende 2 uur afkoelen voor je serveert.','/static/img/africa_cooking.jpg',30,3,7,3,13,8);
INSERT INTO `recipe` VALUES (493,'Gratin van mango met kaneel en kardemom','N','<i>4 personen</i>
2 rijpe mango''s (700-800 gr)
50 gr suiker
2 kardemomzaadjes
30 gram verse gemberwortel
2 sterretjes steranijs
1 kaneelstokje
2 eierdooiers
250 ml water','2018-09-26 19:09:45.086420','1. Schil de gember en snijd in zeer fijne reepjes. Doe ze in een kookpot samen met de suiker, de kardemomzaadjes, de steranijs en het kaneelstokje . Breng het geheel aan de kook en laat de siroop doorkoken op een zacht vuur gedurende 5 minuten.
2. Schil de mango''s, snijd het vruchtvlees in reepjes van 5 mm dik. Doe de reepjes in een kookpot, giet de siroop en de kruiden erover en laat op een zacht vuur doorkoken gedurende 8 minuten. Zet even opzij en laat afkoelen in de siroop.
3. Giet het water in een grote kookpot (au bain-marie) en verhit. Het water moet bijna koken. Doe twee eierdooiers en een eetlepel siroop in een kleine kookpot en kluts. Zet de kleine kookpot in de grote (au bain-marie) en terwijl je blijft klutsen, voeg je beetje bij beetje een dl siroop toe. Kluts het mengsel tot het dik en schuimend wordt. Verwarm de ovengrill voor. Laat de mango''s uitlekken, verdeel ze over 4 gratin-schoteltjes.
4. Overgiet met de kaneel en laat gedurende 5 minuten gratineren in de oven. Onmiddellijk serveren','/static/img/africa_cooking.jpg',30,3,7,1,13,8);
INSERT INTO `recipe` VALUES (494,'Soep van exotisch fruit met gember en safraan','N','<i>4 personen</i>
    2 rijpe mango''s
2 scijven ananas
16 lychees
1/2 papaya 
1 dl sinasappelsap
1 eetl suiker
3 cm gemberwortel
1 mespuntje safraan
2 kruidnagels','2018-09-26 19:09:45.086420','1. Schil de vruchten en snijd ze in blokjes, ontpitde lychees, laat deze heel. Doe de sinasappelsap en de suiker in een kookpot, samen met de kruidnagels en de gember. 
2. Breng aan de kook en haal zodra het kookt de pan van het vuur. Laat afkoelen en giet dit over de vruchten, laat ten minste 3 uur trekken.','/static/img/africa_cooking.jpg',30,3,7,4,13,8);
INSERT INTO `recipe` VALUES (495,'Zandkoekjes met gember','','300 gram meel
125 gram maizena
180 gram boter
1 eetlepel verse gemberwortel, fijngehakt
2 eieren
1 zakje gist
1 mespuntje zout','2018-09-26 19:09:45.086420','1. Doe de eieren en de suiker in een kom. Klop ze op tot je een lint krijgt. Voeg meel gemengd met de maïzena, de gist en het zout toe. Goed mengen. Leg het op een bakkers plank.   
2. De boter en de gember er onder mengen en kneden. rol het deeg in een worst met een diameter van 5 cm, wentel die in een beetje suiker en snijd er 1 cm dikke schijven van.
3. leg de koekjes op een ingevette en met meel bestrooide bakplaat en laat gedurende 20 minuten bakken in een op 200C voor verwarmde oven.','/static/img/africa_cooking.jpg',30,3,5,4,13,8);
INSERT INTO `recipe` VALUES (496,'Gekonfijte gember','N','300 gram verse gemberwortel
300 gram suiker
4 dl water
1 kaneelstokje','2018-09-26 19:09:45.086420','1. maak de wortelstokken van de gember schoon en snijd ze in stukjes.
2. Breng het water aan de kook. Blancheer de gember gedurende circa 8 minuten in het kokende water.
3. haal de gember uit het water, laat hem uitlekken en afkoelen.
4. Doe de suiker in het water, breng aan de kook en wanneer de siroop klaar is, haal je de kookpot van het vuur. Voeg er de gember aan toe en laat rusten tot de volgende dag.
5. haal de stukjes eruit, zet de siroop opnieuw op een hoog vuur gedurende 4 tot 5 minuten en doe de gember er opnieuw bij. Herhaal dit ook de volgende dag. De siroop moet dik zijn en de gember doorzichtig.','/static/img/africa_cooking.jpg',30,3,5,10,13,NULL);
INSERT INTO `recipe` VALUES (497,'Salade van groene papaja','N','<i>4 personen</i>
1 groene papaja
2 wortelen
sap van 2 limoenen
2 eetlepels olie
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Schil en ontpit een nog groene papaja. Rasp het vruchtvlees en laat het weken in water. 
2. laat uitlekken en drogen voor je het besprenkelt met het sap van de limoenen. 
3. ga op dezelfde wijze tewerk met de wortelen, meng alles en serveer.','/static/img/africa_cooking.jpg',30,9,7,3,13,NULL);
INSERT INTO `recipe` VALUES (498,'Salade van avocado en mango met sinaasappelvinaigrette','N','<i>6 personen</i>
2 avocado''s, goed rijp
2 grote mango''s
sinaasappelvinaigrette','2018-09-26 19:09:45.086420','1. Snijd de avocado''s in 2, haal voorzichtig de schil eraf en snijd ze in dunne plakjes. leg ze op een schotel en besprenkel met citroensap.
2. Schil de mango''s, haal de pit eruit, snijd in dunne plakjes, zoals de avocado''s en leg ze opzij.
3. Schik de borden door afwisselend avocado en mango te leggen. Breng op smaak met de vinaigrette vlak voor je serveert (je kan mango''s vervangen door rode williams peren, roze pompelmoes, je kan blokjes kaas aan de salade toevoegen, het bord beleggen met parmaham voor je het fruit erop legt. enz)','/static/img/africa_cooking.jpg',30,9,7,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (499,'groene kerrie met zoete aardappelen, aubergines en bloemkool','','<i>4 personen</i>
1 eetlepel olie
2 eetlepels groenekerriepasta (thais)
6 citroenblaadjes (thais)
2 eetlepels vissaus (thais)
1 eetlepel rietsuiker (thais)
1 grote ui, gesnipperd
500 gram kokosmelk
2 dl water
300 gram zoete aardappel
1 grote aubergine
300 gram bloemkool
3 eetlepels limoensap
1 eetlepel koriander, fijngehakt
1 theelepel verse gemberwortel, fijngehakt.','2018-09-26 19:09:45.086420','1. Schil de zoete aardappel, snijd ze in blokjes en leg ze in het water. Snijd de aubergine in blokjes en de bloemkool in kleine roosjes.
2. Verhit de olie en laat de ui gedurende enkele minuten fruiten. Voeg de kerriepasta toe, laat 2 minuten bakken, voeg 3 eetlepels water toe en vervolgens de kokosmelk en de 2 dl water. laat 5 minuten sudderen.
3. voeg de vissaus, de suiker en de gemberwortel toe. voeg de aardappelblokjes toe en laat ongeveer 7 minuten stoven, voeg dan de aubergines, de bloemkool en het limoensap toe en laat 10 minuten stoven.
4. Zorg ervoor dat de groenten knapperig blijven. Vlak voor je serveert, bestrooi je het geheel met de koriander.','/static/img/africa_cooking.jpg',30,9,6,10,13,8);
INSERT INTO `recipe` VALUES (500,'lauwe salade met zoete aardappel','N','<i>4 personen</i>
500 gram zoete aardappelen
vinaigrette
1 kleine rode ui, gesnipperd
1 thl peterselie, fijngehakt
een beetje knoflook, fijngehakt (naar smaak)
het sap van een limoen
5 eetlepels olie
zout en versgemalen zwarte peper','2018-09-26 19:09:45.086420','1. Was de zoete aardappelen.
2. Kook ze gaar in gezouten water gedurende 20-30 minuten. Maak ze schoon en snijd ze in blokken.
3. Meng de andere ingredienten. leg de zoete aardappelen in een slakom, besprenkel met de vinaigrette en meng voorzichtig voor je de salade serveert.','/static/img/africa_cooking.jpg',30,9,6,4,13,NULL);
INSERT INTO `recipe` VALUES (501,'Saka saka met aubergines - sanga','N','<i>4 personen</i>
300 gram afrikaanse aubergines
150 gr saka saka
200 gram mais
1 thl suiker
6 eetlepels moambesaus
zout','2018-09-26 19:09:45.086420','1. Was de aubergines en snijd ze in vier. Doe ze in een kookpot. Voeg de saka saka, de moambesaus en 30 cl water toe. laat op een gemiddeld vuur koken gedurende 30 minuten.
2. Voeg de mais, het zout, 20 cl water en 1 thl suiker toe. laat nog eens gedurende 30 minuten koken. Wordt zonder iets bij gegeten of met een stuk vlees.','/static/img/africa_cooking.jpg',30,6,6,10,NULL,NULL);
INSERT INTO `recipe` VALUES (502,'Pompoen met kokosmelk','N','<i>4 personen</i>
500 gram pompoen, geschild, ontpit en in blokjes gesneden
3 eetlepels olie
1 grote ui, in ringen
1 teentje knoflook, fijngehakt
1 kaneelstokje
2 cm verse gemberwortel,fijngehakt
1 thl kurkuma
30 cl kokosmelk
zout
koriander','2018-09-26 19:09:45.086420','1. Bruin de uien in hete olie, voeg de kruiden toe en laat gedurende 2 minuten bakken. Blus met 2 eetlepels water, en goed mengen. Voeg de pompoen en de kokosmelk toe en laat gedurende circa 15 minuten koken (de pompoen moet gaar zijn)
2. Haal de pan van het vuur en bestrooi met koriander voor je serveert.
3. Dit recept is ook bruikbaar met gelijke hoeveelheden pompoen, courgette en chayotte. Vervang de kaneel en de kurkuma door salie en paprika. Serveer met pasta.','/static/img/africa_cooking.jpg',30,6,6,4,13,NULL);
INSERT INTO `recipe` VALUES (503,'taart met lenga lenga, mascarpone en roquefort','N','<i>6 personen</i>
Deeg
200 gram meel
100 gram boter
50 cl water
1 mespuntje zout
Garnituur
600 gram bladeren, geblancheerd
2 dl verse magere room
5 eieren
1 eetlepel bladpeterselie, fijngehakt
zout en versgemalen zwarte peper
nootmuskaat
Toplaagje
meng 1 dl mager room met 3 eetlepels mascarpone en 50 gram roquefort','2018-09-26 19:09:45.086420','1. Bereid het deeg door het meel te mengen met 1 mespuntje zout en de blokjes boter. Voeg het water toe en meng met de vingertoppen (zodat het deeg niet hard wordt.)
2. Maak een bal en laat 30 minuten rusten. Verwarm de oven op 180C
3. Snijd ondertussen de groenten in stukken, doe ze in en slakom en voeg de room toe. Alles goed mengen en de geklopte eieren, de fijngehakte peterselie, het zout, de peper, twee mespuntjes gemalen muskaatnoot toevoegen en het geheel voorzichtig mengen.
4. Rol het deeg uit en beleg daarmee de bodem van een quichevorm met een diameter van 26 cm. Verdeel de groentebereiding over het deeg. Giet de mengeling van mascarpone, roquefort en room er over heen. Schuif in de oven. laat 25 minuten bakken. Heet serveren met een tomatencoulis.','/static/img/africa_cooking.jpg',30,2,6,10,13,NULL);
INSERT INTO `recipe` VALUES (504,'visbraai','','','2018-09-26 19:09:45.086420','','/static/img/koken.jpg',1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (505,'Gekruide tomatensaus','','<i>6-8 personen</i>
2 uien, heel fijn gehakt
30 ml olijf- of andere plantaardige olie
4 grote, rijpe tomaten, geblancheerd, geschild en in stukken gesneden of 400 gram blik hele tomaten, gesneden (niet afgieten)
0,5 thl geperste knoflook
2 eetlepels gehakte verse tijm, majoraan of oregano
2 eetlepels fijngehakte verse peterselie
0.25 thl suiker
0,25 thl paprikapoeder','2018-09-26 19:09:45.086420','1. Verhit de olie in een koekenpan en bak de uien lichtbruin. Voeg de resterende ingredienten toe en laat de saus, zonder deksel, al roerend 10 minuten flink koken tot de saus dikker wordt. 
2. Controleer de smaak en voeg eventueel nog kruiden of zout en peper toe. Serveer warm.','/static/img/koken.jpg',23,5,6,1,13,6);
INSERT INTO `recipe` VALUES (506,'Kippenfond','','<i>1 liter</i>
2 liter koud water
1 kippenkarkas en ingewanden niet de lever
1 ui of 4 preien, grof gesneden
1 stengel selderij met bladeren, grof gehakt
1-2 wortelen, grof gehakt
1 bundel verse of gedroogde kruiden (peterselie, tijm, laurierblad)
0,5 thl zwarte peper','2018-09-26 19:09:45.086420','1. Doe alle ingredienten in een grote pan, sluit de pan en breng aan de kook. Temper het vuur en laat de fond 2-3 uur zachtjes trekken. 
2. Zeef de fond en druk zoveel mogelijk vocht uit de ingredienten. Bewaar de fond koel of vries hem in.','/static/img/koken.jpg',23,5,3,1,13,6);
INSERT INTO `recipe` VALUES (509,'Sa Louh - Salade van Tafelzuur','West- China','<i>6-8 personen</i>
500 gram komkommer, geschild
500 gram kool, fijngehakt
2 theelepels zout
1 theelepel szetsjoeaanse of zwarte peperkorrels
1 theelepel suiker
15 ml sojasaus
30 ml sesamolie
15 ml rode wijnazijn','2018-09-26 19:09:45.086420','1. Druk stevig op de komkommers tot er scheuren in het oppervlak verschijnen. Snijd ze in de lengte in vieren en daarna in kleinere stukken. Leg die stukken in een schaal met de kool. Bestrooi dit met zout en laat het 2 uur staan.
2. Spoel de groenten en laat de stukken goed uitlekken op keukenpapier.
3. Meng de knoflook met de peper, suiker, sojasaus, olie en azijn. Giet dit mengsel over de groente en laat dit minstens 3 uur intrekken, voordat het gerecht geserveerd wordt, eventueel op een bedje van koolbladeren.','/static/img/china.jpg',19,6,6,7,14,9);
INSERT INTO `recipe` VALUES (510,'Lo Han Tsai - groenteschotel','','<i>6-8 personen</i>
75 ml olie
1 theelepel zout
60 ml sojasaus
1,2 liter kippenbouillion of heldere soep (zie recept)
100 gram transparante mie (cellofaanmie), 20 minuten geweekt en uitgelekt
15 ml sesamolie
Gedroogde groenten
40 gram tijgerlelieknoppen, 30 minuten geweekt en uitgelekt
5 grote gedroogde Chinese paddestoelen, 20 minuten geweekt, uitgelekt, van steeltjes ontdaan en in vieren gesneden
30 ml gedroogde Chinese hanekammen, 20 minuten geweekt, uitgelekt en van steeltjes ontdaan
4 plakken gedroogde lotuswortel, 20 minuten geweekt en uitgelekt
60 ml haar-zeewier, minstens 30 minuten geweekt en uitgelekt
60 ml zeesla, minstens 30 minuten geweekt en uitgelekt
Verse groenten
250 gram chinese kool, in plakken van 2 cm gesneden
250 gram broccoli roosjes
100 gram peulen
100 gram bloemkoolroosjes
100 gram ontkiemde boontjes (tauge)
100 gram kleine champignons
1 groene paprika, van zaadlijsten ontdaan en in dunne repen gesneden
1 kleine courgette, in plakken','2018-09-26 19:09:45.086420','1.Verhit 30 ml/2 eetlepels van de olie in een grote pan. Voeg alle gedroogde groenten toe en bak ze al roerend 4 tot 5 minuten boven een matig warm vuur.
2. Verhit de rest van de olie in een andere grote pan. Doe daar alle verse groenten in en bak die al roerend 5 tot 6 minuten boven een matig warm vuur.
3. Doe de verse groenten bij de gedroogde en vermeng ze. Sprenkel de sojasaus, het zout en de bouillion of heldere soep er overheen en voeg de miehoen toe. Breng alles aan de kook, leg een deksel op de pan en laat alles dan 20 minuten heel zachtjes doorkoken.
4. Besprenkel het gerecht met de sesamolie en dien het warm op.
 Aan Tafel
Letterlijk betekent dit: Boeddhistisch groente ensemble voor de Goden
Zeewier en gouden naalden (tijgerlelieknoppen)
Paarse zeetaluw (zeesla), haar-wier zijn de zeewiersoorten, die de Chinezen het meest gebruiken bij het koken. Deze zeewieren worden meestal toegepast in soepen, met nog een aantal andere groentesoorten. Ze moeten eerst in water weken, minstens 20 minuten, maar liever een hele nacht, en ze moeten voor en na het weken grondig gespoeld worden.
Gouden naalden (of tijgerlelieknoppen) hebben een ietwat muffe, schimmelige smaak die je moet leren waarderen. Ze worden vaak gebruikt om gestoomde vis te garneren en ze maken deel uit van het bekende Pekingse gerecht Mow Sjoe Row, Varkensvlees met Gele bloemen, waar ze gebakken worden samen met varkensvlees, prei, eieren en hanekammen. 
Net als zeewier moeten ook tijgerlelieknoopen minstens 20 minuten in water weken voor het gebruik.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (511,'Chien Thong - Heldere soep (kippenbouillion)','','1 kippenkarkas met vlees er nog aan
750 gram varkensribbetjes
500 gram ham, bacon of runderbotten
2 liter water
2 theelepels zout
2 theelepels gedroogde garnalen(eventueel)','2018-09-26 19:09:45.086420','1. Doe alle ingrdienten in een grote, zware pan of een vuurbestendige pot. Breng alles aan de kook, doe er een deksel op en laat het gerecht 1&frac34; uur zachtjes doorkoken, terwijl u regelmatig het oppervlak schoon shept. Laat alles afkoelen.
2. Schep het laatste vet van het oppervlak als de soep helemaal koud is.
3.Opnieuw verwarmen en als soep opdienen of verder verwerken.','/static/img/china.jpg',19,4,3,1,14,9);
INSERT INTO `recipe` VALUES (512,'Tsjing Joe - gestoomde vis','','3 plakken gemberwortel, in stukjes gehakt
2 theelepels zout
1&frac14; kg kleine vissoort (forel, tong, makreel , etc)
45 ml sojasaus 
1&frac12; theelepel suiker
15 ml wijnazijn
30 ml olie
2 a 3 gesnipperde plakken bacon
3 a 4 grote gedroogde Chinese paddestoelen, eerst 20 minuten geweekt, dan afgegoten en gesnipperd
4 lente-uitjes, in stukken van 5 cm gesneden.','2018-09-26 19:09:45.086420','1. Vermeng de gehakte gember met het zout en wrijf de vis hier van binnen en van buiten mee in. Laat dit mengsel 30 minuten intrekken.
2. Meng de sojasaus met de suiker, azijn en olie in een kom. Giet dit mengsel over de vis en laat dit nog eens 15 minuten intrekken.
3. leg de vis op een ovale hittebestendige schotel en schep er de marinade overheen. Besprenkel hem met de bacon, paddestoelen en lente-uitjes.
4. Zet de schotel op een roostertje in een wok of grote pan met water. Leg een deksel op de pan en laat het gerecht 12 minuten mee stomen. De vis moet makkelijk in stukken uiteenvallen. Heet opdienen','/static/img/china.jpg',19,2,8,1,14,9);
INSERT INTO `recipe` VALUES (513,'Tsjing Ho Jip Tsjoe Juk - gestoomd varkensvlees in lotusbladeren','','1&frac12; - 1&frac34; kg mager buikspek
5 eetlepels grof gemalen rijst
60 ml sojasaus
30 ml hoisinsaus
1&frac12; theelepel gegiste bruine bonenkaas
2 theelepels suiker
5 ml chilisaus
30 ml droge sherry
snufje vijfkruidenpoeder
2 grote gedroogde lotusbladeren, geweekt tot ze zacht zijn, en dan afgegoten','2018-09-26 19:09:45.086420','1. Snijd het vlees in plakken van ongeveer 6 x 15cm x 5 mm. Verhit de gemalen rijst in een droge bakpan en roer hem tot hij begint te ruiken.
2. Haal de pan van het vuur en meng de sojasaus, de hoisinsaus, de bonenkaas, suiker, chilisaus, kerry en vijfkruidenpoeder erdoor. Voeg de plakken vlees toe en wentel ze door het mengsel.
3. Spreid de lotusbladeren uit en leg een helft van het varkensvleesmengsel midden op elk blad.
4. Pak het mengsel zorgvuldig in en maak er een stevig pakje van.
5. Let de pakketjes in een stoompan boven een wok of grotere pan met water en laat ze 2&frac12; tot 3 uur stomen. 
6. Vouw voor het opdienen het pakketje open en verwijder de lotusbladeren. Het vlees hoort heel sappig te zijn en de smaak van de lotusbladeren moet erin getrokken zijn.','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (514,'Fang Sie Thong - Chinese koolsoep met cellofaanmie','','30 ml olie
1','2018-09-26 19:09:45.086420','1. Verhit de olie in een grote pan. Voeg de kool, paddestoelen, spek en gedroogde garnalen toe. Bak die al roerend 3 minuten boven hoog vuur. Giet de bouillion erbij en zout het mengsel. Breng het aan de kook en laat het 5 minuten heel zacht doorkoken.
2. Doe de mie en de sojasaus erbij. Breng alles weer aan de kook en laat het nog 20 minuten sudderen. Sprenkel de wijnazijn er overheen met de uitjes en de sesamolie. Laat dit allemaal nog eens 2 tot 3 minuten zachtjes koken. Voeg peper toe naar smaak. Warm opdienen.','/static/img/china.jpg',19,4,6,1,14,9);
INSERT INTO `recipe` VALUES (515,'Hoi Zien Fang - Zeebanket met rijstnoedels','','100 gram verse of ingeblikte clams (mosseelen)
&frac12; kg rijstnoedels
60 ml olie
2 fijngehakte uien
3 plakken gemberwortel, in dunne sliertjes
3 plakken bacon, in kleine stukjes
2 eetlepels Chinese sneeuw pickles
4 grote gedroogde Chinese paddestoelen, 20 minuten geweekt, uitgelekt, van steeltjes ontdaan en in stukjes gesneden
1&frac12; eetlepel gedroogde garnalen, 15 minuten geweekt en uitgelekt
1 dl bouillon
45 ml sojasaus
1 gram zout
100-250 gram broccoli, in roosjes verdeeld
5 eetlepels gepelde grote garnalen
100 gram verse inktvis, in kleine stukjes
6 oesters(eventueel)
30 ml droge sherry','2018-09-26 19:09:45.086420','1. Verse clams of mosselen moeten eerst uit de schelp gehaald worden, ingeblikte clams moeten eerst uitlekken. 
2. Laat de noedels (rijststokjes)7 &agrave; 8 minuten in water koken, giet ze af en spoel ze in een vergiet onder koud stromend water om zoveel mogelijk meel te verwijderen.
3. Verhit de olie in een grote pan. Voeg de uien, gember, bacon, pickles, paddestoelen, gedroogde garnalen en clams (of mosselen) toe en bak ze al roerend 3 minuten boven een matig vuur. Voeg de helft van de bouillion toe met 30 ml/2 eetlepels van de sojasaus en het zout; laat dit ook nog eens 1&frac12; minuut bakken.
4. Doe de noodles erbij en roer alles goed door elkaar. Zet het vuur hoger en laat alles onder voortdurend roeren nog 3 tot 4 minuten koken. Haal van het vuur. 
5. Smelt de reuzel in een andere pan. Doe daar de broccoli bij en laat die op een hoog vuur, voortdurend roerend, 2 minuten bakken. Voeg hier de overgebleven sojasaus en bouillion aan toe met de verse garnalen, inktvis en eventueel oesters; nog 2 minuten  roerend bakken.
6. Giet de sherry er langzaam bij en haal van het vuur. Warm houden. Zet het noedelmengsel weer op het vuur en warm het in een halve minuut op. Breng het mengsel over op een serveerschotel. Bedek het met broccoli-vismengsel en dien alles warm op.','/static/img/china.jpg',19,2,4,1,14,9);
INSERT INTO `recipe` VALUES (516,'Tsja Aab - krokante eend','','1&frac34; kg eend
olie om te frituren
Saus:
1,2 liter bouillion
600 ml gele wijn of droge sherry
100 ml sojasaus
4 eetlepels sojabonenpasta
60 ml hoisinsaus
4 uien, in ringen gesneden
6 plakken gemberwortel
1&frac12; theelepel suiker
6 knoflookteentjes
1 kippenbouillionblokje
1 theelepel vijfkruidenpoeder
1 kg varkensbotten
&frac12; kg runderschenkelvlees in dobbelsteentjes
Bijgerechten
10-12 Mandarijnse pannekoekjes
75 ml hoisinsaus
2 komkommers, geschild en in de lengte in repen gesneden.
4-5 fijngehakte lente-uitjes','2018-09-26 19:09:45.086420','1. Leg de eend in de wok of pan met kokend water. Laat de eend 10 minuten koken en haal hem dan uit de pan.
2. Meng de ingredi&euml;nten voor de saus in een grote wok of pan. Breng ze aan de kook, dek de pan af en laat de saus 30 minuten zachtjes pruttelen; vis de botten eruit. Leg de eend in de saus en wentel hem er goed doorheen. Breng het gerecht aan de kook. Leg een deksel op de pan en laat alles nog 1&frac12; uur zachtjes koken, waarbij de eend af en toe omgedraaid moet worden. Haal de eend uit de saus en leg hem op een metalen rooster om hem goed uit te laten druipen tijdens het afkoelen.
3. Als de eend volkomen droog is, wordt de olie verhit tot 180&deg;C. Laat de eend in de olie zakken en frituur hem 8-10 minuten, waarbij er voortdurend olie over de bovenliggende kant van de eend geschept moet worden.
4. Laat de eend uitdruipen en leg hem op een schotel. Eventueel kan de eend nog gegarneerd worden met plakjes komkommer, krullen citroenschillen en takjes peterselie. 
5. Warm opdienen met de bijgerechten. Het vlees behoort zacht genoeg te zijn om het met eetstokjes van de botten te verwijderen.','/static/img/china.jpg',19,2,3,1,14,9);
INSERT INTO `recipe` VALUES (517,'Garnalenomelet met oestersaus','','<i>4 personen</i>
2 gedroogde chinee paddestoelen
400 gram rauwe garnalen
3 eetlepels olie
5 cm verse gemberwortel, geraspt
125 gram bamboescheuten uit blik, uitgelekt, gehakt
6 lente-uitjes
5 eieren
2 eetlepels water','2018-09-26 19:09:45.086420','1. Week de paddestoelen 20 minuten in heet water of tot ze zacht zijn. Laat ze uitlekken en snijd ze in dunne reepjes. Verwijder de harde steeltjes
2. Pel de garnalen en maak ze schoon. Hak ze grof.
3. Verhit 1 eetlepel olijfolie in een wok en roerbak gember en garnalen 2 minuten op hoog vuur. Schep ze over op een bord. Roerbak bamboescheuten, lente-ui en paddestoelen 1 minuut. Schep ze over op een bord en maak de wok schoon met keukenpapier.
4. Klop eieren, water, zout en peper in een kom schuimig. Doe de rest van de olie in de wok en draai de wok zodat ook de zijden met olie bedekt zijn. Verhit de olie tot hij begint te roken. Klop het eiermengsel nog even door en giet het in de hete wok. Draai de wok rond zodat de omelet &frag12; cm dik is. Bak hem 1 minuut. Schep met een schuimspaan de garnalen en de bamboescheuten op de omelet. Duw met een spatel de rand van de omelet voorzichtig opzij en houdt de wok scheef, zodat het ontstolde ei naar de bodem loopt. Herhaal dit langs de hele rand van de omelet. Bak circa 2 minuten tot de onderkant bruin en gaar is. Verdeel de omelet in 4-5 stukken met een spatel en keer ze om. Doe de stukken over op een bord als he ei bijna gestold is.
5. Schenk oestersaus, sojasaus en rijstwijn in de wok. Meng de maizena met het water, voeg dat toe en breng het al roerend aan de kook. Schep de saus over de omelet en garneer met lente-ui','/static/img/china.jpg',19,6,9,4,1,10);
INSERT INTO `recipe` VALUES (518,'Kantonese citroenkip','','<i>4 personen</i>
500 gram kipfilet
1 eierdooier, losgeklopt
1 eetlepel water
2 eetlepel sojasaus
2 eetlepel droge sherry
60 gram maizena, extra
2&frac12; eetlepel bloem
olie om in te frituren
Citroengras
80 ml vers citroengras
2 eetlepels water
2 eetlepels suiker
1 eetlepel droge sherry
2 eetlepels maizena
1 eetlepel water, extra
4 lente-uitjes, in dunne ringen','2018-09-26 19:09:45.086420','1. Snijd kipfilet in reepjes van circa 1 cm. Doe ze in een schaal. Roer ei, water, sojasaus, sherry en maizena tot een glad mengsel en giet dit over de kip. Roer goed en laat het 10  minuten rusten.
2. Zeef de extra maizena en de bloem op een bord. Wentel de uitgelekte kipreepjes erdoor en leg ze in een enkle laag op een bord.
3. Verhit de olie in een wok of pan; de olie is heet genoeg als een stukje brood bruin wordt in 30 seconden. leg een paar stukjes kip voorzichtig in de olie en bak ze goudbrui. Haal ze met een schuimspaan uit de olie en laat ze uitlekken op keukenpapier. Frituur alle kipreepjes en maak vervolgens de saus.
Citroensaus
1. Meng citroensap, water, suiker en sherry in een steelpannetje. Breng het mengsel aan de kook op matig vuur en roer tot de suiker is opgelost. Meng de maizena met het extra water en roer dit door de saus. Laat de saus even doorkoken.
2. Verhit vlak voor het serveren de olie in de wok opnieuw. Doe alle kipreepjes in de zeer hete olie en bak ze in 2 minuten bruin en krokant. Haal ze met een schuimspaan uit de olie en laat ze uitlekken op keukenpapier. Leg de kip op een bord, giet de saus erover en garneer met lente-ui
Aan Tafel:
De eerste keer frituren kunt u enkele uren van tevoren doen.','/static/img/china.jpg',19,2,3,4,14,10);
INSERT INTO `recipe` VALUES (519,'Ribeye met mandarijn','','<i>4 personen</i>
350 gram ribeye, in reepjes
2 theelepels sojasaus
2 theelepels droge sherry
1 theelepel verse gemberwortel, fijngehakt
1 theelepel sesamolie
1 eetlepel arachide-olie
&frac14; gemalen witte peper
2 theelepels gedroogde mandarijnenschil, fijngesneden
2 theelepels sojasaus, extra
1&frac12; theelepel suiker
1&frac12; maizena
80 ml runderbouillon','2018-09-26 19:09:45.086420','1. Doe het vlees in een schaal. Meng sojasaus, sherry, gember en sesamolie en roer dit door het vlees. Laat het 15 minuten marineren.
2. Verhit de olie in een wok of een koekenpan met een dikke bodem. Draai de pan zodat de olie zich goed verspreidt. Roerbak het vlees ca 2 minuten op hoog vuur tot het van kleur verandert.
3. Roer peper, mandarijnenschil, extra sojasaus en suiker door het vlees.
4. Roer de maizena met wat bouillion tot een papje en voeg dat bij de rest van de bouillion. Giet dit mengsel al roerend bij het vlees. Blijf roeren tot de saus kookt en dikker wordt. Serveer met rijst.','/static/img/china.jpg',19,2,2,4,14,10);
INSERT INTO `recipe` VALUES (520,'Kippensoep met zoete ma','','<i>4 personen</i>
200 gram kipfilet
1 theelepel zout
2 eiwitten
7&frac12; dl kippenbouillion
250 gram ma','2018-09-26 19:09:45.086420','1. Spoel de kip af met koud water en dep hem droog met keukenpapier. Pureer de kip in de keukenmachine. Voeg het zout toe.
2. Klop de eiwitten schuimig. Schep het eiwit door de kip.
3. Breng de bouillion aan de kook en voeg de ma','/static/img/china.jpg',19,4,3,3,14,10);
INSERT INTO `recipe` VALUES (521,'Wontonsoep','','<i>6 personen</i>
250 gram rauwe garnalen
4 gedroogde Chinese paddestoelen
250 gram varkensgehakt
1 theelepel zout
1 eetlepel sojasaus
1 theelepel sesamolie
2 lente-uitjes, fijngehakt
1 theelepel geraspte verse gember
2 eetlepels waterkastanjes in dunne plakjes
250 gram wontonvellen
1&frac14; liter kippen- of runderbouillion
4 lente-uitjes, in dunne ringen, ter garnering','2018-09-26 19:09:45.086420','1. Pel de garnalen, maak ze schoon en hak ze fijn.
2. Laat de paddestoelen 20 minuten weken in heet water. Giet ze af en knijp ze uit. Verwijder de steeltjes en hak de rest fijn. Meng garnalen, paddestoelen, gehakt, zout, sojasaus, sesamolie, lente-ui, gember
3. Werk met een wontonvel tegelijk. leg de rest onder een schone, vochtige theedoek om uitdrogen te voorkomen. Leg een flinke theelepel vulling in het midden van het velletje. Bevochtig de hoeken en vouw het deeg diagonaal. Vouw de punten naar het midden. Leg de wontons op een met bloem bestoven bord.
4. Kook de wontons 4-5 minuten in kokend water. Breng de bouillion aan de kook. Haal de wontons met een schuimspaan uit het water en leg ze in een soepkom of -bord. Giet de hete bouillion erop en garneer met lente-ui. Serveer direct.
Aan Tafel:
De wontons kunnen tot en met stap 3 een dag van tevoren gemaakt worden. Bewaar ze in de koelkast. Kook ze vlak voor het opdienen. Een pakje van 250 gram bevat 60 wontonvelletjes. De rest kunt u invriezen.','/static/img/china.jpg',19,4,4,4,14,10);
INSERT INTO `recipe` VALUES (523,'Sint-Jacobsschelpen met gember','','<i>4 personen</i>
12 sint-jacobsschelpen in de schelp
&frac14; theelepel gemalen witte peper
2 eetlepels sojasaus
2 eetlepels sherry
2 eetlepels olie
8 cm verse gemberwortel, geraspt
1 lente-uitje, alleen het witte deel, in lange reepjes','2018-09-26 19:09:45.086420','1. Bestrooi de sint-jacobsschelpen met peper. Meng de sojasaus en de sherry.
2. Verhit de olie in een grote pan met een dikke bodem. Doe voorzichtig een paar schelpen (bolle kant naar boven) in de hete olie en schroei ze in 30 seconden dicht. Doe ze over op een diep bord. Bak de rest van de schelpen.
3. Besprenkel de schelpen met het soja-sherry-mengsel en bestrooi ze met gember en lente-ui.
4. Vul een wok voor eenderde met water en breng aan de kook. Doe 6 schelpen in een stoommandje met bakpapier.Zet het mandje in de wok en stoom in de schelpen afgedekt in 1 tot 1&frac12; minuten gaar. Houd ze warm en stoom de overige schelpen. Serveer direct.','/static/img/china.jpg',19,7,4,3,14,10);
INSERT INTO `recipe` VALUES (524,'Kristalgarnalen','','<i>4 personen</i>
750 gram rauwe garnalen, middelgrote garnalen
2 lente-uitjes, gehakt
2 theelepel zout
1 eetlepel maizena
1 eiwit, schuimig geklopt
125 gram sugar snaps
1 kleine rode paprika
1 eetlepel oestersaus
2 theelepels droge sherry
1 theelepel maizena, extra
1 theelepel sesamolie
olie om in te frituren','2018-09-26 19:09:45.086420','1. Pel de garnalen en maak ze schoon. Zet de schalen met de koppen en de lente-ui in een pan onder water. Breng dit aan de kook en laat de bouillon onafgedekt 15 minuten sudderen. Zeef hem in een kom. Meet 1','/static/img/china.jpg',19,7,4,4,NULL,NULL);
INSERT INTO `recipe` VALUES (525,'Krokant gefrituurde krab','','<i>4 personen</i>
1 kilo verse krab
1 ei, losgeklopt
1 chilipeper, fijngesneden','2018-09-26 19:09:45.086420','1. Leg de krab 2 uur in de vriezer of tot hij dood is (dit is de meest humane manier om krab of kreeft te doden)
2. Borstel de krab schoon. Maak met uw vingers het onderste pantser los en breek het af. Draai de poten en de scharen eraf. Trek het lijf uit elkaar en verwijder de veerachtige kieuwen en de ingewanden. Hak de krab met een hakmes in vieren. Breek de scharen met een klap met de achterkant van het hakmes.
3. Meng het ei met de chilipeper, knoflook, zout en peper in een grote kom. Voeg de krab toe en marineer hem 1 nacht in de koelkast.
4. Paneermengsel:zeef alle ingredienten op een groot bord. Paneer de krab.
5. Verhit de olie in een wok en frituur de scharen 7-8 minuten, het lijf 3-4 minuten en de poten 2 minuten. Laat de krab uitlekken op keukenpapier en serveer. 
Aan Tafel:
Eet krab met de vingers. Dit gerecht wordt zonder rijst en bijgerechten geserveerd.','/static/img/china.jpg',19,7,4,9,14,10);
INSERT INTO `recipe` VALUES (526,'Hete speklapjes','','<i>4 personen</i>
750 gram speklapjes
1 eetlepel arachide-olie
2 theelepels knoflook, fijngehakt
60 ml droge sherry
1 eetlepel chilibonenpasta of sambal oelek
5 dl water
2 theelepels hoisinsaus
3 theelepels suiker
1 eetlepel sojasaus, bij voorkeur donkere','2018-09-26 19:09:45.086420','1. Zet he vlees onder water in een grote pan en breng het aan de kook. Laat het 5 minuten sudderen en giet het af.
2. Doe de overige ingredienten en de speklapjes in een wok of pan met dikke bodem. Laat het geheel 45 minuten afgedekt sudderen. Giet af en bewaar 2&frac12; dl vocht. Verhit een wok of koekenpan met dikke bodem en bak de speklapjes bruin.
3. Voeg de achtergehouden 2&frac12; dl kookvocht toe en verwarm op matig vuur tot de saus glazig is. 
4. Snijd de speklapjes in stukken van 3 cm, giet de saus erover en serveer.','/static/img/china.jpg',19,2,2,10,14,NULL);
INSERT INTO `recipe` VALUES (527,'Roergebakken rosbief met peultjes','','<i>4 personen</i>
400 gram rosbief, in reepjes
2 eetlepels sojasaus
&frac12; theelepel verse gemberwortel, geraspt
2 eetlepels arachide-olie
200 gram peultjes, afgehaald
1&frac12; theelepel maizena
1&frac14; dl runderbouillon
1 theelepel sojasaus, extra
&frac14; theelepel sesamolie','2018-09-26 19:09:45.086420','1. Doe het vlees in een schaal. Meng de gember met de sojasaus en roer dit door het vlees. 
2. Verhit de olie in een wok of koekepan met dikke bodem. Draai de pan rond zodat de hele pan met olie bedekt is. Voeg rosbief en peultjes toe en roerbak ze op hoog vuur 2 minuten of tot het vlees donker kleurt.
3. Roer de maizena met wat bouillon tot een glad mengsel. Voeg het papje met de rest van de bouillon, extra sojasaus en sesamolie aan het vlees toe. Roer tot de saus dikker wordt. Serveer er gekookt rijst bij.
Aan Tafel:   
Als u het vlees 30 minuten in de vriezer legt, laat het zich gemakkelijker in dunne reepjes snijden.','/static/img/china.jpg',19,2,2,3,14,NULL);
INSERT INTO `recipe` VALUES (528,'Noedels met varkensvlees en garnalen','','<i>4 personen</i>
10 grote garnalen
200 gram Chinees geroosterd varkensvlees
500 gram Shanghainoedels
60 ml aracide-olie
2 theelepels knoflook, fijngehakt
1 eetlepel zwarte bonensaus
1 eetlepel sojasaus
1 eetlepel witte azijn
60 ml kippenbouillon
125 gram (verse) bamboescheuten (uiteinden verwijdered)
3 lente-uitjes, in dunne ringen
verse koriander, ter garnering','2018-09-26 19:09:45.086420','1. Pel de garnalen en maak ze schoon. Snijd het varkensvlees in dunne reepjes.
2. Kook de noedels in kokend water bijna gaar en giet ze af.
3. Verhit de olie in een wok of koekenpan met dikke bodem en draai de pan rond zodat de hele pan met olie  bedekt is. Voeg de knoflook toe en bak hem al roerend goudbruin. Voeg garnalen en varkensvlees toe en roerbak ze circa 3 minuten tot de garnalen roze zijn. Voeg noedels, zwarte bonensaus, sojasaus, azijn en bouillon toe. Roerbak op hoog vuur tot alles door en door warm is en de saus opgnomen is.
4. Voeg de bamboescheuten en de lente-ui toe. Neem de pan van het vuur en strooi er de verse koriander over. 
Aan Tafel:
Chinees geroosterd varkensvlees kunt u kant en klaar kopen in Chinese toko''s. Als u van heet houdt, voeg dan op het laatst wat fijgehakte chilipeper of chili-olie toe.','/static/img/china.jpg',19,2,2,4,14,10);
INSERT INTO `recipe` VALUES (529,'Chinese gebakken rijst','','<i>4 personen</i>
2 losgeklopte eieren
1 middelgrote ui
4 lente-uitjes
250 gram ham
2 eetlepels arachide olie
2 eetlepels reuzel (naar wens)
265 gram langkorrelige rijst, gekookt en afgekoeld
40 gram diepvriesdoperwten
2 eetlepels sojasaus
250 gram gekookte en gepelde kleine garnalen','2018-09-26 19:09:45.086420','1. Voeg zout en peper aan de eieren toe.
2. Snijd de ui in 8 parten. Snijd de lente-ui diagonaal in stukjes. Snijd de ham in dunne reepjes
3. Verhit 1 eetlepel olie in een wok of koekenpan en giet de eieren erin. Laat telkens wat ongestold ei over de rand van de omelet naar beneden lopen tot alles gestold is. Roer de omelet in stukken en leg ze op een bord.
4. Verhit de rest van de olie en eventueel de reuzel in de wok. Draai de pan rond om de zijden met olie te bedekken. Voeg ui toe en roerbak tot de ui glazig is. Voeg ham toe en roerbak 1 minuut. Voeg rijst en doperwten toe en roerbak 3 minuten tot de rijst warm is. Voeg eieren, sojasaus, lente-ui en garnalen toe. Laat het geheel goed warm worden en serveer.
Aan Tafel
Kook de rijst bij voorkeur een dag van tevoren en bewaar hem een nacht in de koelkast. De gebakken rijst wordt dan niet plakkerig.','/static/img/china.jpg',19,6,5,3,14,10);
INSERT INTO `recipe` VALUES (530,'Roergebakken gamba''s met prei','','<i>6 personen</i>

800 gram gamba''s
2 preien, alleen het witte deel
1 verse chilipeper
3 cm verse gemberwortel
3 eetlepels olie
2 theelepels lichte sojasaus
1 eetlepel mirin
80 ml kippenbouillion
1 theelepel maizena','2018-09-26 19:09:45.086420','1. Pel de gamba''s en maak ze schoon. Laat de staart intact.
2. Was de preien. Snijd ze in stukken van 4 cm en snijd die in de lengte in dunne reepjes. Verwijder de zaden van de chilipeper en hak hem fijn. Hak de gember fijn.
3. Verhit een beetje olie in een wok en roerbak de gamba''s in porties tot ze roze zijn. Haal ze uit de olie. Giet de rest van de olie in de wok en roerbak prei, peper en gember 40 seconden op hoog vuur. Schuif ze naar de zijkant en voeg de gamba''s toe. Roerbak circa 1&frac12; minuten
4. Voeg sojasaus en mirin toe. Meng de maizena met de bouillion en giet het papje in de wok. Laat de saus op hoog vuur al roerend binden en serveer direct.','/static/img/china.jpg',19,2,4,3,14,10);
INSERT INTO `recipe` VALUES (531,'Kip en groenten uit de kleipot','','<i>4 personen</i>
500 gram kipfilet
1 eetlepel sojasaus
1 eetlepel droge sherry
6 gedroogde chinese paddestoelen
2 kleine preien
250 gram zoete aardappelen
2 eetlepels arachide-olie
5 cm vere gemberwortel, fijngehakt
1&frac14; dl kippenbouillion
1 theelepel sesamolie
3 theelepel maizena','2018-09-26 19:09:45.086420','1. Spoel de kipfilets schoon onder de koude kraan en dep ze droog met keukenpapier. Snijd ze in kleine stukjes. Meng de kip met sojasaus en sherry in een schaal en zet die 30 minuten afgedekt in de koelkast.
2. Week de paddestoelen 20 minuten in heet water. Giet ze af en knijp ze uit. Verwijder de steeltjes en snijd de rest in kleine stukjes. Was de preien goed en snijd ze in dunne ringen. Snijd de aardappelen in dunne plakken.
3. Laat de kip uitlekken en bewaar de marinade. Verhit de helft van de olie in een wok of koekenpan. Draai de pan zodat de olie ook de zijden bedekt. Roerbak de helft van de kip goudbruin. Schep deze over naar een vuurvaste pot van klei of een braadpan en bak de rest van de kip.
4. Verhit de rest van de olie in de wok. Roerbak de prei en gember 1 minuut. Voeg paddestoelen, marinade, bouillion en sesamolie toe en bak het geheel 2 minuten. Doe het mengsel samen met de aardappelen bij de kip en bak het op zeer laag vuur in 20 minuten gaar.
5. Roer de maizena glad met wat water en voeg dit al roerend toe. Roer tot de saus gebonden is. Serveer er gekookte witte of bruine rijst of noedels bij.
Aan Tafel:
Zoals voor alle stoofpotten geldt, kunt u dit gerecht het beste 1 of 2 dagen van tevoren maken en in de koelkast bewaren. U kunt het ook invriezen; laat dan de aardappelen weg. Stoom of kook ze terwijl u de rest opwarmt en schep ze erdoor.','/static/img/china.jpg',19,2,3,10,14,NULL);
INSERT INTO `recipe` VALUES (532,'Pekingeend met mandarijnen pannenkoekjes','','<i>6 personen</i> 
1 eend (1,7 kg)
3 liter kokend water
1 eetlepel honing
1&frac14; dl heet water
1 komkommer
12 lente-uitjes
2 eetlepels hoisinsaus
Mandarijnenpannenkoekjes
300 gram bloem
2 theelepel suiker
2&frac12; dl kokend water
1 eetlepel sesamolie','2018-09-26 19:09:45.086420','1. Was de eend en verwijder de nek en eventuele grote stukken vet uit het karkas. Houd de eend boven de gootsteen en schenk langzaam het kokend water erover. Draai de eend rond. Misschien hebt u nog een ketel kokend water nodig.
2. Leg de eend op een rooster in een ovenschaal. Meng honing en water en bestrijk de eend hier goed mee. Droog de eend door hem circa 5 uur op te hangen op een koele, goed geventilleerd plaats. U kunt ook een ventilator gebruiken; zet die op een koele plaats op 1 m afstand van de eend. Wanneer de huid papierachtig aanvoelt, is de eend klaar.
3. Verwijder de zaden uit de komkommer en snijd hem in dunne reepjes. Snijd de lente-uitjes in stukken van 8 cm; gebruik alleen het onderste witte gedeelte. Snijd de bovenkant zeer fijn in en leg ze in ijswater om er kwastjes van te maken.
4. Verwarm de oven voor op 210C. Rooster de eend 30 minuten op het rooster in de ovenschaal. Haal de eend uit de oven, laat hem 2 minuten staan en doe hem over op een warm bord.
5. Mandarijnenpannenkoeken: stort de bloem en de suiker in een kom. Giet het hete water erbij. Roer af en toe en laat het mengsel afkoelen tot het lauwwarm is. Kneed het op een met bloem bestoven aanrecht. Dek het af en laat het 30 minuten rusten.
6. Neem twee afgestreken eetlepels deeg. maak van ieder stuk een balletje. Rol de balletjes uit tot rondjes met een doorsnee van 8 cm. Bestrijk een van de rondjes met sesamolie en plak het andere erop. Rol ze uit tot een pannenkoek van 15 cm doorsnee. Maak op deze manier 10 dubbele pannenkoeken.
7. Verwarm een koekenpan en bak de pannenkoeken een voor een. Draai de pannenkoeken om als er luchtbellen aan de oppervlakte verschijnen; bak dan de andere kant. Oefen met een schone theedoek druk uit op de pannenkoek; als de pannenkoek iet bol gaat staan, is hij gaar. Leg ze op een bord. Als ze voldoende afgekoeld zijn, trek dan de twee pannenkoekjes voorzichtig van elkaar. leg ze op een bord en dek ze af met een theedoek om uitdrogen te voorkomen.
8. Snijd de eend in dunne reepjes en leg die op een schaal. Leg komkommer en lente-ui op een andere schaal. Schenk de hoisinsaus in een kommetje. Aan tafel neemt iedereen een pannenkoek en belegt die met wat hoisinsaus, komkommer en lente-ui en ten slotte eend. Vouw de pannenkoek daarna tot  een envelopje.
Aan Tafel:
De pannenkoeken kunnen enkele uren van tevoren gemaakt en op een koele plaats bewaard worden. Verwarm ze kort voor het serveren. Stoom ze in een vergiet met een theedoek erin of verwarm ze in aluminiumfolie 2 minuten in een gematigd hete oven.','/static/img/china.jpg',19,6,3,5,14,10);
INSERT INTO `recipe` VALUES (533,'Kip met amandelen','','<i>4 personen</i>
2&frac12; dl olie
125 gram gepelde amandelen
1 eetlepel sojasaus
2 theelepels maizena
300 gram kipfilet, diagonaal in reepjes
1 middelgrote ui, gesnipperd
1 stengel bleekselderij, diagonaal gesneden
50 gram haricots verts
60 gram bamboescheuten
2 cm verse gemberwortel, geraspt
3 eetlepels kippenbouillon
2 eetlepels chinese rijstwijn of medium sherry
2 eetlepels water
1 theelepel sesamolie
2 theelepels maizena, extra
&frac14; theelepel zout
&frac14; theelepel witte peper','2018-09-26 19:09:45.086420','1. Verhit de olie in een steelpan en frituur de amandelen in 1 minuut goudbruin. Laat ze uitlekken op keukenpapier. Bewaar de olie.
2. Roer maizena met de sojasaus tot een glad papje. Roer dit door de kip en laat hem 5 minuten staan. Verhit 2 eetlepels van de olie die u voor de amandelen gebruikt hebt in een wok. Roerbak de kip 2 minuten op hoog vuur in de hete olie en doe hem over op een bord.
3. Voeg indien nodig extra olie toe en roerbak ui en selderij 4 minuten in de wok. Voeg boontjes, bamboescheuten en gember toe en roerbak ze 1 minuut. Voeg bouillon, rijstwijn of sherry, water en sesamolie toe en laat het geheel afgedekt 30 seconden sudderen. Roer de extra maizena glad met 1 eetlepel water en roer dat door de saus. Voeg kip en amandelen toe, warm het gerecht goed door en voeg peper en zout naar smaak toe. Serveer direct.','/static/img/china.jpg',19,2,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (534,'Mongools lams-vlees','','<i>4 personen</i>
1 kg lams-haas of filet
2 tenen knoflook, geperst
1 eetlepel verse gemberwortel, geraspt
1 eetlepel hoisinsaus
1 eetlepel sesamolie
1 eetlepel sesamzaad
2 eetlepels arachide-olie
4 uien, in partjes
3 theelepels maizena
3 eetlepels sojasaus
60  ml sherry','2018-09-26 19:09:45.086420','1. Snijd het vet en eventuele pezen van het vlees. Snijd het dwars op de draad in reepjes. Meng knoflook, gember, hoisinsaus en sesamolie in een kom. Voeg het vlees toe, schep het om en laat het 1 uur afgedekt marineren in de koelkast.
2. Rooster de sesamzaadjes in een koekenpan op matig vuur in 3-4 minuten goudbruin. Haal ze onmiddelijk uit de pan om aanbranden te voorkomen.
3. Verhit de arachide-olie in een wok of koekenpan met dikke bodem. Roerbak de ui circa 10  minuten. Neem de partjes uit de pan en houd ze warm.
4. Verhit de wok opnieuw en roerbak het vlees op hoog vuur in porties bruin, maar niet gaar. Doe al het vlees terug in de wok.
5. Meng maizena, sojasaus en sherry tot een glad papje. Voeg dat aan het vlees toe en laat het even doorkoken.
6. Serveer het vlees op een bedje van ui en bestrooi het met sesamzaad.','/static/img/china.jpg',19,2,2,10,14,10);
INSERT INTO `recipe` VALUES (535,'Szechuansoep','','<i>6-8 personen</i>
4 gedroogde Chinese paddestoelen
45 gram rijstvermicelli
1 liter kippenbouillon
175 gram gehakt, gekookt kippenvlees
230 gram bamboescheuten uit een potje of blik, uitgelekt en fijngehakt
1 theelepel verse gemberwortel, geraspt
1 eetlepel maizena
80 ml water
1 ei, losgeklopt
1 theelepel tomatenketchup
1 eetlepel sojasaus
1 eetlepel azijn
2 theelepel sesamolie
2 lente-uitjes, fijngehakt','2018-09-26 19:09:45.086420','1. Week de paddestoelen 20  minuten in heet water. Knijp ze uit en hak ze fijn. Week de noedels 20  minuten in heet water, laat ze uitlekken en snijd ze in korte stukken.
2. Breng de bouillon in een grote pan aan de kook. Voeg paddestoelen, noedels, kip, bamboescheuten en gember toe en laat het geheel op laag vuur zachtjes koken.
3. Roer de maizena met het water glad en schenk het papje al roerend bij de soep. Giet al roerend het ei bij de soep.
4. Neem de pan van het vuur. Voeg tomatenketchup, azijn, sesamolie en lente-ui toe. Breng de soep op smaak met zout en peper. Bestrooi hem met lente-ui.
Aan Tafel:
Voeg enkele druppels chili-olie toe, als u van heet houdt.','/static/img/china.jpg',19,4,3,10,14,NULL);
INSERT INTO `recipe` VALUES (536,'Zwarte satijnen kip','','<i>10 personen</i>
3 gedroogde Chinese paddestoelen
1','2018-09-26 19:09:45.086420','1. Week de paddestoelen 20 minuten in het hete water. Knijp ze uit en bewaar het vocht. Roer het vocht samen met de donkere sojasaus, suiker, wijn, sojasaus, sesamolie en steranijs in een steelpan goed door.
2. Bestrijk de binnenkant van de kip met gember en zout. Leg de kip in een grote pan en bedek hem met de sojamarinade. Voeg de paddestoelen toe. Braad de kip op laag vuur in circa 55 minuten gaar. Haal de kip uit de pan. Kook de saus op hoog vuur in tot hij dik en stroperig is. Verwijder de paddestoelen.
3. Snijd de kip op z''n Chinees. Leg het vlees op een schaal, giet de saus eroveren bestrooi hem met  lente-ui. De saus kan ook apart geserveerd worden.
Aan Tafel:
Donkere saus is te koop in Aziatische toko''s','/static/img/china.jpg',19,2,3,10,14,10);
INSERT INTO `recipe` VALUES (537,'Honinggamba''s','','<i> 4 personen</i>
16 gamba''s
30 gram maizena
40 gram sesamzaad
olie om in te frituren
90 gram honing
Beslag
125 gram zelfrijzend bakmeel
30 gram maizena
2,5 dl water
&frac14; theelepel citroensap
1 eetlepel olie','2018-09-26 19:09:45.086420','1. Pel de gamba''s en maak ze schoon. Laat de staarten intact. Dep ze droog met keukenpapier en haal ze door de maizena.
2. Rooster de sesamzaadjes in een koekenpan in 3- 4 minuten op matig vuur goudbruin. Haal ze daarna direct uit de pan, anders branden ze aan.
3. Beslag: zeef bakmeel en maizena in een kom en maak een kuiltje in het midden. Meng water, citroensap en olie in een grote koekenpan. Doop een paar gamba''s in het beslag, laat we even uitlekken en leg ze met een tang of schuimspaan in de olie. Bak ze in 2-3 minuten goudbruin. Laat ze uitlekken op keukenpapier en houd ze warm.
5. Verwarm de honing in een grote pan op laag vuur (niet te heet laten worden; dan karameliseert de honing en gaat de smaak verloren).
6. Doe de gamba''s bij de honing in de pan. Meng voorzichtig door met de pan te schudden. Leg ze op een schaal en bestrooi ze met sesamzaad. Serveer direct.','/static/img/china.jpg',19,7,4,4,14,10);
INSERT INTO `recipe` VALUES (538,'Rosbief met paprika en oestersaus','','<i>6 personen</i>
500 gram rosbief
1 eetlepel sojasaus
1 eiwit, losgeklopt
1 eetlepel maizena
&frac14; theelepel zwarte peper
2 eetlepels arachideolie
1 eetlepel verse gember, geraspt
&frac14; vijfkruidenpoeder
1 kleine groene paprika, in ruitjes gesneden
2 stengels bleekselderij, in dunne ringen
425 gram baby-mais uit blik, uitgelekt
2 eetlepels oestersaus
2 lente-uitjes, in schuin ringen','2018-09-26 19:09:45.086420','1. Snijd eventueel vet en pezen van het vlees en snijd het dwars op de draad in reepjes. Meng sojasaus, eiwit, maizena en peper er roer dit door het vlees.
2. Verhit 1 eetlepel olie in een wok of pan met een dikke bodem. Draai de pan rond zodat de olie ook de wanden bedek. Roerbak gember, vijfkruidenpoeder, paprika, selderij en mais ca 2 minuten op hoog vuur. Haal alles uit de pan en houd het warm.
3. Verhit de rest van de olie in de wok en draai de wok rond. Schroei het vlees in porties dicht en bruin maar niet gaar.
4. Doe al het vlees in de wok, voeg de groenten en de oestersaus toe. Roerbak op hoog vuur tot alles goed heet is. Bestrooi met lente-ui en serveer direct.','/static/img/china.jpg',19,2,2,3,14,NULL);
INSERT INTO `recipe` VALUES (539,'Chinees geroosterd varkensvlees','','<i>6 personen </i>
60 ml tomatenketchup
1 eetlepel hoisinsaus
2 eetlepels honing
1 eetlepel moutextract of melasse
1 eetlepel knoflook, fijngehakt
2 eetlepels suiker
1 theelepel vijfkruidenpoeder
2theelepels maizena
1 eetlepel water
750 gm varkeshaas','2018-09-26 19:09:45.086420','1. meng tomatenketchup, hoisinsaus, honing, moutextract, knoflook, suiker en vijfkruidenpoeder in een steelpannetje. Roer de maizena glad met het water en voeg dat aan het mengsel toe. Breng aan de kook
2. Marineer de varkenshaasjes minsten 30 minuten afgedekt in de koelkast in de saus.
3. Verwarm de oven voor op 210C. Laat het vlees uitlekkenen bewaar de marinade. Leg het vlees op een rooster boven een bakplat die voor de helft met heet water gevuld is. Rooster het vlees 15 minuten.
4. Zet de oven op 180 C en laat het vlees in nog 15 minuten gaar worden. Bestrijk het vlees tussendoor af en toe met de marinade. Haal het vlees uit de oven en laat het 5minuen rusten. Snij het in schuine stukken.','/static/img/china.jpg',19,2,2,10,14,10);
INSERT INTO `recipe` VALUES (540,'Krokante kip','','<i>4 personen</i>
1 kip circa 1,3 kg
1 eetlepel honing
1 steranijs
1 stukje gedroogde mandarijnenschil
1 theelepel zout
olie om in te frituren
2 citroenen in partjes
Vijfkruidenzout
2 eetlepels zout
1 theelepel witte-peperkorrels
&frac12; theelepel vijfkruidenpoeder
&frac12; theelepel gemalen witte peper','2018-09-26 19:09:45.086420','1. Spoel de kip af met koud water. Zet de kip in een grote pan onder koud water. Voeg honing, steranijs, mandarijnenschil en zout toe en breng het aan de kook . Zet het vuur laag en laat de kip 15 minuten sudderen. Zet het vuur uit en laat de kip 15 minuten afgedekt staan. Leg de kip op een schaal en laat hem afkoelen.
2. Snijd de kip in de lengte doormidden. Zet de stukken 20 minuten onafgedekt in de koelkast.
3. Verhit de olie in een wok of pan met dikke bodem. De olie is heet genoeg als een stukje brood bruin wordt in 30 seconden. Leg voorzichtig een halve kip met het vel naar beneden in de pan. Bak beide knaten circa 6 minuten. Zorg ervoor dat het vel overal krokant wordt. Laat de kip uitlekken op keukenpapier.Doe hetzelfde met de andere helft.
4. Vijfkruidenzout: Verhit zout en peperkorrels in een pannetje tot het zout enigszins bruin wordt. Maal het mengsel in een vijzel fijn (of gebruik aluminiumfolie en een deegroller) Meng vijfkruidenpoeder en de peper erdoor en leg het zout in een diep bord.
5. Hak de kip in stukken zodat men hen met stokjes kan eten. Bestrooi de stukken met vijfkruidenzout en serveer met partjes citroen
Aan Tafel:
Restjes vijfkruidenzout kunt u enkele maanden (luchtdicht afgesloten) bewaren.','/static/img/china.jpg',21,2,3,10,14,10);
INSERT INTO `recipe` VALUES (541,'Gestoomde vis met knapperige groenten','','<i>4 personen</i>
1 baars of brasem van circa 1 kg, schoongemaakt
&frac12; theelepel zout
&frac12; theelepel witte peper
3 cm verse gemberwortel, fijngehakt
1 eetlepel sesamolie
1 eetlepel sojasaus
3 lente-uitjes
1 stengel bleekselderij
&frac12; rode paprika
1&frac14; deciliter olie','2018-09-26 19:09:45.086420','1. Spoel de binnenkant van de vis schoon en dep hem droog met keukenpapier. Bestrooi de vis met peper en zout. Doe de gember in de buikholte. Meng de sesamolie met sojasaus en bestrijk de vis ermee.
2. Snijd de lente-uitjes en selderij in stukken van 4 cm en vervolgens in dunne reepjes. Snijd de paprika in reepjes van 4 cm.
3. Maak een soort rooster van een paar houten eetstokjes in de wok en vul de wok met circa 7 cm water. Maak 3 inkepingen in het dikste gedeelte van de vis. leg de vis op een hittebestendig bord en zet het afgedekt op de eetstokjes in de wok . Breng het water aan de kook en laat het 15-20 minuten koken. Zet het vuur uit. Leg de groenten op de vis en laat het geheel 3 minuten op het afgedekte bord liggen.
4. Leg de vis over op een voorverwarmde schaal. Verhit de olie in een steelpannetje tot hij begint te roken. Giet de olie voorzichtig over de groenten en de vis. Serveer met kleine kommetjse sojasaus en chilisaus en veel gestoomde witte rijst.
Aan Tafel:
De olie moet zeer heet zijn; de groenten wordt dan lekker knapperig. U kunt de olie ook aan tafelover de vis gieten. Het geluid dat erbij hoort is nogal spectaculair.','/static/img/china.jpg',19,2,8,4,14,10);
INSERT INTO `recipe` VALUES (542,'Zoutzuur varkensvlees','','<i>4 personen</i>
350 gram varkensfricandeau, in kleine blokjes
&frac12; theelepel zout
2 eieren, losgeklopt
4 eetlepels maizena
olie om in te frituren
1 wortel, in zeer dunne plakjes
1 middelgrote ui, in partjes
160 gram verse ananas, fijngehakt
&frac12; middelgrote groene paprika, in stukjes
&frac12; middelgrote rode paprika, in stukjes
1 stengel bleekselderij, in dunne ringen
75 gram zoete ingemaakte Chinese groente, grof gehakt
3 eetlepels witte aijn
3 eetlepels sojasaus
2 eetlepels tomatenpuree, extra geconcentreerd
2 eetlepels suiker
2 eetlepesl sinaasappelsap
2 theelepels maizena, extra, vermengd met 1 eetlepel water','2018-09-26 19:09:45.086420','1. Bestrooi het vlees met het zout. Haal de stukjes vlees door de eieren en vervolgens door de maizena. Leg ze in een enkele laag op een bord.
2. Verhit de olie in een wok. Bak het vlees in porties in de niet al te hete olie goudbruin. Schep het vlees uit de wok met een schuimspaan en laat het uitlekken op keukenpapier.
3. Laat 1 eetlepel olie in de wok zitten, verwijder de rest. Roerbak de wortel, ui en ananas circa 2 minuten. Voeg paprika, selderij en ingemaakte groenten toe en roerbak nog 2 minuten
4. Meng azijn, sojasaus, tomatenpuree, suiker en sinaasappelsap in een kommetje. Voeg de extra maizena toe en roer goed. Giet de saus al roerend over de groenten. Voeg het vlees toe. Doe over in een schaal en serveer direct.
Aan Tafel:
Frituur het vlees direct nadat u het door de maizena hebt gehaald, ander wordt het plakkerig.','/static/img/china.jpg',19,2,2,10,14,NULL);
INSERT INTO `recipe` VALUES (543,'Gerookte vijfkruidenkip','','1 kip van circa 1.7 kilo
50 ml sojasaus
1 eetlepel verse gember, gerapst 
2 stukken gedroogde mandarijnenschil
1 steranijs','2018-09-26 19:09:45.086420','1. Spoel de kip schoon met koud water. Dep hem droog met keukenpapier. Verwijder eventuele stukken vet uit de buikholte
2. Leg de kip met de sojasaus en de gember in en schaal(niet van metaal. Marineer de kip minsens 4 uur of een nacht in de koelkast. Keer de kip af en toe.
3. Zet een rooster op de bodem van een grote pan. Vul de pan met water tot net onder het rooster. Leg de kip op het rooster. Breng het water aan de kook. Dek de pan goed af, zet het vuur laag en stoom de kip 15 minuten. Zet het vuur uit en laat de kip 15 minuten staan. Leg de kip in een kom.
4. Was de pan af en bedek de binnenkant met aluminiumfolie. Maal de mandarijnenschil en de steranijs in een vijzel of keukenmachine (niet te fijn). Voeg vijfkruidenpoeder en suiker toe. Strooi het mengsel op de bodem van de pan op de folie.
5. Zet het rooster weer in de pan en leg de kip erop. Zet de pan op een matig vuur. Sluit de pan goed af als de kruiden beginnen te roken. Zet het vuur laag en rook de kip 20 minuten. Test met een vleespen of de kip gaar is; er moet helder vocht uitlopen. Haal de kip uit de pan en snijd hem in stukken zodat het met stokjes gegeten kan worden. Wees voorzichtig; de temperatuur loopt zeer hoog op in deze laatste fase. Laat de pan afkoelen.','/static/img/china.jpg',19,2,3,6,14,10);
INSERT INTO `recipe` VALUES (544,'Chinese groenten','','<i>4 personen</i>

500 gram chinese groene groenten
2 theelepels arachide olie
&frac12;knoflook, fijngehakt
1 eetlepel oestersaus
&frac12; theelepel suiker
2 eetlepels water
1 theelepel sesamolie','2018-09-26 19:09:45.086420','1. Breng een grote pan water aan de kook.
2. Was de groente. Verwijder harde bladeren en stengels. Hak de groente in gelijke stukken.
3. Kook de groenten 1-2 minuten, of tot ze zacht maar nog wel stevig zijn. Haal de groenten uit de pan en laat ze goed uitlekken. leg ze in een voorverwarmde schaal.
4. Verhit de olie en voeg de knoflook toe. Voeg even later oestersaus, suiker, water en sesamolie toe en breng het mengsel aan de kook. Giet dit over de groente. Schud de groente zodat de saus goed verdeeld wordt. Serveer direct.
Aan Tafel:
Gebruik choi sum, paksoi of kai laan of een combinatie van twee groenten.','/static/img/china.jpg',19,6,6,2,14,NULL);
INSERT INTO `recipe` VALUES (545,'Eend met sinaasappelsaus op onze wijze','','<i>4 personen</i>
2 eenden van 1 kg
120 gram boter
het sap van 3 sinaasappelen
het sap van 2 citroenen
de schil van 1 sinaasappel
4 sinaasappelen
4 eetlepels sinaasappellikeur (grand marnier, cointreau, curacao of mandarine napoleon)
3 dl gevogelte bouillion
1 dl rode wijn
1 dl rode-wijnazijn
4 eetlepels honing
6 eetlepels suiker
versgemalen zwarte peper en zout','2018-09-26 19:09:45.086420','<i>Voor de eend</i>
1. Verwarm de oven op 200C
2. Kruid de eenden van binnen en van buiten met peper en zout en leg ze op een grill. Zet onder de eenden een braadslee, zodat het smeltende vet wordt opgevangen.
3. Laat gedurende 45 minuten bakken.
<i>Voor de sinaasappelzestes</i>
1. Breng lichtgezouten water aan de kook
2. Snijd de schil van 1 sinaasappel in fijne reepjes (julienne) en blancheer ze gedurende 2 minuten in kokend water. Giet af,laat uitlekken en zet apart.
<i>Voor de saus</i>
1. Meng het sap van de sinaasappelen en de citroenen met de likeur, de bouillion, de azijn en de wijn.
2. Doe het mengsel in een grote pan en voeg de 4 eetlepels honing toe. Breng aan de kook en laat tot de helft inkoken.
3. Doe de geblancheerde sinaasappelschilletjes erbij en laat gedurende 2 minuten zachtjes koken.
4. Roer er de boter en de suiker door en breng op smaak met peper en zout. Laat verder inkoken.
<i>de volgende stap</i>
1. Haal de eenden na 45 minuten uit de oven. Giet het vet weg, maar bewaar de aanbaksels. (voeg ze toe aan de saus)
2. Haal de borsten van het karkas en snijd ze in drie stukken. Houd warm en zet apart
3. Zet de bouten weer in de oven en laat ze nog 15 minuten braden
4. Leg er na 15 minuten de borsten weer bij en laat nog 5 minuten verder garen.
<i>Ten slotte</i>
1. Schil de sinaasappelen en snijd elk partje tussen de vliezen uit. Verwijder de pitten.
2. Voeg vlak voor het einde de partjes toe aan de saus. Eventueel kunt u er enkele apart houden voor de afwerking van de borden.
3. Schik de stukken eendenborst en de eendenbouten op een serveerschaal en lepel er de saus over.
Aan Tafel
Welke eendensoort u kiest, maakt niet veel uit voor het succes van dit recept. Neemt u pekingeend, dan hebt u vlees dat zacht is maar ook vrij vet. Kiest u voor barbarie-eend, dan hebt u minder vet maar ook minder zacht vlees.
Als u partjes sinaasappel lossnijdt, hebben die in theorie de vorm van een halve maan. In de praktijk zal het echter eerder pulp zijn... Het belangrijkste is echter dat de saus verse sinaasappelpulp bevat!
Geef bij dit gerecht gekookte rijst, aardappelpuree of aardappelkroketten
Vervang de eend door haantjes, kipfilet of parelhoen
Ook reebokfilet met sinaasappelsaus is een succes! Vervang dan wel de gevogelteglace door wildglace','/static/img/koken.jpg',32,2,3,10,1,11);
INSERT INTO `recipe` VALUES (546,'Ta Pin Loh - Mongools fondue','Noord-China','Vlees boullion 
1 kippenkarkas met vlees er nog aan
750 gram varkensribbetjes
500 gram bacon of runderbotten
2 liter water
2 theelepels zout
2 theelepels gedroogde garnalen (eventueel)

Visbouillion
Visafval (graten en koppen)
1 prei
1 rode Spaanse peper
4 cm verse gemberwortel
1/2 citroen
1 knoflookteentje
4 kippebouillontabletten
2 djeroek poeroet blaadjes
6 takjes koriander

Vlees fondue ingredienten
1 kg ontbeende lams-lende
500 gram kippenfilets (optie)
300 gram varkensfricandeau(optie)
300 gr ossenhaas(optie)
8 Chinese garnalen(optie)
Visfondue ingredienten
8 Chinese garnalen
400 gram pijlinktvis
8 rivierkreeftjes
beerkreeftjes
stevige vis

Soep
1 kg Chinese kool
250 gram spinazie
50 gram cellofaanmie, 5 minuten geweekt in warm water en daarna uitgelekt
1 blok sojabonenkaas (tahoe) in dunne plakjes
50 gram gewone mie, gekookt

Saus
6 eetlepels fijngehakte lente-uitjes
2 eetlepels gehakte koriander
100 ml sojasaus
6 eetlepels sesamzaadpasta
30 ml droge sherry
2 eetlepels suiker
2 eetlepels hete chilisaus of tobascosaus
30 ml sesamolie
1 eetlepel zout of gefermenteerde sojabonenkaas (tempeh)','2018-09-26 19:09:45.086420','<i>Bereiding</i>
1. Vleesbouillion - Doe alle ingredi','/static/img/china.jpg',19,2,2,5,14,9);
INSERT INTO `recipe` VALUES (547,'Toeng Juk - Schapenvlees in gelei','Noord-China','500 gram schape- of lams-vlees
100 gram varkenshuid
1','2018-09-26 19:09:45.086420','1. Doe het schapenvlees en de varkenshuid, als die gebruikt wordt, in een grote pan en zet alles onder water. Breng het water aan de kook en giet het dan weg. Giet de voorgeschreven hoeveelheid water in de pan en breng dat aan de kook. Voeg het vlees toe en de varkenshuid, als die gebruikt wordt, samen met de rest van de ingredienten. Laat alles 1 uur pruttelen.
2. Haal het vlees uit de pan. Laat de vloeistof inkoken tot ongeveer 250 ml; zeef de vloeistof
3. Als er gebruik gemaakt wordt van gelatine, moet die nu opgelost worden in 120 ml warm water en aan de gezeefde vloeistof toegevoegd.
4. Pluk het vlees uit elkaar en doe het in een vorm met een inhoud van 1 liter. Giet er de gezeefde vloeistof overheen. Laat het gerecht afkoelen en zet het koud weg tot de vloeistof gestold is. 
5. Keer de massa om op een bord en garneer het gerecht met plakjes wortel en komkommer.','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (548,'Peking Aab - Geroosterde Peking - eend','Noord-China','2 kg eend
45 ml honing of suikerstroop
30 ml rode wijnazijn
30 ml droge sherry
250 ml heet water
Bijgerechten
8-12 borsteltjes van lente-uitjes
120 ml sojabonenpasta of hoisinsaus
16 mandarijnse pannekoekjes
1 in repen gesneden komkommer
4 in reepjes gesneden lente-uitjes','2018-09-26 19:09:45.086420','1. Leg de eend in een grote pan met kokend water. Laat de eend 5 minuten koken, laat hem dan uitlekken en laat hem afkoelen onder koud stromend water. Droog hem af met keukenpapier
2. Meng de honing of stroop met de azijn, de sherry en het hete water. Bestrijk de eend met dit mengsel. Spalk de vleugels met 2 prikkers zodat ze de eendenromp niet meer raken. Hang de eend bij de nek op en laat hem op een goed geventileerde plaats een hele nacht drogen.
3. Zet de eend 30 minuten in een voorverwarmde matig warme oven (200','/static/img/china.jpg',19,2,3,1,14,9);
INSERT INTO `recipe` VALUES (549,'Poug Peng - Mandarijnse pannekoekjes','Noord-China','250 gram tarwebloem
250 ml kokend water
30 ml sesamolie','2018-09-26 19:09:45.086420','1. Zeef het meel in een kom. Voeg het kokende water toe, met kleine beetjes tegelijk en klop alles goed door elkaar met een houten lepel. Kneed het deeg 5 tot 6 minuten en dek het dan af en laat het 10 minuten rusten.
2. Maak van het deeg een lange rol va ongeveer 5 cm doorsnee. Snijd de rol in plakken van 1 cm dik. Rol de plakken uit tot dunne pannekoekjes met een doorsnee van 15 cm. Smeer de bovenkant van twee pannekoekjes in met sesamolie en druk ze met de geoliede kanten op elkaar. Doe het zelfde met de overige pannekoekjes.
3. Verhit een zware, niet ingevette koekenpan. Leg een dubbel pannekoekje in de pan en bak het 3 minuten aan beide kanten (er verschijnen dan bruine vlekken op het pannekoekje en op sommige plaatsen begint het pannekoekje op te bollen als het gaar is).
4. Haal ze uit de pan en laat ze licht afkoelen. haal de twee pannekoekjes weer van elkaar en vouw ze allebei in tweeen, met de geoliede kant naar binnen. Leg ze allebei in een verwarmde schaal en houdt ze warm terwijl de rest van de pannekoekjes gebakken wordt.
5. Als alle pannekoekjes klaar zijn, worden ze in een stoompan gezet, waar ze nog 10 minuten mogen stomen. Deze pannekoekjes zijn in de koelkast nog 2 a 3 dagen te bewaren, maar als ze enige tijd bewaard worden voor het serveren, moeten ze eerst weer 7 tot 8 minuten stomen.','/static/img/china.jpg',19,6,1,1,14,9);
INSERT INTO `recipe` VALUES (550,'Pak Po Ha - Ongepelde garnalen','Oost-China','250 gram grote garnalen, ongepeld   
300 ml olie
30 ml sojasaus
30 ml droge sherry
1 eetlepel suiker
2 lente-uitjes
2 plakken gemberwortel, fingehakt
gehakte peterselie','2018-09-26 19:09:45.086420','1. Snijd de pootjes van de garnalen af, maar laat het schild intakt. 
2. Verhit de olie in een pan. Leg de garnalen erin en laat ze een paar seconden bakken, tot ze net rose beginnen te worden. Haal ze uit de olie met een schuimspaan.
3. Giet de olie af en leg de garnalen weer in de pan. Voeg de sojasaus toe met de sherry, de suiker, de lente-uitjes en de gember. Bak alles een paar seconden lang onder voortdurend roeren op een hoog vuur. Dien dit warm op, gegarneerd met peterselie','/static/img/china.jpg',19,7,4,1,14,9);
INSERT INTO `recipe` VALUES (551,'Joe Pin - Gerookte visplakken','Oost-China','45 ml Sojasaus
30 ml droge sherry
snufje zout
500 gram schelvisfilets, in stukken van 5 x 3 cm
3 fijngesneden lente-uitjes
2 fijngehakte plakken gemberwortel
250 ml water
50 gram suiker','2018-09-26 19:09:45.086420','1. Meng de sojasaus met de sherry en het zout in een schaal. Voeg de stukken vis toe en laat ze een half uur marineren.
2. Haal de vis uit de marinade. Giet de marinade in een pan met de lente-uitjes, de gember, het water, de suiker en het vijfkruidenpoeder. Breng dit mengsel aan de kook en laat het 10 minuten heel zacht doorkoken. Zeef de saus in een kom en zet hem opzij.
3. Verhit de olie tot 180','/static/img/china.jpg',19,6,8,1,14,9);
INSERT INTO `recipe` VALUES (552,'Hon Joe - Rood gekookte vis','Oost-China','1 kg vis (karper, brasem, mul of makreel)
60 ml sojasaus
45 ml olie
15 gram gedroogde chinese hanekammen, 20 minuten  geweekt, uitgelekt en van steeltjes ontdaan
50 gram bamboescheuten uit blik, uitgelekt en in dunne plakken gesneden
3-4 lente-uitjes, in reepjes gesneden
3 plakken gemberwortel, in dunne reepjes gesneden
2 theelepels maizena, opgelost in 15 ml water
Saus
30 ml sojasaus
30 ml droge sherry
2 theelepels suiker
60 ml bouillon','2018-09-26 19:09:45.086420','1. Laat de vis een half uur marineren in de sojasaus. Roer de ingredienten voor de saus door elkaar.
2. Verhit de olie in een pan. Als de olie zeer heet is, worden de stukken vis erin gelegd en goudkleurig gebakken.
3. voeg dan de saus toe, met de hanekammen en de bamboescheuten, en laat alles nog 10 minuten zachtjes koken.
4. Doe de lente-uitjes en de gember erbij en laat alles doorkoken tot de helft ingedikt is. Voeg de maizena oplossing toe en laat alles onder voortdurend roeren nog eens doorkoken tot de saus goed dik geworden is. Breng het gerecht over op een schaal en dien het warm op.','/static/img/china.jpg',19,2,8,1,14,9);
INSERT INTO `recipe` VALUES (553,'Kei Tang Tsjoug Joek - Rood gekookt varkensvlees met lente-uitjes en eieren','Oost-China','1','2018-09-26 19:09:45.086420','1. Snijd het varkensvlees in brokjes van 4 cm. Leg het vlees in een pan en giet er zoveel kokend water overheen tot het vlees onder staat. Laat het een kwartier koken en giet dan al het water af.
2. Meng het zout met de suiker, het water en 75 ml sojasaus. Giet dit mengsel over het vlees. Roer en breng het aan de kook.  
3. Leg een deksel op de pan en laat alles nog een half uur heel zachtjes pruttelen. Roer de sherry er doorheen en laat alles dan nog eens en half uurtje pruttelen.
4. Leg de eieren met de rest van de sojasaus in een andere pan en breng ze aan de kook voor 7 tot 8 minuten.
5. Verhit de olie in een andere pan. Voeg daar de lente-uitjes en de knoflook aan toe en bak ze 3 minuten. Voeg ze bij het varkensvlees, evenals de eieren en dien alles warm op.','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (554,'Tsja Kei - Gebakken kip in achten','Oost-China','1','2018-09-26 19:09:45.086420','1. Snijd de kip in acht stukken
2. Vermeng de lente-uitjes en de gember met 15 ml sherry, 1 theelepel suiker en 15 ml sojasaus. Voeg de brokken kip toe en laat ze 3 minuten marineren.
3. Wentel de stukken kip door de maizena. Verhit de reuzel in een pan. Doe de kip erbij en bak de stukken goudbruin.
4. Giet de overgebleven olie weg en voeg de rest van de sherry, de suiker en de sojasaus toe. Breng alles al roerend aan de kook. Sprenkel net voor het opdienen de sesamolie er overheen.','/static/img/china.jpg',19,2,3,1,14,9);
INSERT INTO `recipe` VALUES (555,'Tsjau Tsoi - Roer gebakken gemengde groenten','Oost-China','60 ml plantaardige olie
1 ui in dunne ringen gesneden
3 knoflookteentjes, uitgeperst
1','2018-09-26 19:09:45.086420','1. Verhit de olie in een grote pan boven een matig warm vuur. Voeg de ui, de knoflook en het zout toe en bak dat 30 seconden. Voeg de overige groenten toe en roer ze goed door de olie.
2. Giet er de sojasaus, kippenbouillon en suiker bij. Laat alles nog 1','/static/img/china.jpg',19,6,6,1,14,NULL);
INSERT INTO `recipe` VALUES (556,'Ci Tsji Taug - Leeuwekoppen','Oost-China','1 kg varkensgehakt
2 fijngehakte lente-uitjes
2 fijngehakte plakken gemberwortel
30 ml droge sherry
2 eetlepels maizena
1 eetlepel zout
40 gram reuzel
500 gram chines kool, in de lengte in vieren gesneden
250 ml kippebouillon','2018-09-26 19:09:45.086420','1. Meng het varkensvlees met de lente-uitjes, de gember, sherry, maizena en de helft van het zout. Vorm er 6 tot 8 gehaktballen van.
2. Laat de reuzel smelten in een diepe pan. Doe de knol hierin met de rest van het zout en laat dit 30 seconden bakken.
3. Leg de gehaktballen boven op de kool en giet de bouillon hier overheen. Breng alles aan de kook, leg een deksel op de pan en laat de inhoud 30 tot 45 minuten sudderen. Warm opdienen','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (557,'Tsjoen Pin - Gesmoorde bamboescheuten','Oost-China','45 ml olie
400 gram bamboescheuten uit blik
15 ml droge sherry
30 ml sojasaus
1 eetlepel suiker
45 ml kokend water
15 ml sesamolie','2018-09-26 19:09:45.086420','1. Verhit de olie in een pan. Voeg de bamboescheuten toe en bak ze goudbruin. Voeg de sherry, sojasaus en suiker toe en blijf roeren tijdens het bakken. Giet het kokende water erbij en laat alles nog 7 tot 8 minuten stoven, of tot al het vocht verdampt is.
2. Sprenkel de sesamolie erover, roer alles nog een s goed door elkaar en dien het gerecht warm op.
3. Dit gerecht kan ook koud geserveerd worden, of als deel van een hors d''oeuvre.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (558,'Tim Soen Tsjen Kwa - Zout zure komkommer','Oost-China','1 komkommer
zout
2 eetlepels suiker
45 ml wijnazijn
1 plak gemberwortel, fijngehakt
15 ml sesamolie','2018-09-26 19:09:45.086420','1.Snijd de komkommer in de lengte in tweeen en snijd de helften dan in dunne plakjes. Besprenkel die met zout en laat ze 10 minuten staan. Los intussen de suiker op in de azijn.
2. Giet de komkommer af en leg de plakjes op een schotel. Strooi de gember er overheen. Giet het azijn-suikermengsel en de sesamolie niet voor het opdienen over de komkommer schijfjes.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (559,'Sa Loeh - Selderijsalade','Oost-China','1 bleekselderij
Sausje
snufje zout
30  ml sojasaus
1 eetlepel suiker
15 ml sesamolie','2018-09-26 19:09:45.086420','1. Verwijder de harde onderkant en de bladeren van de selderij en snijd hem in diamantvormige stukjes door elke stengel een halve slag om te rollen na het schuin afsnijden van een stukje.
2. Blancheer de selderij 1 minuut in kokend water. Laat de stukjes uitlekken en leg ze op een bord. Meng de ingredienten voor het sausje en giet dat over de selderij. Gekoeld opdienen.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (560,'Tsjioeg Kau - Gestoomde bolletjes met groente - vleesvulling','Oost-China','Deeg
1','2018-09-26 19:09:45.086420','1. Los de gist en de suiker op in het water. Laat dit mengsel een kwartiertje op een lauw warme plaats staan, tot er luchtbelletjes aan het oppervlak te zien zijn.
2. Zeef de bloem in een beslagkom. Giet er heel geleidelijk het gistmengsel bij en ook de melk en meng dit tot een glad, stevig deeg.
3. Leg het deeg op een licht met bloem bestoven oppervlak en kneed het 10 minuten lang goed door. Laat het 1','/static/img/china.jpg',19,8,2,1,14,9);
INSERT INTO `recipe` VALUES (561,'Tsjoe Jok Tsjen - Kwa Thoung - Varkensvlees met komkommersoep','West- China','Snufje zout
1 eiwit
1 theelepel maizena
250 gram varkensfilet in dunnen plakjes en daarna in eenhapsbrokken gesneden
1,2 liter water
75 gram Szetjoeaans tafelzuur in kleine stukjes (eventueel)
100 gram komkommer, geschild en in plakjes gesneden','2018-09-26 19:09:45.086420','1. klop het eiwit met het zout en de maizena. Leg de brokjes vlees hierin en laat ze 10 minuten marineren
2. Breng het water aan de kook. Voeg het vlees toe en zodra het water weer begint te koken ook het tafelzuur, als dat gebruikt wordt en ook de komkommer.
3. Laat alles nog 5 minuten stoven. Proef even of de soep goed gekruid is. Warm serveren','/static/img/china.jpg',19,4,2,1,14,9);
INSERT INTO `recipe` VALUES (562,'Setsjoean Tsjap - szetsjoeaanse saus','West- China','2 eetlepels sesamzaadpasta
60 ml water
2 eetlepels fijngehakte lente-uitjes
2 theelepels uitgeperste knoflook
2 theelepels geraspte gemberwortel
1 theelepel gemalen szetjoeaanse peperkorrels
1 eetlepel suiker
15 ml rode wijnazijn
15 ml het peper-olie
15 ml sesamolie    
60 ml sojasaus','2018-09-26 19:09:45.086420','1. Vermeng de sesamzaadpasta met het water en voeg dan de overige ingredienten toe en roer alles goed door elkaar.','/static/img/china.jpg',19,5,5,1,14,9);
INSERT INTO `recipe` VALUES (563,'Ha Mai Thoung - knisperende rijstsoep','West- China','1,2 liter heldere soep of water
250 gram gepelde garnalen
100 gram gehalveerde champignons
wat zout en peper
15 ml sojasaus
15 ml droge sherry
olie om te frituren
150 gram gekookte kleefrijst (rijstplakken)','2018-09-26 19:09:45.086420','1. Breng de soep of het water aan de kook in een pan. Voeg de garnalen toe met de champignons, het  zout, de sojasaus, sherry en peper en roer alles goed door elkaar.
2. Leg een deksel op de pan en laat de inhoud zachtjes sudderen tot alles goed warm is en giet de soep dan in een voorverwarmde soepterrien. Houd de soep warm.    
3. Verhit de olie tot 180','/static/img/china.jpg',19,4,4,1,14,9);
INSERT INTO `recipe` VALUES (564,'Setsjoean Fhoeg Tsjioe Tsjap - Szetsjoeaanse hete gepeperde saus','West- China','2 eetlepels fijngehakte lente-uitjes
15 ml sesamolie
1 eetlepel sesamzaad
30 ml rode wijnazijn
45 ml sojasaus
45 ml kippenbouillon
1 theelepel gemalen Szetsjoeaanse peperkorrels
2 theelepels hete peperolie
Te serveren bij
500 gram ontkiemde boontjes, 2 minuten gekookt en uitgelekt
500 gram gaar kippenvlees in plakjes
korianderblaadjes','2018-09-26 19:09:45.086420','1. Meng de ingredienten voor de saus in een kom. Schik de boontjes en het kippenvlees op een schotel en giet de saus er overheen. Garneer de schotel met de korianderblaadjes.','/static/img/china.jpg',19,5,5,1,14,9);
INSERT INTO `recipe` VALUES (565,'Nhaug Jok Fang Si Thoung - Tomatensoep met rundvlees','West- China','15 ml droge sherry
15 ml sojasaus
snufje peper
2 theelepels maizena
100 gram mager rundvlees in dunne plakjes en daarna in eenhapsbrokken gesneden
15 ml olie
1,2 liter kippebouillon
2 theelepels zout
2 tomaten, gepeld en in stukjes gehakt
2 losgeklopte eieren
1 eetlepel fijngehakte lente-uitjes','2018-09-26 19:09:45.086420','1. meng de sherry met de sojasaus, peper en maizena in een kom. Wentel het rundvlees goed door dit mengsel.
2. Verhit de olie in een pan. Voeg het vlees toe en braad het tot het gaat verkleuren. Voeg de bouillon en het zout toe en breng alles aan de kook. Doe de stukjes tomaat erbij.
3. Verminder de hitte en giet heel voorzichtig de losgeklopte eieren erbij, zonder te roeren, zodat het wolkjes worden, die op het oppervlak van de soep drijven. Garneer de soep met de fijngehakte uitjes.
4. Warm op tafel serveren.','/static/img/china.jpg',19,4,6,1,14,9);
INSERT INTO `recipe` VALUES (566,'Tsjien Nhaug Jok - Gestoomd rundvlees met rijstegries','West- China','15 ml gedroogde sherry
60 ml sojasaus
wat zout
1 theelepel geraspte gemberwortel
1 theelepel suiker
1 theelepel cayennepeper
500 gram mager rundvlees, in dunne plakjes en daarna in eenhapsbrokjes gesneden
250 gram kool in flinters
200 gram rijstegriesmeel, of gemalen rijst
250  ml water of kippenbouillon
2 eetlepels fijngehakte lente-uitjes','2018-09-26 19:09:45.086420','1. meng de sherry met de sojasaus, het zout, de gember, de suiker en de cayennepeper in een schaal. Doe de stukjes vlees hierbij en laat ze een half uurtje marineren.
2. Spreid de kool uit op de bodem van een stoompan-mandje. Los de rijstegries op in het water of de bouillon en roer deze oplossing door het vleesmengsel. Schep dit mengsel op de kool.
3.Laat alles ongeveer 50 minuten stomen, of tot het vlees gaar is. Warm opdienen, gegarneerd met de lente-uitjes.','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (567,'Tsjoe Jok - dubbel gekookt varkensvlees','West- China','750 gram mager buikspek
50 ml olie
2 gedroogde chilipepers, van zaadlijsten ontdaan en in dunne reepjes gesneden of 10 ml chilisaus
1','2018-09-26 19:09:45.086420','1. Leg het vlees in een pan met kokend water. Breng het water weer aan de kook en laat het vlees 25 minuten zacht doorkoken. Laat het afkoelen en snijd het dan dwars door het magere en vette gedeelte in plakken van 4 x 5 cm.
2. Verhit de olie in een pan. Voeg de chilipepers toe, als die gebruikt worden, en de paddestoelen en bak ze 1 minuut. Voeg de knoflook toe met de sojabonenpasta, de sojasaus, hoisinsaus, tomatenpuree, suiker, soep en chilisaus
3. Voeg de stukken vlees toe en zet het vuur hoger. Blijf roeren tot het vlees goed met het mengsel bedekt is en de saus dikker wordt.
4. Voeg de lente-uitjes toe, de sherry en de sesamolie en laat alles nog een paar seconden pruttelen.
5. Dien dit gerecht warm op','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (568,'Ma Po Tau Foe - Hete Ma Po tahoe met gehakt','West- China','5-6 gedroogde chinese paddestoelen
3 dl water
60 ml olie
2 theelepels gezouten zwarte bonen, 10 minuten geweekt en uitgelekt
5-6 eetlepels rundergehakt
3 lente-uitjes
4 uitgeperste knoflookteentjes
30 ml sojasaus
30 ml hoisinsaus
10 ml chilisaus
1 theelepel suiker
2-3 blokken sojakaas (tahoe), in dobbelsteentjes
60 ml heldere soep
2 theelepels maizena, opgelost in 45 ml water
15 ml sesamolie','2018-09-26 19:09:45.086420','1. Laat de paddestoelen 20 minuten weken in het water. Laat ze uitlekken, maar bewaar het water. Verwijder de steeltjes van de paddestoelen en snijd ze in vieren.
2. Verhit de olie in een pan. voeg de zwarte bonen toe. Bak ze al roerend 20 seconden.
3. Voeg het gehakt toe met de helft van de uitjes en de paddestoelen. Laat die al roerend 3 a 4 minuten bakken.
4. Voeg de knoflook toe, 3-4 eetlepels van het weekwater van de paddestoelen, de sojasaus, hoisinsaus, chilisaus, suiker, tahoe en soep. Breng alles aan de kook en laat het geheel 3 tot 4 minuten zacht sudderen.
5. Giet de maizena-oplossing erbij en de rest van de lente-uitjes en de sesamolie. Laat alles onder voortdurend roeren nog even doorkoken tot de saus gebonden is.
6. Dien dit gerecht warm op.','/static/img/china.jpg',19,2,2,1,14,9);
INSERT INTO `recipe` VALUES (569,'Si Kwa Fang Keh - Courgettes met tomaten','West- China','500 gram courgettes
1 dl olie
1 theelepel zout
4-5 tomaten, ontveld en in vieren gedeeld
250 ml kippebouillon
1 eetlepel maizena, opgelost in 30 ml water','2018-09-26 19:09:45.086420','1. Snijd de courgettes in de lengte in vieren en daarna overdwars in blokjes van 1 cm dik.
2. Verhit 45 ml olie in een pan. Voeg de courgettes toe met de helft van het zout en laat ze boven een hoog vuur bakken, tot ze wat zachter zijn geworden. 
3. Breng ze over op een schotel en houd ze warm. Verhit de rest van de olie in de pan en bak daarin de tomaten 30 seconden. Schep de tomaten bij de courgettes.
4. Giet de bouillon in de pan met de rest van het zout en breng dat aan de kook. Roer er de maizena oplossing door en laat alles even doorkoken tot de saus dik wordt.
5. leg de courgettes midden op een voorverwarmde schotel en schik de tomaten er omheen. Giet de bouillon over de courgettes en dien alles warm op.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (570,'Ho Toh Sih - garnalentoastjes','West- China','5 ml droge sherry
1 theelepel zout
1 eiwit
1 theelepel maizena
500 g ram gepelde, fijngehakte garnalen
7 sneetjes witbrood zonder korst
2 eetlepels sesamzaad
2 eetlepels fijngehakte gekookte ham
olie om te frituren
takjes peterselie voor garnering','2018-09-26 19:09:45.086420','1. Klop het eiwit met de sherry, het zout, en de maizena tot een glad mengsel. Roer er de garnalen doorheen. Verdeel dit mengsel over de sneetjes brood. Bestrooi ze met het sesamzaad en de ham en druk het beleg met een lepel stevig in het brood.
2. Verhit de olie tot 180&deg;C. Frituur de toastjes, telkens een paar tegelijk, met de garnalenkant naar beneden. Als de randjes van het brood goudbruin worden, moeten de toastjes omgekeerd worden. 
3. Ook deze kant moet goudbruin gefrituurd worden. Laat de sneetjes uitlekken op keukenpapier en snijd ze elk in 4 stukken. Schik die op een schotel, garneer ze met de peterselie en dien ze warm op.','/static/img/china.jpg',19,8,4,1,14,NULL);
INSERT INTO `recipe` VALUES (571,'Tsji Pauw Joe - Vis in papier gewikkeld','West- China','500 gram visfilets (tong, schol, brasem)
1 theelepel zout
5 ml droge sherry
15 ml olie
1 eetlepel in dunne sliertjes gesneden gemberwortel
1 eetlepel in dunnen sliertjes gesneden lente-ui
olie om te frituren
8 lente-uitjes-bloemen voor de garnering','2018-09-26 19:09:45.086420','1. Snijd de visfilets in vierkantjes van 3 cm lang en ongeveer 5 mm dik. Bestrooi die met het zout en met de sherry en laat ze 10  minuten marineren.
2. Knip voor elk stuk vis een vierkant met zijden van 15 cm uit vetvrij papier. Smeer het papier in met olie. Leg op elk geolied vierkant een stuk vis en twee stukjes gember en ui. Vouw er enveloppen van en stop de uiteinden goed in.
3. Verhit de olie tot 180&deg;C. Frituur de ingeplakte vis gedurende 3 minuten. Laat ze uitlekken op keukenpapier, leg ze op een schotel en garneer het gerecht met de bloemen van lente-uitjes. De papieren pakketjes worden aan tafel open gemaakt.
Aan Tafel:
Voor de garnering worden de lente-uitjes in sliertjes gesneden tot op 3 cm van de onderkant. laat de uitjes even in ijswater staan tot ze open gaan; laat ze dan uitlekken.','/static/img/china.jpg',19,7,8,1,14,9);
INSERT INTO `recipe` VALUES (572,'Tim Soen Tjoi Sa Loeh - zout zure koolsalade','West- China','750 gram witte kool, in losse bladeren verdeeld
zout
45 ml olie
1 rode paprika, in kleine stukjes    
45 ml sojasaus
3 eetlepels suiker
45 ml wijnazijn','2018-09-26 19:09:45.086420','1. Laat de kool 10 minuten koken in water met zout, tot hij net gaar is, maar nog niet helemaal zacht. Laat hem uitlekken. Rol de koolbladeren op vanaf de steel tot aan het einde van het blad en vouw het breedste deel van het blad daarbij naar binnen.
2. Druk zoveel mogelijk vocht uit de bladeren en snijd de rolletjes dan schuin in stukken van 2 cm .
3. leg die stukken op een schotel. Verhit de olie in een pan. Voeg de paprika toe en laat die stukjes een paar seconden bakken. Voeg de overige ingredi','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (573,'Wan Tan Thoung - Garnalen in wonton - soep','Zuid-China','40 wontonvellen
1,2 liter heldere soep
1 fijngehakte lente-uitje
Vulling
1 ei
5 ml droge sherry
1 theelepel zout
snufje peper
10 ml olie
1 theelepel maizena
wat suiker
250 gram fijngehakte gepelde garnalen
100 gram waterkastanjes','2018-09-26 19:09:45.086420','1. Meng voor de vulling het ei met de sherry, zout , peper, olie, suiker en maizena in een schaal. Voeg de garnalen en de waterkastanjes toe en roer het goed door elkaar.
2. Leg &frac12; theelepel vulling midden op elk wontonvel. Maak de randjes vochtig met water, vouw de hoeken naar elkaar toe in een driehoek en plak het pakketje dicht. Plak dan de onderste hoeken als een soort kapje op elkaar.
3. Vul een pan met water en breng dat aan de kook. Voeg telkens een paar wontonpakketjes toe en laat ze meekoken tot ze aan de oppervlakte komen drijven.
4. Haal ze uit het kokende water en leg ze in de hete soep in een andere pan. Houd ze zo warm tot alle pakketjes gekookt zijn.
5. Bestrooi ze met het fijngehakte lente-uitje en dien ze warm op.','/static/img/china.jpg',19,4,4,1,14,9);
INSERT INTO `recipe` VALUES (574,'Tim Fa Sang Tseung - zoete pindacreme','Zuid-China','50 gram gladde pindakaas
1 liter melk of water
4 eetlepels suiker
4 theelepels rijstebloem of maizena, opgelost in 60 ml water','2018-09-26 19:09:45.086420','1. Doe de pindakaas in een pan en roer er geleidelijk de melk of het water door, zodat er een gladde brei ontstaat.
2. Voeg de suiker toe en breng alles onder voortdurend roeren aan de kook. Voeg de opgeloste rijstebloem of maizena toe en laat alles doorkoken tot het mengsel dikker wordt.
3. Schep het in bakjes en serveer de cr','/static/img/china.jpg',19,3,1,1,14,9);
INSERT INTO `recipe` VALUES (575,'Tsjin Doeh - Gefrituurde zoete aardappelballetjes','Zuid-China','500 gram zoete aardappels (yams)
100 gram meel van zoete rijst (kleefrijst)
50 gram bruine suiker
50 gram sesamzaad
olie om in te frituren','2018-09-26 19:09:45.086420','1. Leg de aardappelen in een pan met water en breng dat aan de kook. Laat de aardappels 15 a 20 minuten zachtjes koken of totdat ze gaar zijn. Giet ze af en pel ze.
2. Stamp de aardappels tot puree en klop er dan het rijstemeel en de suiker doorheen.
3. Vorm met vochtige handen balletjes van het mengsel ter grootte van een walnoot. Rol elk balletje door het sesamzaad tot het er goed mee bedekt is.
4. Verhit de olie tot 160&deg;C. Frituur de aardappelballetjes goudbruin. Laat ze uitlekken op keukenpapier.
5. Serveer ze warm als nagerecht.','/static/img/china.jpg',19,3,1,1,14,9);
INSERT INTO `recipe` VALUES (576,'Mie Lai Tik Tsjoeng Kok - Dadelkrokantjes','Zuid-China','30 ontpitte  (Chinese rode)dadels
30 halve walnoten
30 wotonvellen
1&frac12; eetlepel bruine suiker
olie om in te frituren
3 eetlepels poedersuiker','2018-09-26 19:09:45.086420','1. Vul elke dadel met een halve walnoot. Leg elke dadel op een wotonvel en strooi er een beetje suiker over. Maak de ranjes van de vellen nat, rol ze op en verzegel ze door de uiteinden te draaien.
2. Verhit de olie tot 160&del;C. Frituur de rolletjes goudbruin; laat ze niet te lang in de olie. Laat ze uitlekken op keukenpapier en bestrooi ze met poedersuiker. Laat ze afkoelen voordat ze geserveerd worden.','/static/img/china.jpg',19,8,7,1,14,9);
INSERT INTO `recipe` VALUES (577,'Tsja Shao Sioe','Zuid-China','1 kg varkensfilet
Marinade
25 ml sojasaus
1&frac12; eetlepel rode bonenkaas   
25 ml sherry
1 eetlepel zoete bonenpasta of hoisinsaus
wat zout
1&frac12; theelepel suiker of honing
15 ml honing','2018-09-26 19:09:45.086420','1. Leg het varkensvlees in een ondiep schaal. Meng de ingredi','/static/img/china.jpg',19,2,2,1,NULL,NULL);
INSERT INTO `recipe` VALUES (578,'Moe Koe Tau Foe - gefrituurde sojabonenkaas met paddestoelen','Zuid-China','2 blokken sojakaas (tahoe)
1 eetlepel zout
olie om te frituren
maizena
30 ml eetlepels olie
1 uitgeperste knoflookteentje
4 lente-uitjes in stukken van 2 cm
250 gram varkensfilet in kleine, dunne plakjes gesneden
4 middelgrote chinese paddestoelen, 20 minuten geweekt, uitgelekt, van steeltjes ontdaan en in vieren gedeeld
15 ml droge sherry
45 ml sojasaus
1 theelepel suiker
250 ml water','2018-09-26 19:09:45.086420','1. Leg de sojakaas op een bord en bestrooi hem met het zout. Laat de blokken 1 minuut staan en giet dan het vrijgekomen water af.
2. Verhit de olie tot 180&deg;C. Wentel de blokken sojakaas door de maizena en frituur ze een voor een licht bruin. Laat ze uitlekken op keukenpapier.
3. Verhit 30 ml olie in een pan. Voeg de knoflook toe en bak die bruin. Voeg de uitjes toe met het varkensvlees en de paddestoelen en bak die al roerend 2 seconden.
4. Voeg de sojakaas toe, de sherry, sojasaus, suiker en het water.
5. Leg een deksel op de pan en laat alles 10 tot 15 minuten zachtjes stoven of tot de saus dik geworden is. Warm serveren.','/static/img/china.jpg',19,6,6,1,14,9);
INSERT INTO `recipe` VALUES (579,'Ho Tsjou Tsjo Koe - Driemaal paddestoelen gesmoord in oestersaus','Zuid-China','30 ml olie
100 gram kleine gedroogde chinese paddestoelen, 20 minuten geweekt, uitgelekt en van steeltjes ontdaan
250 ml heldere soep
250 gram stro-paddestoelen uit blik, uitgelekt
100 gram champignons
45 ml oestersaus
1 theelepel suiker
1 theelepel maizena, opgelost in 10 ml water','2018-09-26 19:09:45.086420','1. Verhit de olie in een pan. Voeg de gedroogde paddestoelen toe en bak die al roerend 1 minuut. 
2. Voeg de bouillon toe en breng die aan de kook, zet dan het vuur lager en laat alles 15 tot 20 minuten zachtjes stoven of tot de gedroogde paddestoelen gaar zijn.
3. Voeg de stro-paddestoelen toe met de champignongs en laat ze onder voortdurend roeren 1 minuut meestoven.
4. Voeg de oestersaus toe, de suiker en de maizena-oplossing. Laat alles nog even doorkoken tot de saus dik wordt. Schik de verschillende soorten paddestoelen op een schotel en dien dit gerecht warm op.','/static/img/china.jpg',19,6,6,1,14,NULL);
INSERT INTO `recipe` VALUES (580,'Noean Kuo - Gestoofde ossestaart met mandarijnenschil','Zuid-China','1 kg ossestaart in stukken van 5 cm
15 ml olie
6 uitgeperste knoflookteentjes
3 plakken gemberwortel
gedroogde schil van &frac14; mandarijn, 10 minuten in water geweekt, uitgelekt en in dunne reepjes gesneden
1 theelepel ster-anijs
3 eetlepels tsjoe hou bonenpasta of bruine bonenpasta
5 ml chinese rijstwijn
1,2 liter water
olie om te frituren
75 gram gedroogde bonenkaas (tahoe), 20  minuten in water geweekt
&frac12; theelepel zout
1 eetlepel suiker
5 ml sojasaus
1 eetlepel oestersaus
1 theelepel maizena, opgelost in 15 ml water
4 lente-uitjes in stukken van 5 cm','2018-09-26 19:09:45.086420','1. Leg de ossenstaart in een pan kokend water en laat hem 5 minuten meekoken; haal hem er dan uit en laat hem uitlekken.
2. Verhit de olie in een pan, voeg de knoflook, gember, de mandarijnenschil, de ster-anijs, de tsjoe hou-bonenpasta of bruine bonenpasta toe en laat alles al roerend 1 minuut bakken.
3. Doe de ossenstaarten erbij met de chinese rijstwijn en het water. Breng alles aan de kook. Leg er een deksel op en laat 2 uur sudderen.
4. Verhit intussen de olie to 180&deg;C en frituur de gedroogde bonenkaas goudbruin. Laat uitlekken op keukenpapier.
5. Voeg het zout, de suiker, sojasaus, oestersaus en gedroogde bonenkaas toe aan de ossestaart. Laat alles nog 30 minuten stoven.
6. Voeg de maizena-oplossing toe en laat alles onder voortdurend roeren nog even doorkoken tot de saus dikker wordt.
7. Strooi er de lente-uitjes door en dien het warm op.','/static/img/china.jpg',19,4,2,1,14,9);
INSERT INTO `recipe` VALUES (581,'Toeng Aab - Eend in gelei','Oost-China','2 kg ovenklare eend
500 gram buikspek
250 gram spekzwoerd
250 ml sojasaus
1 eetlepel zout
150 ml droge sherry
3 eetlepels suiker
1 theelepel vijfkruidenpoeder
3 lente-uitjes
4 plakken gemberwortel
wat waterkersblaadjes om te garneren','2018-09-26 19:09:45.086420','1. leg de eend in een grote pan met het buikspek en het zwoerd. Zet de eend onder water en breng het water aan de kook. Laat het 2 tot 3 minuten koken en giet het water dan af.
2. Spoel de eend, het spek en het zwoerd onder koud stromend water en leg ze weer in de pan. Giet er vers water overheen. Voeg de overige ingredi&euml;nten toe, leg een deksel op de pan en breng alles aan de kook. Laat alles op een zeer laag vuurtje ongeveer 4 uur pruttelen.
3. Haal de eend uit de pan. Zeef de bouillon in een schaal en gooi het spek, het zwoerd en de overige ingredi&euml;nten weg. Ontbeen de eend, maar laat het vel zitten. Leg de eend in de gezeefde bouillon. Zet de schaal in de koelkast tot de bouillon gelei geworden is.
4. keer de eend om op een platte schotel en garneer hem met waterkersblaadjes.','/static/img/china.jpg',19,6,3,1,14,9);
INSERT INTO `recipe` VALUES (582,'Tsja Tsji Pauw Juk - Gefrituurd in papier gewikkeld vlees','West- China','25 ml sojasaus
15 ml droge sherry
&frac12; theelepel suiker
10 ml oestersaus
8 ml sesamolie
250 gram mager rundvlees in kleine stukjes
4 plakken gemberwortel, geraspt
2 lente-uitjes, in stukken van 5 cm gesneden
10 ml hoisinsaus
wat chilisaus
1&frac12; theelepel reuzel
250 gram ontbeend kippevlees, in kleine stukjes
2 grote gedroogde chinese paddestoelen , 20 minuten geweekt, vervolgens uitgelekt, van steeltjes ontdaan en in kleine stukjes gesneden
1 grote wortel, in dunne plakjes
olie om te frituren','2018-09-26 19:09:45.086420','1. Doe de helft van de sojasaus, sherry en suiker in een kom. Roer er de oestersaus en de sesamzaadolie doorheen. Voeg het kleingesneden rundvlees toe met de helft van de gember en de uitjes. Meng alles goed doorelkaar
2. Doe de rest van de sojasaus, sherry en suiker in een andere kom. Roer er de hoisinsaus, chilisaus en reuzel erdoorheen. Voeg de kip en de paddestoelen toe met de rest van de gember en de uitjes. laat de marinades een kwartier intrekken.
3. Knip 10 rechthoekige stukken vetvrij papier van ongeveer 25 x 18 cm. Verdeel de rund-en kipmengsel beide in vijf gelijke porties. leg elke portie op een stuk vetvrij papier en leg er nog een paar schijfjes wortel op.
4. Vouw het papier als een enveloppe dicht om de vulling heen en stop de overslag nog eens in.
5. Verhit de olie tot 180&deg;C. Frituur de helft van de papieren pakketjes ongeveer 2&frac12; minuut. Breng ze dan over op een rooster om uit te lekken terwijl de rest van de pakketjes gefrituurd wordt.
6. Als alle pakketjes gefrituurd zijn, gaan ze allemaal tegelijk nog een minuut in de hete olie. Grondig laten uitlekken. Overbrengen op een verwarmde schaal en garneren met plakjes komkommer en kersen. De eters pakken hun vleespakketje en openen het papier met hun eetstokjes.','/static/img/china.jpg',19,8,2,1,14,9);
INSERT INTO `recipe` VALUES (583,'Po Tsjon Po Din - Acht schatten rijstpudding','','50 gram zoete rijst (kleefrijst)
40 gram reuzel
2 theelepels suiker
15 gram gedroogde rode dadels, ontpit
30 gram rozijnen
10 halve walnoten
10 gekonfijte kersen
10 stukken gekonfijte angelica, fijngehakt
50 gram gezoete kastanje puree uit blik of bruinebonenpasta
Siroop
3 theelepels suiker
300 ml water
1 eetlepel maizena, gemengd met 30  ml water','2018-09-26 19:09:45.086420','1. Doe de rijst in een pan met water en breng dat aan de kook. Temper de warmte, dek de pan goed af en laat de rijst 10 tot 15 minuten doorkoken, of totdat het water opgenomen is. Voeg 25 gram van de reuzel en alle suiker toe aan de gekookte rijst. Roer alles goed door elkaar.
2. Smeer een pudding vorm met een inhoud van 900 ml in met de rest van de reuzel. Bedek de bodem en de zijkant van de vorm met een dunne laag van het rijstmengsel. Druk voorzichtig een laagje fruit en noten in de rijst, mooi gerangschikt, zodat ze te zien zijn als de pudding omgekeerd uit de vorm komt.
3. Bedek de noten en fruit met nog een laag rijst, deze keer een dikkere laag. Vul het midden op met kastanjepuree of de bonenpasta en dek alles af met de overgebleven rijst. Druk de rijst voorzichtig wat aan om de bovenkant van de pudding vlak te maken. leg een cirkel van vetvrij papier om de pudding en maak die met een touwtje vast.
4. Laat de pudding 1 uur stomen. Begin met het bereiden van de siroop een paar minuten voor het einde van de stoomtijd. Los de suiker op in het water in een kleine pan en breng het suikerwater aan de kook. Roer er het maizena-mengsel door en laat het onder voortdurend roeren nog even zachtjes doorkoken totdat de vloeistof stroperig is.<bR>
5. Keer de pudding om op een verwarmde schotel. Giet er de siroop overheen en dien het gerecht meteen op. Omdat dit een erg zoete, machtige pudding is, is deze hoeveelheid zeker genoeg voor 6 tot 8 personen.','/static/img/china.jpg',19,3,7,1,NULL,NULL);
INSERT INTO `recipe` VALUES (584,'Thong Juen - Rijstballetjes in siroop','','50 gram sago
250 gram zoete rijstpoeder (kleefrijstpoeder)
Vulling
175 gram gezoete kastanjepuree in blik
1 eetlepel sesamzaad
Siroop
100 gram bruine suiker
1,2 liter water','2018-09-26 19:09:45.086420','1. Laat de sago minstens 6 uur in koud water weken. Laat de sago dan nog een half uur uitlekken in een zeef en stamp hem dan fijn. Kneed er het rijstpoeder doorheen en meng de ingredi&euml;nten tot een glad deeg.
2. Rol het deeg uit in de vorm van een lange worst met een doorsnee van ongeveer 2,5 cm. Snij de rol deeg in stukken van 1 cm.
3. Maak elk stukje deeg vlak en leg er &frac12; theelepel kastanjepuree op met een paar sesamzaadjes. 
4. Vouw de randen van het deeg zorgvuldig over de vulling heen en vorm er een klein balletje van door het deeg tussen de handpalmen te rollen.
5. Voor de siroop wordt de suiker in water opgelost in een grote pan. Breng het suikerwater aan de kook en leg er de rijstballetjes in. Breng alles dan weer aan de kook en temper de warmte, zodra alle balletjes aan de oppervlakte komen drijven. laat ze nog 10 minuten heel zachtjes koken. Heet opdienen.','/static/img/china.jpg',19,3,5,1,14,9);
INSERT INTO `recipe` VALUES (585,'Tsjien Ko - Chinese Moscovische cake','','4 eieren
100 gram fijne suiker
120 ml melk
250 gram zelfrijzend bakmeel
½ theelepel zuiveringszout
snufje zout
25 gram reuzel
45 ml olie','2018-09-26 19:09:45.086420','1. Klop de eieren in een kom. Voeg de suiker toe en blijf kloppen tot het mengsel dik is en bleek van kleur. Roer de melk erdoor. Zeef het bakmeel, zout en zuiveringszout en schep dit voorzichtig in het eimengsel.
2. Laat de reuzel smelten en laat hem dan weer wat afkoelen er roer er de olie doorheen. Roer dit ook voorzichtig door het eimengsel.
3. Breng het mengsel over in een ingevet rond bakblik met een doorsnee van 20 cm en laat het 20 minuten stomen. Haal de cake uit het bakblik als hij nog warm is. Snij de cake in 6 tot 8 punten die warm of koud gegeten kunnen worden.','/static/img/china.jpg',19,3,5,1,14,9);
INSERT INTO `recipe` VALUES (586,'Tim Soen Yu - gestoomde zoet-zure vis','','750 gram vis (forel, brasem, karper, zalm, poon) schhongemaakt
2 theelepels zout
25 ml olie
40 gram reuzel
2 kleine chilipepers, van zaadlijsten ontdaan en in dunne reepjes gesneden
6 lente-uitjes, in stukken van 5 cm gesneden
1 rode paprika, van zaadlijsten ontdaan en in dunne reepjes gesneden
3 stukken bamboescheuten uit blik, in dunne reepjes gesneden
45 ml sojasaus
45 ml wijnazijn
1,5 eetlepel suiker
1,5 eetlepel tomatenpuree
45 ml sinaasappelsap
1 eetlepel maizena, opgelost in 5 eetlepels kippebouillion','2018-09-26 19:09:45.086420','1. Wrijf de vis van binnen en van buiten in met het zout en de olie en laat hem zo een half uur staan. Leg de vis in een ovale hittebestendige schotel en  plaats die in een stoompan. Laat hem 15 minuten krachtig stomen.
2. Smelt de reuzel in een pan boven een matig warm vuur. Voeg de chilipepers toe en bak ze al roerend 1 minuut. Doe nu alle overige ingredienten erbij, behalve het maizenamengsel en bak alles nog 15 seconden.
3. Voeg de maizena-oplossing toe en roer in de pan tot de saus gebonden is. Garneer de vis met de losse ingredienten uit de pan en giet dan zorgvuldig de saus over de vis. Warm opdienen.','/static/img/koken.jpg',19,2,8,1,14,9);
INSERT INTO `recipe` VALUES (587,'Cha Ping Kog - Caramel appels','','6 appels, geschild, doorboord en in vieren gesneden
6 eetlepels tarwebloem
1 eetlepel maizena
2 eiwitten
olie om in te frituren
200 gram suiker
60 ml water
1 eetlepel sezamzaad','2018-09-26 19:09:45.086420','1. Bestuif de stukken appel licht met een beetje bloem. Zeef de rest van de bloem en de maizena in een kom. Voeg de eiwitten erbij en klop er een glad beslag van.
2. Verhit de olie tot 180C. Bestrijk de stukken appel een voor een met het beslag en laat ze daarna voorzichtig in de olie zakken. Frituur ze goudbruin. Laat ze uitlekken op absorberend keukenpapier.
3. Doe de suiker en het water in een klein pannetje en los de suiker op door te roeren. Breng het suikerwater aan de kook en laat het doorkoken tot er een lichtbruine stroop is ontstaan. Roer hier de stukken appel en het sesamzaad door.
4. leg de appels op licht ingevette bordjes. Er kan nog een kom water op de tafel gezet worden, zodat iedereen zijn stukje appel met de eetstokjes kan oppakken en ze voor het eten even in het water dompelen om de caramellaag te laten stollen.','/static/img/koken.jpg',19,3,7,1,14,NULL);
INSERT INTO `recipe` VALUES (588,'Mousse van grijze garnalen met een espuma van asperges en kerrievinaigrette','Mousse van grijze garnalen met een espuma van asperges en kerrievinaigrette','Mousse: 			
300 gram gepelde grijze garnalen
2 dl consomme
300 gram room
Zout, Peper
3 blaadjes gelatine

Kerrievinaigrette:
3 dl arachideolie
0,5 dl wijnazijn
1 el mosterd
1 mespunt kerriepoeder
Peper,  Zout

Espuma van asperges:
500 gram aspergesap
100 gram room
100 gram melk
Peper, Zout','2018-09-26 19:09:45.086420','Mousse: 
Smelt de geweekte gelatine in 1 dl opgekookte consomm','/static/img/mouse_van_grijze_garnalen--.jpg',11,7,4,3,15,14);
INSERT INTO `recipe` VALUES (589,'Winterrood','Winterrood. rood fruit, crumble, champagnesabayon, wit schuim.','Voor de gelei van rood fruit:
45 gram suiker
100 gram vruchtenpuree van rood fruit
4 eetlepels rode vruchten 
1 gelatineblaadje

Voor de crumble:
50 gram boter
50 gram suiker
50 gram eierdooiers
50 gram bloem
20 gram gehakte hazelnootjes

Voor de champagnesabayon:
4 eierdooiers
8 eierdopjes champagne
4 eierdopjes suiker

Wit schuim:
50 gram eiwit
50 gram suiker','2018-09-26 19:09:45.086420','Gelei voor rood fruit: 
Warm de vruchtenpuree en de suiker op tot de suiker opgelost is. Voeg de geweekte, uitgeknepen gelatine erbij,
 meng er roer goed. Giet een bodempje in het gewenste glas. Doe er wat rode vruchten in.
 Laat dit opstijven in de koelkast.

Crumble: 
Meng de boter samen met de suiker. Voeg er de eierdooiers, bloem en gehakte hazelnootjes aan toe.
Doe het deeg op een bakplaat en bak het af op 20 a 30 minuten op 150C. Haal het uit de oven,
 laat afkoelen en hak het grof.

Champagnesabayon:
Meng de suiker, champagne en de eierdooiers. Zet het op een laag vuurtje of plaats het au-bain-marie
en klop het luchtig op. Deze bereiding mag zeker niet koken.

Wit schuim: 
Klop het eiwit en de suiker stevig op.

Afwerking: 
Haal het glaasje uit de koeling. Doe de afgekoelde crumble in het glas. Schep de sabayon op de crumble.
Doe het eiwitschuim er bovenop. Je kan dit desgewenst even lichtjes laten kleuren onder grill. Werk het
glaasje af met wat rode vruchten en poedersuiker. Serveer meteen','/static/img/winterrood.jpg',32,3,7,4,15,14);
INSERT INTO `recipe` VALUES (590,'Gelei van kokosnoot en chocolade','Gelei van kokosnoot en chocolade','350 ml kokosmelk
50 gram geraspte kokosnoot
150 gram donkere chocolade
100 ml vloeibare room
30 gram boter
100 gram suiker
6 blaadjes gelatine','2018-09-26 19:09:45.086420','Laat de gelatine zacht worden in koud water

Giet de kokosmelk in een pan. Voeg de geraspte kokosnoot en de suiker toe. Breng al roerend zachtjes aan de kook.
Haal van het vuur zodra het mengsel begint te sudderen en dek af. Zet 10 minuten opzij.

Snij ondertussen enkele krullen van de plak chocolade met behulp van een dunschiller. Zet opzij in de koelkast

Filter de kokosmelk, zet opnieuw op het vuur en breng aan de kook. Haal van het vuur en voeg onder stevig kloppen
de uitgewrongen gelatine toe. Laat afkoelen

Breek de rest van de chocolade in stukken en laat op een zacht vuur smelten in de vloeibare room. 
Klop op tot een gladde cr','/static/img/gelei_van_kokosnoot_en_chocalade.jpg',32,3,5,3,15,12);
INSERT INTO `recipe` VALUES (591,'Fruitsalade van kiwi en passievrucht','Fruitsalade van kiwi en passievrucht met walnoten','4 kiwi','2018-09-26 19:09:45.086420','Was en droog de munt en haal de blaadjes van de stelen. Schil de kiwi','/static/img/fruitsalade2.jpg',32,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (592,'Slaatje met maatjes','Slaatje met maatjes','Handvol  groene boontjes
1 groene appel
1 rode ui
Staafje selder
1 grote tomaat
1 lepel Mayonaise
4 maatjes
Krulandijvie','2018-09-26 19:09:45.086420','Kook een handvol groene boontjes beetgaar. Laat ze afkoelen en snijd ze in stukjes van 1 cm.

Snijd  1 groene appel, 1 rode ui, een staafjes selder en het vruchtvlees van 1 tomaat even groot als de boontjes.

Meng met een lepel goed gekruide mayonaise. Snijd 4 maatjes diagonaal in ruitvormige repen.
Leg op 4 borden een hoopje krulandijvie en hierop een lepel van het groente mengsel.

Schik de maatjesrepen er in stervorm op. Versier met peterselie en dien op met glaasjes ijskoude jenever','/static/img/slaatje_met_maatje.jpg',11,7,8,2,15,14);
INSERT INTO `recipe` VALUES (593,'Glaasje met vis en tomatenpuree','Glaasje met vis en tomatenpuree','400 gram visfilets (kabeljauw, snoekbaars etc)
6 limoenen
1 Spaanse peper
3 lente-uitjes
5 takjes koriander
8 rijpe tomaten
Olijfolie
250 gram yoghurt natuur
Zwart sesamzaad','2018-09-26 19:09:45.086420','Snij de vis in blokjes. Pers het sap uit de limoenen. Was de lente-uitjes en snij ze fijn. Hak de koriander fijn. Meng de vis met het limoensap, de spaanse peper, het lente-uitje 
en de koriander. Kruid met peper en zout en laat 3 a 4 uur marineren in de koelkast.        

Was de tomaten, dompel ze onder in kokend water en pel ze. Verwijder de pitten en snij
in blokjes. Verwarm 1 eetlepel olie en laat hierin de blokjes tomaat 2 minuten zweten.
Kruid met peper en zout en laat afkoelen.

Voeg eerst 3 a 4 eetlepels gemarineerde vis toe, vervolgens de tomaten en eindig met 
2 eetlepels yoghurt. Versier met zwart sesamzaad en wat koriander. Dien goed gekoeld op.','/static/img/glaasje_vis_en_tomatenpuree.jpg',32,7,8,3,15,12);
INSERT INTO `recipe` VALUES (594,'Pruimen met bacon','','20 ontpitte pruimen
20 extra dunne plakken bacon','2018-09-26 19:09:45.086420','Verwarm de grill van de oven voor.

Omwikkel elke pruim met een plakje bacon en maak vast met een houten prikker

Leg de omwikkelde pruimen op een bakplaat bedekt met aluminiumfolie.

Zet de bakplaat in de oven en laat 4 minuten grillen. Draai de pruimen halverwege om. 
Haal uit de oven, leg op een schotel, kruid met peper en dien lauw of koud op.','/static/img/pruimen_met_bacon.jpg',11,8,2,2,15,12);
INSERT INTO `recipe` VALUES (595,'Velout','','400 gram bloedworst
1 gekookte kreeftenstaart
750 ml gevogeltebouillon
1 preistengel
2 snuifjes vierkruidenmengeling','2018-09-26 19:09:45.086420','Verwijder het vel van de worsten en snij ze in stukken.

Was de preistengel. Maak de bladeren los van elkaar en snij ze fijn.

Breng de gevogeltebouillon aan de kook. Voeg, zodra de bouillon kookt, de worst en de fijngesneden prei  
toe en laat 10 minuten koken. Mix fijn en zet terug op een heel zacht vuur om de veloute warm te houden. 
Kruid eventueel bij en meng.

Snij de kreeftenstaart in ronde plakken. Verdeel de veloute over 4 kommen. Voeg de plakken kreeft toe en bestrooi met de vierkruidenmengeleing. Dien meteen op.','/static/img/veloute_van_bloedworst_met_kreeft.jpg',11,8,2,2,15,12);
INSERT INTO `recipe` VALUES (596,'Meerval met eekhoorntjesbrood en rode bieten','','4 stukken meerval met vel (ca 160 gram per stuk)
400 gram kleine rode bieten
200 gram eekhoorntjesbrood
2 el citroensap
1 koffielepel honing
3 eetlepel wijnazijn
6 eetlepels olijfolie
1 teentje knoflook
2 eetlepels boter','2018-09-26 19:09:45.086420','Was de bieten, maak ze schoon en stoom ze 40 minuten. Verwijder de schil en snij ze in twee','/static/img/zeebaars_eekhoorntjesbrood.jpg',32,7,8,NULL,NULL,NULL);
INSERT INTO `recipe` VALUES (597,'Pompoen-selderblokje','','1 butternutpompoen','2018-09-26 19:09:45.086420','Snijd de pompoen en de knolselder in plakken van 0,5 cm dikte en stoom beetgaar. Leg afwisselend op elkaar. 
Druk goed aan en snijd in stukjes van 1,5 cm dik en 5 cm lang','/static/img/kerst2008.jpg',32,6,6,3,15,1);
INSERT INTO `recipe` VALUES (598,'Pompoenpuree','','Butternutpompoen
1 ajuin (ui)
1 teentje knoflook','2018-09-26 19:09:45.086420','Kook een halve pompoen tot puree, samen met ajuin en een teentje knoflook.
Pureer en breng op smaak met peper en zout.','/static/img/kerst2008.jpg',32,6,6,3,15,1);
INSERT INTO `recipe` VALUES (599,'Puree van pastinaak','','1 kg pastinaak
2 dl volle melk
4 eetlepels fruitige olijfolie
2 snufjes geraspte mootmuskaat,  Zout','2018-09-26 19:09:45.086420','Breng water aan de kook in het onderste deel van de stoompan. 

Schil de pastinaken, spoel ze af en snijd ze in dobbelsteentjes van 2 cm. Leg ze in het inzetstuk van de stoompan 
en bestrooi ze met wat zout. Laat de dobbelsteentjes pastinaak ongeveer 20 minuten stomen tot ze zeer zacht zijn.

Verhit tegen het eind van de kooktijd de melk in een grote pan. Pureer de dobbelsteentjes pastinaak met 
het fijnste blad van de groentemachine boven de pan op een laag vuur. Meng de puree met een spatel door de melk. 
Voeg de olie in een dun, onafgebroken straaltje toe.

Voeg geraspte nootmuskaat toe en dien onmiddellijk op.','/static/img/kerst2008.jpg',32,6,6,3,15,1);
INSERT INTO `recipe` VALUES (600,'Gebakken pastinaak','','3 a 4 pastinaken
3 a 4 eetlepels vloeibare honing
1 eetlepel verse fijngesnipperde rozemarijnblaadjes (eerst wassen)
Peper van de molen, Fijn zeezout
Een weinig olie om in te bakken','2018-09-26 19:09:45.086420','Schik de pastinaken en snijd ze in fijne balkjes.

Kleur de pastinaakbalkjes in een grote pan met olie, doe dit eventueel in meerdere keren

Giet de olie af, wanneer de pastinaak goudbruin is en overgiet met de honing, roer de pastinaak goed om in de
honing en neem van het vuur wanneer de honing begint te geuren

Bestrooi de pastinaak met fijngesnipperde rozemarijn en kruid met peper en zout. 
Schud de pastinaak goed op om de kruiden te verdelen.','/static/img/kerst2008.jpg',32,6,6,2,15,13);
INSERT INTO `recipe` VALUES (601,'Schorseneren','','1 bos schorseneren
1 citroen
Zout
water','2018-09-26 19:09:45.086420','Schil de schorseneren met een dunschiller. Versnijd in staafjes van ongeveer 3 cm lang.
Kook de schorseneren beetgaar in water waaraan zout en citroensap zijn toegevoegd.','/static/img/schorseneren.jpg',11,6,6,3,15,13);
INSERT INTO `recipe` VALUES (602,'Gekarameliseerde witloof','','4 stronken witloof
1 koffielepel korianderzaadjes
1 koffielepel poedersuiker','2018-09-26 19:09:45.086420','Halveer de witloofstronken in de lengte. Spoel ze onder koud stromend water en droog ze af met keukenpapier.

  Laat de helft van de boter smelten in een pan met anti-aanbaklaag. Leg het witloof in de pan, met de platte kant
naar beneden. Bestrooi met de suiker, voeg de korianderzaadjes toe en giet 80 ml water in de pan. 

Laat 20 minuten sudderen op een zacht vuur en draai de witloof regelmatig om. Zet het vuur hoger wanneer 
er nog slechts 1 cm water overblijft in de pan, en bak het witloof verder tot het gekarameliseerd is. 
Haal van het vuur en zet opzij.','/static/img/gekarameliseerde_witlog.jpg',32,6,6,2,15,12);
INSERT INTO `recipe` VALUES (603,'Puree van zoete aardappel - violettes','een violette is een paarse aardappel','3 rode zoete aardappelen of violettes
75 gram boter
1 takje peterselie','2018-09-26 19:09:45.086420','Schil de zoete aardappelen en snij ze in stukken. Kook ze in gezouten kokend water tot u ze makkelijk 
kan inprikken met een mes.

Giet de zoete aardappelen af en plet ze met een vork. Voeg de boter in nootjes toe en kruid eventueel bij. 
Houd warm','/static/img/kerst2008.jpg',32,6,6,2,15,12);
INSERT INTO `recipe` VALUES (604,'Aardpeer','','300 gram aardperen
1 eetlepel boter
1 eetlepel notenolie
1 eetlepel citroensap','2018-09-26 19:09:45.086420','Schil de aardperen en snij ze in schijfjes van 3 mm. Verwarm de boter en de notenolie in een pan en
sauteer hierin de groenten op een zacht vuur.

Kruid met peper en zout en voeg het citroensap toe.','/static/img/kerst2008.jpg',32,6,6,3,15,12);
INSERT INTO `recipe` VALUES (605,'Peertje gevuld met kastanjepuree','','250 gram Suiker
1 stokje Kaneel
1/2 stokje Vanillestokje
1/2 l Water 
8 Miniperen','2018-09-26 19:09:45.086420','Kook het water met de suiker, de kaneel en de vanillestok tot siroop. Schil de peren en pocheer ze in de siroop.
Laat afkoelen en halveer ze. Hol uit met een parisiennelepel en vul op met de kastanjepuree.
( zoek eerst naar het recept voor kastanje puree )','/static/img/kerst2008.jpg',32,6,6,3,15,14);
INSERT INTO `recipe` VALUES (606,'Kastanjepuree','','500 gram kastanjes, gepeld
5 eetlepels room
25 gram boter
Zout , Peper','2018-09-26 19:09:45.086420','Doe de kastanjes in een pan met zoveel water dat ze onderstaan, en kook ze 45 minuten.
Giet ze af en werk ze door een groentemolen in een schone pan.

Zet ze op laag vuur en roer er eerst de room, dan de boter en dan peper en zout door.

Blijf roeren, haal de pan van het vuur en geef de puree als bijgerecht bij vlees of wild','/static/img/kerst2008.jpg',32,6,7,3,15,1);
INSERT INTO `recipe` VALUES (607,'appel in sinaasappellikeur','','2 granny-smith appelen
3 eetlepels sinaasappellikeur
2 eetlepels kersensap
4 eetlepels witte-wijnazijn
100 gram kristalsuiker','2018-09-26 19:09:45.086420','Schil de appelen en snijd ze in vieren. Verwijder het klokhuis en de pitten.
Snijd elk partje in twee','/static/img/kerst2008.jpg',32,6,6,3,15,1);
INSERT INTO `recipe` VALUES (608,'Peren-appelmoes','','750 gram peren (doyenne of williams)
750 gram appels (granny Smith)
0,6 dl water, of zoveel als nodig
5 eetlepels honing
2 eetlepels vers citroensap
1/2 theelepel geraspte nootmuskaat
Snufje kruidnagelpoeder
1 eetlepel perenbrandenwijn of cognac','2018-09-26 19:09:45.086420','Schil de appelen en de peren, halveer ze, verwijder de klokhuizen en snijd het vruchtvlees in blokjes van ruim 1 cm

Vermeng de appels, peren, 0.6 dl water, honing, het citroensap, de kaneel, nootmuskaat en kruidnagel in een pan.
Breng zonder deksel tegen de kook  aan op een middelhoog vuur. Laat, af en toe roerend, ongeveer 30 minuten sudderen tot de blokjes fruit zacht maar nog wel heel zijn en het vocht geabsorbeerd is.  Voeg meer water toe
als het mengsel droogkookt.

Voeg de perenbrandewijn toe en roer. Dien warm of op kamertemperatuur op. Voor ongeveer 3/4 liter.','/static/img/saus_appel_peren_mousse.jpg',32,6,7,3,15,1);
INSERT INTO `recipe` VALUES (609,'Cranberry-Zinfandelrelish','','6,25 zinfandel-wijn
185 gram suiker
5 reepjes sinaasappelschil van 5 cm lang
4 kaneelstokjes
10 hele kruidnagels
375 gram cranberry','2018-09-26 19:09:45.086420','Vermeng de wijn, suiker, sinaasappelschil, kaneel en kruidnagels in een pan op een hoog vuur. 
Breng al roerend tegen de kook aan tot de suiker oplost. Zet het vuur lager en laat het mengsel onder af en toe
roeren 15 minuten licht indikkern. Zeef en schenk het vocht terug in de pan.

Voeg de cranberry','/static/img/saus_appel_peren_mousse.jpg',33,5,7,3,15,1);
INSERT INTO `recipe` VALUES (610,'Marinade met rode wijn voor de hertenrug','hertenrug 180 graden. een half uur in de oven per kilo','1 middelgrote ui
2 sjalotjes
2 wortelen
1 takje bleekselderij
2 takjes peterselie
1 takje tijm
1 takje rozemarijn
2 teentjes knoflook
5 peperbolletjes
5 kruidnagels
5 korianderzaadjes
4 jeneverbessen
1 liter rode wijn
5 cl rode wijn-azijn
5 cl olijfolie','2018-09-26 19:09:45.086420','Maak de ui, de sjalotjes, de wortelen, de bleekselderij, de knoflook en de peterselie schoon en snijd alles in grove stukken
Doe alle ingredi','/static/img/saus_appel_peren_mousse.jpg',32,5,5,3,15,1);
INSERT INTO `recipe` VALUES (611,'saus over de hertenrug','Manon''s eigen saus','1 potje wildfond Lacroix
2 dl rode wijn marinade
1 eetlepel aalbessengelei
50 g boter
150 g bospaddenstoelen 
1 in blokjes gesneden truffel (niet noodzakelijk)
Zwarte peper en zout','2018-09-26 19:09:45.086420','Verwarm de fond en de wijn marinade. Laat dit inkoken tot sausdikte en zeef door. 

Voeg er de gelei en de boter aan toe en werk af met de zwarte bospaddenstoelen en de truffel.

 Voeg ten slotte naar eigen smaak peper van de molen en zout toe','/static/img/saus_appel_peren_mousse.jpg',11,5,1,3,15,1);
INSERT INTO `recipe` VALUES (612,'BitterkoekjesIJS','','3 dl. volle melk
2 dl. slagroom
100 gram suiker
1 zakje vanillesuiker
3 eidooiers
half zakje bitterkoekjes
amaretto.','2018-09-26 19:09:45.086420','Hulpmiddelen
Mixer, mixkom en ijsmachine.

Voorbereiding
IJselement van de ijsmachine 24 uur vantevoren invriezen.

De bitterkoekjes verkruimelen en laten weken in amaretto.
De slagroom bijna stijf kloppen. Apart de suiker, vanillesuiker en eidooiers kloppen en al roerend de melk toevoegen. Dit mengsel bij de slagroom voegen. Als laatste de geweekte bitterkoekjes toevoegen en het mengsel laten draaien in de ijsmachine.','/static/img/koken.jpg',11,3,10,4,16,15);
INSERT INTO `recipe` VALUES (613,'Stoofpeertaartje met bitterkoekjesijs','','(voor 4 personen)
6 plakjes diepvries bladerdeeg, ontdooid + extra voor garnering
1 eierdooier, losgeklopt
500 gram kant en klare stoofpeertjes, evt grote in partjes
3 eetlepels bessengelei (pot)
1 bak hertog bitterkoekjesijs of maak zelf het ijs, dat is nog lekkerder, zie het Bitterkoekjes ijs gerecht','2018-09-26 19:09:45.086420','Verwarm de oven voor op 200 C. Leg 4 plakjes deeg op een met bakpapier beklede bakplaat en bestrijk de randen met wat water. Snijd de overige plakjes deeg in 16 dunnen repen, leg deze Op de randen van de deegplakjes als opstaand randje en bestrijk met ei. Prik de bodem met een vork in. Bak de bodems 10 minuten in de oven. Neem uit de oven en beleg met de peertjes. Bak de taartjes nog 4 minuten in de oven, zodat de peertjes lekker warm zijn. Verwarm ondertussen de bessengelei met 1 eetlepel van het stoofperensap of water in een pan en bestrijk de peertjes ermee. Serveer met een bot bitterkoekjesijs erop. 
Bereiden 10 minuten/oven 15 minuten.','/static/img/koken.jpg',11,3,7,4,16,1);
INSERT INTO `recipe` VALUES (614,'Cocktail van Hollandse garnalen, rode grapefruit en whiskeysaus','','(8 personen)
1,5 theelepel tomatenpuree
1,5 eetlepel whiskey
150 ml mayonaise
100 ml slagroom
3 rode grapefruits
75 ml notenolie
1,5 theelepel dyonmosterd
0,5 kropje radicchiosla
300 gram Hollandse garnalen
75 gram walnoten','2018-09-26 19:09:45.086420','Voorbereiding:
Kan de ochtend van tevoren. Verwarm de oven voor op 175 C.
Roer de tomatenpuree met de whisky goed los en roer er dan de mayonaise door. Klop de slagroom stijf en meng luchtig met het whisky mengsel. Breng op smaak met zout en peper.
Schil de grapefruit tot op het vruchtvlees en snijd de partjes met een scherp mesje tussen de vliesjes uit. Vang het sap op. 
Meng het opgevangen grapefruitsap met de notenolie en mosterd en klop tot een dressing. Zet alles apart afgedekt tot gebruik koel weg. 
Rooster de walnoten op de bakplaat in het midden van de oven in 10 minuten tot ze gekleurd zijn. Neem van de bakplaat en laat iets afkoelen. Hak de noten grof en bewaar tot gebruik
Bereiding:
Begin 20 minuten van tevoren. Snijd de kern uit de radicchiokrop wigvormig weg. Snij de sla in dunnen repen en verdeel over 8 coupes. Druppel er wat dressing over. Bewaar de 8 mooiste grapefruitpartjes en snijd de rest in kleinere stukken. Schep de stukjes grapefruit met de garnalen door de whiskysaus en schep op de sla. Garneer met een partje grapefruit en de walnoten.
*Radicchiosla is vrij bitter, je kunt ook kiezen voor minder bittere frisse of gewone kropsla.','/static/img/kerst2009.jpg',11,7,4,3,16,1);
INSERT INTO `recipe` VALUES (615,'Aromatische kerstham','','Voor ongeveer 10 personen
6,5 kg gerookte ham, met bot
2,5 dl rode wijn
Zoveel water dat de ham onder staat
1 grote ui, gehalveerd
2 tenen knoflook (ongepeld)
1 bol venkel, gehalveerd
2 stuks steranijs
1 eetlepel (15 ml) korianderzaad
1 eetlepel (15 ml) venkelzaad
1 eetlepel (15 ml) gemengde peperkorrels

Voor het glazuur:
Ongeveer 20 hele kruidnagels
4 eetlepels (60 ml) cranberry-  of rode bessengelei
0,5 theelepel kaneel
1 theelepel gerookt paprikapoeder
0,5 theelepel rode-wijnazijn','2018-09-26 19:09:45.086420','Doe alle ingredi','/static/img/kerst2009.jpg',7,2,2,6,NULL,NULL);
INSERT INTO `recipe` VALUES (616,'Spruitjes met gedroogde ham en pistachenoten','','1 kilo kleine spruitjes, schoongemaakt
75 gram gepelde pistachenoten
75 ml (pistache-) notenolie of hazelnotenolie
75 ml vers geperst sinaasappelsap 
Vers geraspte nootmuskaat
75 gram serranoham (in niet te dunne plakken)','2018-09-26 19:09:45.086420','Kan een dag van te voren. Stoom de spruitjes in een stoommandje boven een laag kokend water of in een stoomapparaat in 5-7 minuten halfgaar (of kook ze*). Dompel ze daarna direct in ijskoud water. Neem uit het water en laat goed uitlekken. Bewaar koel en afgesloten tot gebruik.

Verwarm de oven voor op 175 C. Leg de pistachenoten op een bakplaat en rooster ze in 6-8 minuten knapperig. Hak ze grof.
Verwarm de notenolie en het sinaasappelsap in een ruime pan en voeg de spruitjes toe. Warm kort op halfhoog vuur . Leg de deksel erop en schud ze goed om. Laat op laagste vuur afgedekt nog 10-12 minuten smoren. Breng op smaak met zout, peper en nootmuskaat.
Scheur of snijd ondertussen de ham in kleine stukje en schep met de noten door de spruitjes. Bestrooi met wat geraspte nootmuskaat. 
*Kun je geen kleine spruitjes krijgen, kruis dan grote spruitjes met een scherp mesje aan de onderkant in, dan worden ze zonder dat je ze lang hoeft te stomen of koken toch gelijkmatig gaar. Pistachenotenolie is bij delicatessenwinkels te koop. Je kunt ook hazelnoten- of walnotenolie gebruiken, oa verkrijgbaar bij ruim gesorteerde supermarkten.','/static/img/kerst2009.jpg',32,6,6,4,16,1);
INSERT INTO `recipe` VALUES (617,'Gekruide perencompote met cranberry','','(8 personen)
75 gram suiker
3 steranijs
1 kaneelstokje
150 gram gedroogde appeltjes, in grove stukjes
200 gram cranberry','2018-09-26 19:09:45.086420','Kan 2 dagen van tevoren.
Breng 200 ml water met de suiker, steranijs en kaneel aan de kook en laat de suiker oplossen. Voeg de appeltjes toe en laat 5 minuten zachtjes koken. Voeg dan de cranberry','/static/img/koken.jpg',11,6,7,3,16,NULL);
INSERT INTO `recipe` VALUES (618,'Boozy Britisch Trifle','','Voor de Custard:
1 liter slagroom
8 eierdooiers
2 hele eieren
50 gram kristalsuiker
1 theelepel vanille-extract

Voor de Basis:
2 pakjes van elk 8 trifle cakejes
1 pot van 340 gram aardbeien- of bramenjam
5 dl cream sherry
2 pakjes van 380 gram diepgevroren zomerfruit, ontdooid
De geraspte schil van 1 sinaasappel
25 gram kristalsuiker (overbodig als je verse vruchten gebruikt)

Voor de bovenkant:
5 dl slagroom
50 gram pistaches
1 eetlepel gekonfijte rozenblaadjes of viooltjes','2018-09-26 19:09:45.086420','Verhit voor de custard de room in een grote, wijde pan met dikke bodem en kluts, terwijl de room heet wordt, de eierdooiers, hele eieren en suiker in een kom.
Zet, wanneer de room tegen de kook aan is','/static/img/koken.jpg',7,3,7,1,16,NULL);
INSERT INTO `recipe` VALUES (619,'Geitenkaas met spek en honing','','Ingredi','2018-09-26 19:09:45.086420','Wikkel de geitenkaas in het spek, leg ze op een rooster en zet ze onder de gril. +/- 15 min op een lage stand, halverwege omdraaien 

Maak van de overige ingredienten een dressing. Als de kaas begint te smelten en het spek lekker gaar is onder de gril vandaan halen. Kaas pakketjes ieder op wat rucola of veldsla leggen en dressing erover verdelen.

Evt. wat pijnpitjes er over doen. Erg lekker!!!!!','/static/img/koken.jpg',8,7,9,3,1,1);
INSERT INTO `recipe` VALUES (620,'hans','hans','hans hans hans','2018-09-26 19:09:45.086420','hans hans','/static/img/koken.jpg',6,4,4,2,NULL,NULL);
INSERT INTO `recipe` VALUES (621,'rabarbertaart','rabarber taart','Het Zanddeeg:
300 gram patentbloem
150 gram boter
150 gram poedersuiker
1 mespunt zout
1 zakje vanillesuiker
2 eieren

De vulling:
350 gr rabarber
15 gram bloem
125 gram suiker

Het beslag:
2 eieren
125 ml melk','2018-09-26 19:29:19.079841','Het Zanddeeg:

Zeef de bloem en leg ze in een bergje op de werkbank. Maak er een kuiltje in en breek hierin een ei. Voeg er nog een eidooier bij. Doe er dan de poedersuiker en de vanillesuiker bij. Doe er dan nog de in stukken gesneden zachte boter bij. Werk de ingredienten snel door elkaar. Vorm er een bol van. Als het deeg dreigt te verkruimelen, meng er dan een beetje melk door. Wikkel de bol in plastic folie en laat hem een uur rusten in de koelkast. Rol het deeg voor het gebruik uit.

De vulling:
Snij de rabarber ongeschild grof, was het en droog het goed in een handdoek. Verdeel rabarber over het deeg en bestrooi eerst met de droge mengeling van bloem en suiker.

Het beslag:
Mix het beslag met de kitchenaid, +/- 1 min.
Overgiet hierna met het beslag.

Bak 35 min in een voorverwarmde hetelucht oven op 175 Graden.','',11,10,6,1,1,1);
INSERT INTO `recipe` VALUES (622,'Tarte aux citron - Citroentaart','Tarte aux citron - Citroentaart – warm','De Taartbodem

Pâte sablée – zandgebak - zie recept.

citroen-of limoencustard custard:
Ingrediënten:	
100 gram suiker	
4 eierdooiers	
3 eetlepels citroensap of limoensap	
Rasp van 1 citroen of 2 limoenen


Benodigdheden:
Garde of mixer
Roestvrijstalen kom (inhoud 3-4 liter )
Pan met water (tegen de kook aan)
Houten lepel

opgestijfd eiwit:
Ingrediënten
4 eiwitten
Snufje zout
50 gram suiker	
Poedersuiker in de suikerstrooier','2018-09-26 19:09:45.086420','De Taartbodem
Laat de taartbodem tijdens het voorbakken niet of nauwelijks kleur krijgen, hij mag tijdens het afbakken niet te bruin worden.

Verwarm de oven voor tot 165C

citroen-of limoencustard custard:
Klop de suiker geleidelijk door de eierdooiers en klop tot het mengsel dik en licht van kleur is en in rimpels terugvalt. Roer er de rasp en het sap doorheen. Zet de kom boven het stomende water en roer met een houten lepel tot het mengsel begint te binden (75C) en zo dik is dat het aan de bolle kant van een lepel blijft hangen. Zorg ervoor dat het mengsel niet te heet wordt, want dan schiften de eierdooiers.

opgestijfd eiwit:
Sla de eiwitten met het zout tot u er slappe pieken van kunt trekken, strooi er dan de suiker op en klop het eiwit verder tot stijve pieken (K- 168).

Spatel voorzichtig het eiwit door de warm citroen-of limoencustard en schep het mengsel in de taartbodem.

Bak de taart 30 minuten in het midden van de voorverwarmde oven. Strooi, als de taart begint te stomen en lichtbruin begint te worden, de poedersuiker erover. De taart is klaar als de bovenkant mooi bruin is en een naald of mes er schoon en droog uit komt.
Als u de taart niet direct opdient, laat hem dan in de uitgeschakelde oven staan met de deur op een kier. De taart zakt wat in tijdens het afkoelen. (de taart kan warm of koud worden geserveerd, maar we vinden hem warm het lekkerst).','',8,3,10,4,1,1);
INSERT INTO `recipe` VALUES (623,'Pâte sablée – zandgebak - taartbodem','Pâte sablée – zandgebak','Voor een vorm van 22-25 cm


185 gram bloem
3-7 eetlepels suiker
½ theelepel bakpoeder
7 eetlepels vet (5 el boter + 2 el plantaardig vet)
1 ei, losgeklopt met 1 eetlepel water
½ theelepel vanille-essence


Benodigdheden
Mengkom
Vetvrij papier','2018-09-26 19:09:45.086420','Zandgebak is bijzonder geschikt voor verse vruchtentaarten, zoals een aardbeientaart. Het gebak is wat fijner door het gebruik van eieren en de extra suiker. Hoe meer suiker wordt toegevoegd, des te moeilijker het is om het deeg uit te rollen en er een vorm mee te bekleden, omdat het deeg erg plakkerig is en snel breekt. De extra hoeveelheid suiker geeft echter wel een heerlijke taartbodem.

Doe de bloem, de suiker, de boter, het vet en het bakpoeder in een kom. Kneed met de toppen van de vingers vlug de droge en de vette ingrediënten door elkaar tot de boter in vlokken is verdeeld. Meng er het ei en de vanille-essence doorheen en kneed het deeg snel tot een bal. Leg het deeg op het aanrecht. Duw steeds met de muis van uw hand (dus niet met de palm) het deeg in  Het deeg wordt snel plakkerig als de maximale hoeveelheid suiker is gebruikt. Maak van het deeg opnieuw een bal, wikkel het in plasticfolie en leg het een paar uur in de koelkast om op te stijven.

Bekleed de vlaai- of de taartvorm met losse bodem met het deeg zoals het quiche deeg. Werk snel als u de maximale hoeveelheid suiker hebt gebruikt, anders wordt het deeg zacht.
Bakken
Zandgebak wordt doorgaans in een keer gebakken. Let tijdens het bakken goed op, want als de maximale hoeveelheid suiker is gebruikt, brandt het deeg gemakkelijk aan. Omdat het gemakkelijk inzakt voordat het in de oven stevig is geworden, moet het deeg tegen de rand op zijn plaats worden gehouden met een steunvulling van aluminiumfolie en bonen of een met bonen gevulde vorm.
Bak het zandgebak 5-6 minuten in het midden van de voorverwarmde oven (190C) tot het stevig is, verwijder dan de steunvulling, prik met een vork gaatjes in de bodem en bak nog eens 8-10 minuten. De bodem is klaar als het gebak van de rand loslaat en net lichtbruin begint te worden. Verwijder de vorm en laat de taartbodem op een taartrooster glijden. De bodem wordt knapperig bij het afkoelen.','',8,3,10,3,1,1);
INSERT INTO `recipe` VALUES (624,'Ragout van hertenvlees en Kasteelbier (donker)','','voor 4 personen:
      600 gram hertenvlees
      twee eetlepels bloem
      een grote ui
      vier takjes tijm
      twee theelepels fijngekneusde jeneverbessen
      een laurierblaadje
      twee eetlepels Worcestershire saus
      1 dl wild- runderbouillon
      twee eetlepels boter
      twee eetlepels zonnebloemolie
      een flesje Kasteelbier (donker) van 33 cl
      twee eetlepels fijngehakte peterselie
      twee eetlepels allesbinder of aardappelmeel
      peper uit de molen en zout naar smaak','2018-09-26 19:09:45.086420','Het hertenvlees in blokjes snijden en bestuiven met wat bloem. Een mengsel van boter en olie verhitten in een braadpan en hierin de blokjes hertenvlees om en om aanbraden, totdat alle kanten goudbruin van kleur zijn. 
Hittebron verlagen en de fijngesneden ui, takjes tijm, gekneusde jeneverbessen, bouillon en de helft van het bier erbij doen. In ruim anderhalf uur zacht stoven. 
Een kwartier voor het einde van de stooftijd de rest van het bier en de Worcestershire saus door het stoofvocht roeren. Takjes tijm en het laurierblaadje verwijderen, allesbinder door het stoofvocht roeren en op smaak brengen met peper uit de molen en zout. 
Het vlees en de saus verdelen over voorverwarmde borden. Garneren met fijngehakte peterselie.

Serveer hierbij pappardelle en rode kool.

Drink hierbij een gekoeld glas Kasteelbier (donker).','',1,2,2,10,1,1);
COMMIT;
