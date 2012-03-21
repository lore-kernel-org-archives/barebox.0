Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([80.150.88.70])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SALbO-0000ka-RR
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 13:29:24 +0000
MIME-Version: 1.0
Message-ID: <OF238DCFD4.07670D15-ONC12579C8.0049BABE-C12579C8.004A1884@o0802.rafi.inhouse>
From: guenter.gebhardt@rafi.de
Date: Wed, 21 Mar 2012 14:29:18 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3934150251194371661=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox-2012.03.0 imx_get_i2cclk
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============3934150251194371661==
Content-Type: multipart/alternative; boundary="=_alternative 004A1884C12579C8_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004A1884C12579C8_=
Content-Type: text/plain; charset="US-ASCII"

Hello,

when compiling for a imx53 with i2c enabled i got the following error:

drivers/built-in.o: In function `i2c_imx_set_clk':
/home/ggebhardt/repos/ecuv6_bl/barebox/drivers/i2c/busses/i2c-imx.c:282: 
undefined reference to `imx_get_i2cclk'
make[4]: *** [.tmp_barebox1] Error 1
make[3]: *** [CMakeFiles/bootloader] Error 2
make[2]: *** [CMakeFiles/bootloader.dir/all] Error 2
make[1]: *** [CMakeFiles/bootloader.dir/rule] Error 2
make: *** [bootloader] Error 2

I copied the following from the corresponding imx51 implementation:

diff --git a/barebox/arch/arm/mach-imx/speed-imx53.c 
b/barebox/arch/arm/mach-imx/speed-imx53.c
index 0d6ac24..a168c65 100644
--- a/barebox/arch/arm/mach-imx/speed-imx53.c
+++ b/barebox/arch/arm/mach-imx/speed-imx53.c
@@ -169,6 +169,11 @@ unsigned long imx_get_fecclk(void)
        return imx_get_ipgclk();
 }
 
+unsigned long imx_get_i2cclk(void)
+{
+       return imx_get_ipgclk();
+}
+
 unsigned long imx_get_mmcclk(void)
 {
        u32 reg, prediv, podf, rate;
--=_alternative 004A1884C12579C8_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hello,</font>
<br>
<br><font size=2 face="sans-serif">when compiling for a imx53 with i2c
enabled i got the following error:</font>
<br>
<br><font size=2 face="sans-serif">drivers/built-in.o: In function `i2c_imx_set_clk':</font>
<br><font size=2 face="sans-serif">/home/ggebhardt/repos/ecuv6_bl/barebox/drivers/i2c/busses/i2c-imx.c:282:
undefined reference to `imx_get_i2cclk'</font>
<br><font size=2 face="sans-serif">make[4]: *** [.tmp_barebox1] Error 1</font>
<br><font size=2 face="sans-serif">make[3]: *** [CMakeFiles/bootloader]
Error 2</font>
<br><font size=2 face="sans-serif">make[2]: *** [CMakeFiles/bootloader.dir/all]
Error 2</font>
<br><font size=2 face="sans-serif">make[1]: *** [CMakeFiles/bootloader.dir/rule]
Error 2</font>
<br><font size=2 face="sans-serif">make: *** [bootloader] Error 2</font>
<br>
<br><font size=2 face="sans-serif">I copied the following from the corresponding
imx51 implementation:</font>
<br>
<br><font size=2 face="sans-serif">diff --git a/barebox/arch/arm/mach-imx/speed-imx53.c
b/barebox/arch/arm/mach-imx/speed-imx53.c</font>
<br><font size=2 face="sans-serif">index 0d6ac24..a168c65 100644</font>
<br><font size=2 face="sans-serif">--- a/barebox/arch/arm/mach-imx/speed-imx53.c</font>
<br><font size=2 face="sans-serif">+++ b/barebox/arch/arm/mach-imx/speed-imx53.c</font>
<br><font size=2 face="sans-serif">@@ -169,6 +169,11 @@ unsigned long imx_get_fecclk(void)</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; return imx_get_ipgclk();</font>
<br><font size=2 face="sans-serif">&nbsp;}</font>
<br><font size=2 face="sans-serif">&nbsp;</font>
<br><font size=2 face="sans-serif">+unsigned long imx_get_i2cclk(void)</font>
<br><font size=2 face="sans-serif">+{</font>
<br><font size=2 face="sans-serif">+ &nbsp; &nbsp; &nbsp; return imx_get_ipgclk();</font>
<br><font size=2 face="sans-serif">+}</font>
<br><font size=2 face="sans-serif">+</font>
<br><font size=2 face="sans-serif">&nbsp;unsigned long imx_get_mmcclk(void)</font>
<br><font size=2 face="sans-serif">&nbsp;{</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; u32 reg,
prediv, podf, rate;</font>
--=_alternative 004A1884C12579C8_=--


--===============3934150251194371661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3934150251194371661==--
