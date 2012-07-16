Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqhkh-00066f-IU
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:38:05 +0000
In-Reply-To: <20120716092101.GI30009@pengutronix.de>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
 <20120716092101.GI30009@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OF1A7E21F3.CEBD2AB0-ONC1257A3D.0034CA43-C1257A3D.0034EAA0@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Jul 2012 11:37:59 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1742003629505217873=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: barebox image size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============1742003629505217873==
Content-Type: multipart/alternative; boundary="=_alternative 0034EAA0C1257A3D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 0034EAA0C1257A3D_=
Content-Type: text/plain; charset="US-ASCII"

here it is:

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
    .boot_data.size     = 0x40000,

    .dcd.header.tag     = DCD_HEADER_TAG,
    .dcd.header.length  = cpu_to_be16(sizeof(struct imx_dcd) + 
sizeof(dcd_entry)),
    .dcd.header.version = DCD_VERSION,

    .dcd.command.tag    = DCD_COMMAND_WRITE_TAG,
    .dcd.command.length = cpu_to_be16(sizeof(struct imx_dcd_command) + 
sizeof(dcd_entry)),
    .dcd.command.param  = DCD_COMMAND_WRITE_PARAM,
};


there is another struct:

struct imx_fcb_header __flash_header_fcb fcb_entry =
{
    .fcb_marker = 0x20424346,
    .fcb_version = 0x01,
    .st_pg_prm = 0x0,
    .st_pg_sec = 0x0,
    .reserved3[0] = 0x6b,
    .reserved3[1] = 0x6b,
    .st_pg_dbbt = 0x0,
    .bbm_off_main = 0x0,
    .bi_swap = 0x0,
    .bbm_off_spare = 0x0,
};



Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  16.07.2012 11:21
Betreff:        Re: Antwort: Re: barebox image size



On Mon, Jul 16, 2012 at 11:15:24AM +0200, christian.buettner@rafi.de 
wrote:
> 
> imx_nand_load_image() is never used in my imx53 board init code.. is 
this 
> the fault?
> 

On i.MX53 there might be a similar issue. You probably have something
like this in your board:

struct imx_flash_header_v2 __flash_header_section flash_header = {
                 .header.tag                             = IVT_HEADER_TAG,
                 .header.length                          = 
cpu_to_be16(32),
                 .header.version                                 = 
IVT_VERSION,

                 .entry                                          = 
APP_DEST + 0x1000,
                 .dcd_ptr                                = APP_DEST + 
0x400 + offsetof(struct imx_flash_header_v2, dcd),
                 .boot_data_ptr                          = APP_DEST + 
0x400 + offsetof(struct imx_flash_header_v2, boot_data),
                 .self                                           = 
APP_DEST + 0x400,

                 .boot_data.start                = APP_DEST,
                 .boot_data.size                                 = 
DCD_BAREBOX_SIZE,

.boot_data.size is the interesting field. What do you have here?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 0034EAA0C1257A3D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">here it is:</font>
<br>
<br><font size=2 face="sans-serif">struct imx_flash_header_v2 __flash_header_section
flash_header =</font>
<br><font size=2 face="sans-serif">{</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .header.tag &nbsp; &nbsp;
&nbsp; &nbsp; = IVT_HEADER_TAG,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .header.length &nbsp;
&nbsp; &nbsp;= cpu_to_be16(32),</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .header.version &nbsp;
&nbsp; = IVT_VERSION,</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .entry &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;= APP_DEST + 0x1000,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd_ptr &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2,
dcd),</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .boot_data_ptr &nbsp;
&nbsp; &nbsp;= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2,
boot_data),</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .self &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; = APP_DEST + 0x400,</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .boot_data.start &nbsp;
&nbsp;= APP_DEST,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .boot_data.size &nbsp;
&nbsp; = 0x40000,</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.header.tag &nbsp;
&nbsp; = DCD_HEADER_TAG,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.header.length &nbsp;=
cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.header.version =
DCD_VERSION,</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.command.tag &nbsp;
&nbsp;= DCD_COMMAND_WRITE_TAG,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.command.length =
cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .dcd.command.param &nbsp;=
DCD_COMMAND_WRITE_PARAM,</font>
<br><font size=2 face="sans-serif">};</font>
<br>
<br>
<br><font size=2 face="sans-serif">there is another struct:</font>
<br>
<br><font size=2 face="sans-serif">struct imx_fcb_header __flash_header_fcb
fcb_entry =</font>
<br><font size=2 face="sans-serif">{</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .fcb_marker = 0x20424346,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .fcb_version = 0x01,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .st_pg_prm = 0x0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .st_pg_sec = 0x0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .reserved3[0] = 0x6b,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .reserved3[1] = 0x6b,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .st_pg_dbbt = 0x0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .bbm_off_main = 0x0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .bi_swap = 0x0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .bbm_off_spare = 0x0,</font>
<br><font size=2 face="sans-serif">};</font>
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
&nbsp;</font><font size=1 face="sans-serif">16.07.2012 11:21</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Antwort:
Re: barebox image size</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Mon, Jul 16, 2012 at 11:15:24AM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; <br>
&gt; imx_nand_load_image() is never used in my imx53 board init code..
is this <br>
&gt; the fault?<br>
&gt; <br>
<br>
On i.MX53 there might be a similar issue. You probably have something<br>
like this in your board:<br>
<br>
struct imx_flash_header_v2 __flash_header_section flash_header = {<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.header.tag &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
IVT_HEADER_TAG,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.header.length &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;= cpu_to_be16(32),<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.header.version &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;= IVT_VERSION,<br>
<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.entry &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
= APP_DEST + 0x1000,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.dcd_ptr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.boot_data_ptr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2,
boot_data),<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.self &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
= APP_DEST + 0x400,<br>
<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.boot_data.start &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; = APP_DEST,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
.boot_data.size &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;= DCD_BAREBOX_SIZE,<br>
<br>
.boot_data.size is the interesting field. What do you have here?<br>
<br>
Sascha<br>
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
--=_alternative 0034EAA0C1257A3D_=--


--===============1742003629505217873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1742003629505217873==--
