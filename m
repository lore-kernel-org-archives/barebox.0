Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qV-LG
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:18 +0200
Message-Id: <20190918075421.20456-14-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/16] ARM: mxs: Move HAVE_PBL_MULTI_IMAGES up to ARCH
To: Barebox List <barebox@lists.infradead.org>

Now that all boards in mach-mxs select HAVE_PBL_MULTI_IMAGES we can move
it up to ARCH_MXS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig          | 1 +
 arch/arm/mach-mxs/Kconfig | 7 -------
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b227bb78b6..e045f0ea64 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -144,6 +144,7 @@ config ARCH_MXS
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ffaf9a9e61..ea877d24a3 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -34,20 +34,17 @@ choice
 
 config MACH_MX23EVK
 	bool "mx23-evk"
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Freescale i.MX23-EVK board
 
 config MACH_CHUMBY
 	bool "Chumby Falconwing"
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the "chumby one" aka falconwing from
 	  Chumby Industries
 
 config MACH_IMX233_OLINUXINO
 	bool "Olimex.ltd imx223-olinuxino"
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the imx233-olinuxino
 
@@ -62,21 +59,18 @@ choice
 
 config MACH_TX28
 	bool "KARO tx28"
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
 config MACH_MX28EVK
 	bool "mx28-evk"
 	select MXS_OCOTP
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
 config MACH_DUCKBILL
 	bool "Duckbill"
 	select MXS_OCOTP
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the I2SE Duckbill board
 
@@ -85,7 +79,6 @@ config MACH_CFA10036
 	select MXS_OCOTP
 	select I2C_GPIO
 	select EEPROM_AT24
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Crystalfontz CFA-10036 module
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
