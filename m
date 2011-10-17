Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RFpfn-000458-5M
	for barebox@lists.infradead.org; Mon, 17 Oct 2011 16:04:20 +0000
Received: by qyk32 with SMTP id 32so1041522qyk.15
	for <barebox@lists.infradead.org>; Mon, 17 Oct 2011 09:04:17 -0700 (PDT)
MIME-Version: 1.0
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Mon, 17 Oct 2011 18:03:56 +0200
Message-ID: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1146121316=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: NAND Boot Issue
To: barebox@lists.infradead.org

--===============1146121316==
Content-Type: multipart/alternative; boundary=bcaec520ea8542022704af80c27e

--bcaec520ea8542022704af80c27e
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,

Im working on my own imx27 designed board and wanted to try barebox on
it.Actually I'm trying it with the phytec board config and it seems to work
fine booting on my nfs kernel and rootfs.
But when Im trying to boot from my 128MiB NAND memory then it doesn't work
and there is no decompression stage from the kernel.
Here is what Im getting :

Board: Phytec phyCard-i.MX27
registered netconsole as cs1
cfi_probe: cfi_flash base: 0xc0000000 size: 0x02000000
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB 1,8V
8-bit)
Bad block table found at page 262080, version 0x01
Bad block table found at page 262016, version 0x01
Before PHY reset
After PHY reset
ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
No ISP1504 found
ehci@ehci0: USB EHCI 1.00
ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
No ISP1504 found
ehci@ehci1: USB EHCI 1.00
Malloc space: 0xa7a00000 -> 0xa7f00000 (size  5 MB)
Stack space : 0xa79f8000 -> 0xa7a00000 (size 32 kB)
running /env/bin/init...

Hit any key to stop autoboot:  1
booting kernel of type uImage from /dev/nand0.kernel.bb
barebox:/ bootu /dev/nand0.kernel.bb
commandline: console=3Dttymxc0,115200 video=3Dimxfb:Chimei-LW700AT9003
arch_number: 1698

It seems I'm getting some issues with my nand since when I tried to flash i=
t
and the erase task failed :

erasing partition /dev/nand0.kernel.bb

erase: Invalid argument

flashing uImage-apf27 to /dev/nand0.kernel.bb

TFTP from server 192.168.0.2 ('uImage-apf27' -> '/dev/nand0.kernel.bb')
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #

How can I fix that ?
Thanks for the help.



--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec520ea8542022704af80c27e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<div><br></div><div>Im working on my own imx27 designed board and wa=
nted to try barebox on it.Actually I&#39;m trying it with the phytec board =
config and it seems to work fine booting on my nfs kernel and rootfs.</div>

<div>But when Im trying to boot from my 128MiB NAND memory then it doesn&#3=
9;t work and there is no decompression stage from the kernel.</div><div>Her=
e is what Im getting :</div><div><br></div><div><div>Board: Phytec phyCard-=
i.MX27</div>

<div>registered netconsole as cs1</div><div>cfi_probe: cfi_flash base: 0xc0=
000000 size: 0x02000000</div><div>NAND device: Manufacturer ID: 0x2c, Chip =
ID: 0xac (Micron NAND 512MiB 1,8V 8-bit)</div><div>Bad block table found at=
 page 262080, version 0x01</div>

<div>Bad block table found at page 262016, version 0x01</div><div>Before PH=
Y reset</div><div>After PHY reset</div><div>ULPI Vendor ID 0xffffff92 =A0 =
=A0Product ID 0xffffff92</div><div>No ISP1504 found</div><div>ehci@ehci0: U=
SB EHCI 1.00</div>

<div>ULPI Vendor ID 0xffffff92 =A0 =A0Product ID 0xffffff92</div><div>No IS=
P1504 found</div><div>ehci@ehci1: USB EHCI 1.00</div><div>Malloc space: 0xa=
7a00000 -&gt; 0xa7f00000 (size =A05 MB)</div><div>Stack space : 0xa79f8000 =
-&gt; 0xa7a00000 (size 32 kB)</div>

<div>running /env/bin/init...</div><div><br></div><div>Hit any key to stop =
autoboot: =A01</div><div>booting kernel of type uImage from /dev/<a href=3D=
"http://nand0.kernel.bb">nand0.kernel.bb</a></div><div>barebox:/ bootu /dev=
/<a href=3D"http://nand0.kernel.bb">nand0.kernel.bb</a>=A0</div>

<div>commandline: console=3Dttymxc0,115200 video=3Dimxfb:Chimei-LW700AT9003=
</div><div>arch_number: 1698</div><div><br></div><div>It seems I&#39;m gett=
ing some issues with my nand since when I tried to flash it and the erase t=
ask failed :</div>

<div><br></div><div>erasing partition /dev/<a href=3D"http://nand0.kernel.b=
b">nand0.kernel.bb</a></div><div><br></div><div>erase: Invalid argument</di=
v><div><br></div><div>flashing uImage-apf27 to /dev/<a href=3D"http://nand0=
.kernel.bb">nand0.kernel.bb</a></div>

<div><br></div><div>TFTP from server 192.168.0.2 (&#39;uImage-apf27&#39; -&=
gt; &#39;/dev/<a href=3D"http://nand0.kernel.bb">nand0.kernel.bb</a>&#39;)<=
/div><div>=A0=A0 =A0 =A0 =A0###############################################=
##################</div>

<div>=A0=A0 =A0 =A0 =A0####################################################=
#############</div><div>=A0=A0 =A0 =A0 =A0#################################=
################################</div><div>=A0=A0 =A0 =A0 =A0##############=
###################################################</div>

<div>=A0=A0 =A0 =A0 =A0####################################################=
#############</div><div>=A0=A0 =A0 =A0 =A0#################################=
################################</div><div>=A0=A0 =A0 =A0 =A0##############=
###################################################</div>

<div>=A0=A0 =A0 =A0 =A0####################################################=
#############</div><div>=A0=A0 =A0 =A0 =A0#</div><div><br></div><div>How ca=
n I fix that ?</div><div>Thanks for the help.=A0</div><div><br></div><div><=
br></div><div><br>

</div>-- <br>__________________________________<br><i><font face=3D"&#39;co=
mic sans ms&#39;, sans-serif">Kamel BOUHARA</font></i><div>7 rue Jules C=E9=
sar<div>02100 SAINT-QUENTIN<br>06.17.83.29.04<br><br></div></div><br>
</div>

--bcaec520ea8542022704af80c27e--


--===============1146121316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1146121316==--
