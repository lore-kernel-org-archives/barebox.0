Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG6E2-0005QQ-0u
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 09:44:47 +0000
Received: by ywe9 with SMTP id 9so426854ywe.36
	for <barebox@lists.infradead.org>; Tue, 18 Oct 2011 02:44:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111018082356.GJ18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
	<20111017195801.GF18141@pengutronix.de>
	<CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
	<20111018065810.GH18141@pengutronix.de>
	<CAM9uW_4vV0=8ZrAy2ChFHy4oix6ouCD-aP2E=Yb3mG0KY1GGiw@mail.gmail.com>
	<20111018082356.GJ18141@pengutronix.de>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Tue, 18 Oct 2011 11:44:24 +0200
Message-ID: <CAM9uW_6jkYxF3eVb9cK4RLnq8owJ==b3sR+JosxQ1Hf4S2r0pQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1485567188=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NAND Boot Issue
To: barebox@lists.infradead.org

--===============1485567188==
Content-Type: multipart/alternative; boundary=bcaec53961d6bfb08a04af8f927a

--bcaec53961d6bfb08a04af8f927a
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>
> Unaligned partitions are fine, but the partition code should mark
> them as readonly.
>
>
That's why I was unable to erase it getting -EINVAL, things are clear now

It works fine, my kernel is booting :) !

Thank you Sascha

2011/10/18 Sascha Hauer <s.hauer@pengutronix.de>

> On Tue, Oct 18, 2011 at 09:35:38AM +0200, Kamel BOUHARA wrote:
> > I tried with a zImage, here is what I'm getting :
> >
> > barebox:/ bootz /dev/nand0.kernel.bb
> > invalid magic 0x00002018
> >
> > And here the ls -l /dev/nand0.* output :
> >
> >  barebox:/ ls -l /dev/nand0.*
> > crw-------     393216 /dev/nand0.barebox.bb
> > crw-------     131072 /dev/nand0.bareboxenv.bb
> > crw-------    2883584 /dev/nand0.kernel.bb
> > crw-------  533200896 /dev/nand0.root.bb
> > crw-------  533667840 /dev/nand0.root
> > crw-------    2764800 /dev/nand0.kernel
> > crw-------     131072 /dev/nand0.bareboxenv
> > crw-------     307200 /dev/nand0.barebox
> >
> > Here is how I did my kernel and root partitions, following this steps :
> >
> > addpart /dev/nand0 300k(barebox)ro,128k(bareboxenv),2700k(kernel),-(roo=
t)
>
> Ok, that puts some light into this. Please make sure your partitions are
> aligned to eraseblock boundaries, usually 128k. so:
>
> addpart /dev/nand0 512k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)
>
> barebox currently does not enforce this, it's probably time to change
> this. Unaligned partitions are fine, but the partition code should mark
> them as readonly.
> Currently we have no way of passing the eraseblocksize through to the
> partition code, so it's not trivial to enforce alignment.
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>



--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec53961d6bfb08a04af8f927a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<blockquote style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(=
204, 204, 204); padding-left: 1ex;" class=3D"gmail_quote">Unaligned partiti=
ons are fine, but the partition code should mark<br>
them as readonly.<br><br></blockquote><div><br>That&#39;s why I was unable =
to erase it getting -EINVAL, things are clear now <br><br>It works fine, my=
 kernel is booting :) ! <br><br>Thank you Sascha<br>=A0<br></div><div class=
=3D"gmail_quote">

2011/10/18 Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pen=
gutronix.de">s.hauer@pengutronix.de</a>&gt;</span><br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex;">

<div class=3D"im">On Tue, Oct 18, 2011 at 09:35:38AM +0200, Kamel BOUHARA w=
rote:<br>
&gt; I tried with a zImage, here is what I&#39;m getting :<br>
&gt;<br>
&gt; barebox:/ bootz /dev/<a href=3D"http://nand0.kernel.bb" target=3D"_bla=
nk">nand0.kernel.bb</a><br>
&gt; invalid magic 0x00002018<br>
&gt;<br>
&gt; And here the ls -l /dev/nand0.* output :<br>
&gt;<br>
&gt; =A0barebox:/ ls -l /dev/nand0.*<br>
&gt; crw------- =A0 =A0 393216 /dev/<a href=3D"http://nand0.barebox.bb" tar=
get=3D"_blank">nand0.barebox.bb</a><br>
&gt; crw------- =A0 =A0 131072 /dev/<a href=3D"http://nand0.bareboxenv.bb" =
target=3D"_blank">nand0.bareboxenv.bb</a><br>
&gt; crw------- =A0 =A02883584 /dev/<a href=3D"http://nand0.kernel.bb" targ=
et=3D"_blank">nand0.kernel.bb</a><br>
&gt; crw------- =A0<a href=3D"tel:533200896" value=3D"+33533200896">5332008=
96</a> /dev/<a href=3D"http://nand0.root.bb" target=3D"_blank">nand0.root.b=
b</a><br>
&gt; crw------- =A0<a href=3D"tel:533667840" value=3D"+33533667840">5336678=
40</a> /dev/nand0.root<br>
&gt; crw------- =A0 =A02764800 /dev/nand0.kernel<br>
&gt; crw------- =A0 =A0 131072 /dev/nand0.bareboxenv<br>
&gt; crw------- =A0 =A0 307200 /dev/nand0.barebox<br>
&gt;<br>
&gt; Here is how I did my kernel and root partitions, following this steps =
:<br>
&gt;<br>
&gt; addpart /dev/nand0 300k(barebox)ro,128k(bareboxenv),2700k(kernel),-(ro=
ot)<br>
<br>
</div>Ok, that puts some light into this. Please make sure your partitions =
are<br>
aligned to eraseblock boundaries, usually 128k. so:<br>
<br>
addpart /dev/nand0 512k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)<br>
<br>
barebox currently does not enforce this, it&#39;s probably time to change<b=
r>
this. Unaligned partitions are fine, but the partition code should mark<br>
them as readonly.<br>
Currently we have no way of passing the eraseblocksize through to the<br>
partition code, so it&#39;s not trivial to enforce alignment.<br>
<div><div></div><div class=3D"h5"><br>
Sascha<br>
<br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =A0 =A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>___________=
_______________________<br><i><font face=3D"&#39;comic sans ms&#39;, sans-s=
erif">Kamel BOUHARA</font></i><div>7 rue Jules C=E9sar<div>02100 SAINT-QUEN=
TIN<br>

06.17.83.29.04<br><br></div></div><br>

--bcaec53961d6bfb08a04af8f927a--


--===============1485567188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1485567188==--
