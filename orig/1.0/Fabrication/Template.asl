11x17 Size Drawing NO Inspection
Page Size=11x17
Orientation=Landscape
Left=150
Right=2690
Bottom=430
Top=1950
BOMstartX=3550
BOMstartY=2655
BOMstepX=0
BOMstepY=40
BOMitems=60
SchedstepX=640
SchedstepY=0
HeatNostepX=-140
HeatNostepY=0
WeldStartX=0
WeldStartY=0
WeldstepX=0
WeldstepY=0
WelderStepX=0
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
Welditems=200
N-ArrowX=120
N-ArrowY=2580
BarCodeX1=0
BarCodeY1=0
BarCode1Dir=0
BarCodeX2=0
BarCodeY2=0
BarCode2Dir=0
BOM2stepX=-1400
BOM2stepY=0
BOM2Cols=2
BOM Text                                SL;DI;SI.8,.8;
WeldNoText                              SL;DI;SI.6,.6;
HeatNoText                              SL;DI;SI.6,.6;
User Code Text                          SL;DI;SI.6,.6;
Inspection Text                         SL;DI;SI.6,.6;

Rem This is valid for the whole job:
Entries=4 Job Information Entry
Title=Job Information
20  0   Client                          SL;DI;SI1,1;PA;PU2350,200;
215 0   P.O.Number                      SL;DI;SI.8,.8;PA;PU3400,200;
140 0   Project                         SL;DI;SI1,1;PA;PU2380,130;
10  0   Job Matl Code                   SL;DI;SI.5,.5;PA;PU1570,300;
Menu items=0

Rem This is by specification
Entries=4 Non Destructive Exam
Title=Non Destructive Exam
15  1   RT                               SL;DI;SI.5,.5;PA;PU120,300;
15  1   PT                               SL;DI;SI.5,.5;PA;PU120,265;
15  1   MT                               SL;DI;SI.5,.5;PA;PU380,300;
15  1   Visual                           SL;DI;SI.5,.5;PA;PU400,265;
Rem A menu can be created if you have std NDE information
Menu items=0

Rem This is by specification
Entries=4 Inspection Headers
Title=Inspection Headers
15   0   1st Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3960,2570;
15   0   2nd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU4030,2570;
15   0   3rd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU4100,2570;
15   0   4th Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU4170,2570;
Menu items=5
RT Root
RT Cover
LT Root
LT Cover
Visual

Rem This is by specification
Entries=5 Check Headers
Title=Check Headers
15   0   1st Check                       SL;DI;SI.6,.6;PA;PU100,2045;
15   0   2nd Check                       SL;DI;SI.6,.6;PA;PU510,2045;
15   0   3rd Check                       SL;DI;SI.6,.6;PA;PU860,2045;
15   0   4th Check                       SL;DI;SI.6,.6;PA;PU1210,2045;
15   0   5th Check                       SL;DI;SI.6,.6;PA;PU1560,2045;
Menu items=8
CUT
FITTUP
WELDED
HYDRO
HT TREAT
VISUAL
PAINT
INSULATE

Rem This is by specification
Entries=5 Welding Procedures
Title=Welding Procedures
15   0   1st Procedure                  SL;DI;SI.5,.5;PA;PU310,230;
15   0   2nd Procedure                  SL;DI;SI.5,.5;PA;PU530,230;
15   0   3rd Procedure                  SL;DI;SI.5,.5;PA;PU750,230;
15   0   4th Procedure                  SL;DI;SI.5,.5;PA;PU970,230;
15   0   5th Procedure                  SL;DI;SI.5,.5;PA;PU1190,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0

Rem This is by specification
Entries=5 Stress-Relieve Procedures
Title=PWHT Procedures
15   0   1st Procedure                  SL;DI;SI.5,.5;PA;PU310,230;
15   0   2nd Procedure                  SL;DI;SI.5,.5;PA;PU530,230;
15   0   3rd Procedure                  SL;DI;SI.5,.5;PA;PU750,230;
15   0   4th Procedure                  SL;DI;SI.5,.5;PA;PU970,230;
15   0   5th Procedure                  SL;DI;SI.5,.5;PA;PU1190,230;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0


Rem These are by specification
Entries=5 Specification Notes
Title=Specification Notes
10  1   Note Heading                     SL;DI;SI.5,.5;PA;PU100,475;
50  1   Spec Note Line 1                 SL;DI;SI.5,.5;PA;PU160,440;
50  1   Spec Note Line 2                 SL;DI;SI.5,.5;PA;PU160,405;
50  1   Spec Note Line 3                 SL;DI;SI.5,.5;PA;PU160,370;
50  1   Spec Note Line 4                 SL;DI;SI.5,.5;PA;PU160,335;
Menu items=0

Rem These are by DRAWING
Entries=2 Extra Drawing Entry
Title=Extra Drawing Information
10  1   Paint                            SL;DI;SI.5,.5;PA;PU1800,300;
10  1   Insulation                       SL;DI;SI.5,.5;PA;PU1200,265;
Menu items=0

Rem These are by DRAWING
Entries=6 Every Drawing Entry
Title=Drawing Information
20  1   Ref Drawing                      SL;DI;SI.5,.5;PA;PU1560,265;
3   1   Ref Revision                     SL;DI;SI.5,.5;PA;PU2000,265;
30  0   Spool/Piece Mark                 SL;DI;SI1.1,1.1;PA;PU2300,60;
4   1   Priority                        SL;DI;SI.8,.8;PA;PU1550,350;LBPriority;PA;PU1700,350;
10  1   Hydro Test                       SL;DI;SI.5,.5;PA;PU600,265;
10  1   PWHT Reqd                        SL;DI;SI.5,.5;PA;PU600,300;

Rem The following items are all required:
Entries=23 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                            SL;DI;SI1.1,1.1;PA;PU3720,60;
Rem This can be used if the Job # needs to be printed twice on the drawing
0   0   2nd Job #                       
0   0   File/Control #                   SL;DI;SI1.1,1.1;PA;PU4000,60;
Rem Use this if you want a second print of the control #
0   0   2nd File/Control #              
0   0   Spool Rev.                       SL;DI;SI1,1;PA;PU3300,60;
0   0   Weight Text                      SL;DI;SI1,1;PA;PU4000,165;
0   0   Dia-Ins Text                     SL;DI;SI1,1;PA;PU3800,165;
0   1   Surf.Area Text                   SL;DI;SI.5,.5;PA;PU1280,300;
0   1   Pipe Spec Text                   SL;DI;SI.5,.5;PA;PU960,300;
0   1   Fab.Code Text                    SL;DI;SI.5,.5;PA;PU960,265;
0   0   Drn. By Text                     SL;DI;SI.5,.5;PA;PU1310,195;
0   0   Date Drn                         SL;DI;SI.5,.5;PA;PU1310,160;
0   0   Checked                          SL;DI;SI.5,.5;PA;PU1310,125;
0   0   Date/Time Plotted                SL;DI;SI.4,.4;PA;PU1310,55;
0   1   Buttweld Count                   SL;DI;SI.8,.8;PA;PU2350,280;
0   0   Sheet                            SL;DI;SI.6,.6;PA;PU3480,60;
REM 0   0   Field Material Label            DI;SL.2;SI.5,.5; "** Field Material"

Entries=5 Revision1
Title=First Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,90;
60  0   Description                      PA;PU130,90;
8   0   Date                             PA;PU1140,90;
6   0   By                               PA;PU1010,90;
6   0   Checked                          PA;PU1080,90;
Menu items=0
  
Entries=5 Revision2
Title=Second Drawing Revision
3   0   Revision No.                     SL;DI;SI.5,.5;PA;PU80,125;
60  0   Description                      PA;PU130,125;
8   0   Date                             PA;PU1140,125;
6   0   By                               PA;PU1010,125;
6   0   Checked                          PA;PU1080,125;
Menu items=0

Entries=5 Revision3
Title=Third Drawing Revision
3   0   Revision No.                     SL;DI;SI.4,.4;PA;PU80,160;
60  0   Description                      PA;PU130,160;
8   0   Date                             PA;PU1140,160;
6   0   By                               PA;PU1010,160;
6   0   Checked                          PA;PU1080,160;
Menu items=0


Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                     SL;DI;SI.4,.4;PA;PU80,195;
60  0   Description                      PA;PU130,195;
8   0   Date                             PA;PU1140,195;
6   0   By                               PA;PU1010,195;
6   0   Checked                          PA;PU1080,195;
Menu items=0


REM Entries=0 Fifth Drawing Revision
REM Title=Fifth Drawing Revision
REM 3   0   Revision No.	         SL;DI;SI.4,.4;PA;PU0,0;
REM 60  0   Description		         PU0,0;
REM 8   0   Date                         PU0,0;
REM 6   0   By                           PU0,0;
REM 6   0   Checked                      PA;PU1080,90;
Menu items=0


REM Entries=0 Sixth Drawing Revision
REM Title=Sixth Drawing Revision
REM 3   0   Revision No.		 SL;DI;SI.4,.4;PA;PU0,0;
REM 60  0   Description                  PU0,0;
REM 8   0   Date                         PU0,0;
REM 6   0   By                           PU0,0;
REM 6   0   Checked                      PA;PU1080,90;
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
PA;PU60,40;PD4210,40,4210,2710,60,2710,60,40;
PU70,50;PD4200,50,4200,2700,70,2700,70,50;

REM Vert left of BOM
PU3420,2700;PD3420,260;
PU3480,2700;PD3480,260;
PU3540,2700;PD3540,260;

REM Check line top of page
PU70,2650;PD4200,2650;
PU270,2650;PD270,2700;
PU470,2650;PD470,2700;
PU670,2650;PD670,2700;
PU870,2650;PD870,2700;
PU1070,2650;PD1070,2700;
PU1270,2650;PD1270,2700;
PU1470,2650;PD1470,2700;
PU1670,2650;PD1670,2700;
PU1870,2650;PD1870,2700;

REM Horiz lines above inspection
PU70,260;PD4200,260;
PU70,295;PD2200,295;
PU70,330;PD2200,330,2200,50;

REM Left of Logo
PU1460,260;PD1460,50;

REM Left of Dia-Ins
PU3700,260;PD3700,50;
PU3950,160;PD3950,260;
REM Inspection divider lines
PU500,260;PD500,330;
PU800,260;PD800,330;
PU1100,260;PD1100,330;
PU1430,260;PD1430,330;
PU1700,295;PD1700,330;
PU290,260;PD290,330;

REM Client/Proj/Spool
PU2200,190;PD3700,190;
PU2200,120;PD3700,120;
PU3700,155;PD4200,155;
PU3400,50;PD3400,120;

REM Thin Lines
SP3;PW0.1;
REM Revision lines
PU70,85;PD1450,85;
PU70,120;PD1450,120;
PU70,155;PD1450,155;
PU70,190;PD1450,190;
PU70,225;PD1450,225;
PU115,50;PD115,225;
PU1000,50;PD1000,225;
PU1070,50;PD1070,225;
PU1130,50;PD1130,225;
PU1230,50;PD1230,225;
PU1300,50;PD1300,225;

REM Weld Procedures
PU300,225;PD300,260;
PU520,225;PD520,260;
PU740,225;PD740,260;
PU960,225;PD960,260;
PU1180,225;PD1180,260;

SP3;PW0.1;
DI;SI.3,.3;PA;PU1880,2665;LBwww.Acornpipe.com
DI;SI.5,.5;
PU3730,130;LBJOB No.
PU3990,130;LBCONTROL No.
PU2220,95;LBSPOOL
PU3200,95;LBREV.
PU3420,95;LBSHEET
PU2220,235;LBCLIENT
PU3300,235;LBP.O.No.
PU2220,165;LBPROJECT
SI.5,.5;
PU3435,2655;LBITM
PU3495,2655;LBQTY
PU80,300;LBRT
PU80,265;LBPT
PU300,300;LBMT
PU300,265;LBVISUAL
PU510,300;LBPWHT
PU510,265;LBHYDRO
PU1430,265;LBREF DRG
PU1930,265;LBREV.
PU1430,300;LBJOB CODE
PU1710,300;LBPAINT
PU1110,265;LBINSUL
PU1110,300;LBSURF AREA
PU810,265;LBFAB CODE
PU810,300;LBPIPE SPEC
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1250,200;LBDRN
PU1245,165;LBDATE
PU1250,130;LBCHK
PU1250,95;LBAPP
PU1020,60;LBBY
PU1080,60;LBCHK
PU1150,60;LBDATE
PA;PU3730,235;LBDIA-INS
PA;PU3990,235;LBWEIGHT
PU90,2655;LBCUT
PU280,2655;LBFIT
PU480,2655;LBFAB
PU680,2655;LBDIM
PU880,2655;LBVISUAL
PU1080,2655;LBNDE
PU1280,2655;LBHYDRO
PU1480,2655;LBSHIP

Start of HPGLPageTwo:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD4210,40,4210,2710,60,2710,60,40;
PU70,50;PD4200,50,4200,2700,70,2700,70,50;

REM Vert left of BOM
PU3420,2700;PD3420,260;
PU3480,2700;PD3480,260;
PU3540,2700;PD3540,260;
REM Vert left of 2nd BOM
PU2020,2700;PD2020,260;
PU2080,2700;PD2080,260;
PU2140,2700;PD2140,260;
PU2800,2700;PD2800,260;
PU70,260;PD4200,260;

REM Left of Logo
PU1460,260;PD1460,50;
REM Right of Logo
PU2200,260;PD2200,50;

REM Left of Dia-Ins
PU3700,260;PD3700,50;
PU3950,160;PD3950,260;

REM Client/Proj/Spool
PU2200,190;PD3700,190;
PU2200,120;PD3700,120;
PU3700,155;PD4200,155;
PU3400,50;PD3400,120;

REM Thin Lines
SP3;PW0.1;
REM Revision lines
PU70,85;PD1450,85;
PU70,120;PD1450,120;
PU70,155;PD1450,155;
PU70,190;PD1450,190;
PU70,225;PD1450,225;
PU115,50;PD115,225;
PU1000,50;PD1000,225;
PU1070,50;PD1070,225;
PU1130,50;PD1130,225;
PU1230,50;PD1230,225;
PU1300,50;PD1300,225;

REM Weld Procedures
PU300,225;PD300,260;
PU520,225;PD520,260;
PU740,225;PD740,260;
PU960,225;PD960,260;
PU1180,225;PD1180,260;

SP3;PW0.1;
DI;SI.3,.3;PA;PU880,2665;LBwww.Acornpipe.com
DI;SI.5,.5;
PU3730,130;LBJOB No.
PU3990,130;LBCONTROL No.
PU2220,95;LBSPOOL
PU3200,95;LBREV.
PU3420,95;LBSHEET
PU2220,235;LBCLIENT
PU3300,235;LBP.O.No.
PU2220,165;LBPROJECT
SI.5,.5;
PU3435,2655;LBITM
PU3495,2655;LBQTY
PU2035,2655;LBITM
PU2095,2655;LBQTY
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1250,200;LBDRN
PU1245,165;LBDATE
PU1250,130;LBCHK
PU1250,95;LBAPP
PU1020,60;LBBY
PU1080,60;LBCHK
PU1150,60;LBDATE
PA;PU3730,235;LBDIA-INS
PA;PU3990,235;LBWEIGHT

