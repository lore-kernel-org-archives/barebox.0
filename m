Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070i-0f
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:30 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-RN
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:46 +0100
Message-Id: <1416827220-3103-7-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/20] arm: imx: select MFD_MC13XXX for all boards that need it
To: barebox@lists.infradead.org

This was only done for some of the boards and while it is ok to build
those boards without regulator support it may potentially yield non-working
barebox binaries. This is clearly not what the user wanted.

Also select the appropriate bus support needed for the MC13xxx.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 46d0f3d11af0..6dcec3bd450e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -196,6 +196,9 @@ config MACH_PCA100
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
 	select ARCH_IMX27
+	select SPI
+	select DRIVER_SPI_IMX
+	select MFD_MC13XXX
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_IMX_EXTERNAL_BOOT_NAND
 	help
@@ -205,6 +208,9 @@ config MACH_PCM038
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
+	select SPI
+	select DRIVER_SPI_IMX
+	select MFD_MC13XXX
 	help
 	  Choose this to compile barebox for the Efika MX Smartbook
 
@@ -217,10 +223,16 @@ config MACH_EMBEDSKY_E9
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
+	select SPI
+	select DRIVER_SPI_IMX
+	select MFD_MC13XXX
 
 config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
+	select I2C
+	select I2C_IMX
+	select MFD_MC13XXX
 
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
