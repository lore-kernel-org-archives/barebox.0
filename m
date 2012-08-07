Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SykEe-0003lW-SO
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 13:54:14 +0000
In-Reply-To: <20120803132150.GQ1451@pengutronix.de>
References: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
 <20120803132150.GQ1451@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OFE58D2330.43420520-ONC1257A53.004C42AA-C1257A53.004C5EFF@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Tue, 7 Aug 2012 15:54:10 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5272578004831468303=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: boot init code depending on i2c eeprom value
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============5272578004831468303==
Content-Type: multipart/alternative; boundary="=_alternative 004C5EFDC1257A53_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004C5EFDC1257A53_=
Content-Type: text/plain; charset="US-ASCII"

Thanks..

it worked! 



Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  03.08.2012 15:21
Betreff:        Re: boot init code depending on i2c eeprom value



On Fri, Aug 03, 2012 at 10:06:28AM +0200, christian.buettner@rafi.de 
wrote:
> Hi all,
> 
> i need to set the pin-mux of the board init code depending on an ID 
coming 
> from 
> an i2C EEPROM of the board.
> Is it possible to do something like this:
> 
> 
> ...
> 
> //Using the e.g. the postcore_initcall phase to init i2C
> static int
> ecuv6_postcore_init(void)
> {
>         //Set I2C EEPROM (24C32R) PIN MUX
>         mxc_iomux_v3_setup_multiple_pads(i2c_eeprom_pads, 
> ARRAY_SIZE(i2c_eeprom_pads));
>         imx53_add_i2c2(NULL);
>         return 0;
> }
> postcore_initcall(ecuv6_postcore_init);
> 
> //In the console_initcall phase, i2C should be probed to read ID
> static int
> ecuv6_console_init(void)
> {
>         imx53_init_lowlevel(0);
>         ecuv6_set_system_serial();
> 
>         //get_bb_pcb_number reads data from 
>         char bb_ID;
>         bb_ID = get_i2c_ID();
> 
>         //Set Pinmux depending on i2C result
>         if(bb_ID = 0xAB) {
>                 mxc_iomux_v3_setup_multiple_pads(AB_pads, ARRAY_SIZE(
> AB_pads));
>         }
>         else if(bb_ID = 0xCD) {
>                 mxc_iomux_v3_setup_multiple_pads(CD_pads, ARRAY_SIZE(
> CD_pads));
>         }
> 
>         imx53_add_uart0();
> 
>         return 0;
> }
> console_initcall(ecuv6_console_init);
> 
> ...
> 
> 
> Actually this is not working. The i2c_imx:i2c_imx_probe(..) function 
gets 
> called later.
> Is there a way or concept to do something like this?

You must call get_i2c_ID after registering the i2c device. you can call
mxc_iomux_v3_setup_multiple_pads multiple times, i.e. once for the UART
pins in console_init and once later when you know what hardware you
have.
This of cause does not work when your console pins depend on the
hardware version, in this case you must register your console in a
device_initcall later.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 004C5EFDC1257A53_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Thanks..</font>
<br>
<br><font size=2 face="sans-serif">it worked! </font>
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
&nbsp;</font><font size=1 face="sans-serif">03.08.2012 15:21</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: boot init
code depending on i2c eeprom value</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Fri, Aug 03, 2012 at 10:06:28AM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; i need to set the pin-mux of the board init code depending on an ID
coming <br>
&gt; from <br>
&gt; an i2C EEPROM of the board.<br>
&gt; Is it possible to do something like this:<br>
&gt; <br>
&gt; <br>
&gt; ...<br>
&gt; <br>
&gt; //Using the e.g. the postcore_initcall phase to init i2C<br>
&gt; static int<br>
&gt; ecuv6_postcore_init(void)<br>
&gt; {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; //Set I2C EEPROM (24C32R) PIN MUX<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(i2c_eeprom_pads,
<br>
&gt; ARRAY_SIZE(i2c_eeprom_pads));<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; imx53_add_i2c2(NULL);<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; return 0;<br>
&gt; }<br>
&gt; postcore_initcall(ecuv6_postcore_init);<br>
&gt; <br>
&gt; //In the console_initcall phase, i2C should be probed to read ID<br>
&gt; static int<br>
&gt; ecuv6_console_init(void)<br>
&gt; {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; imx53_init_lowlevel(0);<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; ecuv6_set_system_serial();<br>
&gt; &nbsp;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; //get_bb_pcb_number reads data from <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; char bb_ID;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; bb_ID = get_i2c_ID();<br>
&gt; <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; //Set Pinmux depending on i2C result<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; if(bb_ID = 0xAB) {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(AB_pads,
ARRAY_SIZE(<br>
&gt; AB_pads));<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; else if(bb_ID = 0xCD) {<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(CD_pads,
ARRAY_SIZE(<br>
&gt; CD_pads));<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&gt; &nbsp;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; imx53_add_uart0();<br>
&gt; <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; return 0;<br>
&gt; }<br>
&gt; console_initcall(ecuv6_console_init);<br>
&gt; <br>
&gt; ...<br>
&gt; <br>
&gt; <br>
&gt; Actually this is not working. The i2c_imx:i2c_imx_probe(..) function
gets <br>
&gt; called later.<br>
&gt; Is there a way or concept to do something like this?<br>
<br>
You must call get_i2c_ID after registering the i2c device. you can call<br>
mxc_iomux_v3_setup_multiple_pads multiple times, i.e. once for the UART<br>
pins in console_init and once later when you know what hardware you<br>
have.<br>
This of cause does not work when your console pins depend on the<br>
hardware version, in this case you must register your console in a<br>
device_initcall later.<br>
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
--=_alternative 004C5EFDC1257A53_=--


--===============5272578004831468303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5272578004831468303==--
