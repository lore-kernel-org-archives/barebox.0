Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxCtz-0002tS-OS
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 08:06:32 +0000
MIME-Version: 1.0
Message-ID: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Fri, 3 Aug 2012 10:06:28 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0772411946653200073=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: boot init code depending on i2c eeprom value
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============0772411946653200073==
Content-Type: multipart/alternative; boundary="=_alternative 002C8997C1257A4F_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 002C8997C1257A4F_=
Content-Type: text/plain; charset="US-ASCII"

Hi all,

i need to set the pin-mux of the board init code depending on an ID coming 
from 
an i2C EEPROM of the board.
Is it possible to do something like this:


...

//Using the e.g. the postcore_initcall phase to init i2C
static int
ecuv6_postcore_init(void)
{
        //Set I2C EEPROM (24C32R) PIN MUX
        mxc_iomux_v3_setup_multiple_pads(i2c_eeprom_pads, 
ARRAY_SIZE(i2c_eeprom_pads));
        imx53_add_i2c2(NULL);
        return 0;
}
postcore_initcall(ecuv6_postcore_init);

//In the console_initcall phase, i2C should be probed to read ID
static int
ecuv6_console_init(void)
{
        imx53_init_lowlevel(0);
        ecuv6_set_system_serial();
 
        //get_bb_pcb_number reads data from 
        char bb_ID;
        bb_ID = get_i2c_ID();

        //Set Pinmux depending on i2C result
        if(bb_ID = 0xAB) {
                mxc_iomux_v3_setup_multiple_pads(AB_pads, ARRAY_SIZE(
AB_pads));
        }
        else if(bb_ID = 0xCD) {
                mxc_iomux_v3_setup_multiple_pads(CD_pads, ARRAY_SIZE(
CD_pads));
        }
 
        imx53_add_uart0();

        return 0;
}
console_initcall(ecuv6_console_init);

...


Actually this is not working. The i2c_imx:i2c_imx_probe(..) function gets 
called later.
Is there a way or concept to do something like this?

christian
--=_alternative 002C8997C1257A4F_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi all,</font>
<br>
<br><font size=2 face="sans-serif">i need to set the pin-mux of the board
init code depending on an ID coming from </font>
<br><font size=2 face="sans-serif">an i2C EEPROM of the board.</font>
<br><font size=2 face="sans-serif">Is it possible to do something like
this:</font>
<br>
<br>
<br><font size=2 face="Sans">...</font>
<br>
<br><font size=2 color=#820040 face="Sans"><b>//Using the e.g. the </b></font><font size=2 face="Sans"><b>postcore_initcall</b></font><font size=2 color=#820040 face="Sans"><b>
phase to init i2C</b></font>
<br><font size=2 color=#820040 face="Sans"><b>static</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>int</b></font>
<br><font size=2 face="Sans"><b>ecuv6_postcore_init</b>(</font><font size=2 color=#820040 face="Sans"><b>void</b></font><font size=2 face="Sans">)</font>
<br><font size=2 face="Sans">{</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#3f8080 face="Sans">//Set
I2C EEPROM (24C32R) PIN MUX</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(i2c_eeprom_pads,
ARRAY_SIZE(i2c_eeprom_pads));</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; imx53_add_i2c2(NULL);</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>return</b></font><font size=2 face="Sans">
0;</font>
<br><font size=2 face="Sans">}</font>
<br><font size=2 face="Sans"><b>postcore_initcall</b>(ecuv6_postcore_init);</font>
<br>
<br><font size=2 color=#820040 face="Sans"><b>//In the </b></font><font size=2 face="Sans"><b>console_initcall</b></font><font size=2 color=#820040 face="Sans"><b>
phase, i2C should be probed to read ID</b></font>
<br><font size=2 color=#820040 face="Sans"><b>static</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>int</b></font>
<br><font size=2 face="Sans"><b>ecuv6_console_init</b>(</font><font size=2 color=#820040 face="Sans"><b>void</b></font><font size=2 face="Sans">)</font>
<br><font size=2 face="Sans">{</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; imx53_init_lowlevel(0);</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; ecuv6_set_system_serial();</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; //get_bb_pcb_number
reads data from </font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>char</b></font><font size=2 face="Sans">
bb_ID;</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; bb_ID
= get_i2c_ID();</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; //Set
Pinmux depending on i2C result</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>if</b></font><font size=2 face="Sans">(bb_ID
= 0xAB) {</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(AB_pads,
ARRAY_SIZE(AB_pads));</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; }</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>else</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>if</b></font><font size=2 face="Sans">(bb_ID
= 0xCD) {</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; mxc_iomux_v3_setup_multiple_pads(CD_pads,
ARRAY_SIZE(CD_pads));</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; }</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; imx53_add_uart0();</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>return</b></font><font size=2 face="Sans">
0;</font>
<br><font size=2 face="Sans">}</font>
<br><font size=2 face="Sans"><b>console_initcall</b>(ecuv6_console_init);</font>
<br>
<br><font size=2 face="Sans">...</font>
<br>
<br>
<br><font size=2 face="sans-serif">Actually this is not working. The i2c_imx:i2c_imx_probe(..)
function gets called later.</font>
<br><font size=2 face="sans-serif">Is there a way or concept to do something
like this?</font>
<br>
<br><font size=2 face="sans-serif">christian</font>
--=_alternative 002C8997C1257A4F_=--


--===============0772411946653200073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0772411946653200073==--
