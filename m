Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9903-0008BP-6H
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:07 +0200
Message-Id: <1376378772-25649-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: mvebu: move Makefile entries back to
 arch/arm/Makefile
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

The mvebu boards use the BOARD make variable for the kwbimage
generation. This only exists in the old way, so move the mvebu
board Makefile entries back to arch/arm/Makefile until they
are converted to multiboard.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile        | 5 +++++
 arch/arm/boards/Makefile | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d80c12c..4f45d57 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -82,12 +82,17 @@ machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 board-$(CONFIG_MACH_A9M2410)			+= a9m2410
 board-$(CONFIG_MACH_A9M2440)			+= a9m2440
 board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
+board-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)	+= globalscale-guruplug
+board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)	+= globalscale-mirabox
+board-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)	+= marvell-armada-xp-gp
 board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
 board-$(CONFIG_MACH_PCM027)			+= pcm027
+board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
 board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
+board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2e924fd..d94d507 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -37,15 +37,12 @@ obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
-obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
-obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= imx21ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= imx27ads/
-obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
@@ -66,7 +63,6 @@ obj-$(CONFIG_MACH_PCM043)			+= pcm043/
 obj-$(CONFIG_MACH_PCM049)			+= pcm049/
 obj-$(CONFIG_MACH_PCM051)			+= pcm051/
 obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-pfla02/
-obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
 obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
@@ -91,7 +87,6 @@ obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
 obj-$(CONFIG_MACH_USB_A9260)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
-obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
