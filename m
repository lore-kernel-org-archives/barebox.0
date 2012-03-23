Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAslQ-0001r2-Pg
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 00:53:57 +0000
Received: by lagy4 with SMTP id y4so2518139lag.36
 for <barebox@lists.infradead.org>; Thu, 22 Mar 2012 17:53:53 -0700 (PDT)
MIME-Version: 1.0
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Fri, 23 Mar 2012 01:53:33 +0100
Message-ID: <CAM9uW_6qLEEmNFtTxLxNHx86zzFnHRfxB+1pm+VfRfjf4FrfBg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7132365731396726155=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Network Issue with Mini2440
To: barebox@lists.infradead.org

--===============7132365731396726155==
Content-Type: multipart/alternative; boundary=90e6ba25db95689d5404bbde75dc

--90e6ba25db95689d5404bbde75dc
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to port the last release of barebox to my sbc2440-III board with
the base config. of a mini2440 but unfortunately I'm facing a network issue
when trying to boot from nfs or to load files with tftp.

After checking all the parameters (pll, ram init etc.) I figured out that
the chip select and interrupt pinout were not good and I changed them to
fit with my board schematic.
So I have a well boot on barebox everything seems to work as you can see
here :

barebox 2012.03.0-00113-g881d9e9-dirty (Mar 23 2012 - 00:45:52)


> Board: Mini 2440

registered netconsole as cs1

NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V
> 8-bit)

Bad block table found at page 65472, version 0x01

Bad block table found at page 65408, version 0x01

dm9000@dm90000: Found DM9000A at i/o: 0x18000300

refclk:    12000 kHz

mpll:     405000 kHz

upll:      48000 kHz

fclk:     405000 kHz

hclk:     101250 kHz

pclk:      50625 kHz

SDRAM1:   CL2@101MHz

Malloc space: 0x33a00000 -> 0x33dfffff (size  4 MB)

Stack space : 0x339f8000 -> 0x33a00000 (size 32 kB)

running /env/bin/init...



But,  when I try to ping or boot from nfs/tftp, the phy isn't receiving any
packet from host :

Hit any key to stop autoboot:  0

warning: No MAC address set. Using random address F6:48:4B:C2:51:44

phy0: Link is up - 100/Full

T T T T T T T T T T T T T T T T T T T T T T


I'm sure the host is well configured because I usually have to work with
other boards using nfs and tftp.

Here is more complete log of the packets transaction I hope it could help :

barebox 2012.03.0-00113-g881d9e9-dirty (Mar 23 2012 - 00:45:52)


> Board: Mini 2440

registered netconsole as cs1

NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V
> 8-bit)

Bad block table found at page 65472, version 0x01

Bad block table found at page 65408, version 0x01

dm9000@dm90000: dm9k_reset

dm9000@dm90000: dm9000 revision 0x19

dm9000@dm90000: Found DM9000A at i/o: 0x18000300

dm9000@dm90000: 16 bit data bus

dm9000@dm90000: phy_write(reg:0, value:32768)

dm9000@dm90000: phy_read(4): 481

dm9000@dm90000: phy_write(reg:4, value:481)

dm9000@dm90000: phy_write(reg:0, value:4608)

refclk:    12000 kHz

mpll:     405000 kHz

upll:      48000 kHz

fclk:     405000 kHz

hclk:     101250 kHz

pclk:      50625 kHz

SDRAM1:   CL2@101MHz

Malloc space: 0x33a00000 -> 0x33dfffff (size  4 MB)

Stack space : 0x339f8000 -> 0x33a00000 (size 32 kB)

running /env/bin/init...


> Hit any key to stop autoboot:  1

warning: No MAC address set. Using random address 36:CF:EC:0D:18:BC

dm9000@dm90000: phy_read(1): 30825

dm9000@dm90000: phy_read(1): 30829

dm9000@dm90000: phy_read(1): 30829

dm9000@dm90000: phy_read(0): 12544

dm9000@dm90000: phy_read(5): 50657

phy0: Link is up - 100/Full

dm9000@dm90000: dm9k_eth_send: 42 bytes

dm9000@dm90000: transmit done

dm9000@dm90000: Packet present

dm9000@dm90000: dm9k_validate_entry packet status 01

dm9000@dm90000: rx Late Collision Seen error

dm9000@dm90000: rx length too big

dm9000@dm90000: dm9k_reset

T dm9000@dm90000: dm9k_eth_send: 42 bytes

dm9000@dm90000: transmit done

dm9000@dm90000: Packet present

dm9000@dm90000: dm9k_validate_entry packet status 01

dm9000@dm90000: rx fifo overflow error

dm9000@dm90000: rx crc error

dm9000@dm90000: Discarding packet

dm9000@dm90000: dm9k_validate_entry packet status 00

T dm9000@dm90000: dm9k_eth_send: 42 bytes

dm9000@dm90000: transmit done

dm9000@dm90000: Packet present

dm9000@dm90000: dm9k_validate_entry packet status 00

T dm9000@dm90000: dm9k_eth_send: 42 bytes

dm9000@dm90000: transmit done

dm9000@dm90000: Packet present

dm9000@dm90000: dm9k_validate_entry packet status 00

NFS failed: Interrupted system call


Any help is welcome for sure.

Regards.
-- 

_______________________________
*Kamel BOUHARA*
62 Bis Rue Carnot
60610 Lacroix Saint-Ouen

Tel :  +33617832904

--90e6ba25db95689d5404bbde75dc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>I&#39;m trying to port the last release of barebo=
x to my sbc2440-III board with the base config. of a mini2440 but unfortuna=
tely I&#39;m facing a network issue when trying to boot from nfs or to load=
 files with tftp.</div>


<div><br></div><div>After checking all the parameters (pll, ram init etc.) =
I figured out that the chip select and interrupt pinout were not good and I=
 changed them to fit with my board schematic.</div><div>So I have a well bo=
ot on barebox everything seems to work as you can see here :</div>

<div><br></div><div><div><blockquote class=3D"gmail_quote" style=3D"margin-=
top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-wi=
dth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-=
left:1ex">

barebox 2012.03.0-00113-g881d9e9-dirty (Mar 23 2012 - 00:45:52)</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px=
;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">

Board: Mini 2440</blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">

registered netconsole as cs1</blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex">

NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V=
 8-bit)</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0=
px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">

Bad block table found at page 65472, version 0x01</blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom=
:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">

Bad block table found at page 65408, version 0x01</blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom=
:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: Found DM9000A at i/o: 0x18000300</blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:=
0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">

refclk: =A0 =A012000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

mpll: =A0 =A0 405000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

upll: =A0 =A0 =A048000 kHz</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

fclk: =A0 =A0 405000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

hclk: =A0 =A0 101250 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

pclk: =A0 =A0 =A050625 kHz</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

SDRAM1: =A0 CL2@101MHz</blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bor=
der-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:sol=
id;padding-left:1ex">

Malloc space: 0x33a00000 -&gt; 0x33dfffff (size =A04 MB)</blockquote><block=
quote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin=
-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex">

Stack space : 0x339f8000 -&gt; 0x33a00000 (size 32 kB)</blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-b=
ottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204=
,204,204);border-left-style:solid;padding-left:1ex">

running /env/bin/init...</blockquote></div></div><div><br></div><div><br></=
div><div>But, =A0when I try to ping or boot from nfs/tftp, the phy isn&#39;=
t receiving any packet from host :</div><div><br></div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0=
px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex">

Hit any key to stop autoboot: =A00</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

warning: No MAC address set. Using random address F6:48:4B:C2:51:44</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right=
:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

phy0: Link is up - 100/Full</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex">

T T T T T T T T T T T T T T T T T T T T T T</blockquote></div><div><br></di=
v><div>I&#39;m sure the host is well configured because I usually have to w=
ork with other boards using nfs and tftp.</div><div><br></div><div>Here is =
more complete log of the packets transaction I hope it could help :</div>

<div><br></div><div><blockquote class=3D"gmail_quote" style=3D"margin-top:0=
px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">

barebox 2012.03.0-00113-g881d9e9-dirty (Mar 23 2012 - 00:45:52)</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px=
;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">

Board: Mini 2440</blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">

registered netconsole as cs1</blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex">

NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V=
 8-bit)</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0=
px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">

Bad block table found at page 65472, version 0x01</blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom=
:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">

Bad block table found at page 65408, version 0x01</blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom=
:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: dm9k_reset</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

dm9000@dm90000: dm9000 revision 0x19</blockquote><blockquote class=3D"gmail=
_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-l=
eft:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">

dm9000@dm90000: Found DM9000A at i/o: 0x18000300</blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:=
0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: 16 bit data bus</blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">

dm9000@dm90000: phy_write(reg:0, value:32768)</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px=
;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(4): 481</blockquote><blockquote class=3D"gmail_quo=
te" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:=
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">

dm9000@dm90000: phy_write(reg:4, value:481)</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px=
;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">

dm9000@dm90000: phy_write(reg:0, value:4608)</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px=
;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">

refclk: =A0 =A012000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

mpll: =A0 =A0 405000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

upll: =A0 =A0 =A048000 kHz</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

fclk: =A0 =A0 405000 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

hclk: =A0 =A0 101250 kHz</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

pclk: =A0 =A0 =A050625 kHz</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

SDRAM1: =A0 CL2@101MHz</blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bor=
der-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:sol=
id;padding-left:1ex">

Malloc space: 0x33a00000 -&gt; 0x33dfffff (size =A04 MB)</blockquote><block=
quote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin=
-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex">

Stack space : 0x339f8000 -&gt; 0x33a00000 (size 32 kB)</blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-b=
ottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204=
,204,204);border-left-style:solid;padding-left:1ex">

running /env/bin/init...</blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">

Hit any key to stop autoboot: =A01</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

warning: No MAC address set. Using random address 36:CF:EC:0D:18:BC</blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right=
:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(1): 30825</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(1): 30829</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(1): 30829</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(0): 12544</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

dm9000@dm90000: phy_read(5): 50657</blockquote><blockquote class=3D"gmail_q=
uote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">

phy0: Link is up - 100/Full</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex">

dm9000@dm90000: dm9k_eth_send: 42 bytes</blockquote><blockquote class=3D"gm=
ail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margi=
n-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex">

dm9000@dm90000: transmit done</blockquote><blockquote class=3D"gmail_quote"=
 style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">

dm9000@dm90000: Packet present</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex">

dm9000@dm90000: dm9k_validate_entry packet status 01</blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: rx Late Collision Seen error</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px=
;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">

dm9000@dm90000: rx length too big</blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left=
:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">

dm9000@dm90000: dm9k_reset</blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex">

T dm9000@dm90000: dm9k_eth_send: 42 bytes</blockquote><blockquote class=3D"=
gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;mar=
gin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">

dm9000@dm90000: transmit done</blockquote><blockquote class=3D"gmail_quote"=
 style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">

dm9000@dm90000: Packet present</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex">

dm9000@dm90000: dm9k_validate_entry packet status 01</blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

dm9000@dm90000: rx fifo overflow error</blockquote><blockquote class=3D"gma=
il_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin=
-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border=
-left-style:solid;padding-left:1ex">

dm9000@dm90000: rx crc error</blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex">

dm9000@dm90000: Discarding packet</blockquote><blockquote class=3D"gmail_qu=
ote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left=
:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">

dm9000@dm90000: dm9k_validate_entry packet status 00</blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

T dm9000@dm90000: dm9k_eth_send: 42 bytes</blockquote><blockquote class=3D"=
gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;mar=
gin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">

dm9000@dm90000: transmit done</blockquote><blockquote class=3D"gmail_quote"=
 style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">

dm9000@dm90000: Packet present</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex">

dm9000@dm90000: dm9k_validate_entry packet status 00</blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

T dm9000@dm90000: dm9k_eth_send: 42 bytes</blockquote><blockquote class=3D"=
gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;mar=
gin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">

dm9000@dm90000: transmit done</blockquote><blockquote class=3D"gmail_quote"=
 style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">

dm9000@dm90000: Packet present</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex">

dm9000@dm90000: dm9k_validate_entry packet status 00</blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex">

NFS failed: Interrupted system call</blockquote><div><br></div><div>Any hel=
p is welcome for sure.</div></div><div><br></div><div>Regards.</div><meta h=
ttp-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><meta htt=
p-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><meta http-=
equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">-- <br>

<br><div>_______________________________<br><i><font face=3D"&#39;comic san=
s ms&#39;, sans-serif">Kamel BOUHARA</font></i></div><div><div>62 Bis Rue C=
arnot<div>60610 Lacroix Saint-Ouen</div><div><br></div>
<div>Tel :=A0=A0<a href=3D"tel:%2B33617832904" value=3D"+33617832904" targe=
t=3D"_blank">+33617832904</a></div><div><br></div></div></div><br>

--90e6ba25db95689d5404bbde75dc--


--===============7132365731396726155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7132365731396726155==--
