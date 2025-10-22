Legal Size Drawing
Page Size=Legal
Orientation=Landscape
Left=100
Right=2690
Bottom=430
Top=1950
BOMstartX=2880
BOMstartY=2045
BOMstepX=0
BOMstepY=40
BOMitems=45
SchedstepX=650
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
Welditems=0
N-ArrowX=180
N-ArrowY=1970
BarCodeX1=0
BarCodeY1=0
BarCode1Dir=0
BarCodeX2=0
BarCodeY2=0
BarCode2Dir=0
BOM2stepX=-990
BOM2stepY=0
BOM2Cols=3
BOMText= SL;DI;SI.7,.7;
WeldNoText= SL;DI;SI.6,.6;
HeatNoText= SL;DI;SI.7,.7;
InspText= SL;DI;SI.6,.6;

Rem This is valid for the whole job:
Entries=4 Job Information Entry
Title=Job Information
20  0   Client                          SL;DI;SI1,1;PA;PU2150,200;
215 0   P.O.Number                      SL;DI;SI.8,.8;PA;PU2800,200;
140 0   Project                         SL;DI;SI1,1;PA;PU2200,130;
10  0   Job Matl Code                   SL;DI;SI.5,.5;PA;PU1550,300;
Menu items=0

Rem This is by specification
Entries=4 Non Destructive Exam
Title=Non Destructive Exam
15  0   RT                               SL;DI;SI.5,.5;PA;PU120,300;
15  0   PT                               SL;DI;SI.5,.5;PA;PU120,265;
15  0   MT                               SL;DI;SI.5,.5;PA;PU380,300;
15  0   Visual                           SL;DI;SI.5,.5;PA;PU400,265;
Rem A menu can be created if you have std NDE information
Menu items=0

Rem This is by specification
Entries=0 Inspection Headers
Title=Inspection Headers
REM 15   0   1st Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3300,1960;
REM 15   0   2nd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3370,1960;
REM 15   0   3rd Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3440,1960;
REM 15   0   4th Weld Insp                   SL;DI0,1;SI.6,.6;PA;PU3510,1960;
Menu items=0

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
10  0   Note Heading                     SL;DI;SI.5,.5;PA;PU100,475;
50  0   Spec Note Line 1                 SL;DI;SI.5,.5;PA;PU160,440;
50  0   Spec Note Line 2                 SL;DI;SI.5,.5;PA;PU160,405;
50  0   Spec Note Line 3                 SL;DI;SI.5,.5;PA;PU160,370;
50  0   Spec Note Line 4                 SL;DI;SI.5,.5;PA;PU160,335;
Menu items=0

Rem These are by DRAWING
Entries=2 Extra Drawing Entry
Title=Extra Drawing Information
10  0   Paint                            SL;DI;SI.5,.5;PA;PU1800,300;
10  0   Insulation                       SL;DI;SI.5,.5;PA;PU1200,265;
Menu items=0

Rem These are by DRAWING
Entries=6 Every Drawing Entry
Title=Drawing Information
20  0   Ref Drawing                      SL;DI;SI.5,.5;PA;PU1560,265;
3   0   Ref Revision                     SL;DI;SI.5,.5;PA;PU2000,265;
30  0   Spool/Piece Mark                 SL;DI;SI1.1,1.1;PA;PU2130,60;
4   1   Priority                        SL;DI;SI.8,.8;PA;PU1550,350;LBPriority;PA;PU1700,350;
10  0   Hydro Test                       SL;DI;SI.5,.5;PA;PU600,265;
10  0   PWHT Reqd                        SL;DI;SI.5,.5;PA;PU600,300;

Rem The following items are all required:
Entries=23 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                            SL;DI;SI1.1,1.1;PA;PU3060,60;
Rem This can be used if the Job # needs to be printed twice on the drawing
0   0   2nd Job #                       
0   0   File/Control #                   SL;DI;SI1.1,1.1;PA;PU3340,60;
Rem Use this if you want a second print of the control #
0   0   2nd File/Control #              
0   0   Spool Rev.                       SL;DI;SI1,1;PA;PU2850,60;
0   0   Weight Text                      SL;DI;SI.9,.9;PA;PU3340,165;
0   0   Dia-Ins Text                     SL;DI;SI.9,.9;PA;PU3100,165;
0   0   Surf.Area Text                   SL;DI;SI.5,.5;PA;PU1280,300;
0   0   Pipe Spec Text                   SL;DI;SI.5,.5;PA;PU960,300;
0   0   Fab.Code Text                    SL;DI;SI.5,.5;PA;PU960,265;
0   0   Drn. By Text                     SL;DI;SI.5,.5;PA;PU1260,195;
0   0   Date Drn                         SL;DI;SI.5,.5;PA;PU1260,160;
0   0   Checked                          SL;DI;SI.5,.5;PA;PU1260,125;
0   0   Date/Time Plotted                SL;DI;SI.4,.4;PA;PU1260,55;
0   0   Buttweld Count                   SL;DI;SI.8,.8;PA;PU2050,270;
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
3   0   Revision No.                     SL;DI;SI.4,.4;PA;PU80,160;
60  0   Description                      PA;PU130,160;
8   0   Date                             PA;PU1040,160;
6   0   By                               PA;PU910,160;
6   0   Checked                          PA;PU980,160;
Menu items=0


Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                     SL;DI;SI.4,.4;PA;PU80,195;
60  0   Description                      PA;PU130,195;
8   0   Date                             PA;PU1040,195;
6   0   By                               PA;PU910,195;
6   0   Checked                          PA;PU980,195;
Menu items=0


REM Entries=0 Fifth Drawing Revision
REM Title=Fifth Drawing Revision
REM 3   0   Revision No.		        SL;DI;SI.4,.4;PA;PU0,0;
REM 60  0   Description			    PU0,0;
REM 8   0   Date                            PU0,0;
REM 6   0   By                              PU0,0;
REM 6   0   Checked                          PA;PU1080,90;
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
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;

REM Vert left of BOM
PU2750,2090;PD2750,260;
PU2810,2090;PD2810,260;
PU2870,2090;PD2870,260;

REM Horiz lines above inspection
PU70,260;PD3540,260;
PU70,295;PD2030,295;
PU70,330;PD2030,330,2030,50;

REM Left of Logo
PU1400,330;PD1400,50;
REM Right of Logo
REM PU2260,260;PD2260,50;

REM Left of Dia-Ins
PU3040,260;PD3040,50;

REM Inspection divider lines
PU500,260;PD500,330;
PU800,260;PD800,330;
PU1100,260;PD1100,330;
PU1700,295;PD1700,330;
PU290,260;PD290,330;

REM Check line top of page
PU70,2040;PD3540,2040;
PU270,2040;PD270,2090;
PU470,2040;PD470,2090;
PU670,2040;PD670,2090;
PU870,2040;PD870,2090;
PU1070,2040;PD1070,2090;
PU1270,2040;PD1270,2090;
PU1470,2040;PD1470,2090;
PU1670,2040;PD1670,2090;
PU1870,2040;PD1870,2090;

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
DI;SI.3,.3;PA;PU2080,2055;LBwww.Acornpipe.com
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
PU2765,2045;LBITM
PU2825,2045;LBQTY
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

Start of HPGLPageTwo:
DI;PW0.6;
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;
REM Left of First BOM
PU2750,2090;PD2750,260;
PU2810,2090;PD2810,260;
PU2870,2090;PD2870,260;

REM Right of Second BOM
PU2390,2090;PD2390,260;

REM Left of Second BOM
PU1720,2090;PD1720,260;
PU1660,2090;PD1660,260;
PU1600,2090;PD1600,260;

REM Right of Third BOM
PU1240,2090;PD1240,260;

REM Left of Third BOM
PU570,2090;PD570,260;
PU510,2090;PD510,260;
PU450,2090;PD450,260;

REM Check line top of page
PU70,2040;PD3540,2040;
PU270,2040;PD270,2090;
PU470,2040;PD470,2090;
PU670,2040;PD670,2090;
PU870,2040;PD870,2090;
PU1070,2040;PD1070,2090;
PU1270,2040;PD1270,2090;
PU1470,2040;PD1470,2090;
PU1670,2040;PD1670,2090;
PU1870,2040;PD1870,2090;

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
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1200,200;LBDRN
PU1200,165;LBDATE
PU1200,130;LBCHK
PU1200,95;LBAPP
PU920,60;LBBY
PU980,60;LBCHK
PU1150,60;LBDATE
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
PU465,2045;LBITM
PU525,2045;LBQTY
PU1615,2045;LBITM
PU1675,2045;LBQTY
PU2765,2045;LBITM
PU2825,2045;LBQTY
PU400,60;LBREVISIONS
PU90,230;LBWELD PROC.
PU1190,200;LBDRN
PU1190,165;LBDATE
PU1190,130;LBCHK
PU1190,95;LBAPP
PU1020,60;LBBY
PU1090,60;LBCHK
PU1150,60;LBDATE
PA;PU3160,60;LBSHEET
