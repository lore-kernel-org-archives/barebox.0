Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG4DQ-0003cj-Ar
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 07:36:01 +0000
Received: by ggnk3 with SMTP id k3so323246ggn.36
	for <barebox@lists.infradead.org>; Tue, 18 Oct 2011 00:35:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111018065810.GH18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
	<20111017195801.GF18141@pengutronix.de>
	<CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
	<20111018065810.GH18141@pengutronix.de>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Tue, 18 Oct 2011 09:35:38 +0200
Message-ID: <CAM9uW_4vV0=8ZrAy2ChFHy4oix6ouCD-aP2E=Yb3mG0KY1GGiw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1008127025=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NAND Boot Issue
To: barebox@lists.infradead.org

--===============1008127025==
Content-Type: multipart/alternative; boundary=bcaec520ea853ef73804af8dc62d

--bcaec520ea853ef73804af8dc62d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I tried with a zImage, here is what I'm getting :

barebox:/ bootz /dev/nand0.kernel.bb
invalid magic 0x00002018

And here the ls -l /dev/nand0.* output :

 barebox:/ ls -l /dev/nand0.*
crw-------     393216 /dev/nand0.barebox.bb
crw-------     131072 /dev/nand0.bareboxenv.bb
crw-------    2883584 /dev/nand0.kernel.bb
crw-------  533200896 /dev/nand0.root.bb
crw-------  533667840 /dev/nand0.root
crw-------    2764800 /dev/nand0.kernel
crw-------     131072 /dev/nand0.bareboxenv
crw-------     307200 /dev/nand0.barebox

Here is how I did my kernel and root partitions, following this steps :

addpart /dev/nand0 300k(barebox)ro,128k(bareboxenv),2700k(kernel),-(root)
nand -a /dev/nand0.*
update -t kernel -d nand
update -t rootfs -d nand

Is there any specific command to erase the nand before flashing it ?



2011/10/18 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Oct 17, 2011 at 10:31:38PM +0200, Kamel BOUHARA wrote:
> > > bootu is for starting raw kernel images. Do you have such an image?
> > > Normally you have an uImage (bootm) or a zImage (bootz)
> >
> >
> > Ok so that maybe the solution because I didn't tried with the bootm ...=
.
> my
> > bad ! But why did I don't have the "Bad magic number" error like when I
> > tried the boot command ???
>
> A raw image does not have any magic number you could check, so the bootu
> command relies on the user passing the correct image.
>
> >
> > Here is the ls /dev result:
> >
> > barebox:/ ls /dev/
> > zero                   defaultenv             mem
> > nor0                   nand0                  nand_oob0
> > ram0                   phy0                   self_raw
> > self0                  env_raw                env0
> > nor0.barebox           nor0.bareboxenv        nor0.kernel
> > nor0.root              nand0.barebox          nand0.bareboxenv
> > nand0.kernel           nand0.root             nand0.root.bb
> > nand0.kernel.bb        nand0.bareboxenv.bb    nand0.barebox.bb
>
> Sorry, I meant the output of 'ls -l /dev/nand0.*' to check the sizes of
> your partitions.
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

--bcaec520ea853ef73804af8dc62d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I tried with a zImage, here is what I&#39;m getting :<br><br>barebox:/ boot=
z /dev/<a href=3D"http://nand0.kernel.bb">nand0.kernel.bb</a> <br>invalid m=
agic 0x00002018=A0=A0=A0=A0=A0 <br><br>And here the ls -l /dev/nand0.* outp=
ut :<br><br>

=A0barebox:/ ls -l /dev/nand0.*=A0=A0=A0=A0=A0=A0=A0=A0 <br>crw-------=A0=
=A0=A0=A0 393216 /dev/<a href=3D"http://nand0.barebox.bb">nand0.barebox.bb<=
/a><br>crw-------=A0=A0=A0=A0 131072 /dev/<a href=3D"http://nand0.bareboxen=
v.bb">nand0.bareboxenv.bb</a><br>crw-------=A0=A0=A0 2883584 /dev/<a href=
=3D"http://nand0.kernel.bb">nand0.kernel.bb</a><br>

crw-------=A0 533200896 /dev/<a href=3D"http://nand0.root.bb">nand0.root.bb=
</a><br>crw-------=A0 533667840 /dev/nand0.root<br>crw-------=A0=A0=A0 2764=
800 /dev/nand0.kernel<br>crw-------=A0=A0=A0=A0 131072 /dev/nand0.bareboxen=
v<br>crw-------=A0=A0=A0=A0 307200 /dev/nand0.barebox<br>

<br>Here is how I did my kernel and root partitions, following this steps :=
 <br><br>addpart /dev/nand0 300k(barebox)ro,128k(bareboxenv),2700k(kernel),=
-(root)<br>nand -a /dev/nand0.*<br>update -t kernel -d nand<br>update -t ro=
otfs -d nand<br>

<br>Is there any specific command to erase the nand before flashing it ? <b=
r><br><br><br><div class=3D"gmail_quote">2011/10/18 Sascha Hauer <span dir=
=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.=
de</a>&gt;</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Mon, Oct 17, 2011 at 1=
0:31:38PM +0200, Kamel BOUHARA wrote:<br>
&gt; &gt; bootu is for starting raw kernel images. Do you have such an imag=
e?<br>
&gt; &gt; Normally you have an uImage (bootm) or a zImage (bootz)<br>
&gt;<br>
&gt;<br>
&gt; Ok so that maybe the solution because I didn&#39;t tried with the boot=
m .... my<br>
&gt; bad ! But why did I don&#39;t have the &quot;Bad magic number&quot; er=
ror like when I<br>
&gt; tried the boot command ???<br>
<br>
</div>A raw image does not have any magic number you could check, so the bo=
otu<br>
command relies on the user passing the correct image.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; Here is the ls /dev result:<br>
&gt;<br>
&gt; barebox:/ ls /dev/<br>
&gt; zero =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 defaultenv =A0 =A0 =A0 =A0 =
=A0 =A0 mem<br>
&gt; nor0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 nand0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0nand_oob0<br>
&gt; ram0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 phy0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 self_raw<br>
&gt; self0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0env_raw =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0env0<br>
&gt; nor0.barebox =A0 =A0 =A0 =A0 =A0 nor0.bareboxenv =A0 =A0 =A0 =A0nor0.k=
ernel<br>
&gt; nor0.root =A0 =A0 =A0 =A0 =A0 =A0 =A0nand0.barebox =A0 =A0 =A0 =A0 =A0=
nand0.bareboxenv<br>
&gt; nand0.kernel =A0 =A0 =A0 =A0 =A0 nand0.root =A0 =A0 =A0 =A0 =A0 =A0 <a=
 href=3D"http://nand0.root.bb" target=3D"_blank">nand0.root.bb</a><br>
&gt; <a href=3D"http://nand0.kernel.bb" target=3D"_blank">nand0.kernel.bb</=
a> =A0 =A0 =A0 =A0<a href=3D"http://nand0.bareboxenv.bb" target=3D"_blank">=
nand0.bareboxenv.bb</a> =A0 =A0<a href=3D"http://nand0.barebox.bb" target=
=3D"_blank">nand0.barebox.bb</a><br>


<br>
</div>Sorry, I meant the output of &#39;ls -l /dev/nand0.*&#39; to check th=
e sizes of<br>
your partitions.<br>
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

--bcaec520ea853ef73804af8dc62d--


--===============1008127025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1008127025==--
