Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaM-00017v-D3
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:28 +0000
Received: by mail-wi0-f169.google.com with SMTP id hi2so4840867wib.0
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:11:01 +0200
Message-Id: <1403554262-12777-11-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 10/11] ARM: mvebu: convert to multiple board selection
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With all SoCs converted to DT based probing, select
PBL_MULTI_IMAGES support and get rid of SoCs Kconfig
choice to allow multiple boards to be selected.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/Kconfig            |  1 +
 arch/arm/Makefile           |  6 ------
 arch/arm/boards/Makefile    |  6 ++++++
 arch/arm/mach-mvebu/Kconfig | 21 ---------------------
 4 files changed, 7 insertions(+), 27 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8674a2d17cf2..3b8a2a2207e4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -92,6 +92,7 @@ config ARCH_MVEBU
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
 	select MVEBU_MBUS
 	select OFTREE
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 64db73c62e35..983f7f57cd26 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -86,17 +86,11 @@ machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 board-$(CONFIG_MACH_A9M2410)			+= a9m2410
 board-$(CONFIG_MACH_A9M2440)			+= a9m2440
 board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
-board-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)	+= globalscale-guruplug
-board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)	+= globalscale-mirabox
-board-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)	+= marvell-armada-xp-gp
 board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
 board-$(CONFIG_MACH_PCM027)			+= phytec-phycore-pxa270
-board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
-board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
 board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
-board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 4eccc92930ad..f85ddccc550a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -41,6 +41,8 @@ obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
+obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
+obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
@@ -48,6 +50,7 @@ obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
+obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
@@ -73,6 +76,7 @@ obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PCM051)			+= phytec-phycore-am335x/
 obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-phyflex-imx6/
+obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
 obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
@@ -88,6 +92,7 @@ obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
+obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD)	+= solidrun-hummingboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
@@ -104,6 +109,7 @@ obj-$(CONFIG_MACH_UDOO)				+= udoo/
 obj-$(CONFIG_MACH_USB_A9260)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
+obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_VIRT2REAL)			+= virt2real/
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 80e8687916df..9b790a3a908f 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -38,14 +38,9 @@ endchoice
 
 if ARCH_ARMADA_370
 
-choice
-	prompt "Armada 370 Board Type"
-
 config MACH_GLOBALSCALE_MIRABOX
 	bool "Globalscale Mirabox"
 
-endchoice
-
 endif # ARCH_ARMADA_370
 
 #
@@ -54,17 +49,12 @@ endif # ARCH_ARMADA_370
 
 if ARCH_ARMADA_XP
 
-choice
-	prompt "Armada XP Board Type"
-
 config MACH_PLATHOME_OPENBLOCKS_AX3
 	bool "PlatHome OpenBlocks AX3"
 
 config MACH_MARVELL_ARMADA_XP_GP
 	bool "Marvell Armada XP GP"
 
-endchoice
-
 endif # ARCH_ARMADA_XP
 
 #
@@ -73,14 +63,8 @@ endif # ARCH_ARMADA_XP
 
 if ARCH_DOVE
 
-choice
-	prompt "Dove 88AP510 Board Type"
-
 config MACH_SOLIDRUN_CUBOX
 	bool "SolidRun CuBox"
-	select HAVE_PBL_MULTI_IMAGES
-
-endchoice
 
 endif # ARCH_DOVE
 
@@ -90,17 +74,12 @@ endif # ARCH_DOVE
 
 if ARCH_KIRKWOOD
 
-choice
-	prompt "Kirkwood Board Type"
-
 config MACH_GLOBALSCALE_GURUPLUG
 	bool "Guruplug"
 
 config MACH_USI_TOPKICK
 	bool "Topkick"
 
-endchoice
-
 endif # ARCH_KIRKWOOD
 
 #
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
