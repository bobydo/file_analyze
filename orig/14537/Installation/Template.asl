Azco Legal w/6 notes & PFI tol & 6 QA Cols
Page Size=Legal
Orientation=Landscape
Left=100
Right=2690
Bottom=430
Top=1950
BOMstartX=2357
BOMstartY=2045
BOMstepX=0
BOMstepY=40
BOMitems=43
SchedstepX=650
SchedstepY=0
HeatNostepX=-140
HeatNostepY=0
WeldStartX=3027
WeldStartY=1900
WeldstepX=0
WeldstepY=60
WelderStepX=160
WelderStepY=0
InspStepX1=0
InspStepY1=0
InspStepX2=0
InspStepY2=0
InspStepX3=0
InspStepY3=0
InspStepX4=0
InspStepY4=0
InspStepX5=0
InspStepY5=0
Welditems=27
N-ArrowX=150
N-ArrowY=2700
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
HeatNoText= SL;DI;SI.6,.6;


Rem This is valid for the whole job:
Entries=4 Job Information Entry
Title=Job Information
20  0   Client                          SL;DI;SI1,1;PA;PU2150,200;
245 0   P.O.Number                      SL;DI;SI.6,.6;PA;PU2650,200;
140 0   Project                         SL;DI;SI1,1;PA;PU2200,130;
10  0   Job Matl Code                   SL;DI;SI.5,.5;PA;PU1550,300;
Menu items=0

Rem This is by specification
Entries=6 Non Destructive Exam
Title=Non Destructive Exam
15  1   RT                               SL;DI;SI.5,.5;PA;PU120,300;
15  1   PT                               SL;DI;SI.5,.5;PA;PU120,265;
15  1   MT                               SL;DI;SI.5,.5;PA;PU380,300;
15  1   Visual                           SL;DI;SI.5,.5;PA;PU400,265;
15  1   Press.                           SL;DI;SI.5,.5;PA;PU2130,265;
15  1   Temp.                            SL;DI;SI.5,.5;PA;PU2130,300;
15  1   System.                         SL;DI;SI1,1;PA;PU2385,265;
Rem A menu can be created if you have std NDE information
Menu items=0

Rem This is by specification
Entries=3 Inspection Headers
Title=Review & Approval
15  1   Cust. Review                     SL;DI;SI.5,.5;PA;PU1270,165;
15  1   P.M. Approval                    SL;DI;SI.5,.5;PA;PU1270,130;
15  1   QA/QC Review                     SL;DI;SI.5,.5;PA;PU1270,95;
Rem A menu can be created if you have std Review information
Menu items=2
N/A

Rem This is by specification
Entries=4 Welding Procedures
Title=Welding Procedures
15   1   1st Procedure                  SL;DI;SI.5,.5;PA;PU270,230;
15   1   2nd Procedure                  SL;DI;SI.5,.5;PA;PU530,230;
15   1   3rd Procedure                  SL;DI;SI.5,.5;PA;PU880,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0

Rem This is by specification
Entries=4 Stress-Relieve Procedures
Title=PWHT Procedures
15   1   1st Procedure                  SL;DI;SI.5,.5;PA;PU270,230;
15   1   2nd Procedure                  SL;DI;SI.5,.5;PA;PU530,230;
15   1   3rd Procedure                  SL;DI;SI.5,.5;PA;PU880,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0


Rem These are by specification
Entries=19 Specification Notes
Title=Specification Notes
10  1   Note Heading                    SL;DI;SI.5,.5;PA;PU100,545;
50  1   Spec Note Line 1                SL;DI;SI.5,.5;PA;PU120,510;
50  1   Spec Note Line 2                SL;DI;SI.5,.5;PA;PU120,475;
50  1   Spec Note Line 3                SL;DI;SI.5,.5;PA;PU120,440;
50  1   Spec Note Line 4                SL;DI;SI.5,.5;PA;PU120,405;
50  1   Spec Note Line 5                SL;DI;SI.5,.5;PA;PU120,370;
50  1   Spec Note Line 6                SL;DI;SI.5,.5;PA;PU120,335;
25  1   1st Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1950;
25  1   2nd Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1870;
25  1   3rd Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1790;
25  1   4th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1710;
25  1   5th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1630;
25  1   6th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1550;
25  1   7th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1470;
25  1   8th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1390;
25  1   9th Large Note                  SL;DI;SI1.5,1.5;PA;PU100,1310;
25  1   10th Large Note                 SL;DI;SI1.5,1.5;PA;PU100,1230;
25  1   11Th Large Note                 SL;DI;SI1.5,1.5;PA;PU100,1150;
25  1   12th Large Note                 SL;DI;SI1.5,1.5;PA;PU100,1070;
Menu items=0

Rem These are by DRAWING
Entries=7 Extra Drawing Entry
Title=Extra Drawing Information
10  1   Paint                            SL;DI;SI.5,.5;PA;PU1800,300;
10  1   Insulation                       SL;DI;SI.5,.5;PA;PU1200,265;
15  1   Press.                           SL;DI;SI.5,.5;PA;PU2130,265;
15  1   Temp.                            SL;DI;SI.5,.5;PA;PU2130,300;
15  1   Check date                      SL;DI;SI.5,.5;PA;PU1360,195;
15  1   Cust. Review                    SL;DI;SI.5,.5;PA;PU1270,165;
15  1   Cust.Rev'w. date                SL;DI;SI.5,.5;PA;PU1360,165;
Menu items=0

Rem These are by DRAWING
Entries=6 Every Drawing Entry
Title=Drawing Information
20  1   Ref Drawing                      SL;DI;SI.5,.5;PA;PU1560,265;
3   1   Ref Revision                     SL;DI;SI.5,.5;PA;PU1975,265;
30  0   Spool/Piece Mark                 SL;DI;SI1.1,1.1;PA;PU2130,60;
4   1   Priority                         SL;DI;SI.90,.90;PA;PU2385,275;
10  1   Hydro Test                       SL;DI;SI.5,.5;PA;PU600,265;
10  1   PWHT Reqd                        SL;DI;SI.5,.5;PA;PU600,300;

Rem The following items are all required:
Entries=23 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                            SL;DI;SI1.1,1.1;PA;PU3060,60;
Rem This can be used if the Job # needs to be printed twice on the drawing
0   1   2nd Job #                       
0   0   File/Control #                   SL;DI;SI1.1,1.1;PA;PU3340,60;
Rem Use this if you want a second print of the control #
0   1   2nd File/Control #               SL;DI;SI.9,.9;PA;PU140,2045;
0   0   Spool Rev.                       SL;DI;SI1,1;PA;PU2850,60;
0   0   Weight Text                      SL;DI;SI.9,.9;PA;PU3340,165;
0   0   Dia-Ins Text                     SL;DI;SI.9,.9;PA;PU3100,165;
0   1   Surf.Area Text                   SL;DI;SI.5,.5;PA;PU1280,300;
0   1   Pipe Spec Text                   SL;DI;SI.5,.5;PA;PU960,300;
0   1   Fab.Code Text                    SL;DI;SI.45,.5;PA;PU930,265;
0   0   Drn. By Text                     SL;DI;SI.5,.5;PA;PU1270,230;
0   0   Date Drn                        SL;DI;SI.5,.5;PA;PU1360,230;
0   0   Checked                         SL;DI;SI.5,.5;PA;PU1270,195;
0   0   Date/Time Plotted               SL;DI;SI.4,.4;PA;PU1360,55;
0   0   Sheet                            SL;DI;SI.6,.6;PA;PU2930,60;
REM 0   0   Field Material Label            DI;SL.2;SI.5,.5; "** Field Material"

Entries=5 Revision1
Title=First Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,90;
60  0   Description                      PA;PU130,90;
8   0   Date                             PA;PU1040,90;
6   0   By                               PA;PU910,90;
6   0   Checked                          PA;PU980,90;
Menu items=0
  
Entries=5 Revision2
Title=Second Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,125;
60  0   Description                      PA;PU130,125;
8   0   Date                             PA;PU1040,125;
6   0   By                               PA;PU910,125;
6   0   Checked                          PA;PU980,125;
Menu items=0

Entries=5 Revision3
Title=Third Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,160;
60  0   Description                      PA;PU130,160;
8   0   Date                             PA;PU1040,160;
6   0   By                               PA;PU910,160;
6   0   Checked                          PA;PU980,160;
Menu items=0


Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,195;
60  0   Description                      PA;PU130,195;
8   0   Date                             PA;PU1040,195;
6   0   By                               PA;PU910,195;
6   0   Checked                          PA;PU980,195;
Menu items=0


Entries=3 Bar Codes
Title=Bar Codes
0   0   Job Number
0   0   File/Control #
0   0   Spool Number
Menu items=0

Start of HPGL:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;

REM Vert lines at left of BOM
PU2227,2090;PD2227,330;
PU2287,2090;PD2287,330;
PU2347,2090;PD2347,330;

REM Horiz lines above Weld proc over to above logo
PU70,260;PD3540,260;
PU70,295;PD2250,295;

REM Horiz line above PFI tolerance block
PU70,330;PD3540,330;

REM Vert lineS at Priority box
PU2250,330;PD2250,260;
PU2425,330;PD2425,260;

REM Vert line at left of Logo
PU1350,260;PD1350,50;
PU1500,260;PD1500,50;

REM Vert line at right of Logo
PU2030,260;PD2030,50;

REM Vert line at left of Dia-Ins
PU3040,260;PD3040,50;

REM Vertical lines between NDE, Spec etc. blocks
PU290,260;PD290,330;
PU500,260;PD500,330;
PU800,260;PD800,330;
PU1100,260;PD1100,330;
PU1400,260;PD1400,330;
PU1700,295;PD1700,330;
PU2030,260;PD2030,330;

REM Box around second spool number
PU70,2040;PD270,2040;
PU270,2040;PD270,2090;

REM top line thru BOM area
PU2227,2040;PD3022,2040;

REM Vert lines for Weld and QA list
PU3022,2090;PD3022,330;
PU3162,2090;PD3162,330;
PU3225,2090;PD3225,330;
PU3288,2090;PD3288,330;
PU3351,2090;PD3351,330;
PU3414,2090;PD3414,330;
PU3477,2090;PD3477,330;
REM Horiz lines in weld-QA list
PU3022,1950;PD3540,1950;
PU3022,1890;PD3540,1890;
PU3022,1830;PD3540,1830;
PU3022,1770;PD3540,1770;
PU3022,1710;PD3540,1710;
PU3022,1650;PD3540,1650;
PU3022,1590;PD3540,1590;
PU3022,1530;PD3540,1530;
PU3022,1470;PD3540,1470;
PU3022,1410;PD3540,1410;
PU3022,1350;PD3540,1350;
PU3022,1290;PD3540,1290;
PU3022,1230;PD3540,1230;
PU3022,1170;PD3540,1170;
PU3022,1110;PD3540,1110;
PU3022,1050;PD3540,1050;
PU3022,990;PD3540,990;
PU3022,930;PD3540,930;
PU3022,870;PD3540,870;
PU3022,810;PD3540,810;
PU3022,750;PD3540,750;
PU3022,690;PD3540,690;
PU3022,630;PD3540,630;
PU3022,570;PD3540,570;
PU3022,510;PD3540,510;
PU3022,450;PD3540,450;
PU3022,390;PD3540,390;

REM Horiz lines at Client/Proj/Spool
PU2030,190;PD3040,190;
PU2030,120;PD3040,120;
PU3040,155;PD3540,155;

REM Vert lines at Client/Proj/Spool
PU3300,155;PD3300,260;
PU2900,50;PD2900,120;

REM Thin Lines
SP3;PW0.1;
REM Horiz lines at revision
PU70,85;PD1500,85;
PU70,120;PD1500,120;
PU70,155;PD1500,155;
PU70,190;PD1500,190;
PU70,225;PD1500,225;

REM Vert lines at revision
PU115,50;PD115,225;
PU900,50;PD900,225;
PU970,50;PD970,225;
PU1030,50;PD1030,225;
PU1180,50;PD1180,260;
PU1250,50;PD1250,260;

REM Vert lines at Weld Procedures
PU250,225;PD250,260;
PU520,225;PD520,260;
PU870,225;PD870,260;

SP3;PW0.1;
DI;SI.7,.8;PA;PU2600,275;LBFabrication tolerance= PFI Std. ES-3, Rev'n. March 2004
DI;SI.5,.5;
PU3060,130;LBJOB No.
PU3340,130;LBCONTROL No.
PU2050,95;LBSPOOL
PU2800,95;LBREV.
PU2920,95;LBSHEET
PU2050,235;LBCLIENT
PU2800,235;LBP.O.No.
PU2050,165;LBPROJECT
SI.5,.5;
PU2242,2045;LBITM
PU2303,2045;LBQTY
PU80,300;LBRT
PU80,265;LBPT
PU300,300;LBMT
PU300,265;LBVISUAL
PU510,300;LBPWHT
PU510,265;LBHYDRO
PU1410,265;LBREF DRG
PU1905,265;LBREV.
PU1410,300;LBJOB CODE
PU1710,300;LBPAINT
PU1110,265;LBINSUL
PU1110,300;LBSURF AREA
PU810,265;LBFAB CODE
PU810,300;LBPIPE SPEC
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1185,235;LBDRN
PU1185,200;LBCHK
PU1185,165;LBREV
PU1185,130;LBAPP
PU1185,95;LBQC
PU920,60;LBBY
PU980,60;LBCHK
PU1080,60;LBDATE
PA;PU3100,235;LBDIA-INS
PA;PU3400,235;LBWEIGHT
PU90,2045;LBSp#
PU2040,300;LBTEMP.
PU2040,265;LBPRESS.
REM PU2260,400;LBSYSTEM
PU2260,300;LBPRIORITY
DI;SP3;PW0.1;SI.6,.6;
PU3037,1960;LBWELDS
SI.5,.5;
DI0,1;PA;PU3189,1960;LBWELDER
DI0,1;PA;PU3219,1960;LBID
DI0,1;PA;PU3267,1960;LBFIT-UP
DI0,1;PA;PU3330,1960;LBQA
REM The following two lines are to be filled in if additional headings are required (remove the "REM " from the start of each line)
DI0,1;PA;PU3393,1960;LBNDE
DI0,1;PA;PU3456,1960;LBPMI
REM DI0,1;PA;PU3519,1960;LBEDIT THIS TEXT AS REQUIRED
DI;SI1.50,1.50;PA;PU1600,185;LBAZCO INC.
DI;SI.75,.75;PA;PU1530,121;LBINTEGRATED CONSTRUCTION
DI;SI.75,.75;PA;PU1572,80;LBAPPLETON, WISCONSIN

Start of HPGLPageTwo:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;

REM Vert lines at left of BOM
PU2290,2090;PD2290,330;
PU2350,2090;PD2350,330;
PU2410,2090;PD2410,330;

REM Horiz lines above Weld proc over to above logo
PU70,260;PD3540,260;
PU70,295;PD2250,295;

REM Horiz line above PFI tolerance block
PU70,330;PD3540,330;

REM Vert lineS at Priority box
PU2250,330;PD2250,260;
PU2425,330;PD2425,260;

REM Vert line at left of Logo
PU1350,260;PD1350,50;
PU1500,260;PD1500,50;

REM Vert line at right of Logo
PU2030,260;PD2030,50;

REM Vert line at left of Dia-Ins
PU3040,260;PD3040,50;

REM Vertical lines between NDE, Spec etc. blocks
PU290,260;PD290,330;
PU500,260;PD500,330;
PU800,260;PD800,330;
PU1100,260;PD1100,330;
PU1400,260;PD1400,330;
PU1700,295;PD1700,330;
PU2030,260;PD2030,330;

REM Box around second spool number
PU70,2040;PD270,2040;
PU270,2040;PD270,2090;

REM top line thru BOM area
PU2290,2040;PD3085,2040;

REM Vert lines for Weld and QA list
PU3085,2090;PD3085,330;
PU3225,2090;PD3225,330;
PU3288,2090;PD3288,330;
PU3351,2090;PD3351,330;
PU3414,2090;PD3414,330;
PU3477,2090;PD3477,330;
REM Horiz lines in weld-QA list
PU3085,1950;PD3540,1950;
PU3085,1890;PD3540,1890;
PU3085,1830;PD3540,1830;
PU3085,1770;PD3540,1770;
PU3085,1710;PD3540,1710;
PU3085,1650;PD3540,1650;
PU3085,1590;PD3540,1590;
PU3085,1530;PD3540,1530;
PU3085,1470;PD3540,1470;
PU3085,1410;PD3540,1410;
PU3085,1350;PD3540,1350;
PU3085,1290;PD3540,1290;
PU3085,1230;PD3540,1230;
PU3085,1170;PD3540,1170;
PU3085,1110;PD3540,1110;
PU3085,1050;PD3540,1050;
PU3085,990;PD3540,990;
PU3085,930;PD3540,930;
PU3085,870;PD3540,870;
PU3085,810;PD3540,810;
PU3085,750;PD3540,750;
PU3085,690;PD3540,690;
PU3085,630;PD3540,630;
PU3085,570;PD3540,570;
PU3085,510;PD3540,510;
PU3085,450;PD3540,450;
PU3085,390;PD3540,390;

REM Horiz lines at Client/Proj/Spool
PU2030,190;PD3040,190;
PU2030,120;PD3040,120;
PU3040,155;PD3540,155;

REM Vert lines at Client/Proj/Spool
PU3300,155;PD3300,260;
PU2900,50;PD2900,120;

REM Thin Lines
SP3;PW0.1;
REM Horiz lines at revision
PU70,85;PD1500,85;
PU70,120;PD1500,120;
PU70,155;PD1500,155;
PU70,190;PD1500,190;
PU70,225;PD1500,225;

REM Vert lines at revision
PU115,50;PD115,225;
PU900,50;PD900,225;
PU970,50;PD970,225;
PU1030,50;PD1030,225;
PU1180,50;PD1180,260;
PU1250,50;PD1250,260;

REM Vert lines at Weld Procedures
PU250,225;PD250,260;
PU560,225;PD560,260;
PU870,225;PD870,260;

SP3;PW0.1;
DI;SI.7,.8;PA;PU2600,275;LBFabrication tolerance= PFI Std. ES-3, Rev'n. March 2004
DI;SI.5,.5;
PU3060,130;LBJOB No.
PU3340,130;LBCONTROL No.
PU2050,95;LBSPOOL
PU2800,95;LBREV.
PU2920,95;LBSHEET
PU2050,235;LBCLIENT
PU2800,235;LBP.O.No.
PU2050,165;LBPROJECT
SI.5,.5;
PU2305,2045;LBITM
PU2365,2045;LBQTY
PU80,300;LBRT
PU80,265;LBPT
PU300,300;LBMT
PU300,265;LBVISUAL
PU510,300;LBPWHT
PU510,265;LBHYDRO
PU1410,265;LBREF DRG
PU1930,265;LBREV.
PU1410,300;LBJOB CODE
PU1710,300;LBPAINT
PU1110,265;LBINSUL
PU1110,300;LBSURF AREA
PU810,265;LBFAB CODE
PU810,300;LBPIPE SPEC
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1185,235;LBDRN
PU1185,200;LBCHK
PU1185,165;LBREV
PU1185,130;LBAPP
PU1185,95;LBQC
PU920,60;LBBY
PU980,60;LBCHK
PU1080,60;LBDATE
PA;PU3100,235;LBDIA-INS
PA;PU3400,235;LBWEIGHT
PU90,2045;LBSp#
PU2040,300;LBTEMP.
PU2040,265;LBPRESS.
REM PU2260,400;LBSYSTEM
PU2260,300;LBPRIORITY
DI;SP3;PW0.1;SI.6,.6;
PU3100,1960;LBWELDS
SI.5,.5;
DI0,1;PA;PU3252,1960;LBWELDER
DI0,1;PA;PU3282,1960;LBID
DI0,1;PA;PU3330,1960;LBFIT-UP
DI0,1;PA;PU3393,1960;LBQA
DI;SI1.50,1.50;PA;PU1600,185;LBAZCO INC.
DI;SI.75,.75;PA;PU1530,121;LBINTEGRATED CONSTRUCTION
DI;SI.75,.75;PA;PU1572,80;LBAPPLETON, WISCONSIN