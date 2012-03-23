Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB93L-0001hP-Cn
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 18:17:35 +0000
Received: by lagy4 with SMTP id y4so3205463lag.36
 for <barebox@lists.infradead.org>; Fri, 23 Mar 2012 11:17:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201203230922.42378.jbe@pengutronix.de>
References: <CAM9uW_6qLEEmNFtTxLxNHx86zzFnHRfxB+1pm+VfRfjf4FrfBg@mail.gmail.com>
 <201203230922.42378.jbe@pengutronix.de>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Fri, 23 Mar 2012 19:17:07 +0100
Message-ID: <CAM9uW_6jvdqyoz2sk+uVJj086vrq3kU2fP5HW4Yzy41sU4qO_A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3987360135091125456=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: Network Issue with Mini2440
To: barebox@lists.infradead.org

--===============3987360135091125456==
Content-Type: multipart/alternative; boundary=e89a8f234ab5791bcf04bbed0907

--e89a8f234ab5791bcf04bbed0907
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Juergen,

Ok, it light me on the way that my board don't use an eeprom to set the FEC
address so I probably have to fix that somewhere ...maybe a macro #define
NO_EEPROM or something like that ??

Can you, please, show me the *md -s /dev/phy0* command output from you
mini6410.

Thanks.

---------- Message transf=E9r=E9 ----------
De : Juergen Beisert <jbe@pengutronix.de>
Date : 23 mars 2012 09:22
Objet : Re: Network Issue with Mini2440
=C0 : barebox@lists.infradead.org
Cc : Kamel BOUHARA <k.bouhara@gmail.com>


Hi Kamel,

Kamel BOUHARA wrote:
> I'm trying to port the last release of barebox to my sbc2440-III board
with
> the base config. of a mini2440 but unfortunately I'm facing a network
issue
> when trying to boot from nfs or to load files with tftp.
>
> After checking all the parameters (pll, ram init etc.) I figured out that
> the chip select and interrupt pinout were not good and I changed them to
> fit with my board schematic.
> So I have a well boot on barebox everything seems to work as you can see
> here :
> [...]

I changes the DM9000 driver recently. So, I tested both DM9000 revisions I
have access to (based on the Barebox's next branch).

First on the Mini2440. It comes with a DM9000E:

---------------------------------------------------------------------------

mini2440:/ tftp barebox-mini2440 /dev/ram0
TFTP from server 192.168.1.7 ('barebox-mini2440' -> '/dev/ram0')
       #################################
mini2440:/ go /dev/ram0
## Starting application at 0x30000000 ...

barebox 2012.02.0-00259-g773e35b (Mar 23 2012 - 08:53:16)

Board: Mini 2440
NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V
8-bit)
Bad block table found at page 65472, version 0x01
Bad block table found at page 65408, version 0x01
nand_read_bbt: Bad block at 0x019e0000
nand_read_bbt: Bad block at 0x02540000
dm9000@dm90000: Found DM9000E at i/o: 0x20000300
s3c_mci@mci0: registered as mci0
refclk:    12000 kHz
mpll:     405000 kHz
upll:      48000 kHz
fclk:     405000 kHz
hclk:     101250 kHz
pclk:      50625 kHz
SDRAM1:   CL2@101MHz
Malloc space: 0x33a00000 -> 0x33dfffff (size  4 MB)
Stack space : 0x339f8000 -> 0x33a00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3
mini2440:/ devinfo eth0
resources:
driver: none

Parameters:
         ipaddr =3D 192.168.1.241
        ethaddr =3D 36:CF:EC:0D:18:Bd
        gateway =3D <NULL>
        netmask =3D 255.255.255.0
       serverip =3D 192.168.1.7
mini2440:/ ping 192.168.1.7
phy0: Link is up - 100/Full
host 192.168.1.7 is alive

---------------------------------------------------------------------------

And here with my Mini6410. This comes with a DM9000A like your system.

---------------------------------------------------------------------------

barebox 2012.02.0-00259-g773e35b-dirty (Mar 23 2012 - 09:19:48)

Board: Mini 6410
Will write 0x00021300
dm9000@dm90000: Found DM9000A at i/o: 0x18000300
eth@eth0: got MAC address from EEPROM: 08:90:90:90:90:90
refclk:    12000 kHz
apll:     532000 kHz
mpll:     532000 kHz
CPU:      532000 kHz
hclkx2:   266000 kHz
hclk:     133000 kHz
pclk:      66500 kHz
Malloc space: 0x57bc0000 -> 0x57fbffff (size  4 MB)
Stack space : 0x57bb8000 -> 0x57bc0000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3
mini6410:/ devinfo eth0
resources:
driver: none

Parameters:
         ipaddr =3D 192.168.1.187
        ethaddr =3D 08:90:90:90:90:90
        gateway =3D 192.168.1.1
        netmask =3D 255.255.255.0
       serverip =3D 192.168.1.7
mini6410:/ ping 192.168.1.7
phy0: Link is up - 100/Full
host 192.168.1.7 is alive

---------------------------------------------------------------------------

Regards,
Juergen

--
Pengutronix e.K.                              | Juergen Beisert
|
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
|



--=20

_______________________________
*Kamel BOUHARA*
62 Bis Rue Carnot
60610 Lacroix Saint-Ouen

Tel :  +33617832904

--e89a8f234ab5791bcf04bbed0907
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Juergen,<div><br></div><div>Ok, it light me on the way that my board don=
&#39;t use an eeprom to set the FEC address so I probably have to fix that =
somewhere ...maybe a macro #define NO_EEPROM or something like that ??</div=
>

<div><br></div><div>Can you, please, show me the <b><i>md -s /dev/phy0</i><=
/b>=A0command output from you mini6410.</div><div><br></div><div>Thanks.<br=
><br><div class=3D"gmail_quote">---------- Message transf=E9r=E9 ----------=
<br>

De=A0: <b class=3D"gmail_sendername">Juergen Beisert</b> <span dir=3D"ltr">=
&lt;<a href=3D"mailto:jbe@pengutronix.de">jbe@pengutronix.de</a>&gt;</span>=
<br>Date=A0: 23 mars 2012 09:22<br>Objet=A0: Re: Network Issue with Mini244=
0<br>=C0=A0: <a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.i=
nfradead.org</a><br>

Cc : Kamel BOUHARA &lt;<a href=3D"mailto:k.bouhara@gmail.com">k.bouhara@gma=
il.com</a>&gt;<br><br><br>Hi Kamel,<br>
<div class=3D"im"><br>
Kamel BOUHARA wrote:<br>
&gt; I&#39;m trying to port the last release of barebox to my sbc2440-III b=
oard with<br>
&gt; the base config. of a mini2440 but unfortunately I&#39;m facing a netw=
ork issue<br>
&gt; when trying to boot from nfs or to load files with tftp.<br>
&gt;<br>
&gt; After checking all the parameters (pll, ram init etc.) I figured out t=
hat<br>
&gt; the chip select and interrupt pinout were not good and I changed them =
to<br>
&gt; fit with my board schematic.<br>
&gt; So I have a well boot on barebox everything seems to work as you can s=
ee<br>
&gt; here :<br>
</div>&gt; [...]<br>
<br>
I changes the DM9000 driver recently. So, I tested both DM9000 revisions I<=
br>
have access to (based on the Barebox&#39;s next branch).<br>
<br>
First on the Mini2440. It comes with a DM9000E:<br>
<br>
---------------------------------------------------------------------------=
<br>
<br>
mini2440:/ tftp barebox-mini2440 /dev/ram0<br>
TFTP from server 192.168.1.7 (&#39;barebox-mini2440&#39; -&gt; &#39;/dev/ra=
m0&#39;)<br>
 =A0 =A0 =A0 =A0#################################<br>
mini2440:/ go /dev/ram0<br>
## Starting application at 0x30000000 ...<br>
<br>
barebox 2012.02.0-00259-g773e35b (Mar 23 2012 - 08:53:16)<br>
<br>
Board: Mini 2440<br>
<div class=3D"im">NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsun=
g NAND 128MiB 3,3V 8-bit)<br>
Bad block table found at page 65472, version 0x01<br>
Bad block table found at page 65408, version 0x01<br>
</div>nand_read_bbt: Bad block at 0x019e0000<br>
nand_read_bbt: Bad block at 0x02540000<br>
dm9000@dm90000: Found DM9000E at i/o: 0x20000300<br>
s3c_mci@mci0: registered as mci0<br>
<div class=3D"im">refclk: =A0 =A012000 kHz<br>
mpll: =A0 =A0 405000 kHz<br>
upll: =A0 =A0 =A048000 kHz<br>
fclk: =A0 =A0 405000 kHz<br>
hclk: =A0 =A0 101250 kHz<br>
pclk: =A0 =A0 =A050625 kHz<br>
SDRAM1: =A0 CL2@101MHz<br>
Malloc space: 0x33a00000 -&gt; 0x33dfffff (size =A04 MB)<br>
Stack space : 0x339f8000 -&gt; 0x33a00000 (size 32 kB)<br>
</div>envfs: wrong magic on /dev/env0<br>
no valid environment found on /dev/env0. Using default environment<br>
running /env/bin/init...<br>
<br>
Hit any key to stop autoboot: =A03<br>
mini2440:/ devinfo eth0<br>
resources:<br>
driver: none<br>
<br>
Parameters:<br>
 =A0 =A0 =A0 =A0 =A0ipaddr =3D 192.168.1.241<br>
 =A0 =A0 =A0 =A0 ethaddr =3D 36:CF:EC:0D:18:Bd<br>
 =A0 =A0 =A0 =A0 gateway =3D &lt;NULL&gt;<br>
 =A0 =A0 =A0 =A0 netmask =3D 255.255.255.0<br>
 =A0 =A0 =A0 =A0serverip =3D 192.168.1.7<br>
mini2440:/ ping 192.168.1.7<br>
<div class=3D"im">phy0: Link is up - 100/Full<br>
</div>host 192.168.1.7 is alive<br>
<br>
---------------------------------------------------------------------------=
<br>
<br>
And here with my Mini6410. This comes with a DM9000A like your system.<br>
<br>
---------------------------------------------------------------------------=
<br>
<br>
barebox 2012.02.0-00259-g773e35b-dirty (Mar 23 2012 - 09:19:48)<br>
<br>
Board: Mini 6410<br>
Will write 0x00021300<br>
<div class=3D"im">dm9000@dm90000: Found DM9000A at i/o: 0x18000300<br>
</div>eth@eth0: got MAC address from EEPROM: 08:90:90:90:90:90<br>
refclk: =A0 =A012000 kHz<br>
apll: =A0 =A0 532000 kHz<br>
mpll: =A0 =A0 532000 kHz<br>
CPU: =A0 =A0 =A0532000 kHz<br>
hclkx2: =A0 266000 kHz<br>
hclk: =A0 =A0 133000 kHz<br>
pclk: =A0 =A0 =A066500 kHz<br>
Malloc space: 0x57bc0000 -&gt; 0x57fbffff (size =A04 MB)<br>
Stack space : 0x57bb8000 -&gt; 0x57bc0000 (size 32 kB)<br>
Open /dev/env0 No such file or directory<br>
no valid environment found on /dev/env0. Using default environment<br>
running /env/bin/init...<br>
<br>
Hit any key to stop autoboot: =A03<br>
mini6410:/ devinfo eth0<br>
resources:<br>
driver: none<br>
<br>
Parameters:<br>
 =A0 =A0 =A0 =A0 =A0ipaddr =3D 192.168.1.187<br>
 =A0 =A0 =A0 =A0 ethaddr =3D 08:90:90:90:90:90<br>
 =A0 =A0 =A0 =A0 gateway =3D 192.168.1.1<br>
 =A0 =A0 =A0 =A0 netmask =3D 255.255.255.0<br>
 =A0 =A0 =A0 =A0serverip =3D 192.168.1.7<br>
mini6410:/ ping 192.168.1.7<br>
<div class=3D"im">phy0: Link is up - 100/Full<br>
</div>host 192.168.1.7 is alive<br>
<br>
---------------------------------------------------------------------------=
<br>
<br>
Regards,<br>
Juergen<br>
<font color=3D"#888888"><br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Linux Solutions for Science and Industry =A0 =A0 =A0| <a href=3D"http://www=
.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =A0|<br>
</font></div><br><br clear=3D"all"><div><br></div>-- <br><br><div>_________=
______________________<br><i><font face=3D"&#39;comic sans ms&#39;, sans-se=
rif">Kamel BOUHARA</font></i></div><div><div>62 Bis Rue Carnot<div>60610 La=
croix Saint-Ouen</div>

<div><br></div><div>Tel :=A0=A0+33617832904</div><div><br></div></div></div=
><br>
</div>

--e89a8f234ab5791bcf04bbed0907--


--===============3987360135091125456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3987360135091125456==--
