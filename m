Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwVt3-0005F1-Dx
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 11:15:15 +0000
Received: from mail631.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 382F6DC5708
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 13:14:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  9 Jul 2013 13:14:52 +0200
Message-Id: <1373368492-4627-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1373368492-4627-1-git-send-email-plagnioj@jcrosoft.com>
References: <1373368492-4627-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] ARM: AT91: Turn most board directories into regular build
 directories
To: barebox@lists.infradead.org

Just missing rm9200ek untill init switch to C struct

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile        | 25 -------------------------
 arch/arm/boards/Makefile | 25 +++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8488f46..d80c12c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -81,38 +81,13 @@ machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 # arch/arm/boards/Makefile aswell.
 board-$(CONFIG_MACH_A9M2410)			+= a9m2410
 board-$(CONFIG_MACH_A9M2440)			+= a9m2440
-board-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip
 board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
-board-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek
-board-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek
-board-$(CONFIG_MACH_AT91SAM9263EK)		+= at91sam9263ek
-board-$(CONFIG_MACH_AT91SAM9G10EK)		+= at91sam9261ek
-board-$(CONFIG_MACH_AT91SAM9G20EK)		+= at91sam9260ek
-board-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek
-board-$(CONFIG_MACH_AT91SAM9M10IHD)		+= at91sam9m10ihd
-board-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek
-board-$(CONFIG_MACH_AT91SAM9X5EK)		+= at91sam9x5ek
-board-$(CONFIG_MACH_DSS11)			+= dss11
-board-$(CONFIG_MACH_GE863)			+= telit-evk-pro3
 board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
-board-$(CONFIG_MACH_MMCCPU)			+= mmccpu
 board-$(CONFIG_MACH_PCM027)			+= pcm027
-board-$(CONFIG_MACH_PM9261)			+= pm9261
-board-$(CONFIG_MACH_PM9263)			+= pm9263
-board-$(CONFIG_MACH_PM9G45)			+= pm9g45
-board-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x
-board-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x
-board-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek
 board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
 board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
-board-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x
-board-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x
-board-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x
-board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
-board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
-board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6d1e98d..9e1523d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -1,11 +1,22 @@
 # keep sorted by CONFIG_* macro name.
+obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
 obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
+obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
+obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
+obj-$(CONFIG_MACH_AT91SAM9263EK)		+= at91sam9263ek/
+obj-$(CONFIG_MACH_AT91SAM9G10EK)		+= at91sam9261ek/
+obj-$(CONFIG_MACH_AT91SAM9G20EK)		+= at91sam9260ek/
+obj-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek/
+obj-$(CONFIG_MACH_AT91SAM9M10IHD)		+= at91sam9m10ihd/
+obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
+obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
+obj-$(CONFIG_MACH_DSS11)			+= dss11/
 obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9301)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9302A)			+= edb93xx/
@@ -24,6 +35,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
+obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
 obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
@@ -34,6 +46,7 @@ obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= imx27ads/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
+obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2/
@@ -52,17 +65,29 @@ obj-$(CONFIG_MACH_PCM043)			+= pcm043/
 obj-$(CONFIG_MACH_PCM049)			+= pcm049/
 obj-$(CONFIG_MACH_PCM051)			+= pcm051/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
+obj-$(CONFIG_MACH_PM9261)			+= pm9261/
+obj-$(CONFIG_MACH_PM9263)			+= pm9263/
+obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
+obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
+obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
 obj-$(CONFIG_MACH_REALQ7)			+= dmo-mx6-realq7/
 obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
+obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
+obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
+obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
+obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
 obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
 obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
 obj-$(CONFIG_MACH_TX51)				+= karo-tx51/
 obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
+obj-$(CONFIG_MACH_USB_A9260)			+= usb-a926x/
+obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
+obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
