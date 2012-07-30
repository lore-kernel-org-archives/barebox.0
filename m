Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Svl8l-0003Ed-U0
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 08:15:48 +0000
In-Reply-To: <CAJfOKBxTC9xYq4q1dnoXaZG-46ZmT=BaJtvEQTtWFtYhQ9qZMw@mail.gmail.com>
References: <OFEAC6280E.37553221-ONC1257A46.004F6310-C1257A46.004FD422@o0802.rafi.inhouse>
 <CAJfOKBzrkLQBtFWFJ7AbVgiud_EwMA+XEY8BWRgV73iAkOZH-Q@mail.gmail.com>	<OF4FD5BF60.200AA89F-ONC1257A4B.002BAA8E-C1257A4B.002C07FC@o0802.rafi.inhouse>
 <CAJfOKBxTC9xYq4q1dnoXaZG-46ZmT=BaJtvEQTtWFtYhQ9qZMw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <OF74138D54.DAC25BC1-ONC1257A4B.002D3B44-C1257A4B.002D6334@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 30 Jul 2012 10:15:45 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3788300673183781107=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Re: nor flash board init code
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============3788300673183781107==
Content-Type: multipart/alternative; boundary="=_alternative 002D6334C1257A4B_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 002D6334C1257A4B_=
Content-Type: text/plain; charset="US-ASCII"

Whooosch and it worked!

devinfo 
devices:
...
`---- mem1
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- i2c-imx2
`---- imx_spi0
     `---- m25p0
`---- fec_imx0
     `---- miidev0
...

barebox:/ devinfo m25p0
resources:
driver: none

no parameters available
barebox:/ 

But why is driver in devinfo = none?

christian


Von:    Franck Jullien <franck.jullien@gmail.com>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  30.07.2012 10:07
Betreff:        Re: Re: nor flash board init code



Hi,

2012/7/30 <christian.buettner@rafi.de>
>
> Thanks for the code!
>
> Here is my approach:
>
> const struct flash_platform_data tx53_flash = {
>     .type       = "mx25l8005",
>     .name       = "spi_flash",
> };
>
>
> //MX25L8005MC-15G
> static const struct spi_board_info mx53_spi_board_info[] = {
>         {
>                 .name = "mx25l8005",


Here sould be the driver name: .name = "m25p",

>
>                 .max_speed_hz = 70000000,
>                 .bus_num = 0,
>                 .chip_select = 0,
>                 .bits_per_word = 8,
>                 .mode = SPI_MODE_0,
>                 .platform_data = &tx53_flash,
>         },
> };
>
> static struct spi_imx_master tx53_spi = {
>                 .num_chipselect = 1,
> };
>
>
> init_devices {
>
> ...
>     spi_register_board_info(mx53_spi_board_info,
>                     ARRAY_SIZE(mx53_spi_board_info));
>
>     add_generic_device("m25p",-1,"m25p",MX53_ECSPI1_BASE_ADDR,64 * 
1024,IORESOURCE_MEM,&mx53_spi_board_info);

You have to add the SPI master device here. The m25p device will be
probed automagically (AFAIR).


>
> ...
> }
>
>
> When the m25p80.c driver probes i get no spi instance:
>
> static int m25p_probe(struct device_d *dev) {
>         struct spi_device *spi = (struct spi_device *)dev->type_data;
>         const struct spi_device_id        *id = NULL;
> ...
> }
>
> struct spi_device *spi is always null
>
> Whats wrong here?
>
> christian
>
>
>
> Von:        Franck Jullien <franck.jullien@gmail.com>
> An:        christian.buettner@rafi.de,
> Kopie:        barebox@lists.infradead.org
> Datum:        27.07.2012 13:33
> Betreff:        Re: nor flash board init code
> ________________________________
>
>
>
> 2012/7/25 <christian.buettner@rafi.de>
> >
> > hi all,
> > is there any example board init code to load the mx25l8005 spi 
nor-flash through the imx53 (TX53 from KARO)?
> > I want to use the m25p80 driver to read and write.
> >
> > christian
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
> Hi Christian,
>
> This is what I use with the Altera SPI controller + an SPI flash device:
>
> 
http://www.elec4fun.fr/index.php?option=com_content&view=article&id=10&Itemid=153

>
> static struct spi_altera_master altera_spi_0_data = {
>      .num_chipselect = 1,
>      .spi_mode = 0,      /* SPI mode of the EPCS flash controller */
>      .databits = 8,      /* Data length of the EPCS flash controller */
>      .speed = 20000000,  /* EPCS flash controller speed */
> };
>
>
> static struct flash_platform_data epcs_flash = {
>      .name = "epcs",    /* Cdev name, optional */
>      .type = "m25p40",  /* Device type, required for non JEDEC chips */
> };
>
> static struct spi_board_info generic_spi_board_info[] = {
>      {
>            .name = "m25p",
>            .max_speed_hz = 20000000,
>            .bus_num = 0,
>            .chip_select = 0,
>            .bits_per_word = 8,
>            .mode = SPI_MODE_0,
>            .platform_data = &epcs_flash,
>      }
> };
>
> static int myboard_devices_init(void) {
>
> ...
>
> spi_register_board_info(myboard_spi_board_info,
> ARRAY_SIZE(myboard_spi_board_info));
>
> add_generic_device("altera_spi", -1, NULL, NIOS_SOPC_EPCS_BASE, 0x18,
>                    IORESOURCE_MEM, &altera_spi_0_data);
>
> ...
>
> Franck.
>

Franck.


--=_alternative 002D6334C1257A4B_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Whooosch and it worked!</font>
<br>
<br><font size=2 face="sans-serif">devinfo </font>
<br><font size=2 face="sans-serif">devices:</font>
<br><font size=2 face="sans-serif">...</font>
<br><font size=2 face="sans-serif">`---- mem1</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0xfffffffe:
/dev/mem</font>
<br><font size=2 face="sans-serif">`---- i2c-imx2</font>
<br><font size=2 face="sans-serif">`---- imx_spi0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- m25p0</font>
<br><font size=2 face="sans-serif">`---- fec_imx0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- miidev0</font>
<br><font size=2 face="sans-serif">...</font>
<br>
<br><font size=2 face="sans-serif">barebox:/ devinfo m25p0</font>
<br><font size=2 face="sans-serif">resources:</font>
<br><font size=2 face="sans-serif">driver: none</font>
<br>
<br><font size=2 face="sans-serif">no parameters available</font>
<br><font size=2 face="sans-serif">barebox:/ </font>
<br>
<br><font size=2 face="sans-serif">But why is driver in devinfo = none?</font>
<br>
<br><font size=2 face="sans-serif">christian</font>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Franck Jullien &lt;franck.jullien@gmail.com&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">30.07.2012 10:07</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Re: nor
flash board init code</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>Hi,<br>
<br>
2012/7/30 &lt;christian.buettner@rafi.de&gt;<br>
&gt;<br>
&gt; Thanks for the code!<br>
&gt;<br>
&gt; Here is my approach:<br>
&gt;<br>
&gt; const struct flash_platform_data tx53_flash = {<br>
&gt; &nbsp; &nbsp; .type &nbsp; &nbsp; &nbsp; = &quot;mx25l8005&quot;,<br>
&gt; &nbsp; &nbsp; .name &nbsp; &nbsp; &nbsp; = &quot;spi_flash&quot;,<br>
&gt; };<br>
&gt;<br>
&gt;<br>
&gt; //MX25L8005MC-15G<br>
&gt; static const struct spi_board_info mx53_spi_board_info[] = {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .name = &quot;mx25l8005&quot;,<br>
<br>
<br>
Here sould be the driver name: .name = &quot;m25p&quot;,<br>
<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .max_speed_hz
= 70000000,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .bus_num =
0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .chip_select
= 0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .bits_per_word
= 8,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .mode = SPI_MODE_0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .platform_data
= &amp;tx53_flash,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; },<br>
&gt; };<br>
&gt;<br>
&gt; static struct spi_imx_master tx53_spi = {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .num_chipselect
= 1,<br>
&gt; };<br>
&gt;<br>
&gt;<br>
&gt; init_devices {<br>
&gt;<br>
&gt; ...<br>
&gt; &nbsp; &nbsp; spi_register_board_info(mx53_spi_board_info,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
ARRAY_SIZE(mx53_spi_board_info));<br>
&gt;<br>
&gt; &nbsp; &nbsp; add_generic_device(&quot;m25p&quot;,-1,&quot;m25p&quot;,MX53_ECSPI1_BASE_ADDR,64
* 1024,IORESOURCE_MEM,&amp;mx53_spi_board_info);<br>
<br>
You have to add the SPI master device here. The m25p device will be<br>
probed automagically (AFAIR).<br>
<br>
<br>
&gt;<br>
&gt; ...<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; When the m25p80.c driver probes i get no spi instance:<br>
&gt;<br>
&gt; static int m25p_probe(struct device_d *dev) {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; struct spi_device *spi = (struct spi_device
*)dev-&gt;type_data;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; const struct spi_device_id &nbsp; &nbsp;
&nbsp; &nbsp;*id = NULL;<br>
&gt; ...<br>
&gt; }<br>
&gt;<br>
&gt; struct spi_device *spi is always null<br>
&gt;<br>
&gt; Whats wrong here?<br>
&gt;<br>
&gt; christian<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Von: &nbsp; &nbsp; &nbsp; &nbsp;Franck Jullien &lt;franck.jullien@gmail.com&gt;<br>
&gt; An: &nbsp; &nbsp; &nbsp; &nbsp;christian.buettner@rafi.de,<br>
&gt; Kopie: &nbsp; &nbsp; &nbsp; &nbsp;barebox@lists.infradead.org<br>
&gt; Datum: &nbsp; &nbsp; &nbsp; &nbsp;27.07.2012 13:33<br>
&gt; Betreff: &nbsp; &nbsp; &nbsp; &nbsp;Re: nor flash board init code<br>
&gt; ________________________________<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2012/7/25 &lt;christian.buettner@rafi.de&gt;<br>
&gt; &gt;<br>
&gt; &gt; hi all,<br>
&gt; &gt; is there any example board init code to load the mx25l8005 spi
nor-flash through the imx53 (TX53 from KARO)?<br>
&gt; &gt; I want to use the m25p80 driver to read and write.<br>
&gt; &gt;<br>
&gt; &gt; christian<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; barebox mailing list<br>
&gt; &gt; barebox@lists.infradead.org<br>
&gt; &gt; </font></tt><a href=http://lists.infradead.org/mailman/listinfo/barebox><tt><font size=2>http://lists.infradead.org/mailman/listinfo/barebox</font></tt></a><tt><font size=2><br>
&gt; &gt;<br>
&gt;<br>
&gt; Hi Christian,<br>
&gt;<br>
&gt; This is what I use with the Altera SPI controller + an SPI flash device:<br>
&gt;<br>
&gt; </font></tt><a href="http://www.elec4fun.fr/index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=153"><tt><font size=2>http://www.elec4fun.fr/index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=153</font></tt></a><tt><font size=2><br>
&gt;<br>
&gt; static struct spi_altera_master altera_spi_0_data = {<br>
&gt; &nbsp; &nbsp; &nbsp;.num_chipselect = 1,<br>
&gt; &nbsp; &nbsp; &nbsp;.spi_mode = 0, &nbsp; &nbsp; &nbsp;/* SPI mode
of the EPCS flash controller */<br>
&gt; &nbsp; &nbsp; &nbsp;.databits = 8, &nbsp; &nbsp; &nbsp;/* Data length
of the EPCS flash controller */<br>
&gt; &nbsp; &nbsp; &nbsp;.speed = 20000000, &nbsp;/* EPCS flash controller
speed */<br>
&gt; };<br>
&gt;<br>
&gt;<br>
&gt; static struct flash_platform_data epcs_flash = {<br>
&gt; &nbsp; &nbsp; &nbsp;.name = &quot;epcs&quot;, &nbsp; &nbsp;/* Cdev
name, optional */<br>
&gt; &nbsp; &nbsp; &nbsp;.type = &quot;m25p40&quot;, &nbsp;/* Device type,
required for non JEDEC chips */<br>
&gt; };<br>
&gt;<br>
&gt; static struct spi_board_info generic_spi_board_info[] = {<br>
&gt; &nbsp; &nbsp; &nbsp;{<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.name = &quot;m25p&quot;,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_speed_hz = 20000000,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.bus_num = 0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.chip_select = 0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.bits_per_word = 8,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.mode = SPI_MODE_0,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.platform_data = &amp;epcs_flash,<br>
&gt; &nbsp; &nbsp; &nbsp;}<br>
&gt; };<br>
&gt;<br>
&gt; static int myboard_devices_init(void) {<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt; spi_register_board_info(myboard_spi_board_info,<br>
&gt; ARRAY_SIZE(myboard_spi_board_info));<br>
&gt;<br>
&gt; add_generic_device(&quot;altera_spi&quot;, -1, NULL, NIOS_SOPC_EPCS_BASE,
0x18,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IORESOURCE_MEM,
&amp;altera_spi_0_data);<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt; Franck.<br>
&gt;<br>
<br>
Franck.<br>
</font></tt>
<br>
--=_alternative 002D6334C1257A4B_=--


--===============3788300673183781107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3788300673183781107==--
