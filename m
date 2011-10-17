Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f172.google.com ([209.85.213.172])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RFtqq-0007MR-VS
	for barebox@lists.infradead.org; Mon, 17 Oct 2011 20:32:02 +0000
Received: by yxj19 with SMTP id 19so4146372yxj.31
	for <barebox@lists.infradead.org>; Mon, 17 Oct 2011 13:31:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111017195801.GF18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
	<20111017195801.GF18141@pengutronix.de>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Mon, 17 Oct 2011 22:31:38 +0200
Message-ID: <CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0215809633=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NAND Boot Issue
To: barebox@lists.infradead.org

--===============0215809633==
Content-Type: multipart/alternative; boundary=bcaec5215a599860d504af847f1b

--bcaec5215a599860d504af847f1b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> bootu is for starting raw kernel images. Do you have such an image?
> Normally you have an uImage (bootm) or a zImage (bootz)


Ok so that maybe the solution because I didn't tried with the bootm .... my
bad ! But why did I don't have the "Bad magic number" error like when I
tried the boot command ???

Here is the ls /dev result:

barebox:/ ls /dev/
zero                   defaultenv             mem
nor0                   nand0                  nand_oob0
ram0                   phy0                   self_raw
self0                  env_raw                env0
nor0.barebox           nor0.bareboxenv        nor0.kernel
nor0.root              nand0.barebox          nand0.bareboxenv
nand0.kernel           nand0.root             nand0.root.bb
nand0.kernel.bb        nand0.bareboxenv.bb    nand0.barebox.bb



2011/10/17 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Oct 17, 2011 at 06:03:56PM +0200, Kamel BOUHARA wrote:
> > Hi all,
> >
> > Im working on my own imx27 designed board and wanted to try barebox on
> > it.Actually I'm trying it with the phytec board config and it seems to
> work
> > fine booting on my nfs kernel and rootfs.
> > But when Im trying to boot from my 128MiB NAND memory then it doesn't
> work
> > and there is no decompression stage from the kernel.
> > Here is what Im getting :
> >
> > Board: Phytec phyCard-i.MX27
> > registered netconsole as cs1
> > cfi_probe: cfi_flash base: 0xc0000000 size: 0x02000000
> > NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB
> 1,8V
> > 8-bit)
> > Bad block table found at page 262080, version 0x01
> > Bad block table found at page 262016, version 0x01
> > Before PHY reset
> > After PHY reset
> > ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
> > No ISP1504 found
> > ehci@ehci0: USB EHCI 1.00
> > ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
> > No ISP1504 found
> > ehci@ehci1: USB EHCI 1.00
> > Malloc space: 0xa7a00000 -> 0xa7f00000 (size  5 MB)
> > Stack space : 0xa79f8000 -> 0xa7a00000 (size 32 kB)
> > running /env/bin/init...
> >
> > Hit any key to stop autoboot:  1
> > booting kernel of type uImage from /dev/nand0.kernel.bb
> > barebox:/ bootu /dev/nand0.kernel.bb
>
> bootu is for starting raw kernel images. Do you have such an image?
> Normally you have an uImage (bootm) or a zImage (bootz)
>
> > commandline: console=3Dttymxc0,115200 video=3Dimxfb:Chimei-LW700AT9003
> > arch_number: 1698
> >
> > It seems I'm getting some issues with my nand since when I tried to fla=
sh
> it
> > and the erase task failed :
> >
> > erasing partition /dev/nand0.kernel.bb
> >
> > erase: Invalid argument
>
> Works here. I can't see how erase could return -EINVAL. can you please
> post the output of 'ls /dev/nand0*'?
>
> Sascha
>
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

--bcaec5215a599860d504af847f1b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-righ=
t: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; bor=
der-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left:=
 1ex; ">

bootu is for starting raw kernel images. Do you have such an image?<br>Norm=
ally you have an uImage (bootm) or a zImage (bootz)</blockquote><div><br></=
div><div>Ok so that maybe the solution because I didn&#39;t tried with the =
bootm .... my bad ! But why did I don&#39;t have the &quot;Bad magic number=
&quot; error like when I tried the boot command ???=A0</div>

<div><br></div><div>Here is the ls /dev result:=A0</div><div><br></div><div=
><div>barebox:/ ls /dev/</div><div>zero =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 defaultenv =A0 =A0 =A0 =A0 =A0 =A0 mem</div><div>nor0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 nand0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0nand_oob0</div>

<div>ram0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 phy0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 self_raw</div><div>self0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0env=
_raw =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0env0</div><div>nor0.barebox =A0 =A0 =A0=
 =A0 =A0 nor0.bareboxenv =A0 =A0 =A0 =A0nor0.kernel</div><div>nor0.root =A0=
 =A0 =A0 =A0 =A0 =A0 =A0nand0.barebox =A0 =A0 =A0 =A0 =A0nand0.bareboxenv</=
div>

<div>nand0.kernel =A0 =A0 =A0 =A0 =A0 nand0.root =A0 =A0 =A0 =A0 =A0 =A0 <a=
 href=3D"http://nand0.root.bb">nand0.root.bb</a></div><div><a href=3D"http:=
//nand0.kernel.bb">nand0.kernel.bb</a> =A0 =A0 =A0 =A0<a href=3D"http://nan=
d0.bareboxenv.bb">nand0.bareboxenv.bb</a> =A0 =A0<a href=3D"http://nand0.ba=
rebox.bb">nand0.barebox.bb</a></div>

</div><div><br></div><div><br></div><div>=A0</div><div class=3D"gmail_quote=
">2011/10/17 Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@p=
engutronix.de">s.hauer@pengutronix.de</a>&gt;</span><br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">

<div><div></div><div class=3D"h5">On Mon, Oct 17, 2011 at 06:03:56PM +0200,=
 Kamel BOUHARA wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; Im working on my own imx27 designed board and wanted to try barebox on=
<br>
&gt; it.Actually I&#39;m trying it with the phytec board config and it seem=
s to work<br>
&gt; fine booting on my nfs kernel and rootfs.<br>
&gt; But when Im trying to boot from my 128MiB NAND memory then it doesn&#3=
9;t work<br>
&gt; and there is no decompression stage from the kernel.<br>
&gt; Here is what Im getting :<br>
&gt;<br>
&gt; Board: Phytec phyCard-i.MX27<br>
&gt; registered netconsole as cs1<br>
&gt; cfi_probe: cfi_flash base: 0xc0000000 size: 0x02000000<br>
&gt; NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB =
1,8V<br>
&gt; 8-bit)<br>
&gt; Bad block table found at page 262080, version 0x01<br>
&gt; Bad block table found at page 262016, version 0x01<br>
&gt; Before PHY reset<br>
&gt; After PHY reset<br>
&gt; ULPI Vendor ID 0xffffff92 =A0 =A0Product ID 0xffffff92<br>
&gt; No ISP1504 found<br>
&gt; ehci@ehci0: USB EHCI 1.00<br>
&gt; ULPI Vendor ID 0xffffff92 =A0 =A0Product ID 0xffffff92<br>
&gt; No ISP1504 found<br>
&gt; ehci@ehci1: USB EHCI 1.00<br>
&gt; Malloc space: 0xa7a00000 -&gt; 0xa7f00000 (size =A05 MB)<br>
&gt; Stack space : 0xa79f8000 -&gt; 0xa7a00000 (size 32 kB)<br>
&gt; running /env/bin/init...<br>
&gt;<br>
&gt; Hit any key to stop autoboot: =A01<br>
&gt; booting kernel of type uImage from /dev/<a href=3D"http://nand0.kernel=
.bb" target=3D"_blank">nand0.kernel.bb</a><br>
&gt; barebox:/ bootu /dev/<a href=3D"http://nand0.kernel.bb" target=3D"_bla=
nk">nand0.kernel.bb</a><br>
<br>
</div></div>bootu is for starting raw kernel images. Do you have such an im=
age?<br>
Normally you have an uImage (bootm) or a zImage (bootz)<br>
<div class=3D"im"><br>
&gt; commandline: console=3Dttymxc0,115200 video=3Dimxfb:Chimei-LW700AT9003=
<br>
&gt; arch_number: 1698<br>
&gt;<br>
&gt; It seems I&#39;m getting some issues with my nand since when I tried t=
o flash it<br>
&gt; and the erase task failed :<br>
&gt;<br>
&gt; erasing partition /dev/<a href=3D"http://nand0.kernel.bb" target=3D"_b=
lank">nand0.kernel.bb</a><br>
&gt;<br>
&gt; erase: Invalid argument<br>
<br>
</div>Works here. I can&#39;t see how erase could return -EINVAL. can you p=
lease<br>
post the output of &#39;ls /dev/nand0*&#39;?<br>
<br>
Sascha<br>
<font color=3D"#888888"><br>
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
</font></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>_____=
_____________________________<br><i><font face=3D"&#39;comic sans ms&#39;, =
sans-serif">Kamel BOUHARA</font></i><div>7 rue Jules C=E9sar<div>02100 SAIN=
T-QUENTIN<br>

06.17.83.29.04<br><br></div></div><br>

--bcaec5215a599860d504af847f1b--


--===============0215809633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0215809633==--
