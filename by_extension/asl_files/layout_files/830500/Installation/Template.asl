Rambler 8.5x14 template
Page Size=Legal
Orientation=Landscape
Left=150
Right=2690
Bottom=430
Top=1950
BOMstartX=2390
BOMstartY=2045
BOMstepX=0
BOMstepY=40
BOMitems=43
SchedstepX=650
SchedstepY=0
HeatNostepX=-140
HeatNostepY=0
WeldStartX=3060
WeldStartY=1900
WeldstepX=0
WeldstepY=60
WelderStepX=130
WelderStepY=0
InspStepX1=80
InspStepY1=0
InspStepX2=70
InspStepY2=0
InspStepX3=70
InspStepY3=0
InspStepX4=70
InspStepY4=0
InspStepX5=0
InspStepY5=0
Welditems=28
N-ArrowX=140
N-ArrowY=1970
BarCodeX1=0
BarCodeY1=0
BarCode1Dir=0
BarCodeX2=0
BarCodeY2=0
BarCode2Dir=0
BOM2stepX=-1600
BOM2stepY=0
BOM2Cols=2
BOMText= SL;DI;SI.7,.7;
WeldNoText= SL;DI;SI.6,.6;
HeatNoText= SL;DI;SI.7,.7;
InspText= SL;DI;SI.6,.6;
UnitPriceX=3180
UnitPriceY=2045
TotalPriceX=3310
TotalPriceY=2045
FactorX=3400
FactorY=2045
NetPriceX=3540
NetPriceY=2045
InvoiceNoText= SL;DI;SI1,1;PA;PU3100,180;
TotalPriceText= SL;DI;SI1,1;PA;PU3340,180;

Rem This is valid for the whole job:
Entries=4 Job Information Entry
Title=Job Information
30  0   Client                          SL;DI;SI.8,.8;PA;PU2150,200;
215 0   P.O.Number                      SL;DI;SI.7,.7;PA;PU2750,200;
140 0   Project                         SL;DI;SI.8,.8;PA;PU2200,130;
10  1   Insul	                        SL;DI;SI.5,.5;PA;PU1200,265;
Menu items=0

Rem This is by specification
Entries=4 Non Destructive Exam
Title=Non Destructive Exam
15  1   RT                              SL;DI;SI.5,.5;PA;PU120,300;
15  1   HT                              SL;DI;SI.5,.5;PA;PU120,265;
15  1   MT                              SL;DI;SI.5,.5;PA;PU380,300;
15  1   Visual                          SL;DI;SI.5,.5;PA;PU380,265;
Rem A menu can be created if you have std NDE information
Menu items=9
N/A
2%
5%
10%
10%/NOTE
100%
LVL2
SEE NOTE
TBA

Rem This is by specification
Entries=4 Inspection Headers
Title=Inspection Headers
15  1   1st Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3300,1960;
15  1   2nd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3370,1960;
15  1   3rd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3440,1960;
15  1   4th Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3510,1960;
Menu items=10

X-Ray
MPI
Visual
PMI
SEE NOTE
RT Root
RT Cover
Hardness
WPS

Rem This is by specification
Entries=5 Welding Procedures
Title=Welding Procedures
15  1   1st Procedure                   SL;DI;SI.5,.5;PA;PU310,230;
15  1   2nd Procedure                   SL;DI;SI.5,.5;PA;PU530,230;
15  1   3rd Procedure                   SL;DI;SI.5,.5;PA;PU750,230;
15  1   4th Procedure                   SL;DI;SI.5,.5;PA;PU970,230;
15  1   5th Procedure                   SL;DI;SI.5,.5;PA;PU1190,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=50

RCC-7N
RCC-8
RCC-8 ADM#1
RCC-9
RCC-10
RCC-10N
RCC-11
RCC-11N
RCC-12
RCC-13
RCC-14
RCC-14N
RCC-15
RCC-16
RCC-17
RCC-18
RCC-18A
RCC-19
RCC-19 ADM#1
RCC-20
RCC-21
RCC-22
RCC-23
RCC-24
RCC-25
RCC-26
RCC-27
RCC-28
RCC-29
RCC-30
RCC-31
RCC-32
RCC-33
RCC-34
RCC-35
RCC-36
RCC-37
RCC-38
RCC-39
RCC-40
RCC-41
RCC-42
RCC-43
RCC-44
RCC-45
RCC-46
RCC-47
RCC-48
RCC-49
RCC-49 ADM#1

Rem This is by specification
Entries=5 Stress-Relieve Procedures
Title=PWHT Procedures
15  1   1st Procedure                   SL;DI;SI.5,.5;PA;PU310,230;
15  1   2nd Procedure                   SL;DI;SI.5,.5;PA;PU530,230;
15  1   3rd Procedure                   SL;DI;SI.5,.5;PA;PU750,230;
15  1   4th Procedure                   SL;DI;SI.5,.5;PA;PU970,230;
15  1   5th Procedure                   SL;DI;SI.5,.5;PA;PU1190,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=17

RCC-11
RCC-11N
RCC-14
RCC-14N
RCC-21
RCC-22
RCC-24
RCC-27
RCC-29
RCC-30
RCC-32
RCC-34
RCC-35
RCC-36
RCC-37
RCC-38
SEE NOTE


Rem These are by DRAWING
Entries=2 Extra Drawing Entry
Title=Extra Drawing Information
13  1   Design Temp                           SL;DI;SI.5,.5;PA;PU1850,300;
10  1   Design Pressure                       SL;DI;SI.5,.5;PA;PU1550,300;
Menu items=0

Rem These are by DRAWING
Entries=6 Every Drawing Entry
Title=Drawing Information
20  1   Ref Drawing                     SL;DI;SI.5,.5;PA;PU1560,265;
3   1   Ref Revision                    SL;DI;SI.5,.5;PA;PU2000,265;
30  0   Spool/Piece Mark                SL;DI;SI1.1,1.1;PA;PU2130,60;
4   1   Priority                        SL;DI;SI.8,.8;PA;PU1700,350;
10  1   Hydro Test                      SL;DI;SI.5,.5;PA;PU600,265;
10  1   PWHT Reqd                       SL;DI;SI.5,.5;PA;PU600,300;

Rem The following items are all required:
Entries=23 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                           SL;DI;SI1.1,1.1;PA;PU3060,60;

Rem This can be used if the Job # needs to be printed twice on the drawing               
0   0   File/Control #                  SL;DI;SI1.1,1.1;PA;PU3340,60;

Rem Use this if you want a second print of the control #
0   0   2nd File/Control #              
0   0   Spool Rev.                      SL;DI;SI1,1;PA;PU2850,60;
0   1   Weight Text                     SL;DI;SI.9,.9;PA;PU3340,165;
0   1   Dia-Ins Text                    SL;DI;SI.9,.9;PA;PU3100,165;
0   1   Surf.Area Text                  SL;DI;SI.5,.5;PA;PU1280,300;
0   1   Pipe Spec Text                  SL;DI;SI.5,.5;PA;PU960,300;
0   1   Fab.Code Text                   SL;DI;SI.5,.5;PA;PU960,265;
0   0   Drn. By Text                    SL;DI;SI.5,.5;PA;PU1260,195;
0   0   Date Drn                        SL;DI;SI.5,.5;PA;PU1260,160;
0   0   Checked                         SL;DI;SI.5,.5;PA;PU1260,125;
0   0   Date/Time Plotted               SL;DI;SI.4,.4;PA;PU1260,55;
0   1   Buttweld Count                  SL;DI;SI.8,.8;PA;PU2050,270;
0   0   Sheet                           SL;DI;SI1,1;PA;PU2930,55;


Entries=5 Revision1
Title=First Drawing Revision
3   0   Revision No.                    SL;DI;SI.5,.5;PA;PU80,90;
60  0   Description                     PA;PU130,90;
8   0   Date                            PA;PU1040,90;
4   0   By                              PA;PU910,90;
4   0   Checked                         PA;PU980,90;
Menu items=0
  
Entries=5 Revision2
Title=Second Drawing Revision
3   0   Revision No.                    SL;DI;SI.5,.5;PA;PU80,125;
60  0   Description                     PA;PU130,125;
8   0   Date                            PA;PU1040,125;
4   0   By                              PA;PU910,125;
4   0   Checked                         PA;PU980,125;
Menu items=0

Entries=5 Revision3
Title=Third Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU80,160;
60  0   Description                     PA;PU130,160;
8   0   Date                            PA;PU1040,160;
4   0   By                              PA;PU910,160;
4   0   Checked                         PA;PU980,160;
Menu items=0


Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU80,195;
60  0   Description                     PA;PU130,195;
8   0   Date                            PA;PU1040,195;
4   0   By                              PA;PU910,195;
4   0   Checked                         PA;PU980,195;
Menu items=0

Start of HPGL:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;

REM Vert left of BOM
PU2260,2090;PD2260,260;
PU2320,2090;PD2320,260;
PU2380,2090;PD2380,260;

REM Check line top of page
PU70,2040;PD3050,2040;
PU270,2040;PD270,2090;
PU470,2040;PD470,2090;
PU670,2040;PD670,2090;
PU870,2040;PD870,2090;
PU1070,2040;PD1070,2090;
PU1270,2040;PD1270,2090;
PU1470,2040;PD1470,2090;
PU1670,2040;PD1670,2090;
PU1870,2040;PD1870,2090;

REM Vert for Weld list
PU3050,2090;PD3050,260;
PU3170,2090;PD3170,260;
PU3260,2090;PD3260,260;
PU3330,2090;PD3330,260;
PU3400,2090;PD3400,260;
PU3470,2090;PD3470,260;

REM HORIZ for Weld list
PU3050,1950;PD3540,1950;
PU3050,1890;PD3540,1890;
PU3050,1830;PD3540,1830;
PU3050,1770;PD3540,1770;
PU3050,1710;PD3540,1710;
PU3050,1650;PD3540,1650;
PU3050,1590;PD3540,1590;
PU3050,1530;PD3540,1530;
PU3050,1470;PD3540,1470;
PU3050,1410;PD3540,1410;
PU3050,1350;PD3540,1350;
PU3050,1290;PD3540,1290;
PU3050,1230;PD3540,1230;
PU3050,1170;PD3540,1170;
PU3050,1110;PD3540,1110;
PU3050,1050;PD3540,1050;
PU3050,990;PD3540,990;
PU3050,930;PD3540,930;
PU3050,870;PD3540,870;
PU3050,810;PD3540,810;
PU3050,750;PD3540,750;
PU3050,690;PD3540,690;
PU3050,630;PD3540,630;
PU3050,570;PD3540,570;
PU3050,510;PD3540,510;
PU3050,450;PD3540,450;
PU3050,390;PD3540,390;
PU3050,330;PD3540,330;

REM Horiz lines above inspection
PU70,260;PD3540,260;
PU70,295;PD2030,295;
PU70,330;PD2030,330,2030,50;

REM Left of Logo
PU1400,330;PD1400,50;

REM Left of Dia-Ins
PU3040,260;PD3040,50;

REM Inspection divider lines
PU500,260;PD500,330;
PU800,260;PD800,330;
PU1100,260;PD1100,330;
PU1700,295;PD1700,330;
PU290,260;PD290,330;

REM Client/Proj/Spool
PU2030,190;PD3040,190;
PU2030,120;PD3040,120;
PU3040,155;PD3540,155;
PU3300,155;PD3300,260;
PU2900,50;PD2900,120;

REM Thin Lines
SP3;PW0.1;
REM Revision lines
PU70,85;PD1400,85;
PU70,120;PD1400,120;
PU70,155;PD1400,155;
PU70,190;PD1400,190;
PU70,225;PD1400,225;
PU115,50;PD115,225;
PU900,50;PD900,225;
PU970,50;PD970,225;
PU1030,50;PD1030,225;
PU1180,50;PD1180,225;
PU1250,50;PD1250,225;

REM Weld Procedures
PU300,225;PD300,260;
PU520,225;PD520,260;
PU740,225;PD740,260;
PU960,225;PD960,260;
PU1180,225;PD1180,260;

SP3;PW0.1;
DI;SI.5,.5;PA;PU1880,2055;LBwww.Acornpipe.com
DI;SI.4,.4;
PU2900,100;LBSHEET
DI;SI.5,.5;
PU3060,130;LBJOB No.
PU3340,130;LBCONTROL No.
PU2050,95;LBSPOOL
PU2800,95;LBREV.
PU2050,235;LBCLIENT
PU2800,235;LBP.O.No.
PU2050,165;LBPROJECT
SI.5,.5;
PU2275,2045;LBITM
PU2335,2045;LBQTY
PU80,300;LBRT
PU80,265;LBHT
PU300,300;LBMT
PU300,265;LBVISUAL
PU510,300;LBPWHT
PU510,265;LBHYDRO
PU1410,265;LBREF DRG
PU1930,265;LBREV.
PU1410,300;LBDesign Press
PU1710,300;LBDesign Temp
PU1110,265;LBINSUL
PU1110,300;LBSURF AREA
PU810,265;LBFAB CODE
PU810,300;LBPIPE SPEC
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1190,200;LBDRN
PU1190,165;LBDATE
PU1190,130;LBCHK
PU1190,95;LBAPP
PU920,60;LBBY
PU980,60;LBCHK
PU1080,60;LBDATE
PA;PU3100,235;LBDIA-INS
PA;PU3400,235;LBWEIGHT
PU90,2045;LBCUT
PU280,2045;LBFIT
PU480,2045;LBFAB
PU680,2045;LBDIM
PU880,2045;LBVISUAL
PU1080,2045;LBNDE
PU1280,2045;LBHYDRO
PU1480,2045;LBSHIP
PU3065,1960;LBWELDS
DI0,1;PA;PU3230,1960;LBWELDERS

Start of HPGLPageTwo:
DI;SP1;PW0.3;
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;
PU2260,2090;PD2260,260;
PU2320,2090;PD2320,260;
PU2380,2090;PD2380,260;
PU2260,2040;PD3050,2040;
PU660,2090;PD660,260;
PU720,2090;PD720,260;
PU780,2090;PD780,260;
PU660,2040;PD1450,2040;
PU3050,2090;PD3050,260;
PU3170,2090;PD3170,260;
PU3250,2090;PD3250,260;
PU3330,2090;PD3330,260;
PU3400,2090;PD3400,260;
PU3470,2090;PD3470,260;
PU3050,1950;PD3540,1950;
PU3050,1890;PD3540,1890;
PU3050,1830;PD3540,1830;
PU3050,1770;PD3540,1770;
PU3050,1710;PD3540,1710;
PU3050,1650;PD3540,1650;
PU3050,1590;PD3540,1590;
PU3050,1530;PD3540,1530;
PU3050,1470;PD3540,1470;
PU3050,1410;PD3540,1410;
PU3050,1350;PD3540,1350;
PU3050,1290;PD3540,1290;
PU3050,1230;PD3540,1230;
PU3050,1170;PD3540,1170;
PU3050,1110;PD3540,1110;
PU3050,1050;PD3540,1050;
PU3050,990;PD3540,990;
PU3050,930;PD3540,930;
PU3050,870;PD3540,870;
PU3050,810;PD3540,810;
PU3050,750;PD3540,750;
PU3050,690;PD3540,690;
PU3050,630;PD3540,630;
PU3050,570;PD3540,570;
PU3050,510;PD3540,510;
PU3050,450;PD3540,450;
PU3050,390;PD3540,390;
PU3050,330;PD3540,330;


REM Horiz lines above inspection
PU2030,260;PD2030,50;
PU70,260;PD3540,260;

REM Left of Logo
PU1400,260;PD1400,50;

REM Left of Dia-Ins
PU3040,260;PD3040,50;

REM Client/Proj/Spool
PU2030,190;PD3040,190;
PU2030,120;PD3040,120;
PU3040,155;PD3540,155;
PU3300,155;PD3300,260;
PU2900,50;PD2900,120;

REM Thin Lines
SP3;PW0.1;
REM Revision lines
PU70,85;PD1400,85;
PU70,120;PD1400,120;
PU70,155;PD1400,155;
PU70,190;PD1400,190;
PU70,225;PD1400,225;
PU115,50;PD115,225;
PU900,50;PD900,225;
PU970,50;PD970,225;
PU1030,50;PD1030,225;
PU1180,50;PD1180,225;
PU1250,50;PD1250,225;

REM Weld Procedures
PU300,225;PD300,260;
PU520,225;PD520,260;
PU740,225;PD740,260;
PU960,225;PD960,260;
PU1180,225;PD1180,260;

SP3;PW0.1;
SP3;PW0.1;
DI0,1;SI.5,.5;PA;PU100,800;LBwww.Acornpipe.com
DI;SI.4,.4;
PU2900,100;LBSHEET
DI;SI.5,.5;
PU3060,130;LBJOB No.
PU3340,130;LBCONTROL No.
PU2050,95;LBSPOOL
PU2800,95;LBREV.
PU2050,235;LBCLIENT
PU2800,235;LBP.O.No.
PU2050,165;LBPROJECT
SI.5,.5;
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1190,200;LBDRN
PU1190,165;LBDATE
PU1190,130;LBCHK
PU1190,95;LBAPP
PU920,60;LBBY
PU980,60;LBCHK
PU1080,60;LBDATE
DI;SP3;PW0.1;SI.6,.6;
PU3065,1960;LBWELDS
PU1465,1960;LBWELDS
DI0,1;PU3230,1960;LBWELDERS
DI0,1;PU1630,1960;LBWELDERS
DI;SI.5,.5;
PU675,2045;LBITM
PU735,2045;LBQTY
PU2275,2045;LBITM
PU2335,2045;LBQTY