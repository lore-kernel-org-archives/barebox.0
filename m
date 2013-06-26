Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfk-0001vp-U7
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:50 +0200
Message-Id: <1372233657-19455-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] ARM: i.MX51 babbage: Move over to multiboard
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/freescale_mx51_babbage_defconfig |  2 +-
 arch/arm/mach-imx/Kconfig                         | 21 ++++++++++++++-------
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index 27f3ae8..b45b897 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX51=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ac2e9b8..f530e89 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -48,7 +48,6 @@ config BOARDINFO
 	default "Phytec phyCORE-i.MX35" if MACH_PCM043
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
-	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Efika MX smartbook" if MACH_EFIKA_MX_SMARTBOOK
@@ -63,6 +62,7 @@ config BOARDINFO
 	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
 	default "SabreSD" if MACH_SABRESD
 	default "DataModul i.MX6Q Real Qseven" if MACH_REALQ7
+	default "unused" if IMX_MULTI_BOARDS
 
 choice
 	prompt "Select boot mode"
@@ -216,10 +216,23 @@ config ARCH_IMX6
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
 
+config IMX_MULTI_BOARDS
+	bool "Allow multiple boards to be selected"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
+
+if IMX_MULTI_BOARDS
+
+config MACH_FREESCALE_MX51_PDK
+	bool "Freescale i.MX51 PDK"
+	select ARCH_IMX51
+endif
+
 # ----------------------------------------------------------
 
 choice
 	prompt "Select Board"
+	depends on !IMX_MULTI_BOARDS
 
 comment "i.MX1 Boards"
 
@@ -381,12 +394,6 @@ config MACH_GUF_CUPID
 
 comment "i.MX51 Boards"
 
-config MACH_FREESCALE_MX51_PDK
-	bool "Freescale i.MX51 PDK"
-	select ARCH_IMX51
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
-
 config MACH_EUKREA_CPUIMX51SD
 	bool "Ka-Ro TX51"
 	select ARCH_IMX51
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
