11x17-L&H Template
Page Size=11x17
Orientation=Landscape
Left=150
Right=2690
Bottom=430
Top=1950
BOMstartX=3000
BOMstartY=2655
BOMstepX=0
BOMstepY=40
BOMitems=48
SchedstepX=640
SchedstepY=0

HeatNostepX=-170
HeatNostepY=0


WeldStartX=3670
WeldStartY=2515
WeldstepX=0
WeldstepY=65
WelderStepX=160
WelderStepY=0
InspStepX1=70
InspStepY1=0
InspStepX2=80
InspStepY2=0
InspStepX3=80
InspStepY3=0
InspStepX4=80
InspStepY4=0
InspStepX5=0
InspStepY5=0
Welditems=28
N-ArrowX=130
N-ArrowY=2640
BarCodeX1=0
BarCodeY1=0
BarCode1Dir=0
BarCodeX2=0
BarCodeY2=0
BarCode2Dir=0
BOM2stepX=-2000
BOM2stepY=0
BOM2Cols=2
BOMText= SL;DI;SI.7,.7;
WeldNoText= SL;DI;SI.7,.7;

rem HeatNoText= SL;DI;SI.7,.7;


CatalogNoText= SL;DI;SI1,1;
InspText= SL;DI;SI.6,.6;
UnitPriceX=3830
UnitPriceY=2655
TotalPriceX=3950
TotalPriceY=2655
FactorX=4060
FactorY=2655
NetPriceX=4190
NetPriceY=2655
InvoiceNoText= SL;DI;SI1,1;PA;PU3700,160;
TotalPriceText= SL;DI;SI1,1;PA;PU3970,160;


REM ******************************************************************************

REM This is setup by job/spec setup-layout(fabrication drawing)-job information*******************
Rem This is valid for the whole job:
Entries=4 Job Information Entry
Title=Job Information
30  0   Client                          SL;DI;SI1,1;PA;PU2970,515;
500 0   Purchase Order No.              SL;DI;SI1,1;PA;PU3410,325;
140 0   Project                         SL;DI;SI1,1;PA;PU2970,420;
10  0   Client Contract No.             SL;DI;SI1,1;PA;PU2970,325;
Menu items=0


REM This is setup by job/spec setup-specification-inspection******************************************
Rem This is by specification
Entries=9 Non Destructive Exam
Title=Non Destructive Exam
8   1   RT-BW                            SL;DI;SI.5,.5;PA;PU1130,220;
8   1   RT-SW                            SL;DI;SI.5,.5;PA;PU1322.5,220;
27  1   PT                               SL;DI;SI.5,.5;PA;PU1085,183.5;
27  1   MT                               SL;DI;SI.5,.5;PA;PU1085,147;
26  1   BHN                              SL;DI;SI.5,.5;PA;PU1100,110;
27  1   UT                               SL;DI;SI.5,.5;PA;PU1085,73.5;
27  1   FT                               SL;DI;SI.5,.5;PA;PU1470,220;
27  1   PMI                              SL;DI;SI.5,.5;PA;PU1470,183.5;
23  1   VISUAL                           SL;DI;SI.5,.5;PA;PU1515,147;
Rem A menu can be created if you have std NDE information
Menu items=0

REM This is setup by job/spec setup-specification-inspection headers******************************************
Rem This is by specification
Entries=4 Inspection Headers
Title=Inspection Headers
15  1   1st Weld Insp                    SL;DI0,1;SI.6,.6;PA;PU3940,2570;
15  1   2nd Weld Insp                    SL;DI0,1;SI.6,.6;PA;PU4020,2570;
15  1   3rd Weld Insp                    SL;DI0,1;SI.6,.6;PA;PU4100,2570;
15  1   4th Weld Insp                    SL;DI0,1;SI.6,.6;PA;PU4180,2570;
Menu items=12
RT
RT-BW
RT-SW
PT
LT
MT
UT
BHN
Visual
.
PMI
MPI

REM This is setup by job/spec setup-specification-spec weld procedures******************************************
Rem This is by specification
Entries=5 Welding Procedures
Title=Welding Procedures
15  0   1st Procedure                   SL;DI;SI.5,.5;PA;PU1470,40;
15  0   2nd Procedure                   SL;DI;SI.5,.5;PA;PU1660,40;
15  0   3rd Procedure                   SL;DI;SI.5,.5;PA;PU1860,40;
15  0   4th Procedure                   SL;DI;SI.5,.5;PA;PU2050,40;
15  0   5th Procedure                   SL;DI;SI.5,.5;PA;PU2250,40;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0

Rem This is by specification
Entries=5 Stress-Relieve Procedures
Title=PWHT Procedures
15  0   1st Procedure                   SL;DI;SI.5,.5;PA;PU1470,40;
15  0   2nd Procedure                   SL;DI;SI.5,.5;PA;PU1660,40;
15  0   3rd Procedure                   SL;DI;SI.5,.5;PA;PU1860,40;
15  0   4th Procedure                   SL;DI;SI.5,.5;PA;PU2050,40;
15  0   5th Procedure                   SL;DI;SI.5,.5;PA;PU2250,40;
Rem A menu of your welding procedures can be made here for faster selection
Menu items=0

REM This is setup by job/spec setup-setup spec-spec notes******************************************
Rem These are by specification
Entries=5 Specification Notes
Title=Specification Notes
10  1   Note Heading                    SL;DI;SI.5,.5;PA;PU100,475;
50  1   Spec Note Line 1                SL;DI;SI.5,.5;PA;PU160,440;
50  1   Spec Note Line 2                SL;DI;SI.5,.5;PA;PU160,405;
50  1   Spec Note Line 3                SL;DI;SI.5,.5;PA;PU160,370;
50  1   Spec Note Line 4                SL;DI;SI.5,.5;PA;PU160,335;
Menu items=0



REM This is setup by file-save-extra drawing information******************************************
Rem These are by DRAWING
Entries=21 Extra Drawing Entry
Title=Extra Drawing Information
20  1   Paint Sys                       SL;DI;SI.5,.5;PA;PU1945,152;
15  1   Insulation                      SL;DI;SI.5,.5;PA;PU2185,185;
15  1   Tracing                         SL;DI;SI.5,.5;PA;PU2205,150;
50  1   Service                         SL;DI;SI1,1;PA;PU2970,140;
10  1   Des.Temp                        SL;DI;SI.5,.5;PA;PU1565,110;
20  1   Des Press                       SL;DI;SI.5,.5;PA;PU1570,73.5;
10  1   OP Temp                         SL;DI;SI.5,.5;PA;PU1920,73.5;
10  0   Nace                            SL;DI;SI1,1;PA;PU2445,135;
10  0   Spool Color                     SL;DI;SI.5,.5;PA;PU2725,255;
10  0   Support Color                   SL;DI;SI.5,.5;PA;PU2725,220;
10  0   Ship Loose                      SL;DI;SI.5,.5;PA;PU2760,180;
10  0   Module No.                      SL;DI;SI1,1;PA;PU3855,325; 
20  0   CWP No.                         SL;DI;SI1,1;PA;PU3855,235; 
10  0   Unit/Area                       SL;DI;SI1,1;PA;PU2970,45;
60  0   NOTES1:                         SL;DI;SI.7,.7;PA;PU2445,335;
60  0   NOTES2:                         SL;DI;SI.7,.7;PA;PU2643,335;
10  0   Dia Inches                      SL;DI;SI1,1;PA;PU2445,235;
10  1   MDMT                            SL;DI;SI.5,.5;PA;PU2185,110;
rem 10  0   Checked by                  SL;DI;SI.5,.5;PA;PU2685,42; 
30  0   Reference Isometric 1           SL;DI;SI.5,.65;PA;PU2445,660; 
09  0   Reference Isometric 1-REV       SL;DI;SI.5,.65;PA;PU2879,660; 
30  0   Reference Isometric 2           SL;DI;SI.5,.65;PA;PU2445,615; 
09  0   Reference Isometric 2-REV       SL;DI;SI.5,.65;PA;PU2879,615;
30  0   Reference Isometric 3           SL;DI;SI.5,.65;PA;PU2445,570; 
09  0   Reference Isometric 3-REV       SL;DI;SI.5,.65;PA;PU2879,570; 
rem 20  0   Reference Isometric 4           SL;DI;SI.5,.65;PA;PU2445,525; 
rem 02  0   Reference Isometric 4-REV       SL;DI;SI.5,.65;PA;PU2900,525;
rem 20  0   Reference Isometric 5           SL;DI;SI.5,.65;PA;PU2445,480; 
rem 02  0   Reference Isometric 5-REV       SL;DI;SI.5,.65;PA;PU2900,480; 
rem 20  0   Reference Isometric 6           SL;DI;SI.5,.65;PA;PU2445,435; 
rem 02  0   Reference Isometric 6-REV       SL;DI;SI.5,.65;PA;PU2900,435;
rem 10  0   AECON Mod No                       SL;DI;SI.8,.8;PA;PU2445,50; 

	
Menu items=0


REM This is setup by file-save*********************************************************************
Rem These are by DRAWING
Entries=7 Every Drawing Entry
Title=Drawing Information
20  0   Isometric Drawing               SL;DI;SI1,1;PA;PU2970,235;
20  0   Isometric Ref Revision          SL;DI;SI0.5,1;PA;PU3755,235;
30  0   Spool No.                       SL;DI;SI1,1;PA;PU3122,45;
4   0   AECON MOD NO                    SL;DI;SI.8,.8;PA;PU2445,50;
10  1   Hydro                           SL;DI;SI.5,.5;PA;PU1905,110;
10  1   PWHT                            SL;DI;SI.5,.5;PA;PU2185,225;
50  1   SERVICE                         SL;DI;SI1,1;PA;PU2970,140;

REM This is setup by file-save-extra drawing information******************************************
Rem The following items are all required:
Entries=25 Auto Drawing Entry
Title=Auto Drawing Entry
0   0   Job #                           SL;DI;SI1.1,1.1;PA;PU3855,140;
Rem This can be used if the Job # needs to be printed twice on the drawing
0   0   2nd Job #                       
0   0   File/Control #                  SL;DI;SI1.1,1.1;PA;PU3930,40;
Rem Use this if you want a second print of the control #
0   0   2nd File/Control #              
0   0   Spool Rev.                      SL;DI;SI1,1;PA;PU3865,45;
10  0   Weight Text                     SL;DI;SI.5,.5;PA;PU2710,135;
rem 0   0   Dia-Ins Text                    SL;DI;SI1,1;PA;PU2445,235;
0   1   Surf.Area Text                  SL;DI;SI.5,.5;PA;PU2200,78.5;
0   1   Pipe Spec Text                  SL;DI;SI.5,.5;PA;PU1945,185;
0   1   Fab.Code Text                   SL;DI;SI.5,.5;PA;PU1945,220;
0   0   Drn. By Text                    SL;DI;SI.5,.5;PA;PU2685,85;
0   0   Date Drn                        SL;DI;SI.5,.5;PA;PU2820,85;
0   0   Sheet                           SL;DI;SI1.3,1.3;PA;PU2250,280;
0   0   Field Material Label            DI;SL.2;SI.5,.5; "** Field Material"
rem 0   0   ChK by                          SL;DI;SI.5,.5;PA;PU2685,42;
rem 0   0   Checked by                      SL;DI;SI.5,.5;PA;PU2685,42;     
0   0   ChecKed                         SL;DI;SI.5,.5;PA;PU2685,42;


REM This is for setting up the output for revisions*************************************************
Entries=5 Revision1
Title=First Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU100,80;
60  0   Description                     PA;PU145,80;
8   0   By                              PA;PU795,80;
6   0   Checked                         PA;PU870,80;
6   0   Date                            PA;PU930,80;
REM 6   0   Chk date                        PA;PU2685,42;

Menu items=0
  
Entries=5 Revision2
Title=Second Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU100,115;
60  0   Description                     PA;PU145,115;
8   0   By                              PA;PU795,115;
6   0   Checked                         PA;PU870,115;
6   0   Date                            PA;PU930,115;
Menu items=0

Entries=5 Revision3
Title=Third Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU100,150;
60  0   Description                     PA;PU145,150;
8   0   By                              PA;PU795,150;
6   0   Checked                         PA;PU870,150;
6   0   Date                            PA;PU930,150;
Menu items=0

Entries=5 Revision4
Title=Fourth Drawing Revision
3   0   Revision No.                    SL;DI;SI.4,.4;PA;PU100,185;
60  0   Description                     PA;PU145,185;
8   0   By                              PA;PU795,185;
6   0   Checked                         PA;PU870,185;
6   0   Date                            PA;PU930,185;
Menu items=0

Entries=0 Revision5
Title=Fifth Drawing Revision
3   0   Revision No.		    	SL;DI;SI.4,.4;PA;PU100,220;
60  0   Description			PA;PU145,220;
8   0   By                              PA;PU795,220;
6   0   Checked                         PA;PU870,220;
6   0   Date                            PA;PU930,220;
Menu items=0


Entries=0 Sixth Drawing Revision Title=Sixth Drawing Revision
3   0   Revision No.		    SL;DI;SI.4,.4;PA;PU0,0;
60  0   Description                     PU0,0;
8   0   Date                            PU0,0;
6   0   By                              PU0,0;
6   0   Checked                         PU0,0;
Menu items=0

Entries=3 Bar Codes
Title=Bar Codes
0   0   Job Number
0   0   File/Control #
0   0   Spool Number
Menu items=0


REM *****************************************************
Start of HPGL:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,20;PD4210,20,4210,2710,60,2710,60,20;
PU70,30;PD4200,30,4200,2700,70,2700,70,30;

REMHor line for Arrow (left corner)
PU70,2580;PD190,2580;

REMVert line for Arrow (left corner)
PU190,2580;PD190,2700;

REM Vert lines of BOM
PU2430,2700;PD2430,30;

REM Hor bottom line of BOM
PU2430,740;PD4200,740;

REM Hor lines for welds,welders and Inspection Headers
PU3650,2495;PD4200,2495;
PU3650,2430;PD4200,2430;
PU3650,2365;PD4200,2365;
PU3650,2300;PD4200,2300;
PU3650,2235;PD4200,2235;
PU3650,2170;PD4200,2170;
PU3650,2105;PD4200,2105;
PU3650,2040;PD4200,2040;
PU3650,1975;PD4200,1975;
PU3650,1910;PD4200,1910;
PU3650,1845;PD4200,1845;
PU3650,1780;PD4200,1780;
PU3650,1715;PD4200,1715;
PU3650,1650;PD4200,1650;
PU3650,1585;PD4200,1585;
PU3650,1520;PD4200,1520;
PU3650,1455;PD4200,1455;
PU3650,1390;PD4200,1390;
PU3650,1325;PD4200,1325;
PU3650,1260;PD4200,1260;
PU3650,1195;PD4200,1195;
PU3650,1130;PD4200,1130;
PU3650,1065;PD4200,1065;
PU3650,1000;PD4200,1000;
PU3650,935;PD4200,935;
PU3650,870;PD4200,870;
PU3650,805;PD4200,805;

REM Hor line Catalog No, Heat No & description
PU2430,2650;PD3650,2650;

REM Hor bottom line of Welds, welders,Inspection headers
PU3650,2560;PD4200,2560;

REM Hor top line of Revision,Inspection headers, Fab code & PWHT
PU70,250;PD2430,250;

REM Hor top line of Dia inches, Color code, Isometric no., Rev., CWP no
PU2430,310;PD4200,310;

REM Hor top line of Project (or Hor bottom line of Client)
PU2955,500;PD4200,500;

REM Vert lines of BOM
PU2955,30;PD2955,740;

REM Hor top line of Client contract no,Purchase order no,Module no (or Hor bottom line of Project)
PU2955,405;PD4200,405;

REM vert left line of Purchase order no
PU3395,310;PD3395,405;

REM Hor bottom line of L&H Logo
PU2955,595;PD4200,595;

REM Vert left line of Module no, CWP no, Job no, Rev
PU3835,405;PD3835,30;

REM Hor line on top of Aecon mod no, Drwn, unit/area, spool no, rev and control no
PU2430,120;PD4200,120;

REM Vert Right line of Aecon mod no, NACE, Dia inches
PU2600,30;PD2600,310;

REM Vert Right line of Unit/Area
PU3115,30;PD3115,120;

REM Vert Right line of Rev
PU3915,30;PD3915,120;

REM Hor line between Ship loose & Weight
PU2600,168;PD2955,168;

REM Hor line between Chkd & Drwn
PU2600,75;PD2955,75;

REM Hor bottom line of Color code
PU2600,280;PD2955,280;

REM Hor top line of nace, ship loose, service, job no
PU2430,215;PD4200,215;

REM Ver left line of rev near cwp no.
PU3750,215;PD3750,310;

REM Hor line between spool and support
PU2600,248;PD2955,248;

REM THIN LINES **********************************************************

DI;SP1;PW0.1;

REM Hor lines of Revision
PU70,67;PD2430,67;
PU70,103.5;PD2430,103.5;
PU70,140;PD2430,140;
PU70,177;PD2430,177;
PU70,213.5;PD2430,213.5;

REM Vert long lines of Revision
PU135,30;PD135,250;
PU770,30;PD770,250;
PU845,30;PD845,250;
PU920,30;PD920,250;
PU1035,30;PD1035,250;
PU1420,30;PD1420,250;
PU1800,30;PD1800,250;

REM Vert left lines of PWHT, insul & tracing
PU2100,103.5;PD2100,250;

REM Vert left lines of Sur.A
PU2100,67;PD2100,103.5;

REM Vert left lines of weld produres(1-5)
PU2180,30;PD2180,67;
PU1990,30;PD1990,67;
PU1610,30;PD1610,67;

REM Vert left lines of RT-SW
PU1227.5,213.5;PD1227.5,250;



REM Vert small line of Reference isometric revision(left of L&H logo)
PU2867.5,740;PD2867.5,405;

REM Hor small divider lines of Reference isometric revision
PU2430,700;PD2955,700;
PU2430,651;PD2955,651;
PU2430,602;PD2955,602;
PU2430,552.5;PD2955,552.5;
PU2430,503.5;PD2955,503.5;
PU2430,454;PD2955,454;

REM Hor line on notes
PU2430,405;PD2955,405;

REM Vert long lines of BOM
PU2987.5,740;PD2987.5,2700;
PU2922.5,740;PD2922.5,2700;
PU2867.5,740;PD2867.5,2700;
PU2648,740;PD2648,2700;

REM Vert lines of Weld No, Inspection headers
PU3650,2700;PD3650,740;
PU3825,2700;PD3825,740;
PU3900,2700;PD3900,740;
PU3975,2700;PD3975,740;
PU4050,2700;PD4050,740;
PU4125,2700;PD4125,740;

REM LABELS***************************************************************
SP3;PW0.1;
DI;SI.5,.5;

PU3840,190;LBJOB No.

PU3920,95;LBCONTROL No.

PU3120,95;LBSPOOL No.

PU3850,95;LBREV.

PU2960,570;LBCLIENT:

PU3400,380;LBPURCHASE ORDER No.

PU2960,475;LBPROJECT:

PU2885,2655;LBITM

PU2945,2655;LBQTY

PU2480,2655;LBCATALOG No.

PU2720,2655;LBHEAT No.

PU80,40;LBREV

PU400,40;LBREVISIONS

PU1040,40;LBWELD PROCEDURES:

PU795,40;LBBY

PU855,40;LBCHKD

PU945,40;LBDATE

PU1040,75;LBUT:

PU1040,110;LBBHN:

PU1040,150;LBMT:

PU1040,185;LBPT:

PU1040,220;LBRT-BW:

PU1235,220;LBRT-SW:

PU1425,220;LBFT:

PU1425,185;LBPMI:

PU1425,150;LBVISUAL:

PU1425,110;LBDES. TEMP:

PU1425,75;LBDES. PRESS:

PU1805,220;LBFAB. CODE:

PU1805,185;LBPIPE SPEC:

PU1805,150;LBPAINT SYS:

PU1805,110;LBHYDRO:

PU1805,75;LBOP TEMP:

PU2105,220;LBPWHT:

PU2105,185;LBINSUL:

PU2105,150;LBTRACING:

PU2105,110;LBMDMT:

PU2105,75;LBSUR.A.:

PU2435,285;LBDIA INCHES:

PU2435,190;LBNACE:

PU2435,95;LBAECON MOD NO:

PU2445,710;LBREFERENCE ISOMETRIC/MARK No.

PU2885,710;LBREV.

PU2960,380;LBCLIENT CONTRACT No.

PU3840,380;LBMODULE No.

PU2960,285;LBISOMETRIC No.

PU3840,285;LBCWP No.

PU2960,190;LBSERVICE:

PU2960,95;LBUNIT/AREA:

PU2710,285;LBCOLOR CODE

PU2610,255;LBSPOOL:

PU2610,220;LBSUPPORT:

PU2610,180;LBSHIP LOOSE:

PU2610,135;LBWEIGHT:

PU2610,85;LBDRWN:

PU2610,40;LBCHKD:

PU2435,380;LBNOTES:

PU3765,285;LBREV.

PU3685,2570;LBWELDS

SL;D0;SI1.3,1.3;PA;PU2000,280;LBSHEET

DI0,1;PA;SI0.5,0.5;PA;PU3880,2570;LBWELDERS


REM *****************************************************
Start of HPGLPageTwo:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,20;PD4210,20,4210,2710,60,2710,60,20;
PU70,30;PD4200,30,4200,2700,70,2700,70,30;

REMHor line for Arrow (left corner)
PU70,2580;PD190,2580;

REMVert line for Arrow (left corner)
PU190,2580;PD190,2700;

REM Vert lines of BOM
PU2430,2700;PD2430,30;
PU430,2700;PD430,740;


REM Hor bottom line of BOM
REM PU2430,740;PD4200,740;
PU430,740;PD4200,740;


REM Hor lines for welds,welders and Inspection Headers
PU3650,2495;PD4200,2495;
PU3650,2430;PD4200,2430;
PU3650,2365;PD4200,2365;
PU3650,2300;PD4200,2300;
PU3650,2235;PD4200,2235;
PU3650,2170;PD4200,2170;
PU3650,2105;PD4200,2105;
PU3650,2040;PD4200,2040;
PU3650,1975;PD4200,1975;
PU3650,1910;PD4200,1910;
PU3650,1845;PD4200,1845;
PU3650,1780;PD4200,1780;
PU3650,1715;PD4200,1715;
PU3650,1650;PD4200,1650;
PU3650,1585;PD4200,1585;
PU3650,1520;PD4200,1520;
PU3650,1455;PD4200,1455;
PU3650,1390;PD4200,1390;
PU3650,1325;PD4200,1325;
PU3650,1260;PD4200,1260;
PU3650,1195;PD4200,1195;
PU3650,1130;PD4200,1130;
PU3650,1065;PD4200,1065;
PU3650,1000;PD4200,1000;
PU3650,935;PD4200,935;
PU3650,870;PD4200,870;
PU3650,805;PD4200,805;

REM Hor lines for welds,welders and Inspection Headers on page 2
PU1650,2495;PD2200,2495;
PU1650,2430;PD2200,2430;
PU1650,2365;PD2200,2365;
PU1650,2300;PD2200,2300;
PU1650,2235;PD2200,2235;
PU1650,2170;PD2200,2170;
PU1650,2105;PD2200,2105;
PU1650,2040;PD2200,2040;
PU1650,1975;PD2200,1975;
PU1650,1910;PD2200,1910;
PU1650,1845;PD2200,1845;
PU1650,1780;PD2200,1780;
PU1650,1715;PD2200,1715;
PU1650,1650;PD2200,1650;
PU1650,1585;PD2200,1585;
PU1650,1520;PD2200,1520;
PU1650,1455;PD2200,1455;
PU1650,1390;PD2200,1390;
PU1650,1325;PD2200,1325;
PU1650,1260;PD2200,1260;
PU1650,1195;PD2200,1195;
PU1650,1130;PD2200,1130;
PU1650,1065;PD2200,1065;
PU1650,1000;PD2200,1000;
PU1650,935;PD2200,935;
PU1650,870;PD2200,870;
PU1650,805;PD2200,805;

REM Vert line for right side of left column of weld inspection info for page 2
PU2200,2700;PD2200,740;





REM Hor line Catalog No, Heat No & description
REM PU2430,2650;PD3650,2650;
PU430,2650;PD3650,2650;


REM Hor bottom line of Welds, welders,Inspection headers
PU3650,2560;PD4200,2560;
PU1650,2560;PD2200,2560;


REM Hor top line of Revision,Inspection headers, Fab code & PWHT
PU70,250;PD2430,250;

REM Hor top line of Dia inches, Color code, Isometric no., Rev., CWP no
PU2430,310;PD4200,310;

REM Hor top line of Project (or Hor bottom line of Client)
PU2955,500;PD4200,500;

REM Vert lines of BOM
PU2955,30;PD2955,740;

REM Hor top line of Client contract no,Purchase order no,Module no (or Hor bottom line of Project)
PU2955,405;PD4200,405;

REM vert left line of Purchase order no
PU3395,310;PD3395,405;

REM Hor bottom line of L&H Logo
PU2955,595;PD4200,595;

REM Vert left line of Module no, CWP no, Job no, Rev
PU3835,405;PD3835,30;

REM Hor line on top of Priority, Drwn, unit/area, spool no, rev and control no
PU2430,120;PD4200,120;

REM Vert Right line of Priority, NACE, Dia inches
PU2600,30;PD2600,310;

REM Vert Right line of Unit/Area
PU3115,30;PD3115,120;

REM Vert Right line of Rev
PU3915,30;PD3915,120;

REM Hor line between Ship loose & Weight
PU2600,168;PD2955,168;

REM Hor line between Chkd & Drwn
PU2600,75;PD2955,75;

REM Hor bottom line of Color code
PU2600,280;PD2955,280;

REM Hor top line of nace, ship loose, service, job no
PU2430,215;PD4200,215;

REM Ver left line of rev near cwp no.
PU3750,215;PD3750,310;

REM Hor line between spool and support
PU2600,248;PD2955,248;

REM THIN LINES **********************************************************

DI;SP1;PW0.1;

REM Hor lines of Revision
PU70,67;PD2430,67;
PU70,103.5;PD2430,103.5;
PU70,140;PD2430,140;
PU70,177;PD2430,177;
PU70,213.5;PD2430,213.5;

REM Vert long lines of Revision
PU135,30;PD135,250;
PU770,30;PD770,250;
PU845,30;PD845,250;
PU920,30;PD920,250;
PU1035,30;PD1035,250;
PU1420,30;PD1420,250;
PU1800,30;PD1800,250;

REM Vert left lines of PWHT, insul & tracing
PU2100,103.5;PD2100,250;

REM Vert left lines of Sur.A
PU2100,67;PD2100,103.5;

REM Vert left lines of weld produres(1-5)
PU2180,30;PD2180,67;
PU1990,30;PD1990,67;
PU1610,30;PD1610,67;




REM Vert left lines of RT-SW
PU1227.5,213.5;PD1227.5,250;



REM Vert small line of Reference isometric revision(left of L&H logo)
PU2867.5,740;PD2867.5,405;

REM Hor small divider lines of Reference isometric revision
PU2430,700;PD2955,700;
PU2430,651;PD2955,651;
PU2430,602;PD2955,602;
PU2430,552.5;PD2955,552.5;
PU2430,503.5;PD2955,503.5;
PU2430,454;PD2955,454;



REM Hor line on notes on page 2
PU2430,405;PD2955,405;
REM REM PU1430,405;PD1955,405;



REM Vert long lines of BOM on page 2
PU2987.5,740;PD2987.5,2700;
PU2922.5,740;PD2922.5,2700;
PU2867.5,740;PD2867.5,2700;
PU2648,740;PD2648,2700;
PU987.5,740;PD987.5,2700;
PU922.5,740;PD922.5,2700;
PU867.5,740;PD867.5,2700;
PU648,740;PD648,2700;




REM Vert lines of Weld No, Inspection headers on page 2
PU3650,2700;PD3650,740;
PU3825,2700;PD3825,740;
PU3900,2700;PD3900,740;
PU3975,2700;PD3975,740;
PU4050,2700;PD4050,740;
PU4125,2700;PD4125,740;
PU1650,2700;PD1650,740;
PU1825,2700;PD1825,740;
PU1900,2700;PD1900,740;
PU1975,2700;PD1975,740;
PU2050,2700;PD2050,740;
PU2125,2700;PD2125,740;







REM LABELS***************************************************************
SP3;PW0.1;
DI;SI.5,.5;

PU3840,190;LBJOB No.

PU3920,95;LBCONTROL No.

PU3120,95;LBSPOOL No.

PU3850,95;LBREV.

PU2960,570;LBCLIENT:

PU3400,380;LBPURCHASE ORDER No.

PU2960,475;LBPROJECT:

PU2885,2655;LBITM

PU2945,2655;LBQTY

PU2480,2655;LBCATALOG No.
PU480,2655;LBCATALOG No.


PU80,40;LBREV

PU400,40;LBREVISIONS

PU1040,40;LBWELD PROCEDURES:

PU795,40;LBBY

PU855,40;LBCHKD

PU945,40;LBDATE

PU1040,75;LBUT:

PU1040,110;LBBHN:

PU1040,150;LBMT:

PU1040,185;LBPT:

PU1040,220;LBRT-BW:

PU1235,220;LBRT-SW:

PU1425,220;LBFT:

PU1425,185;LBPMI:

PU1425,150;LBVISUAL:

PU1425,110;LBDES. TEMP:

PU1425,75;LBDES. PRESS:

PU1805,220;LBFAB. CODE:

PU1805,185;LBPIPE SPEC:

PU1805,150;LBPAINT SYS:

PU1805,110;LBHYDRO:

PU1805,75;LBOP TEMP:

PU2105,220;LBPWHT:

PU2105,185;LBINSUL:

PU2105,150;LBTRACING:

PU2105,110;LBMDMT:

PU2105,75;LBSUR.A.:

PU2435,285;LBDIA INCHES:

PU2435,190;LBNACE:

PU2435,95;LBPRIORITY:

PU2445,710;LBREFERENCE ISOMETRIC/MARK No.

PU2885,710;LBREV.

PU2960,380;LBCLIENT CONTRACT No.

PU3840,380;LBMODULE No.

PU2960,285;LBISOMETRIC No.

PU3840,285;LBCWP No.

PU2960,190;LBSERVICE:

PU2960,95;LBUNIT/AREA:

PU2710,285;LBCOLOR CODE

PU2610,255;LBSPOOL:

PU2610,220;LBSUPPORT:

PU2610,180;LBSHIP LOOSE:

PU2610,135;LBWEIGHT:

PU2610,85;LBDRWN:

PU2610,40;LBCHKD:

PU2435,380;LBNOTES:

PU3765,285;LBREV.

PU3685,2570;LBWELDS
REM next line added for page 2
PU1685,2570;LBWELDS

SL;D0;SI1.3,1.3;PA;PU2000,280;LBSHEET

DI0,1;PA;SI0.5,0.5;PA;PU3880,2570;LBWELDERS
REM next line added for page 2
DI0,1;PA;SI0.5,0.5;PA;PU1880,2570;LBWELDERS 

Start of HPGLPrice1:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,20;PD4210,20,4210,2710,60,2710,60,20;
PU70,30;PD4200,30,4200,2700,70,2700,70,30;

REMHor line for Arrow (left corner)
PU70,2580;PD190,2580;

REMVert line for Arrow (left corner)
PU190,2580;PD190,2700;

REM Vert lines of BOM
PU2430,2700;PD2430,30;

REM Hor bottom line of BOM
PU2430,740;PD4200,740;


REM Hor line Catalog No, Heat No & description
PU2430,2650;PD3650,2650;

REM Hor bottom line of Welds, welders,Inspection headers
PU3650,2560;PD4200,2560;

REM Hor top line of Revision,Inspection headers, Fab code & PWHT
PU70,250;PD2430,250;

REM Hor top line of Dia inches, Color code, Isometric no., Rev., CWP no
PU2430,310;PD4200,310;

REM Hor top line of Project (or Hor bottom line of Client)
PU2955,500;PD4200,500;

REM Vert lines of BOM
PU2955,30;PD2955,740;

REM Hor top line of Client contract no,Purchase order no,Module no (or Hor bottom line of Project)
PU2955,405;PD4200,405;

REM vert left line of Purchase order no
PU3395,310;PD3395,405;

REM Hor bottom line of L&H Logo
PU2955,595;PD4200,595;

REM Vert left line of Module no, CWP no, Job no, Rev
PU3835,405;PD3835,30;

REM Hor line on top of Aecon mod no, Drwn, unit/area, spool no, rev and control no
PU2430,120;PD4200,120;

REM Vert Right line of Aecon mod no, NACE, Dia inches
PU2600,30;PD2600,310;

REM Vert Right line of Unit/Area
PU3115,30;PD3115,120;

REM Vert Right line of Rev
PU3915,30;PD3915,120;

REM Hor line between Ship loose & Weight
PU2600,168;PD2955,168;

REM Hor line between Chkd & Drwn
PU2600,75;PD2955,75;

REM Hor bottom line of Color code
PU2600,280;PD2955,280;

REM Hor top line of nace, ship loose, service, job no
PU2430,215;PD4200,215;

REM Ver left line of rev near cwp no.
PU3750,215;PD3750,310;

REM Hor line between spool and support
PU2600,248;PD2955,248;

REM THIN LINES **********************************************************

DI;SP1;PW0.1;

REM Hor lines of Revision
PU70,67;PD2430,67;
PU70,103.5;PD2430,103.5;
PU70,140;PD2430,140;
PU70,177;PD2430,177;
PU70,213.5;PD2430,213.5;

REM Vert long lines of Revision
PU135,30;PD135,250;
PU770,30;PD770,250;
PU845,30;PD845,250;
PU920,30;PD920,250;
PU1035,30;PD1035,250;
PU1420,30;PD1420,250;
PU1800,30;PD1800,250;

REM Vert left lines of PWHT, insul & tracing
PU2100,103.5;PD2100,250;

REM Vert left lines of Sur.A
PU2100,67;PD2100,103.5;

REM Vert left lines of weld produres(1-5)
PU2180,30;PD2180,67;
PU1990,30;PD1990,67;
PU1610,30;PD1610,67;

REM Vert left lines of RT-SW
PU1227.5,213.5;PD1227.5,250;



REM Vert small line of Reference isometric revision(left of L&H logo)
PU2867.5,740;PD2867.5,405;

REM Hor small divider lines of Reference isometric revision
PU2430,700;PD2955,700;
PU2430,651;PD2955,651;
PU2430,602;PD2955,602;
PU2430,552.5;PD2955,552.5;
PU2430,503.5;PD2955,503.5;
PU2430,454;PD2955,454;

REM Hor line on notes
PU2430,405;PD2955,405;

REM Vert long lines of BOM
PU2987.5,740;PD2987.5,2700;
PU2922.5,740;PD2922.5,2700;
PU2867.5,740;PD2867.5,2700;
PU2648,740;PD2648,2700;

REM Vert lines of Weld No, Inspection headers
PU3650,2700;PD3650,740;
PU3825,2700;PD3825,740;
PU3900,2700;PD3900,740;
PU3975,2700;PD3975,740;
PU4050,2700;PD4050,740;
PU4125,2700;PD4125,740;

REM LABELS***************************************************************
SP3;PW0.1;
DI;SI.5,.5;

PU3840,190;LBJOB No.

PU3920,95;LBCONTROL No.

PU3120,95;LBSPOOL No.

PU3850,95;LBREV.

PU2960,570;LBCLIENT:

PU3400,380;LBPURCHASE ORDER No.

PU2960,475;LBPROJECT:

PU2885,2655;LBITM

PU2945,2655;LBQTY

PU2480,2655;LBCATALOG No.

PU2720,2655;LBHEAT No.

PU80,40;LBREV

PU400,40;LBREVISIONS

PU1040,40;LBWELD PROCEDURES:

PU795,40;LBBY

PU855,40;LBCHKD

PU945,40;LBDATE

PU1040,75;LBUT:

PU1040,110;LBBHN:

PU1040,150;LBMT:

PU1040,185;LBPT:

PU1040,220;LBRT-BW:

PU1235,220;LBRT-SW:

PU1425,220;LBFT:

PU1425,185;LBPMI:

PU1425,150;LBVISUAL:

PU1425,110;LBDES. TEMP:

PU1425,75;LBDES. PRESS:

PU1805,220;LBFAB. CODE:

PU1805,185;LBPIPE SPEC:

PU1805,150;LBPAINT SYS:

PU1805,110;LBHYDRO:

PU1805,75;LBOP TEMP:

PU2105,220;LBPWHT:

PU2105,185;LBINSUL:

PU2105,150;LBTRACING:

PU2105,110;LBMDMT:

PU2105,75;LBSUR.A.:

PU2435,285;LBDIA INCHES:

PU2435,190;LBNACE:

PU2435,95;LBAECON MOD NO:

PU2445,710;LBREFERENCE ISOMETRIC/MARK No.

PU2885,710;LBREV.

PU2960,380;LBCLIENT CONTRACT No.

PU3840,380;LBMODULE No.

PU2960,285;LBISOMETRIC No.

PU3840,285;LBCWP No.

PU2960,190;LBSERVICE:

PU2960,95;LBUNIT/AREA:

PU2710,285;LBCOLOR CODE

PU2610,255;LBSPOOL:

PU2610,220;LBSUPPORT:

PU2610,180;LBSHIP LOOSE:

PU2610,135;LBWEIGHT:

PU2610,85;LBDRWN:

PU2610,40;LBCHKD:

PU2435,380;LBNOTES:

PU3765,285;LBREV.

PU3685,2570;LBWELDS

SL;D0;SI1.3,1.3;PA;PU2000,280;LBSHEET

DI0,1;PA;SI0.5,0.5;PA;PU3880,2570;LBWELDERS



Start of HPGLPrice2:
DI;SP1;PW0.3;
REM Double line border
PA;PU60,40;PD3550,40,3550,2100,60,2100,60,40;
PU70,50;PD3540,50,3540,2090,70,2090,70,50;

REM Vert left of BOM
PU2260,2090;PD2260,260;
PU2320,2090;PD2320,260;
PU2380,2090;PD2380,260;

REM Vert left of BOM2
PU660,2090;PD660,260;
PU720,2090;PD720,260;
PU780,2090;PD780,260;

REM Vert for Price list
PU3050,2090;PD3050,260;
PU3180,2090;PD3180,260;
PU3310,2090;PD3310,260;
PU3400,2090;PD3400,260;

REM Vert for Price list2
PU1450,2090;PD1450,260;
PU1580,2090;PD1580,260;
PU1710,2090;PD1710,260;
PU1800,2090;PD1800,260;
PU1940,2090;PD1940,260;
PU660,2040;PD3540,2040;

REM Horiz lines above inspection
PU70,260;PD3540,260;

REM Left of Logo
PU1400,260;PD1400,50;
PU2000,260;PD2000,50;

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

SP3;PW0.3;
DI0,1;SI.6,.6;PA;PU100,800;LBwww.Acornpipe.com
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
PU675,2045;LBITM
PU735,2045;LBQTY

PU90,230;LBWELD PROC.
PU1190,200;LBDRN
PU1190,165;LBDATE
PU1190,130;LBCHK
PU1190,95;LBAPP
PU920,60;LBBY
PU980,60;LBCHK
PU1080,60;LBDATE
PA;PU3100,235;LBINVOICE No.
PA;PU3300,235;LBTOTAL PRICE
PU3065,2045;LBUNIT PRICE
PU3210,2045;LBTOTAL
PU3320,2045;LBFACTOR
PU3420,2045;LBNET PRICE

PU1465,2045;LBUNIT PRICE
PU1610,2045;LBTOTAL
PU1720,2045;LBFACTOR
PU1820,2045;LBNET PRICE















