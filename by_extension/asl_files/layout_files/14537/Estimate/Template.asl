24x36 Size Installation Drawing
Page Size=24X36
Orientation=Landscape
Left=150
Right=7500
Bottom=430
Top=4150
BOMstartX=7350
BOMstartY=5930
BOMstepX=0
BOMstepY=80
BOMitems=75
SchedstepX=1400
SchedstepY=0
HeatNostepX=-380
HeatNostepY=0
Welditems=250
N-ArrowX=280
N-ArrowY=5880
BarCodeX1=0
BarCodeY1=0
BarCode1Dir=0
BarCodeX2=0
BarCodeY2=0
BarCode2Dir=0
BOM2stepX=-3000
BOM2stepY=0
BOM2Cols=2
BOMText= SL;DI;SI1.3,1.2;

Rem This is valid for the whole job:
Entries=3 Job Information Entry
Title=Job Information
35  0   Client                          SL;DI;SI1.6,1.6;PA;PU6550,370;
215 0   P.O.Number                      SL;DI;SI1.2,1.2;PA;PU8040,370;
50  0   Project                         SL;DI;SI1.6,1.6;PA;PU6550,230;
Menu items=0

Rem This is by specification
Entries=4 Non Destructive Exam
Title=Non Destructive Exam
15  0   RT                               SL;DI;SI1,.8;PA;PU140,405;
15  0   PT                               SL;DI;SI1,.8;PA;PU140,355;
15  0   MT                               SL;DI;SI1,.8;PA;PU380,405;
15  0   Visual                           SL;DI;SI1,.8;PA;PU400,355;
Rem A menu can be created if you have std NDE information
Menu items=0

Rem These are by specification
Entries=5 Specification Notes
Title=Specification Notes
10  0   Note Heading                     SL;DI;SI1,1;PA;PU4550,400;
50  0   Spec Note Line 1                 SL;DI;SI1,1;PA;PU4550,350;
50  0   Spec Note Line 2                 SL;DI;SI1,1;PA;PU4550,300;
50  0   Spec Note Line 3                 SL;DI;SI1,1;PA;PU4550,250;
50  0   Spec Note Line 4                 SL;DI;SI1,1;PA;PU4550,200;
Menu items=0

Rem These are by DRAWING
Entries=4 Extra Drawing Entry
Title=Extra Drawing Information
10  0   Paint                            SL;DI;SI1,.8;PA;PU2400,405;
10  0   Insulation                       SL;DI;SI1,.8;PA;PU2400,355;
10  0   Design Press                     SL;DI;SI1,.8;PA;PU1400,405;
10  0   Ref Drg                          SL;DI;SI1,.8;PA;PU3950,355;
Menu items=0

Rem These are by DRAWING
Entries=6 Every Drawing Entry
Title=Drawing Information
20  0   Ref Drawing                      SL;DI;SI1,.8;PA;PU4020,405;
3   0   Ref Revision                     SL;DI;SI1,.8;PA;PU4650,405;
30  0   Spool/Piece Mark                 SL;DI;SI1.7,1.7;PA;PU6540,70;
4   0   Priority                         SL;DI;SI1.2,1.2;PA;PU1700,355;
10  0   Hydro Test                       SL;DI;SI1,.8;PA;PU1400,355;
10  0   PWHT Reqd                        SL;DI;SI1,.8;PA;PU1890,355;

Rem The following items are all required:
Entries=23 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                            SL;DI;SI1.2,1.2;PA;PU8320,70;
Rem This can be used if the Job # needs to be printed twice on the drawing
0   0   2nd Job #                       
0   0   File/Control #                   SL;DI;SI1.2,1.2;PA;PU8650,70;
Rem Use this if you want a second print of the control #
0   0   2nd File/Control #              
0   0   Spool Rev.                       SL;DI;SI1.7,1.7;PA;PU7900,70;
0   0   Weight Text                      SL;DI;SI1.2,.8;PA;PU3550,355;
0   0   Dia-Ins Text                     SL;DI;SI1.2,.8;PA;PU3550,405;
0   0   Surf.Area Text                   SL;DI;SI1,.8;PA;PU1890,405;
0   0   Pipe Spec Text                   SL;DI;SI1,.8;PA;PU3010,405;
0   0   Fab.Code Text                    SL;DI;SI1,.8;PA;PU3010,355;
0   0   Drn. By Text                     SL;DI;SI1,.8;PA;PU2700,255;
0   0   Date Drn                         SL;DI;SI1,.8;PA;PU2700,205;
0   0   Checked                          SL;DI;SI1,.8;PA;PU2700,155;
0   0   Date/Time Plotted                SL;DI;SI1,.8;PA;PU2700,55;
REM 0   0   Buttweld Count                   SL;DI;SI1,.8;PA;PU4780,80;
0   0   Sheet                            SL;DI;SI1.7,1.7;PA;PU8100,70;
REM 0   0   Field Material Label            DI;SL.2;SI.5,.5; "** Field Material"

Entries=5 Revision1
Title=First Drawing Revision
3   0   Revision No.                     SL;DI;SI1,.8;PA;PU120,110;
60  0   Description                      PA;PU300,110;
8   0   Date                             PA;PU2190,110;
6   0   By                               PA;PU1910,110;
6   0   Checked                          PA;PU2050,110;
Menu items=0
  
Entries=5 Revision2
Title=Second Drawing Revision
3   0   Revision No.                     SL;DI;SI1,.8;PA;PU120,160;
60  0   Description                      PA;PU300,160;
8   0   Date                             PA;PU2190,160;
6   0   By                               PA;PU1910,160;
6   0   Checked                          PA;PU2050,160;
Menu items=0

Entries=5 Revision3
Title=Third Drawing Revision
3   0   Revision No.                     SL;DI;SI1,.8;PA;PU120,210;
60  0   Description                      PA;PU300,210;
8   0   Date                             PA;PU2190,210;
6   0   By                               PA;PU1910,210;
6   0   Checked                          PA;PU2050,210;
Menu items=0


Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                     SL;DI;SI1,.8;PA;PU120,260;
60  0   Description                      PA;PU300,260;
8   0   Date                             PA;PU2190,260;
6   0   By                               PA;PU1910,260;
6   0   Checked                          PA;PU2050,260;
Menu items=0


REM Entries=0 Fifth Drawing Revision
Title=Fifth Drawing Revision
3   0   Revision No.                     SL;DI;SI1,.8;PA;PU120,310;
60  0   Description                      PA;PU300,310;
8   0   Date                             PA;PU2190,310;
6   0   By                               PA;PU1910,310;
6   0   Checked                          PA;PU2050,310;
Menu items=0


REM Entries=0 Sixth Drawing Revision
REM Title=Sixth Drawing Revision
REM 3   0   Revision No.		        SL;DI;SI.4,.4;PA;PU0,0;
REM 60  0   Description                     PU0,0;
REM 8   0   Date                            PU0,0;
REM 6   0   By                              PU0,0;
REM 6   0   Checked                          PA;PU1080,90;
Menu items=0

Entries=3 Bar Codes
Title=Bar Codes
0   0   Job Number
0   0   File/Control #
0   0   Spool Number
Menu items=0

Start of HPGL:
DI;SP1;PW0.1;
REM Double line border
PA;PU60,40;PD8810,40,8810,6010,60,6010,60,40;
PU70,50;PD8800,50,8800,6000,70,6000,70,50;

REM Vert left of BOM
PU7200,5920;PD8800,5920;
PU7200,6000;PD7200,500;
PU7270,6000;PD7270,500;
PU7340,6000;PD7340,500;

REM Horiz lines above inspection
PU70,900;PD4700,900,4700,50;
PU70,820;PD4700,820;
PU70,740;PD4700,740;

REM Inspection divider lines
PU570,900;PD570,740;
PU1080,900;PD1080,740;
PU1590,900;PD1590,740;
PU2200,900;PD2200,740;
PU2710,900;PD2710,740;
PU3220,900;PD3220,740;
PU3800,900;PD3800,740;

REM Revisions
SP3;
REM Revision lines
PU70,240;PD3000,240;
PU70,420;PD3000,420;
PU70,500;PD3000,500;
PU70,580;PD3000,580;
PU70,660;PD3000,660;
PU70,740;PD3000,740,3000,50;
PU2490,740;PD2490,50;
PU2500,740;PD2500,50;
PU2650,740;PD2650,50;
PU200,740;PD200,50;
PU2180,740;PD2180,50;
PU2040,740;PD2040,50;
PU1900,740;PD1900,50;

REM Left of Dia-Ins
PU8300,200;PD8300,50;
REM Client/Proj/Spool
PU8800,500;PD6500,500,6500,50;
PU6500,350;PD8800,350;
PU6500,200;PD8800,200;

PU8000,350;PD8000,500;
PU8000,50;PD8000,200;
REM PU8000,50;PD8000,120;

SP3;
DI;SI.8,.6;PA;PU1880,5965;LBwww.Acornpipe.com
DI;SI.8,.6;
PU8330,170;LBJOB No.
PU8590,170;LBCONTROL No.
PU6520,170;LBSPOOL
PU7800,170;LBREV.
PU8020,170;LBSHEET
PU6520,470;LBCLIENT
PU8020,470;LBP.O.No.
PU6520,320;LBPROJECT
SI.6,.8;
PU7205,5955;LBITM
PU7285,5955;LBQTY
SI1,.8;
PU80,405;LBRT
PU80,355;LBPT
PU590,405;LBMT
PU590,355;LBVISUAL
PU1100,405;LBDESIGN PRESS.
PU1100,355;LBHYDRO
PU1610,355;LBPWHT
PU2220,405;LBPAINT
PU2220,355;LBINSUL
PU1610,405;LBSURF AREA
PU2730,355;LBFAB CODE
PU2730,405;LBPIPE SPEC
PU3830,405;LBREF DRG
PU3830,355;LBREF DRG
PU4550,405;LBREV.
PU1000,60;LBREVISIONS
PU1920,60;LBBY
PU2060,60;LBCHK.
PU2200,60;LBDATE
PU2530,260;LBDRN
PU2530,210;LBDATE
PU2530,160;LBCHK
PU2530,110;LBAPP

PU3240,405;LBFIELD DIA-INS
PU3240,355;LBTOTAL WEIGHT

Start of HPGLPageTwo:
DI;SP1;PW0.1;
REM Double line border
PA;PU60,40;PD8810,40,8810,6010,60,6010,60,40;
PU70,50;PD8800,50,8800,6000,70,6000,70,50;

REM Vert left of BOM
PU7200,5920;PD8800,5920;
PU7200,6000;PD7200,500;
PU7250,6000;PD7250,500;
PU7320,6000;PD7320,500;

REM Vert left of 2nd BOM
PU4200,5920;PD5800,5920;
PU4200,6000;PD4200,500;
PU4250,6000;PD4250,500;
PU4320,6000;PD4320,500;
PU5800,6000;PD5800,500,4200,500;

REM Horiz lines above inspection
PU70,450;PD4500,450,4500,50;
PU70,400;PD4500,400;
PU70,350;PD4500,350;

REM Inspection divider lines
PU570,450;PD570,350;
PU1080,450;PD1080,350;
PU1590,450;PD1590,350;
PU2200,450;PD2200,350;
PU2710,450;PD2710,350;
PU3220,450;PD3220,350;
PU3730,450;PD3730,350;

REM Revisions
SP3;PW1;
REM Revision lines
PU70,100;PD3000,100;
PU70,150;PD3000,150;
PU70,200;PD3000,200;
PU70,250;PD3000,250;
PU70,300;PD3000,300;
PU70,350;PD3000,350,3000,50;
PU2490,350;PD2490,50;
PU2500,350;PD2500,50;
PU2650,350;PD2650,50;
PU200,350;PD200,50;
PU2180,350;PD2180,50;
PU2040,350;PD2040,50;
PU1900,350;PD1900,50;

REM Left of Dia-Ins
PU8300,200;PD8300,50;
REM Client/Proj/Spool
PU8800,500;PD6500,500,6500,50;
PU6500,350;PD8800,350;
PU6500,200;PD8800,200;

PU8000,350;PD8000,500;
PU8000,50;PD8000,200;
REM PU8000,50;PD8000,120;

SP3;
DI;SI.8,.6;PA;PU1880,5965;LBwww.Acornpipe.com
DI;SI.8,.6;
PU8330,170;LBJOB No.
PU8590,170;LBCONTROL No.
PU6520,170;LBSPOOL
PU7800,170;LBREV.
PU8020,170;LBSHEET
PU6520,470;LBCLIENT
PU8020,470;LBP.O.No.
PU6520,320;LBPROJECT
SI.6,.8;
PU7205,5955;LBITM
PU7265,5955;LBQTY
PU4205,5955;LBITM
PU4265,5955;LBQTY

SI1,.8;
PU80,405;LBRT
PU80,355;LBPT
PU590,405;LBMT
PU590,355;LBVISUAL
PU1100,405;LBDESIGN PRESS.
PU1100,355;LBHYDRO
PU1610,355;LBPWHT
PU2220,405;LBPAINT
PU2220,355;LBINSUL
PU1610,405;LBSURF AREA
PU2730,355;LBFAB CODE
PU2730,405;LBPIPE SPEC
PU3750,405;LBREF DRG
PU3750,355;LBREF DRG
PU90,60;LBREV.
PU1000,60;LBREVISIONS
PU1920,60;LBBY
PU2060,60;LBCHK.
PU2200,60;LBDATE
PU2530,260;LBDRN
PU2530,210;LBDATE
PU2530,160;LBCHK
PU2530,110;LBAPP
