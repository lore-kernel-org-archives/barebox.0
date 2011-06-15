Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plexus-g.actel.com ([12.177.68.99])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QWnLH-0006aY-Qc
	for barebox@lists.infradead.org; Wed, 15 Jun 2011 10:29:02 +0000
Received: from sv-msg-02.amer.actel.com (sv-msg-02.amer.actel.com
	[190.9.12.11])
	by plexus-g.actel.com (8.13.7+Sun/8.13.8) with ESMTP id p5FASvJv022971
	for <barebox@lists.infradead.org>; Wed, 15 Jun 2011 03:28:57 -0700 (PDT)
	(envelope-from Ramana.Murthy@microsemi.com)
From: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Date: Wed, 15 Jun 2011 15:58:51 +0530
Message-ID: <6F2524F76379064FB8CB9CEE698D56DA8D40EB1725@IN-MSG-01.amer.actel.com>
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
Content-Type: multipart/mixed; boundary="===============1000772255=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: sandbox compilation problem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1000772255==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6F2524F76379064FB8CB9CEE698D56DA8D40EB1725INMSG01amerac_"

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40EB1725INMSG01amerac_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build sandbox for ARCH=3Dsandbox, facing below errors. I am =
not sure if the build environment is the problem?
Do I need to have linux source code include paths to build this successfull=
y?

commands/loads.c:31:21: exports.h: No such file or directory
commands/loads.c:34: warning: type defaults to `int' in declaration of `DEC=
LARE_GLOBAL_DATA_PTR'
commands/loads.c:34: warning: data definition has no type or storage class
commands/loads.c:40:7: warning: "CONFIG_COMMANDS" is not defined
commands/loads.c:40:25: warning: "CFG_CMD_SAVES" is not defined
commands/loads.c: In function `do_load_serial':
commands/loads.c:58: warning: implicit declaration of function `barebox_get=
env'
commands/loads.c:58: warning: assignment makes pointer from integer without=
 a cast
commands/loads.c:114: error: `load_addr' undeclared (first use in this func=
tion)
commands/loads.c:114: error: (Each undeclared identifier is reported only o=
nce
commands/loads.c:114: error: for each function it appears in.)
commands/loads.c: In function `load_serial':
commands/loads.c:179: warning: implicit declaration of function `barebox_se=
tenv'
commands/loads.c:188: warning: implicit declaration of function `barebox_pu=
tc'
commands/loads.c: In function `read_record':
commands/loads.c:221: error: `gd' undeclared (first use in this function)
commands/loads.c:221: error: `XF_getc' undeclared (first use in this functi=
on)
commands/loads.c:233:6: warning: "CONFIG_COMMANDS" is not defined
commands/loads.c:233:24: warning: "CFG_CMD_SAVES" is not defined
commands/loads.c: At top level:
commands/loads.c:392: error: syntax error before numeric constant
commands/loads.c:396: warning: type defaults to `int' in declaration of `BA=
REBOX_CMD'
commands/loads.c:396: warning: function declaration isn't a prototype
commands/loads.c:396: warning: data definition has no type or storage class
commands/loads.c:404:6: warning: "CONFIG_COMMANDS" is not defined
commands/loads.c:404:24: warning: "CFG_CMD_SAVES" is not defined
make[1]: *** [commands/loads.o] Error 1

Best Regards,
N.S.S.R.Murthy,
Ph # +91-40-67303600, Extn - 3731,
Mobile # +91-9959677780.


________________________________
The information contained in or attached to this email may be subject to th=
e Export Administration Regulations (EAR), administered by the U.S. Departm=
ent of Commerce, or the International Traffic in Arms Regulations (ITAR), a=
dministered by the U.S. Department of State, and may require an export lice=
nse from the Commerce or State Department prior to its export. An export ca=
n include a release or disclosure to a foreign national inside or outside t=
he United States. Include this notice with any reproduced portion of this i=
nformation.

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40EB1725INMSG01amerac_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">I am trying to build sandbox for ARCH=3Ds=
andbox, facing below errors. I am not sure if the build environment is the =
problem?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Do I need to have linux source code inclu=
de paths to build this successfully?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:31:21: exports.h: No suc=
h file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:34: warning: type defaul=
ts to `int' in declaration of `DECLARE_GLOBAL_DATA_PTR'<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:34: warning: data defini=
tion has no type or storage class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:40:7: warning: &quot;CON=
FIG_COMMANDS&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:40:25: warning: &quot;CF=
G_CMD_SAVES&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c: In function `do_load_se=
rial':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:58: warning: implicit de=
claration of function `barebox_getenv'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:58: warning: assignment =
makes pointer from integer without a cast<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:114: error: `load_addr' =
undeclared (first use in this function)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:114: error: (Each undecl=
ared identifier is reported only once<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:114: error: for each fun=
ction it appears in.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c: In function `load_seria=
l':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:179: warning: implicit d=
eclaration of function `barebox_setenv'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:188: warning: implicit d=
eclaration of function `barebox_putc'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c: In function `read_recor=
d':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:221: error: `gd' undecla=
red (first use in this function)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:221: error: `XF_getc' un=
declared (first use in this function)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:233:6: warning: &quot;CO=
NFIG_COMMANDS&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:233:24: warning: &quot;C=
FG_CMD_SAVES&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c: At top level:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:392: error: syntax error=
 before numeric constant<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:396: warning: type defau=
lts to `int' in declaration of `BAREBOX_CMD'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:396: warning: function d=
eclaration isn't a prototype<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:396: warning: data defin=
ition has no type or storage class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:404:6: warning: &quot;CO=
NFIG_COMMANDS&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">commands/loads.c:404:24: warning: &quot;C=
FG_CMD_SAVES&quot; is not defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">make[1]: *** [commands/loads.o] Error 1<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">N.S.S.R.Murthy,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">Ph # &#43;91-40-67303600, Extn &#8211; 3731,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">Mobile # &#43;91-9959677780.</span><span style=3D"font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"2">The information contained in=
 or attached to this email may be subject to the Export Administration Regu=
lations (EAR), administered by the U.S. Department of Commerce, or the Inte=
rnational Traffic in Arms Regulations
 (ITAR), administered by the U.S. Department of State, and may require an e=
xport license from the Commerce or State Department prior to its export. An=
 export can include a release or disclosure to a foreign national inside or=
 outside the United States. Include
 this notice with any reproduced portion of this information.<br>
</font>
</body>
</html>

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40EB1725INMSG01amerac_--


--===============1000772255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1000772255==--
