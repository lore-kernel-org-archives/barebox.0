Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WwYc1-0006OC-5E
 for barebox@lists.infradead.org; Mon, 16 Jun 2014 15:14:22 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 16 Jun 2014 17:13:54 +0200
Message-Id: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: AM335x: Beaglebone: Fix memory setup for Beaglebone black
To: barebox@lists.infradead.org

From: Philipp Zabel <philipp.zabel@gmail.com>

Commit 0d6392de4ad824a6553c0e3e3e18edef689a7c85 introduced a stripped
down device tree used for both white and black Beaglebone variants
that included the 256 MiB memory node from am335x-bone-common.dtsi.
This leads to the following error in the MLO:

    mmu: Critical Error: Can't request SDRAM region for ttb at 9fff4000

This patch removes the (for the Beaglebone black) invalid memory size
from the common device tree and instead registers the memory bank
manually in the board file.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/boards/beaglebone/board.c   | 17 +++++++++++++++++
 arch/arm/dts/am335x-bone-common.dtsi |  5 -----
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 993d05b..3042189 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -51,6 +51,23 @@ static int beaglebone_coredevice_init(void)
 }
 coredevice_initcall(beaglebone_coredevice_init);
 
+static int beaglebone_mem_init(void)
+{
+	uint32_t sdram_size;
+
+	if (!of_machine_is_compatible("ti,am335x-bone"))
+		return 0;
+
+	if (is_beaglebone_black())
+		sdram_size = SZ_512M;
+	else
+		sdram_size = SZ_256M;
+
+	arm_add_mem_device("ram0", 0x80000000, sdram_size);
+	return 0;
+}
+mem_initcall(beaglebone_mem_init);
+
 static int beaglebone_devices_init(void)
 {
 	int black;
diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index 00271c4..4cf7fdb 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -17,11 +17,6 @@
 		};
 	};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x10000000>; /* 256 MB */
-	};
-
 	leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&user_leds_s0>;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
