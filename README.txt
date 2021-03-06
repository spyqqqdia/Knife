# Designing Imitation Throwing Knives 

#----------- DISCLAIMER and WARNING -----------------------------------------------------------------# 

The following information is provided for informational purposes only and without warranty of any kind. 
In particular it is not implied that the knives described herein are fit or safe for throwing.
Indeed they are not intended to be thrown at all and are intended to be authentic looking _imitations_ 
of throwing knives.

Actually throwing knives is a potentially hazardous activity and is illegal in certain jurisdictions.
Carefully follow the steps below to ensure your imitation throwing knife conforms to all applicable 
restrictions in your area.

#------------------------------------------------------------------------------------------------------#


We design some imitation throwing knives and write out text files containing the command line commands for 
the CAD program LibreCAD to generate the *.dxf CAD-file. You can then send the CAD-file to laser cutters and 
have the blanks cut. Links to laser cutters are found below.

Instruct the laser cutter to round off the tip, otherwise the laser may cut a sharp tip on the knife.
This is bad for the steel (see remarks below).
Even so the blanks need to be worked on some -- not much. The edges need to be slightly rounded and the
tip ground in angular fashion to an authentic looking shape.


You do need to round the egdes otherwise they may cut your fingers. This is also a feature of real throwing knives
where the problem is knife on knife impact (mostly in the form of a glancing blow).   
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

However yield strength in excess of 500 N/mm² is surely enough and corresponding steels are available.

Impact resistance is very important. When actually throwing knives you get glancing knife on knife blows and 
you get direct hits of knife tip on knife (now and then) and then the tip should not break.

To look authentic the imitation throwing knife needs to be made from steel suitable for real throwing knives.
Kitchen sink stainless steel (see below) can be highly polished but does not look authentic.

Very hard steel (symptom also: high tensile strength) tends to be brittle and is also unsuitable. 
Here some examples of steels

Kitchen sink stainless:    
EN 1.4301, AISI 304    
Tensile strength: 500-700Mpa     <<<--- adequate       
Yield strength; 190 Mpa          <<<---- TOO WEAK   
Impact (V-notch): 60J            <<<---- OUTSTANDING  
Hardness (Brinell): 215          <<<---- soft   
density: 7.9g / cm^3

Spring steel 
EN 1.7102, AISI 54SiCr6, CSN 14260    
(Quenched and tempered)   
Tensile strength: 1600 Mpa      <<<--- EXCELLENT    
Yield strength: 1500 MPa        <<<--- EXCELLENT   
Impact (V-notch): 9.1J          <<<--- brittle   
Hardness: 480HB (Brinell), Rockwell 50   
density 7.6g / cm³   

Hardox HB400   
(excavator shovels and such)   
Tensile strength: 1250 Mpa    <<<--- GOOD   
Yield strength: 1000 MPa      <<<--- GOOD   
Impact (V-notch): 45J         <<<--- EXCELLENT   
Hardness: 400HB (Brinell), Rockwell 43   
density: 7.6g/cm³   

Hardox HB500   
Tensile strength: 1600 Mpa      <<<--- EXCELLENT    
Yield strength: 1250-1400 MPa   <<<--- EXCELLENT   
Impact (V-notch): 37J           <<<--- VERY GOOD   
Hardness: 500HB (Brinell), Rockwell 50   
density: 7.6g/cm³   

Stainless 1.4301 is too low on yield strength (for extreme knife geometries).   
Hardox HB400 is widely available and has reasonable yield strength with excellent impact 
resistance.
You can get it from this 
[laser cutter](https://laserhub.com/materialien/metallkatalog/).

Harder grades of Hardox are availablke from this supplier:
[Dünnewald](https://www.duennewald.de/hardox.php)

Hardox 500 is particularly interesting as it strikes 
an excellent balance between yield strength and impact toughness.
In its pristine condition it rivals the CSN 14260 spring steel above with much better
impact toughness.

However there is a catch
The Hardox plates come in quenched and tempered (QT) condition, meaning they are heat treated to
obtain the specified strength parameters above.
The laser will soften and weaken the steel by heating it. This is a problem only at the tip of the knife 
where the cutting edges are close together and there is little material to absorb the heat.
If the CAD design specifies a sharp tip to be cut on the knife we must expect the steel at the tip to be 
significantly weakened.

Many of the knives here have this design flaw (which will be eliminated over time). However I have thrown extensively
with Hardox HB400 knives with this flaw and had only minor problems: some miniscule deformations of the tip after
knife on knife impact which could easily be fixed with a file in 30 seconds.
It is a design flaw nonetheless. It is much better to cut the tip in a semicircle of small radius (e.g 1mm)
and then grind on a sharp tip if this is desired.

Another point to watch is the following: the laser cutter can use either nitrogen or oxygen as a cutting gas.
Nitrogen will blow the molten steel out of the cut while oxygen will burn it off. Thus cutting with oxygen
heats the steel even more which aggravates the problem above. Thus we should always specify Nitrogen as the 
cutting gas (possible up to plate thickness of 6mm after that Oxygen must be used).
Nitrogen also makes for a cleaner cut.

[Rolling direction](https://www.highpowermedia.com/Archive/directional-strength-of-steels) is also a issue. 
Funnily steel has a grain much like wood. Since impact forces act along the long axis of the knife, 
this long axis should be aligned with the rolling direction. 
This means that the cut should occur in the rolling direction of the steel plate.

Here is a [list of laser cutters](knives/LASER_CUTTERS.html) with more details on steels. 
This is for Germany. I am sure laser cutters exist in every continent and developed country.  
Generally for every steel you can get a spec sheet if you know the EN or AISI classification,   
for which you can get tables on the internet:

[Steels, DIN, in German](https://hps.hs-regensburg.de/heh39273/aufsaetze/en10025_1.pdf) or this very nice one with
chemical composition:
[Steel tables](https://www.tetec-mueller.de/Dokumente/Pdf/Common/d/Material1_d.pdf).

Generally you do not want a steel with too much carbon (e.g more than 0.70%) -- it is too brittle.


## How to get your imitation throwing knife ##

You navigate into the folder [knives](https://github.com/spyqqqdia/Knife/tree/master/knives). In each of the subfolders you 
will find text files that contain the commands you enter on the command line into the CAD-program _LibreCAD_
to draw your knife and generate the *.dxf file (CAD file). 

If you have never worked with a CAD program do not worry: LibreCAD is free, it's not hard and there are you-tube tutorials. 

Soon I will also generate the command file for direct upload into LibreCAD (works only in latest version 2.2.0) 
but as of yet I was unable to make it work and so you have to enter the commands manually into the command line window
of LibreCAD.

Then you choose your laser cutter, upload the CAD-file and choose your steel, thickness and number of pieces. 
You then get a price and can order. This is some orders of magnitude cheaper than the commercial sources for real 
throwing knives.

However your knife still needs some work. You will need a rotary grinder. Choose a slow running one to avoid overheating the
steel and one with high grade (white) corundum wheels. CBN grinding wheels are even better but are tyically not available
on affordable grinders, you need to order them separately.

Do not forget to round off the tip (if not rounded already) and the edges.

Currently I have uploaded the PDFs (scroll all the way down) and CAD files for the LAV knife (which I like the most).
Eventually I will put some others on too. The text files with the commands are available for all knives.


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


