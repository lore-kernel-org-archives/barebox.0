Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpaSY-00053r-BM
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 13:33:44 +0000
Date: Wed, 6 Sep 2017 15:33:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906133315.mkuumsb2a6zes3x7@pengutronix.de>
References: <20170820212253.27670-1-GNUtoo@no-log.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170820212253.27670-1-GNUtoo@no-log.org>
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
Subject: Re: Request for testing on beagleboard
To: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
Cc: barebox@lists.infradead.org

Hi Denis,

On Sun, Aug 20, 2017 at 11:22:52PM +0200, Denis 'GNUtoo' Carikli wrote:
> Hi,
> 
> I couldn't test this patch on real hardware as I don't have a
> BeagleBoard.
> 
> I want to port Barebox to the bug 2.0 from Buglabs, and I noticed that
> the code for the BeagleBoard work on it despite the hardware
> differences[1]. Since I'd prefer to use the devicetree to do the
> port.
> 
> References:
> -----------
> [1]The RAM size is different, but the uart3 pads aren't reconfigurable
> on the OMAP3.

With the changes below I managed to get your device tree port somewhat
working.
There are things missing though for a full device tree support. For
example, the GPIOs are not found. USB was not working, but I didn't test
if it works in a recent barebox without your patch. NAND wasn't found
also.
So, your work is a good start, but not yet enough to apply this patch.

Sascha

------------------------------8<-------------------------------

From d8fad4f15a098f330802511dbd68a81095d36bad Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 6 Sep 2017 15:28:00 +0200
Subject: [PATCH] fixup! ARM: beagleboard: convert to devicetree

---
 arch/arm/boards/beagle/board.c             | 1 +
 arch/arm/configs/omap3530_beagle_defconfig | 4 ++++
 arch/arm/dts/omap3-beagle.dts              | 6 ++++++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 6ce1e9cade..5f4181ddaa 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -20,6 +20,7 @@
 #include <envfs.h>
 #include <init.h>
 #include <asm/armlinux.h>
+#include <mach/gpmc.h>
 #include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
 
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index b454cf2b4d..87b63c77b3 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -22,6 +22,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_IMD_TARGET=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_LL=y
@@ -74,6 +75,8 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
@@ -93,6 +96,7 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_MFD_TWL4030=y
+CONFIG_PINCTRL_SINGLE=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/arch/arm/dts/omap3-beagle.dts b/arch/arm/dts/omap3-beagle.dts
index 9dd74b199c..16ac416ff9 100644
--- a/arch/arm/dts/omap3-beagle.dts
+++ b/arch/arm/dts/omap3-beagle.dts
@@ -1 +1,7 @@
 #include <arm/omap3-beagle.dts>
+
+/ {
+	chosen {
+		stdout-path = &uart3;
+	};
+};
-- 
2.11.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
