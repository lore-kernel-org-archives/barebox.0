Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr4Xb-0001I1-F1
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 09:58:06 +0000
In-Reply-To: <2711184.rUQpv2fWDx@dev1>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
 <2711184.rUQpv2fWDx@dev1>
MIME-Version: 1.0
Message-ID: <OFD0402E5D.322F9E54-ONC1257A3E.00363476-C1257A3E.0036BF7D@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Tue, 17 Jul 2012 11:58:00 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7305287643886488206=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============7305287643886488206==
Content-Type: multipart/alternative; boundary="=_alternative 0036BF7DC1257A3E_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 0036BF7DC1257A3E_=
Content-Type: text/plain; charset="US-ASCII"

ok i was able to preceed a little. The new error message after booting is:

barebox 2012.03.0-dirty (Jul 17 2012 - 11:36:47)

Board: RAFI i.MX53
eth@eth0: got MAC address from EEPROM: ********
NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 
3,3V 8-bit)
Bad block table found at page 65472, version 0x01
Bad block table found at page 65408, version 0x01
nand_read_bbt: Bad block at 0x060a0000
Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB)
Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB)
envfs: wrong magic on /dev/env0
running /env/bin/init...
not found
barebox:/ 


current settings are:

flash_header.c
struct imx_flash_header_v2 __flash_header_section flash_header =
{
    .header.tag         = IVT_HEADER_TAG,
    .header.length      = cpu_to_be16(32),
    .header.version     = IVT_VERSION,

    .entry              = APP_DEST + 0x1000,
    .dcd_ptr            = APP_DEST + 0x400 + offsetof(struct 
imx_flash_header_v2, dcd),
    .boot_data_ptr      = APP_DEST + 0x400 + offsetof(struct 
imx_flash_header_v2, boot_data),
    .self               = APP_DEST + 0x400,

    .boot_data.start    = APP_DEST,
    .boot_data.size     = 0x80000,

    .dcd.header.tag     = DCD_HEADER_TAG,
    .dcd.header.length  = cpu_to_be16(sizeof(struct imx_dcd) + sizeof
(dcd_entry)),
    .dcd.header.version = DCD_VERSION,

    .dcd.command.tag    = DCD_COMMAND_WRITE_TAG,
    .dcd.command.length = cpu_to_be16(sizeof(struct imx_dcd_command) + 
sizeof(dcd_entry)),
    .dcd.command.param  = DCD_COMMAND_WRITE_PARAM,
};


Environment config
nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),120M(root)"


board_init.c
devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self0");
devfs_add_partition("nand0", 0x80000, 0x80000, PARTITION_FIXED, "env0");


seems like the enviroment.c->envfs_load() looks into a wrong memory area.
Is there a Setting i forgot?

- christian




Von:    Marc Reilly <marc@cpdesign.com.au>
An:     barebox@lists.infradead.org, 
Kopie:  christian.buettner@rafi.de, Sascha Hauer <s.hauer@pengutronix.de>
Datum:  17.07.2012 00:34
Betreff:        Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image 
size
Gesendet von:   Marc Reilly <marc.reilly@gmail.com>



Hi,

> I flashed from 0x0 to 0x7FFFF (image size: 479K).
> I flashed the environment image (image size: 3K) from 0x80000 to 0xFFFFF
Her you write 512k for env

> and changed the config code from barebox/environs/common/config to:
> 
> ...
> nand_parts="512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)"
And here you say its 786k.

Cheers,
Marc



--=_alternative 0036BF7DC1257A3E_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">ok i was able to preceed a little. The
new error message after booting is:</font>
<br>
<br><font size=2 face="sans-serif">barebox 2012.03.0-dirty (Jul 17 2012
- 11:36:47)</font>
<br>
<br><font size=2 face="sans-serif">Board: RAFI i.MX53</font>
<br><font size=2 face="sans-serif">eth@eth0: got MAC address from EEPROM:
********</font>
<br><font size=2 face="sans-serif">NAND device: Manufacturer ID: 0xec,
Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V 8-bit)</font>
<br><font size=2 face="sans-serif">Bad block table found at page 65472,
version 0x01</font>
<br><font size=2 face="sans-serif">Bad block table found at page 65408,
version 0x01</font>
<br><font size=2 face="sans-serif">nand_read_bbt: Bad block at 0x060a0000</font>
<br><font size=2 face="sans-serif">Malloc space: 0x7df00000 -&gt; 0x7fefffff
(size 32 MB)</font>
<br><font size=2 face="sans-serif">Stack space : 0x7def8000 -&gt; 0x7df00000
(size 32 kB)</font>
<br><font size=2 face="sans-serif">envfs: wrong magic on /dev/env0</font>
<br><font size=2 face="sans-serif">running /env/bin/init...</font>
<br><font size=2 face="sans-serif">not found</font>
<br><font size=2 face="sans-serif">barebox:/ </font>
<br>
<br>
<br><font size=2 face="sans-serif">current settings are:</font>
<br>
<br><font size=2 face="sans-serif"><b><u>flash_header.c</u></b></font>
<br><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_flash_header_v2 __flash_header_section flash_header =</font>
<br><font size=2 face="Sans">{</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.tag
&nbsp; &nbsp; &nbsp; &nbsp; = IVT_HEADER_TAG,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.length
&nbsp; &nbsp; &nbsp;= cpu_to_be16(32),</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.version
&nbsp; &nbsp; = IVT_VERSION,</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">entry</font><font size=2 face="Sans">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= APP_DEST + 0x1000,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd_ptr</font><font size=2 face="Sans">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= APP_DEST + 0x400 + offsetof(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_flash_header_v2, </font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">),</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">boot_data_ptr</font><font size=2 face="Sans">
&nbsp; &nbsp; &nbsp;= APP_DEST + 0x400 + offsetof(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_flash_header_v2, </font><font size=2 color=#0021bf face="Sans">boot_data</font><font size=2 face="Sans">),</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">self</font><font size=2 face="Sans">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = APP_DEST + 0x400,</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">boot_data</font><font size=2 face="Sans">.start
&nbsp; &nbsp;= APP_DEST,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">boot_data</font><font size=2 face="Sans">.size
&nbsp; &nbsp; = 0x80000,</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">.</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.tag
&nbsp; &nbsp; = DCD_HEADER_TAG,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">.</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.length
&nbsp;= cpu_to_be16(</font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_dcd) + </font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(dcd_entry)),</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">.</font><font size=2 color=#0021bf face="Sans">header</font><font size=2 face="Sans">.version
= DCD_VERSION,</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">.command.tag
&nbsp; &nbsp;= DCD_COMMAND_WRITE_TAG,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">dcd</font><font size=2 face="Sans">.command.length
= cpu_to_be16(</font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_dcd_command) + </font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(dcd_entry)),</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#2f2f2f face="Sans"><u>dcd</u></font><font size=2 face="Sans">.command.param
&nbsp;= DCD_COMMAND_WRITE_PARAM,</font>
<br><font size=2 face="Sans">};</font>
<br>
<br>
<br><font size=2 face="Sans"><b><u>Environment config</u></b></font>
<br><font size=2 face="Sans">nand_parts=&quot;512k(</font><font size=2 color=#2f2f2f face="Sans"><u>barebox</u></font><font size=2 face="Sans">)</font><font size=2 color=#2f2f2f face="Sans"><u>ro</u></font><font size=2 face="Sans">,512k(</font><font size=2 color=#2f2f2f face="Sans"><u>bareboxenv</u></font><font size=2 face="Sans">),4M(kernel),120M(root)&quot;</font>
<br>
<br>
<br><font size=2 face="Sans"><b><u>board_init.c</u></b></font>
<br><font size=2 face="Sans">devfs_add_partition(</font><font size=2 color=#4200ff face="Sans">&quot;nand0&quot;</font><font size=2 face="Sans">,
0x00000, 0x80000, PARTITION_FIXED, </font><font size=2 color=#4200ff face="Sans">&quot;self0&quot;</font><font size=2 face="Sans">);</font>
<br><font size=2 face="Sans">devfs_add_partition(</font><font size=2 color=#4200ff face="Sans">&quot;nand0&quot;</font><font size=2 face="Sans">,
0x80000, 0x80000, PARTITION_FIXED, </font><font size=2 color=#4200ff face="Sans">&quot;env0&quot;</font><font size=2 face="Sans">);</font>
<br>
<br>
<br><font size=2 face="Sans">seems like the enviroment.c-&gt;envfs_load()
looks into a wrong memory area.</font>
<br><font size=2 face="Sans">Is there a Setting i forgot?</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
<br>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Marc Reilly &lt;marc@cpdesign.com.au&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de,
Sascha Hauer &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">17.07.2012 00:34</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Antwort:
Re: Antwort: Re: Antwort: Re: barebox image size</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Gesendet von: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Marc Reilly
&lt;marc.reilly@gmail.com&gt;</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>Hi,<br>
<br>
&gt; I flashed from 0x0 to 0x7FFFF (image size: 479K).<br>
&gt; I flashed the environment image (image size: 3K) from 0x80000 to 0xFFFFF<br>
Her you write 512k for env<br>
<br>
&gt; and changed the config code from barebox/environs/common/config to:<br>
&gt; <br>
&gt; ...<br>
&gt; nand_parts=&quot;512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)&quot;<br>
And here you say its 786k.<br>
<br>
Cheers,<br>
Marc<br>
<br>
</font></tt>
<br>
--=_alternative 0036BF7DC1257A3E_=--


--===============7305287643886488206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7305287643886488206==--
