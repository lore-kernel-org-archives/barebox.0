Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvkuR-0002r7-JE
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 08:01:00 +0000
In-Reply-To: <CAJfOKBzrkLQBtFWFJ7AbVgiud_EwMA+XEY8BWRgV73iAkOZH-Q@mail.gmail.com>
References: <OFEAC6280E.37553221-ONC1257A46.004F6310-C1257A46.004FD422@o0802.rafi.inhouse>
 <CAJfOKBzrkLQBtFWFJ7AbVgiud_EwMA+XEY8BWRgV73iAkOZH-Q@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <OF4FD5BF60.200AA89F-ONC1257A4B.002BAA8E-C1257A4B.002C07FC@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 30 Jul 2012 10:00:56 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8618314439956384819=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: nor flash board init code
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============8618314439956384819==
Content-Type: multipart/alternative; boundary="=_alternative 002C07F7C1257A4B_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 002C07F7C1257A4B_=
Content-Type: text/plain; charset="US-ASCII"

Thanks for the code!

Here is my approach:

const struct flash_platform_data tx53_flash = {
    .type       = "mx25l8005",
    .name       = "spi_flash",
};


//MX25L8005MC-15G
static const struct spi_board_info mx53_spi_board_info[] = {
        {
                .name = "mx25l8005",
                .max_speed_hz = 70000000,
                .bus_num = 0,
                .chip_select = 0,
                .bits_per_word = 8,
                .mode = SPI_MODE_0,
                .platform_data = &tx53_flash,
        },
};

static struct spi_imx_master tx53_spi = {
                .num_chipselect = 1,
};


init_devices {

...
    spi_register_board_info(mx53_spi_board_info,
                    ARRAY_SIZE(mx53_spi_board_info));

    add_generic_device("m25p",-1,"m25p",MX53_ECSPI1_BASE_ADDR,64 * 
1024,IORESOURCE_MEM,&mx53_spi_board_info);

...
}


When the m25p80.c driver probes i get no spi instance:

static int m25p_probe(struct device_d *dev) {
        struct spi_device *spi = (struct spi_device *)dev->type_data;
        const struct spi_device_id      *id = NULL;
...
}

struct spi_device *spi is always null

Whats wrong here?

christian



Von:    Franck Jullien <franck.jullien@gmail.com>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  27.07.2012 13:33
Betreff:        Re: nor flash board init code



2012/7/25 <christian.buettner@rafi.de>
>
> hi all,
> is there any example board init code to load the mx25l8005 spi nor-flash 
through the imx53 (TX53 from KARO)?
> I want to use the m25p80 driver to read and write.
>
> christian
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

Hi Christian,

This is what I use with the Altera SPI controller + an SPI flash device:

http://www.elec4fun.fr/index.php?option=com_content&view=article&id=10&Itemid=153


static struct spi_altera_master altera_spi_0_data = {
      .num_chipselect = 1,
      .spi_mode = 0,      /* SPI mode of the EPCS flash controller */
      .databits = 8,      /* Data length of the EPCS flash controller */
      .speed = 20000000,  /* EPCS flash controller speed */
};


static struct flash_platform_data epcs_flash = {
      .name = "epcs",    /* Cdev name, optional */
      .type = "m25p40",  /* Device type, required for non JEDEC chips */
};

static struct spi_board_info generic_spi_board_info[] = {
      {
            .name = "m25p",
            .max_speed_hz = 20000000,
            .bus_num = 0,
            .chip_select = 0,
            .bits_per_word = 8,
            .mode = SPI_MODE_0,
            .platform_data = &epcs_flash,
      }
};

static int myboard_devices_init(void) {

...

spi_register_board_info(myboard_spi_board_info,
ARRAY_SIZE(myboard_spi_board_info));

add_generic_device("altera_spi", -1, NULL, NIOS_SOPC_EPCS_BASE, 0x18,
                    IORESOURCE_MEM, &altera_spi_0_data);

...

Franck.


--=_alternative 002C07F7C1257A4B_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Thanks for the code!</font>
<br>
<br><font size=2 face="sans-serif">Here is my approach:</font>
<br>
<br><font size=2 face="sans-serif">const struct flash_platform_data tx53_flash
= {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .type &nbsp; &nbsp; &nbsp;
= &quot;mx25l8005&quot;,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; .name &nbsp; &nbsp; &nbsp;
= &quot;spi_flash&quot;,</font>
<br><font size=2 face="sans-serif">};</font>
<br>
<br>
<br><font size=2 face="sans-serif">//MX25L8005MC-15G</font>
<br><font size=2 face="sans-serif">static const struct spi_board_info mx53_spi_board_info[]
= {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .name = &quot;mx25l8005&quot;,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .max_speed_hz = 70000000,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .bus_num = 0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .chip_select = 0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .bits_per_word = 8,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .mode = SPI_MODE_0,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .platform_data = &amp;tx53_flash,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; },</font>
<br><font size=2 face="sans-serif">};</font>
<br>
<br><font size=2 face="sans-serif">static struct spi_imx_master tx53_spi
= {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; .num_chipselect = 1,</font>
<br><font size=2 face="sans-serif">};</font>
<br>
<br>
<br><font size=2 face="sans-serif">init_devices {</font>
<br>
<br><font size=2 face="sans-serif">...</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; spi_register_board_info(mx53_spi_board_info,</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; ARRAY_SIZE(mx53_spi_board_info));</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; add_generic_device(&quot;m25p&quot;,-1,&quot;m25p&quot;,MX53_ECSPI1_BASE_ADDR,64
* 1024,IORESOURCE_MEM,&amp;mx53_spi_board_info);</font>
<br>
<br><font size=2 face="sans-serif">...</font>
<br><font size=2 face="sans-serif">}</font>
<br>
<br>
<br><font size=2 face="sans-serif">When the m25p80.c driver probes i get
no spi instance:</font>
<br>
<br><font size=2 color=#820040 face="Sans"><b>static</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>int</b></font><font size=2 face="Sans">
<b>m25p_probe</b>(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
device_d *dev) {</font>
<br><font size=2 color=#820040 face="Sans"><b>&nbsp; &nbsp; &nbsp; &nbsp;
struct</b></font><font size=2 face="Sans"> spi_device *spi = (</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
spi_device *)dev-&gt;</font><font size=2 color=#0021bf face="Sans">type_data</font><font size=2 face="Sans">;</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>const</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
spi_device_id &nbsp; &nbsp; &nbsp; &nbsp;*id = NULL;</font>
<br><font size=2 face="Sans">...</font>
<br><font size=2 face="Sans">}</font>
<br>
<br><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
spi_device *spi is always null</font>
<br>
<br><font size=2 face="Sans">Whats wrong here?</font>
<br>
<br><font size=2 face="Sans">christian</font>
<br>
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
&nbsp;</font><font size=1 face="sans-serif">27.07.2012 13:33</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: nor flash
board init code</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>2012/7/25 &lt;christian.buettner@rafi.de&gt;<br>
&gt;<br>
&gt; hi all,<br>
&gt; is there any example board init code to load the mx25l8005 spi nor-flash
through the imx53 (TX53 from KARO)?<br>
&gt; I want to use the m25p80 driver to read and write.<br>
&gt;<br>
&gt; christian<br>
&gt; _______________________________________________<br>
&gt; barebox mailing list<br>
&gt; barebox@lists.infradead.org<br>
&gt; </font></tt><a href=http://lists.infradead.org/mailman/listinfo/barebox><tt><font size=2>http://lists.infradead.org/mailman/listinfo/barebox</font></tt></a><tt><font size=2><br>
&gt;<br>
<br>
Hi Christian,<br>
<br>
This is what I use with the Altera SPI controller + an SPI flash device:<br>
<br>
</font></tt><a href="http://www.elec4fun.fr/index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=153"><tt><font size=2>http://www.elec4fun.fr/index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=153</font></tt></a><tt><font size=2><br>
<br>
static struct spi_altera_master altera_spi_0_data = {<br>
 &nbsp; &nbsp; &nbsp;.num_chipselect = 1,<br>
 &nbsp; &nbsp; &nbsp;.spi_mode = 0, &nbsp; &nbsp; &nbsp;/* SPI mode of
the EPCS flash controller */<br>
 &nbsp; &nbsp; &nbsp;.databits = 8, &nbsp; &nbsp; &nbsp;/* Data length
of the EPCS flash controller */<br>
 &nbsp; &nbsp; &nbsp;.speed = 20000000, &nbsp;/* EPCS flash controller
speed */<br>
};<br>
<br>
<br>
static struct flash_platform_data epcs_flash = {<br>
 &nbsp; &nbsp; &nbsp;.name = &quot;epcs&quot;, &nbsp; &nbsp;/* Cdev name,
optional */<br>
 &nbsp; &nbsp; &nbsp;.type = &quot;m25p40&quot;, &nbsp;/* Device type,
required for non JEDEC chips */<br>
};<br>
<br>
static struct spi_board_info generic_spi_board_info[] = {<br>
 &nbsp; &nbsp; &nbsp;{<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.name = &quot;m25p&quot;,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.max_speed_hz = 20000000,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.bus_num = 0,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.chip_select = 0,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.bits_per_word = 8,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.mode = SPI_MODE_0,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.platform_data = &amp;epcs_flash,<br>
 &nbsp; &nbsp; &nbsp;}<br>
};<br>
<br>
static int myboard_devices_init(void) {<br>
<br>
...<br>
<br>
spi_register_board_info(myboard_spi_board_info,<br>
ARRAY_SIZE(myboard_spi_board_info));<br>
<br>
add_generic_device(&quot;altera_spi&quot;, -1, NULL, NIOS_SOPC_EPCS_BASE,
0x18,<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IORESOURCE_MEM,
&amp;altera_spi_0_data);<br>
<br>
...<br>
<br>
Franck.<br>
</font></tt>
<br>
--=_alternative 002C07F7C1257A4B_=--


--===============8618314439956384819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8618314439956384819==--
