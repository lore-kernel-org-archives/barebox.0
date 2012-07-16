Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqkFW-0004Lx-Oo
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 12:18:05 +0000
In-Reply-To: <20120716103054.GJ30009@pengutronix.de>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
 <20120716092101.GI30009@pengutronix.de>
 <OF1A7E21F3.CEBD2AB0-ONC1257A3D.0034CA43-C1257A3D.0034EAA0@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Jul 2012 14:17:50 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2660892261632605828=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============2660892261632605828==
Content-Type: multipart/alternative; boundary="=_alternative 00438D25C1257A3D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00438D25C1257A3D_=
Content-Type: text/plain; charset="US-ASCII"

ok i can boot now! Thank you!

I flashed from 0x0 to 0x7FFFF (image size: 479K).
I flashed the environment image (image size: 3K) from 0x80000 to 0xFFFFF 
and changed the config code from barebox/environs/common/config to:

...
nand_parts="512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)"
...

Barebox can boot now but the startup log says:
barebox 2012.03.0-dirty (Jul 16 2012 - 09:01:01)

Board: i.MX53
eth@eth0: got MAC address from EEPROM: *********************
nand_get_flash_type: second ID read did not match ef,ef against c0,c0
No NAND device found (-19)!
Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB)
Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB)
Open /dev/env0 No such file or directory
running /env/bin/init...
not found
barebox:/ 

How can i get the environment loaded?

- christian




Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  16.07.2012 12:30
Betreff:        Re: Antwort: Re: Antwort: Re: barebox image size



On Mon, Jul 16, 2012 at 11:37:59AM +0200, christian.buettner@rafi.de 
wrote:
> here it is:
> 
> struct imx_flash_header_v2 __flash_header_section flash_header =
> {
>     .header.tag         = IVT_HEADER_TAG,
>     .header.length      = cpu_to_be16(32),
>     .header.version     = IVT_VERSION,
> 
>     .entry              = APP_DEST + 0x1000,
>     .dcd_ptr            = APP_DEST + 0x400 + offsetof(struct 
> imx_flash_header_v2, dcd),
>     .boot_data_ptr      = APP_DEST + 0x400 + offsetof(struct 
> imx_flash_header_v2, boot_data),
>     .self               = APP_DEST + 0x400,
> 
>     .boot_data.start    = APP_DEST,
>     .boot_data.size     = 0x40000,

And here you have the magic 256k. Please use DCD_BAREBOX_SIZE instead.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 00438D25C1257A3D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">ok i can boot now! Thank you!</font>
<br>
<br><font size=2 face="sans-serif">I flashed from 0x0 to 0x7FFFF (image
size: 479K).</font>
<br><font size=2 face="sans-serif">I flashed the environment image (image
size: 3K) from 0x80000 to 0xFFFFF and changed the config code from barebox/environs/common/config
to:</font>
<br>
<br><font size=2 face="sans-serif">...</font>
<br><font size=2 face="sans-serif">nand_parts=&quot;512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)&quot;</font>
<br><font size=2 face="sans-serif">...</font>
<br>
<br><font size=2 face="sans-serif">Barebox can boot now but the startup
log says:</font>
<br><font size=2 face="sans-serif">barebox 2012.03.0-dirty (Jul 16 2012
- 09:01:01)</font>
<br>
<br><font size=2 face="sans-serif">Board: i.MX53</font>
<br><font size=2 face="sans-serif">eth@eth0: got MAC address from EEPROM:
*********************</font>
<br><font size=2 face="sans-serif">nand_get_flash_type: second ID read
did not match ef,ef against c0,c0</font>
<br><font size=2 face="sans-serif">No NAND device found (-19)!</font>
<br><font size=2 face="sans-serif">Malloc space: 0x7df00000 -&gt; 0x7fefffff
(size 32 MB)</font>
<br><font size=2 face="sans-serif">Stack space : 0x7def8000 -&gt; 0x7df00000
(size 32 kB)</font>
<br><font size=2 face="sans-serif">Open /dev/env0 No such file or directory</font>
<br><font size=2 face="sans-serif">running /env/bin/init...</font>
<br><font size=2 face="sans-serif">not found</font>
<br><font size=2 face="sans-serif">barebox:/ </font>
<br>
<br><font size=2 face="sans-serif">How can i get the environment loaded?</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
<br>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Sascha Hauer &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">16.07.2012 12:30</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Antwort:
Re: Antwort: Re: barebox image size</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Mon, Jul 16, 2012 at 11:37:59AM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; here it is:<br>
&gt; <br>
&gt; struct imx_flash_header_v2 __flash_header_section flash_header =<br>
&gt; {<br>
&gt; &nbsp; &nbsp; .header.tag &nbsp; &nbsp; &nbsp; &nbsp; = IVT_HEADER_TAG,<br>
&gt; &nbsp; &nbsp; .header.length &nbsp; &nbsp; &nbsp;= cpu_to_be16(32),<br>
&gt; &nbsp; &nbsp; .header.version &nbsp; &nbsp; = IVT_VERSION,<br>
&gt; <br>
&gt; &nbsp; &nbsp; .entry &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
APP_DEST + 0x1000,<br>
&gt; &nbsp; &nbsp; .dcd_ptr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
APP_DEST + 0x400 + offsetof(struct <br>
&gt; imx_flash_header_v2, dcd),<br>
&gt; &nbsp; &nbsp; .boot_data_ptr &nbsp; &nbsp; &nbsp;= APP_DEST + 0x400
+ offsetof(struct <br>
&gt; imx_flash_header_v2, boot_data),<br>
&gt; &nbsp; &nbsp; .self &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
= APP_DEST + 0x400,<br>
&gt; <br>
&gt; &nbsp; &nbsp; .boot_data.start &nbsp; &nbsp;= APP_DEST,<br>
&gt; &nbsp; &nbsp; .boot_data.size &nbsp; &nbsp; = 0x40000,<br>
<br>
And here you have the magic 256k. Please use DCD_BAREBOX_SIZE instead.<br>
<br>
Sascha<br>
<br>
<br>
-- <br>
Pengutronix e.K. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
Industrial Linux Solutions &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; | </font></tt><a href=http://www.pengutronix.de/><tt><font size=2>http://www.pengutronix.de/</font></tt></a><tt><font size=2>
&nbsp;|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 &nbsp;
&nbsp;|<br>
Amtsgericht Hildesheim, HRA 2686 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Fax:
&nbsp; +49-5121-206917-5555 |<br>
</font></tt>
<br>
--=_alternative 00438D25C1257A3D_=--


--===============2660892261632605828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2660892261632605828==--
