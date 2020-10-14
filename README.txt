
# Throwing Knives 

We design some throwing knives and write out text files containing the command line commands for LibreCAD to
generate the *.dxf CAD-file. You can then send the CAD-file to laser cutters and have the blanks cut. 
This is very inexpensive, say 5 times less than buying cusotm made knives.

However the blanks need to be worked on some -- not much. The edges need to be slightly rounded and the
tip ground a little sharper.
However for the knife to stick it is unnecessary to grind the tip much if at all
(at least on a 6mm thick knife).
Simply instruct the laser cutter not to round the tip, the laser cuts a very sharp tip
(links to laser cutters in Germany below).

You do need to round the egdes though not only because they will cut your fingers.   
The problem is knife on knife impact (mostly in the form of a glancing blow).   
If the edges are sharp and the steel is brittle chips will break off. If the edges are slightly rounded    
chipping is much reduced.

For this you will want to have a diamond file, such as 
[this](https://www.zujeddeloh.de/produkte/werkzeuge_+_zubehoer/feilen/diamantfeilen_--649/flachfeile_diamantbeschichtet--_4671.html)
or
[that](https://www.amazon.de/Diamantbeschichtete-Flachfeile-Massagegriff-Gesamtl%C3%A4nge-Glaskeramik-Fliesenfeile/dp/B07JFCRVHD/)

This brings us to the 

## Steel ##

The strength of steel is measured primarily by 4 quantities:

tensile strength: resist pulling apart  (N/mm² = Mpa)
yield strength: resist permanent deformation (N/mm² = Mpa)
Hardness: Brinell (B) or Rockwell (RC) units
Impact strength (Charpy V-notch test): energy in Joule (J) needed to break V-notched standard test specimen.

Of these hardness is the least important since even the softest steel is hard enough to stick in wood.
However hardness correlates positively with tensile and yield strength.
Tensile strength is also unimportant.
However _yield_ _strength_ is important. I have had knives made from kitchen sink stainless steel (EN 1.4301, AISI 304)
bent at a 15 x 6mm cross section from the impact. 

However yield strength in excess of 500 N/mm² is surely enough and almost every knife steel does have that (e.g.
even stainless AISI 420).

Impact resistance is very important. Not only will you get glancing knife on knife blows you will get direct hits
of knife tip on knife (now and then) and then the tip should not break.

Very hard steel (symptom also: high tensile strength) tends to be brittle. Here some examples of steels

Kitchen sink stainless:    
EN 1.4301, AISI 304    
Tensile strenght: 500-700Mpa     <<<--- adequate       
Yield strength; 190 Mpa          <<<---- TOO WEAK   
Impact (V-notch): 60J            <<<---- VERY GOOD   
Hardness (Brinell): 215          <<<---- soft   
density: 7.9g / cm^3

Spring steel (Wulflund Arrows, AceJet knives)   
EN 1.7102, AISI 54SiCr6, CSN 14260    
(Quenched and tempered)   
Tensile strength: 1600 Mpa      <<<--- VERY STRONG   
Yield strenght: 1500 MPa        <<<--- VERY STRONG   
Impact (V-notch): 9.1J          <<<--- brittle   
Hardness: 480HB (Brinell), Rockwell 50   
density 7.6g / cm³   

Hardox HB400   
(excavator shovels and such)   
Tensile strength: 1250 Mpa    <<<--- GOOD   
Yield strength: 1000 MPa      <<<--- GOOD   
Impact (V-notch): 45J         <<<--- GOOD   
Hardness: 400HB (Brinell), Rockwell 43   
density: 7.6g/cm³   

Regrettably almost every steel offered by the laser cutters is weak.   
Mostly you get stainless 1.4301 and that can be too low on yield strength (for extreme knife   
geometries, like: thin in the middle).   
However from one source you get Hardox HB400 and that is all around an excellent steel since    
it combines strength with impact resistance.   

You can get it from this 
[laser cutter](https://laserhub.com/materialien/metallkatalog/).

[another laser cutter](https://laserteileonline.de/)  

This is for Germany. I am sure laser cutters exist in every continent and developed country.  
Generally for every steel you can get a spec sheet if you know the EN or AISI classification,   
for which you can get tables on the internet:

[Steels, DIN, in German](https://hps.hs-regensburg.de/heh39273/aufsaetze/en10025_1.pdf) or this very nice one with
chemical composition:
[Steel tables](https://www.tetec-mueller.de/Dokumente/Pdf/Common/d/Material1_d.pdf).

Generally you do not want a steel with too much carbon (e.g more than 0.70%) -- it is too brittle.


## How to get your knife ##

You navigate into the folder [knives](https://github.com/spyqqqdia/Knife/tree/master/knives). In each of the subfolders you 
will find text files that contain the commands you enter on the command line into the CAD-program _LibreCAD_
to draw your knife and generate the *.dxf file (CAD file). 

If you have never worked with a CAD program do not worry: LibreCAD is free, it's not hard and there are you-tube tutorials. 

Soon I will also generate the command file for direct upload into LibreCAD (works only in latest version 2.2.0) 
but as of yet I was unable to make it work and so you have to enter the commands manually into the command line window
of LibreCAD.

Then you choose your laser cutter, upload the CAD-file and choose your steel, thickness and number of pieces. 
You then get a price and can order. This is some orders of magnitude cheaper than the commercial sources for knives
but also your knife still needs some work. You will need a rotary grinder. Choose a slow running one to avoid overheating the
steel and one with high grade (white) corundum wheels. CBN grinding wheels are even better but are tyically not available
on affordable grinders, you need to order them separately.

Currently I have uploaded the PDFs (scroll all the way down) and CAD files for the LAV knife (which I like the most).
Eventually I will put some others on too. The text files with the commands are available for all knives.

Is this a better solution than ordering the expensive knives from sources like Wulflund or AceJet?
Only if you are willing to put in additional work and want many and several different types of knives
because you will spend money on tools, equipment (safety goggles, gloves, grinder, diamond files) and invest time.
If all you want is a set of knives the best solution is to pony up the cash and order from 

[Wulflund](https://www.wulflund.com/weapons-swords-axes-knives/sharp-blades-throwing-knives/)   or  
[AceJet](https://www.acejetofficial.com/throwing-knives)

## R-Code ##

I design these knives by trial and error in LibreCAD taking note of the commands (spline, line control points).   
Then I package this in an R-code that writes back the commands into a text file and also depends on a scale factor   
(f) which allows you to make the knife smaller or bigger.

E.g.: you like a knife but the normed version (f=1) is 25cm long and you want a version that is 26cm long.   
Then you run the corresponding R-Code (function knife_<knife_name>(f,th,d)) with f = 26/25     
which writes out the text file with the commands for the scaled version

This R code also tries to compute the weight of the knife (needs parameter th = thickness and 
d = steel density in g/cm³)
This is only approximate but should now be very good for LAVs, Arrows and MMYs since I have these already
and need to only account for change in thickness, scale and density which can be done exactly.


