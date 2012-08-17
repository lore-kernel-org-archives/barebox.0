Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T2LsF-0004sc-RE
 for barebox@lists.infradead.org; Fri, 17 Aug 2012 12:42:02 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 17 Aug 2012 14:41:53 +0200
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556B@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6203471829450673169=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: adding SPI port on i.MX27 board
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============6203471829450673169==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556BSRVVS06TELE_"

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556BSRVVS06TELE_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently, CSPI2 of the i.MX27 is used to communicate with its companion ch=
ip (MC13783). This works fine. The SPI parts of the board file look like :

static int imx27_interaxio_spi1_cs[] =3D {GPIO_PORTD + 21};
static struct spi_imx_master imx27_interaxio_spi_1_data =3D {
    .chipselect =3D imx27_interaxio_spi1_cs,
    .num_chipselect =3D ARRAY_SIZE(imx27_interaxio_spi1_cs),
};

static struct spi_board_info imx27_interaxio_spi_board_info[] =3D {
    {
      .name =3D "mc13783",
      .max_speed_hz =3D 3000000,
      .bus_num =3D 0,
      .chip_select =3D 0, /* offset in the chip select array */
    },
};

[...]

static int imx27_interaxio_devices_init(void)
{
  [...]
  /* PMIC support */
  spi_register_board_info(imx27_interaxio_spi_board_info, ARRAY_SIZE(imx27_=
interaxio_spi_board_info));
  imx27_add_spi1(&imx27_interaxio_spi_1_data);
[...]


Now, I would like to add another SPI port of the i.MX27, CSPI1, to control =
an LCD. To do that, I taught I had to change the board file like this :

static int imx27_interaxio_spi1_cs[] =3D {GPIO_PORTD + 21};
static int imx27_interaxio_spi0_cs[] =3D {GPIO_PORTD + 28};
static struct spi_imx_master imx27_interaxio_spi_1_data =3D {
    .chipselect =3D imx27_interaxio_spi1_cs,
    .num_chipselect =3D ARRAY_SIZE(imx27_interaxio_spi1_cs),
};
static struct spi_imx_master imx27_interaxio_spi_0_data =3D {
    .chipselect =3D imx27_interaxio_spi0_cs,
    .num_chipselect =3D ARRAY_SIZE(imx27_interaxio_spi0_cs),
};
static struct spi_board_info imx27_interaxio_spi_board_info[] =3D {
    {
      .name =3D "mc13783",
      .max_speed_hz =3D 3000000,
      .bus_num =3D 0,
      .chip_select =3D 0,
    },
    {
        .name =3D "LCD",
        .max_speed_hz =3D 2000000,
        .bus_num =3D 1,
        .chip_select =3D 0,
    },
};

[...]

static int imx27_interaxio_devices_init(void)
{
  [...]
  /* PMIC support */
  spi_register_board_info(imx27_interaxio_spi_board_info, ARRAY_SIZE(imx27_=
interaxio_spi_board_info));
  imx27_add_spi1(&imx27_interaxio_spi_1_data);
  imx27_add_spi0(&imx27_interaxio_spi_0_data);
[...]


However, I'm not sure I'm doing it right. E.g. for the bus_num element. As =
it is another 'master', I guess it should get another bus number. However, =
when digging a little in the code, in imx_spi_probe (imx_spi.c), bus_num of=
 'master' is never initialized, so always 0. A little further, when scannin=
g for board info (scan_boardinfo in spi.c), bus_num of chip is compared to =
bus_num of master, which is always 0. For the existing implementation this =
was not a problem as the bus_num in the board info struct was also 0. For t=
he added bus, the bus_num is 1, so the compare will validate to false and t=
he device will not be created...
This is how I'm think it's working. Am I correct ?
Am I doing something wrong ? Should I also use bus_num 0 for my additional =
SPI instead of 1 ?

Thanks in advance for helping me !

Filip Vanalme



--_000_6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556BSRVVS06TELE_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DNL link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'>Hi,<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Currently, C=
SPI2 of the i.MX27 is used to communicate with its companion chip (MC13783)=
. This works fine. The SPI parts of the board file look like :<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier N=
ew"'>static int imx27_interaxio_spi1_cs[] =3D {GPIO_PORTD + 21};<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Courier New"'>static struct spi_imx_master imx27_interaxio_s=
pi_1_data =3D {<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; .=
chipselect =3D imx27_interaxio_spi1_cs,<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier Ne=
w"'>&nbsp;&nbsp;&nbsp; .num_chipselect =3D ARRAY_SIZE(imx27_interaxio_spi1_=
cs),<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Courier New"'>};<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Cou=
rier New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Courier New"'>static struct spi_=
board_info imx27_interaxio_spi_board_info[] =3D {<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Courier New"'>&nbsp;&nbsp;&nbsp; {<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .name =3D &quot;mc13783&quot;,<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .max_speed_hz =3D 3=
000000,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; .bus_num =3D 0,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; .chip_select =3D 0, /* offset in the chip select array */<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; },<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Courier New"'>};<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Courier New"'>[&#8230;]<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Cour=
ier New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Courier New"'>static int imx27_in=
teraxio_devices_init(void)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>{<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Courier New"'>&nbsp; [&#8230;]<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"C=
ourier New"'>&nbsp; /* PMIC support */<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New=
"'>&nbsp; spi_register_board_info(imx27_interaxio_spi_board_info, ARRAY_SIZ=
E(imx27_interaxio_spi_board_info));<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>=
&nbsp; imx27_add_spi1(&amp;imx27_interaxio_spi_1_data);<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Courier New"'>[&#8230;]</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'>Now, I would like to add another=
 SPI port of the i.MX27, CSPI1, to control an LCD. To do that, I taught I h=
ad to change the board file like this :<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Courier New"'>static int imx27_i=
nteraxio_spi1_cs[] =3D {GPIO_PORTD + 21};<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier =
New";color:red'>static int imx27_interaxio_spi0_cs[] =3D {GPIO_PORTD + 28};=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Courier New"'>static struct spi_imx_master imx27_=
interaxio_spi_1_data =3D {<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nb=
sp;&nbsp; .chipselect =3D imx27_interaxio_spi1_cs,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Courier New"'>&nbsp;&nbsp;&nbsp; .num_chipselect =3D ARRAY_SIZE(imx27_inte=
raxio_spi1_cs),<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Courier New"'>};<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Courier New";color:red'>static struct spi_imx_master imx27_interaxi=
o_spi_0_data =3D {<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Courier New";color:red'>&nbsp;&=
nbsp;&nbsp; .chipselect =3D imx27_interaxio_spi0_cs,<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Courier New";color:red'>&nbsp;&nbsp;&nbsp; .num_chipselect =3D ARRAY_SIZ=
E(imx27_interaxio_spi0_cs),<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:red=
'>};</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courie=
r New"'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Courier New"'>static struct spi_board_inf=
o imx27_interaxio_spi_board_info[] =3D {<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier N=
ew"'>&nbsp;&nbsp;&nbsp; {<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; .name =3D &quot;mc13783&quot;,<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .max_speed_hz =3D 3000000,<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bus_n=
um =3D 0,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; .chip_select =3D 0, <o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbs=
p;&nbsp;&nbsp;},<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Courier New";color:red'>&nbsp;&nb=
sp;&nbsp; {<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Courier New";color:red'>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; .name =3D &quot;LCD&quot;,<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Courier New";color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .m=
ax_speed_hz =3D 2000000,<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:red'>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bus_num =3D 1,<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Courier New";color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
.chip_select =3D 0,&nbsp; <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:red'=
>&nbsp;&nbsp;&nbsp;&nbsp;},<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>};<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier N=
ew"'>[&#8230;]<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Courier New"'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Courier New"'>static int imx27_interaxio_devices_init(void)<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Courier New"'>{<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'=
>&nbsp; [&#8230;]<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; /* PMIC sup=
port */<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; spi_register_board_i=
nfo(imx27_interaxio_spi_board_info, ARRAY_SIZE(imx27_interaxio_spi_board_in=
fo));<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Courier New"'>&nbsp; imx27_add_spi1(&amp;imx=
27_interaxio_spi_1_data);<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:red'>=
&nbsp; imx27_add_spi0(&amp;imx27_interaxio_spi_0_data); <o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Courier New"'>[&#8230;]</span><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif"'>However, I&#8217;m not sure I&#=
8217;m doing it right. E.g. for the bus_num element. As it is another &#821=
6;master&#8217;, I guess it should get another bus number. However, when di=
gging a little in the code, in imx_spi_probe (imx_spi.c), bus_num of &#8216=
;master&#8217; is never initialized, so always 0. A little further, when sc=
anning for board info (scan_boardinfo in spi.c), bus_num of chip is compare=
d to bus_num of master, which is always 0. For the existing implementation =
this was not a problem as the bus_num in the board info struct was also 0. =
For the added bus, the bus_num is 1, so the compare will validate to false =
and the device will not be created&#8230; <o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>This is how I&#8217;m think it&#8217;s working. Am I correct =
?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'>Am I doing something wrong =
? Should I also use bus_num 0 for my additional SPI instead of 1 ?<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'>Thanks in advance for helping me !<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>Filip Vanalme<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html=
>=

--_000_6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556BSRVVS06TELE_--


--===============6203471829450673169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6203471829450673169==--
