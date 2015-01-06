Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8Q3l-0006tp-Pg
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 09:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Jan 2015 10:03:52 +0100
Message-Id: <1420535032-25771-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: am335x bone: Fix Booting from eMMC
To: barebox@lists.infradead.org

Booting a beaglebone black from eMMC is broken since:

commit 0d6392de4ad824a6553c0e3e3e18edef689a7c85
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Thu Jun 5 12:09:07 2014 +0200

    ARM: AM335x: Beaglebone: Use stripped down devicetree for MLO

The stripped down device tree does not have the eMMC device node which
the beaglebone black needs for booting. Add this node to the common dts
file, but keep it disabled. It gets enabled later with a call to
am33xx_of_register_bootdevice() when the system is booted from eMMC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c  |  3 +++
 arch/arm/dts/am335x-bone-common.dts | 16 ++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 3042189..9b1a9ec 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -92,6 +92,9 @@ static int beaglebone_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
 
+	if (IS_ENABLED(CONFIG_SHELL_NONE))
+		return am33xx_of_register_bootdevice();
+
 	return 0;
 }
 coredevice_initcall(beaglebone_devices_init);
diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
index bbc5561..5d3d2ed 100644
--- a/arch/arm/dts/am335x-bone-common.dts
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -1,5 +1,12 @@
 /dts-v1/;
 
+/*
+ * DTS for the beaglebone white/black MLO
+ *
+ * Only contains the common parts of both boards which is
+ * all we need for the MLO
+ */
+
 #include "am33xx.dtsi"
 #include "am335x-bone-common.dtsi"
 
@@ -7,3 +14,12 @@
 	model = "TI AM335x BeagleBone";
 	compatible = "ti,am335x-bone", "ti,am33xx";
 };
+
+&mmc2 {
+	vmmc-supply = <&vmmcsd_fixed>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_pins>;
+	bus-width = <8>;
+	status = "disabled"; /* only present on beaglebone black, enabled during runtime */
+	ti,vcc-aux-disable-is-sleep;
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
