Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QgICc-0008D5-5Y
	for barebox@lists.infradead.org; Mon, 11 Jul 2011 15:15:19 +0000
Received: by pzk28 with SMTP id 28so3849681pzk.36
	for <barebox@lists.infradead.org>; Mon, 11 Jul 2011 08:15:14 -0700 (PDT)
MIME-Version: 1.0
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Mon, 11 Jul 2011 17:14:54 +0200
Message-ID: <CAM9uW_57ecdoGWdV9pqNjBfkCo5xS-R1zkY910_yvBLKHEYzxQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0094170302=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: FEC Not working with imx27 based board
To: barebox@lists.infradead.org

--===============0094170302==
Content-Type: multipart/alternative; boundary=bcaec52157336b690704a7cca65e

--bcaec52157336b690704a7cca65e
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

Im trying to port barebox to my Armadeus apf27 board (based on the Freescal=
e
imx27 with a 512MiB NAND and 1GB of SDRAM).
I've first tried the phytec imx27 configuration and I got it worked until
the Linux uncompressing task (the machine ID is bad so I didn't expect it
will boot fine :)).
So I just copied the phycard-imx27 board directory and I followed the
boards.dox in order to add support for my board.
But when I've tried to boot again it was not working anymore ...

There are somethings stranges with the FEC, here is the result of a memory
display with both phytec and my own board :

> barebox@Phytec phyCard-i.MX27:/ md -s /dev/phy0
>
> 00000000: ffffffff ffffffff ffffffff ffffffff ................
>
> 00000010: ffffffff ffffffff ffffffff ffffffff ................
>
> 00000020: ffffffff ffffffff ffffffff ffffffff ................
>
> 00000030: ffffffff ffffffff ffffffff ffffffff ................
>
> barebox@Phytec phyCard-i.MX27:/ boto
>
> Unknown command 'boto' - try 'help'
>
> barebox@Phytec phyCard-i.MX27:/ boot
>
> phy0: Link is up - 100/Full
>
> T T T T T
>
>
The fec is working fine on the phytec but the same o my board make it crash=
:

> barebox@armadeus APF27:/ md -s /dev/phy0
>
> 00000000: 78091000 c0c40007 000101e1 ffff0000 ...x............
>
> 00000010: ffffffff ffffffff ffffffff 0000ffff ................
>
> 00000020: 00000040 ffff00ff 00000000 00000000 @...............
>
> 00000030: ffffffff 00010000 00100000 00400000 ..............@.
>
Why I did'nt get the boad working with the same configuration ?

Regards.

__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec52157336b690704a7cca65e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>=A0</div>
<div>Im trying to port barebox to my=A0Armadeus apf27 board (based on the F=
reescale imx27 with a 512MiB NAND and 1GB of SDRAM).</div>
<div>I&#39;ve first tried the phytec imx27 configuration and I got it worke=
d until the Linux uncompressing task (the machine ID is bad so I didn&#39;t=
 expect it will boot fine :)).</div>
<div>So=A0I just=A0copied the phycard-imx27 board directory and I followed =
the boards.dox in order to add support for my board.</div>
<div>But when I&#39;ve tried to boot again it=A0was not working anymore ...=
</div>
<div>=A0</div>
<div>There are somethings stranges with the FEC, here is the result of a me=
mory display with both phytec=A0and my own board :</div>
<div><span lang=3D"FR">
<blockquote class=3D"gmail_quote" style=3D"PADDING-LEFT: 1ex; MARGIN: 0px 0=
px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid"><span lang=3D"FR">
<p>barebox@Phytec phyCard-i.MX27:/ md -s /dev/phy0 </p>
<p>00000000: ffffffff ffffffff ffffffff ffffffff ................ </p>
<p>00000010: ffffffff ffffffff ffffffff ffffffff ................ </p>
<p>00000020: ffffffff ffffffff ffffffff ffffffff ................ </p>
<p>00000030: ffffffff ffffffff ffffffff ffffffff ................ </p>
<p>barebox@Phytec phyCard-i.MX27:/ boto </p>
<p>Unknown command &#39;boto&#39; - try &#39;help&#39; </p>
<p>barebox@Phytec phyCard-i.MX27:/ boot </p>
<p>phy0: Link is up - 100/Full </p>
<p>T T T T T</p></span><br></blockquote>
<div>=A0</div>
<div>The fec is working fine on the phytec but the same o my board=A0make i=
t crash:</div><span lang=3D"FR">
<blockquote class=3D"gmail_quote" style=3D"PADDING-LEFT: 1ex; MARGIN: 0px 0=
px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid"><span lang=3D"FR">
<p>barebox@armadeus APF27:/ md -s /dev/phy0 </p>
<p>00000000: 78091000 c0c40007 000101e1 ffff0000 ...x............ </p>
<p>00000010: ffffffff ffffffff ffffffff 0000ffff ................ </p>
<p>00000020: 00000040 ffff00ff 00000000 00000000 @............... </p>
<p>00000030: ffffffff 00010000 00100000 00400000 ..............@. </p></spa=
n></blockquote>
<p>Why I did&#39;nt get the boad working with the same configuration ?</p>
<p>Regards.</p></span></span>
<p>__________________________________<br><i><font face=3D"&#39;comic sans m=
s&#39;, sans-serif">Kamel BOUHARA</font></i></p></div>
<div>7 rue Jules C=E9sar=20
<div>02100 SAINT-QUENTIN<br>06.17.83.29.04<br><br></div></div><br>

--bcaec52157336b690704a7cca65e--


--===============0094170302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0094170302==--
