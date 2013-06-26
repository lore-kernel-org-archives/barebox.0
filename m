Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urkff-0000v6-6U
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:55 +0200
Message-Id: <1372233657-19455-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: i.MX6 realq7: switch to multiboard
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/dmo-realq7_defconfig |  2 +-
 arch/arm/mach-imx/Kconfig             | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/dmo-realq7_defconfig b/arch/arm/configs/dmo-realq7_defconfig
index 1339391..ab8aa43 100644
--- a/arch/arm/configs/dmo-realq7_defconfig
+++ b/arch/arm/configs/dmo-realq7_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX6=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_REALQ7=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ed9ae3d..ccdebca 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -230,6 +230,12 @@ config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
 
+config MACH_REALQ7
+	bool "DataModul i.MX6Q Real Qseven Board"
+	select ARCH_IMX6
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
+
 endif
 
 # ----------------------------------------------------------
@@ -477,12 +483,6 @@ config MACH_SABRESD
 	bool "Freescale i.MX6 SabreSD"
 	select ARCH_IMX6
 
-config MACH_REALQ7
-	bool "DataModul i.MX6Q Real Qseven Board"
-	select ARCH_IMX6
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
-
 endchoice
 
 # ----------------------------------------------------------
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
