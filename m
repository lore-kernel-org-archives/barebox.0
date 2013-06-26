Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfg-0001vl-5Z
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:53 +0200
Message-Id: <1372233657-19455-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] ARM: i.MX53 loco: Move over to multiboard
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/freescale_mx53_loco_defconfig |  2 +-
 arch/arm/mach-imx/Kconfig                      | 12 +++++-------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index b2b4c79..dbf4f4e 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX53=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f530e89..ed9ae3d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -48,7 +48,6 @@ config BOARDINFO
 	default "Phytec phyCORE-i.MX35" if MACH_PCM043
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
-	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Efika MX smartbook" if MACH_EFIKA_MX_SMARTBOOK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
@@ -226,6 +225,11 @@ if IMX_MULTI_BOARDS
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
+
+config MACH_FREESCALE_MX53_LOCO
+	bool "Freescale i.MX53 LOCO"
+	select ARCH_IMX53
+
 endif
 
 # ----------------------------------------------------------
@@ -437,12 +441,6 @@ config MACH_EFIKA_MX_SMARTBOOK
 
 comment "i.MX53 Boards"
 
-config MACH_FREESCALE_MX53_LOCO
-	bool "Freescale i.MX53 LOCO"
-	select ARCH_IMX53
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
-
 config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
