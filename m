Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([80.150.88.70])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SC34T-00012v-8n
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 06:06:26 +0000
MIME-Version: 1.0
Message-ID: <OFBBAF4175.708F4DA0-ONC12579CD.00206A41-C12579CD.00218BB2@o0802.rafi.inhouse>
From: guenter.gebhardt@rafi.de
Date: Mon, 26 Mar 2012 08:06:22 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8016926835846863896=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] imx53: undefined reference to `imx_get_i2cclk'
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============8016926835846863896==
Content-Type: multipart/alternative; boundary="=_alternative 00218BAFC12579CD_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00218BAFC12579CD_=
Content-Type: text/plain; charset="US-ASCII"

Fix linker error when compiling for imx53 with I2C enabled.

Signed-off-by: Guenter Gebhardt <g.gebhardt@gg-sw-systems.de>
--
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
--
--=_alternative 00218BAFC12579CD_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Fix linker error when compiling for imx53
with I2C enabled.</font>
<br>
<br><tt><font size=3>Signed-off-by: Guenter Gebhardt &lt;</font></tt><a href=http://lists.infradead.org/mailman/listinfo/barebox><tt><font size=3 color=blue><u>g.gebhardt@gg-sw-systems.de</u></font></tt></a><tt><font size=3>&gt;</font></tt>
<br><tt><font size=3>--</font></tt>
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
<br><tt><font size=3>--</font></tt>
--=_alternative 00218BAFC12579CD_=--


--===============8016926835846863896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8016926835846863896==--
