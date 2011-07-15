Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QhgSr-0005eZ-M8
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 11:21:54 +0000
Received: by pvg20 with SMTP id 20so1218644pvg.36
	for <barebox@lists.infradead.org>; Fri, 15 Jul 2011 04:21:41 -0700 (PDT)
MIME-Version: 1.0
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Fri, 15 Jul 2011 13:21:21 +0200
Message-ID: <CAM9uW_7pYJS1jzPxcCPphPgMi=ckstKm8=_6dsrCRn3Bp-sCXw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1494375469=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Nand MTD IOError -5
To: barebox@lists.infradead.org

--===============1494375469==
Content-Type: multipart/alternative; boundary=bcaec5215e118e0ad304a819da94

--bcaec5215e118e0ad304a819da94
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

Im having a trouble with my Nand Flash device wich is a 512MiB Micron with
4GB capacity.
I get io error -5 for any erase/write operation on it like this :

 barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand

phy0: Link is up - 100/Full

host 192.168.0.2 is alive


> erasing partition /dev/nand0.barebox.bb
>


>

erase: I/O error
>


>

flashing barebox.bin to /dev/nand0.barebox.bb
>


>

TFTP from server 192.168.0.2 ('barebox.bin' -> '/dev/nand0.barebox.bb')
>

        write: I/O error
>


>

tftp failed: error -5


And here is the device init at the boot runtime:

NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB 1,8V
8-bi)
Bad block table found at page 262080, version 0x01

Bad block table found at page 262016, version 0x01

nand_read_bbt: Bad block at 0x01ac0000

nand_read_bbt: Bad block at 0x01ae0000

nand_read_bbt: Bad block at 0x01b40000

nand_read_bbt: Bad block at 0x01b60000

nand_read_bbt: Bad block at 0x02bc0000

nand_read_bbt: Bad block at 0x02be0000

nand_read_bbt: Bad block at 0x03240000

nand_read_bbt: Bad block at 0x03260000

nand_read_bbt: Bad block at 0x033c0000

nand_read_bbt: Bad block at 0x033e0000

nand_read_bbt: Bad block at 0x03f40000

nand_read_bbt: Bad block at 0x03f60000

nand_read_bbt: Bad block at 0x03fc0000

nand_read_bbt: Bad block at 0x03fe0000

nand_read_bbt: Bad block at 0x057c0000

nand_read_bbt: Bad block at 0x057e0000

nand_read_bbt: Bad block at 0x05ac0000

nand_read_bbt: Bad block at 0x05ae0000

nand_read_bbt: Bad block at 0x05bc0000

nand_read_bbt: Bad block at 0x05be0000

nand_read_bbt: Bad block at 0x07440000

nand_read_bbt: Bad block at 0x07460000

nand_read_bbt: Bad block at 0x078c0000

nand_read_bbt: Bad block at 0x078e0000

nand_read_bbt: Bad block at 0x07cc0000

nand_read_bbt: Bad block at 0x07ce0000

nand_read_bbt: Bad block at 0x134c0000

nand_read_bbt: Bad block at 0x134e0000

nand_read_bbt: Bad block at 0x14940000

nand_read_bbt: Bad block at 0x14960000

nand_read_bbt: Bad block at 0x15540000

nand_read_bbt: Bad block at 0x15560000

nand_read_bbt: Bad block at 0x15ac0000

nand_read_bbt: Bad block at 0x15ae0000

nand_read_bbt: Bad block at 0x17140000

nand_read_bbt: Bad block at 0x17160000

nand_read_bbt: Bad block at 0x17840000

nand_read_bbt: Bad block at 0x17860000

nand_read_bbt: Bad block at 0x1f0c0000

nand_read_bbt: Bad block at 0x1f0e0000

nand_read_bbt: Bad block at 0x1f6c0000

nand_read_bbt: Bad block at 0x1f6e0000

So it seems tge device is detect and bbt are correctly calculated...
Any idea of what could be the problem ?

Regards.

--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec5215e118e0ad304a819da94
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br clear=3D"all">Hello,<div><br></div><div>Im having a trouble with my Nan=
d Flash device wich is a 512MiB Micron with 4GB capacity.</div><div>I get i=
o error -5 for any erase/write operation on it like this :</div><div><br></=
div>

<div><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-rig=
ht: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; bo=
rder-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left=
: 1ex; ">

barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand =A0 =A0</blockquo=
te><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-right=
: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; bord=
er-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: =
1ex; ">

phy0: Link is up - 100/Full</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left=
: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); bor=
der-left-style: solid; padding-left: 1ex; ">

host 192.168.0.2 is alive</blockquote><blockquote class=3D"gmail_quote" sty=
le=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: =
0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); borde=
r-left-style: solid; padding-left: 1ex; ">

<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px=
; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-wi=
dth: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; =
padding-left: 1ex; ">

erasing partition /dev/<a href=3D"http://nand0.barebox.bb">nand0.barebox.bb=
</a> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margi=
n-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; bord=
er-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-styl=
e: solid; padding-left: 1ex; ">

=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-=
top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border=
-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style:=
 solid; padding-left: 1ex; ">

erase: I/O error =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</bl=
ockquote><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin=
-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px=
; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-=
left: 1ex; ">

=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-=
top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border=
-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style:=
 solid; padding-left: 1ex; ">

flashing barebox.bin to /dev/<a href=3D"http://nand0.barebox.bb">nand0.bare=
box.bb</a> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top: 0=
px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-=
width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid=
; padding-left: 1ex; ">

=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-=
top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border=
-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style:=
 solid; padding-left: 1ex; ">

TFTP from server 192.168.0.2 (&#39;barebox.bin&#39; -&gt; &#39;/dev/<a href=
=3D"http://nand0.barebox.bb">nand0.barebox.bb</a>&#39;) =A0 =A0 =A0 =A0=A0<=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; mar=
gin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: =
1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; paddi=
ng-left: 1ex; ">

=A0=A0 =A0 =A0 =A0write: I/O error =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</bl=
ockquote><blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin=
-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px=
; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-=
left: 1ex; ">

=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-=
top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border=
-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style:=
 solid; padding-left: 1ex; ">

tftp failed: error -5 =A0 =A0 =A0=A0</blockquote><div><br></div><div>And he=
re is the device init at the boot runtime:</div><div><br></div><div><div>NA=
ND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB 1,8V 8-=
bi)</div>

<div>Bad block table found at page 262080, version 0x01 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>Bad block table found at=
 page 262016, version 0x01 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0x01ac0000 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</di=
v>

<div>nand_read_bbt: Bad block at 0x01ae0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x01b40000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x01b60000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x02bc0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x02be0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x03240000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x03260000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x033c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x033e0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x03f40000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x03f60000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x03fc0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x03fe0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x057c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x057e0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x05ac0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x05ae0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x05bc0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x05be0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x07440000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x07460000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x078c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x078e0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x07cc0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x07ce0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x134c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x134e0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x14940000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x14960000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x15540000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x15560000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x15ac0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x15ae0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x17140000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x17160000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x17840000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x17860000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x1f0c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bbt: Bad block at 0=
x1f0e0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div>

<div>nand_read_bbt: Bad block at 0x1f6c0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>nand_read_bb=
t: Bad block at 0x1f6e0000 =A0 =A0 =A0</div></div><div><br></div><div>So it=
 seems tge device is detect and bbt are correctly calculated...</div>

<div>Any idea of what could be the problem ?</div><div><br></div><div>Regar=
ds.=A0</div></div><div><br></div><div>-- <br>______________________________=
____<br><i><font face=3D"&#39;comic sans ms&#39;, sans-serif">Kamel BOUHARA=
</font></i><div>

7 rue Jules C=E9sar<div>02100 SAINT-QUENTIN<br>06.17.83.29.04<br><br></div>=
</div><br>
</div>

--bcaec5215e118e0ad304a819da94--


--===============1494375469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1494375469==--
