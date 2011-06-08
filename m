Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plexus-g.actel.com ([12.177.68.99])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUACW-0004se-1o
	for barebox@lists.infradead.org; Wed, 08 Jun 2011 04:17:07 +0000
Received: from sv-msg-02.amer.actel.com (sv-msg-02.amer.actel.com
	[190.9.12.11])
	by plexus-g.actel.com (8.13.7+Sun/8.13.8) with ESMTP id p584H1Mh018192
	for <barebox@lists.infradead.org>; Tue, 7 Jun 2011 21:17:01 -0700 (PDT)
	(envelope-from Ramana.Murthy@microsemi.com)
From: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Date: Wed, 8 Jun 2011 09:46:56 +0530
Message-ID: <6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
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
Content-Type: multipart/mixed; boundary="===============0574218084=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: sandbox build failing on redhat host
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============0574218084==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6F2524F76379064FB8CB9CEE698D56DA8D40E67E80INMSG01amerac_"

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40E67E80INMSG01amerac_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Can somebody please help me on this. I know sandbox is not priority. But th=
is helps me to progress to create a new port.

Best Regards,
N.S.S.R.Murthy,
Ph # +91-40-67303600, Extn - 3731,
Mobile # +91-9959677780.

From: Murthy, Ramana
Sent: Monday, June 06, 2011 3:48 PM
To: 'barebox@lists.infradead.org'
Subject: sandbox build failing on redhat host

Hi All,

I am trying to build barebox with ARCH =3D sandbox. My make menuconfig is s=
uccessful.
But the actual build is throwing below errors. As I understand, the errors =
are because offt_build.c that includes <asm/barebox.h>. But in case of ARCH=
=3Dsandbox,the arch/sandbox/inlcude/asm/barebox.h contains nothing. Is itsu=
pposed to compile ft_build.c in case of sandbox?

 CHK     include/generated/version.h
 CHK     include/generated/utsrelease.h
 SYMLINK include/config.h -> arch/sandbox/board//config.h
 CC      scripts/mod/empty.o
 HOSTCC  scripts/mod/mk_elfconfig
 MKELF   scripts/mod/elfconfig.h
 HOSTCC  scripts/mod/modpost.o
 HOSTCC  scripts/mod/sumversion.o
 HOSTLD  scripts/mod/modpost
 HOSTCC  scripts/bin2c
 HOSTCC  scripts/mkimage
 HOSTCC  scripts/bareboxenv
 CC      common/hush.o
 CC      common/date.o
 CC      common/ft_build.o
In file included from common/ft_build.c:33:
include/ft_build.h:59: error: syntax error before "bd_t"
include/ft_build.h:59: warning: function declaration isn't a prototype
include/ft_build.h:65: error: syntax error before "bd_t"
include/ft_build.h:65: warning: function declaration isn't a prototype
include/ft_build.h:66: error: syntax error before "bd_t"
include/ft_build.h:66: warning: function declaration isn't a prototype
include/ft_build.h:67: error: syntax error before "bd_t"
include/ft_build.h:67: warning: function declaration isn't a prototype
common/ft_build.c:458: error: syntax error before "bd_t"
common/ft_build.c:459: warning: function declaration isn't a prototype
common/ft_build.c: In function `ft_setup':
common/ft_build.c:477: error: `blob' undeclared (first use in this function=
)
common/ft_build.c:477: error: (Each undeclared identifier is reported only =
once
common/ft_build.c:477: error: for each function it appears in.)
common/ft_build.c:477: error: `bd' undeclared (first use in this function)
common/ft_build.c:488: error: `initrd_start' undeclared (first use in
this function)
common/ft_build.c:488: error: `initrd_end' undeclared (first use in
this function)
common/ft_build.c:460: warning: unused variable `p'
common/ft_build.c:461: warning: unused variable `len'
common/ft_build.c:463: warning: unused variable `clock'
make[1]: *** [common/ft_build.o] Error 1
make: *** [common] Error 2

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

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40E67E80INMSG01amerac_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Arial","sans-serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Arial","sans-serif";
	color:#1F497D;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi All,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Can somebody please help me=
 on this. I know sandbox is not priority. But this helps me to progress to =
create a new port.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#1F497D">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:#1F497D">N.S.S.R.Murthy,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#1F497D">Ph # &#43;91-40-67303600, Extn &#8211; 3731,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.5in"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#1F497D">Mobile # &#43;91-9959677780.</span><span style=3D"font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></s=
pan></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Murthy, =
Ramana
<br>
<b>Sent:</b> Monday, June 06, 2011 3:48 PM<br>
<b>To:</b> 'barebox@lists.infradead.org'<br>
<b>Subject:</b> sandbox build failing on redhat host<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">I am trying to build barebox with ARCH =
=3D sandbox. My make menuconfig is successful.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">But the actual build is throwing below er=
rors. As I understand, the errors are because offt_build.c that includes &l=
t;asm/barebox.h&gt;. But in case of ARCH=3Dsandbox,the arch/sandbox/inlcude=
/asm/barebox.h
 contains nothing. Is itsupposed to compile ft_build.c in case of sandbox?<=
/span><br>
<br>
&nbsp;CHK &nbsp; &nbsp; include/generated/version.h<br>
&nbsp;CHK &nbsp; &nbsp; include/generated/utsrelease.h<br>
&nbsp;SYMLINK include/config.h -&gt; arch/sandbox/board//config.h<br>
&nbsp;CC &nbsp; &nbsp; &nbsp;scripts/mod/empty.o<br>
&nbsp;HOSTCC &nbsp;scripts/mod/mk_elfconfig<br>
&nbsp;MKELF &nbsp; scripts/mod/elfconfig.h<br>
&nbsp;HOSTCC &nbsp;scripts/mod/modpost.o<br>
&nbsp;HOSTCC &nbsp;scripts/mod/sumversion.o<br>
&nbsp;HOSTLD &nbsp;scripts/mod/modpost<br>
&nbsp;HOSTCC &nbsp;scripts/bin2c<br>
&nbsp;HOSTCC &nbsp;scripts/mkimage<br>
&nbsp;HOSTCC &nbsp;scripts/bareboxenv<br>
&nbsp;CC &nbsp; &nbsp; &nbsp;common/hush.o<br>
&nbsp;CC &nbsp; &nbsp; &nbsp;common/date.o<br>
&nbsp;CC &nbsp; &nbsp; &nbsp;common/ft_build.o<br>
In file included from common/ft_build.c:33:<br>
include/ft_build.h:59: error: syntax error before &quot;bd_t&quot;<br>
include/ft_build.h:59: warning: function declaration isn't a prototype<br>
include/ft_build.h:65: error: syntax error before &quot;bd_t&quot;<br>
include/ft_build.h:65: warning: function declaration isn't a prototype<br>
include/ft_build.h:66: error: syntax error before &quot;bd_t&quot;<br>
include/ft_build.h:66: warning: function declaration isn't a prototype<br>
include/ft_build.h:67: error: syntax error before &quot;bd_t&quot;<br>
include/ft_build.h:67: warning: function declaration isn't a prototype<br>
common/ft_build.c:458: error: syntax error before &quot;bd_t&quot;<br>
common/ft_build.c:459: warning: function declaration isn't a prototype<br>
common/ft_build.c: In function `ft_setup':<br>
common/ft_build.c:477: error: `blob' undeclared (first use in this function=
)<br>
common/ft_build.c:477: error: (Each undeclared identifier is reported only =
once<br>
common/ft_build.c:477: error: for each function it appears in.)<br>
common/ft_build.c:477: error: `bd' undeclared (first use in this function)<=
br>
common/ft_build.c:488: error: `initrd_start' undeclared (first use in<br>
this function)<br>
common/ft_build.c:488: error: `initrd_end' undeclared (first use in<br>
this function)<br>
common/ft_build.c:460: warning: unused variable `p'<br>
common/ft_build.c:461: warning: unused variable `len'<br>
common/ft_build.c:463: warning: unused variable `clock'<br>
make[1]: *** [common/ft_build.o] Error 1<br>
make: *** [common] Error 2<span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
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

--_000_6F2524F76379064FB8CB9CEE698D56DA8D40E67E80INMSG01amerac_--


--===============0574218084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0574218084==--
