Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmZ-0000dX-Cr
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:04 +0100
Message-Id: <1385484367-15366-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/17] ARM: am335x Phytec phyCORE: configure environment from
 devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm051/board.c         | 17 ++---------------
 arch/arm/dts/am335x-phytec-phycore.dts | 18 +++++++++++++++++-
 2 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index 4b76f4c..a64d219 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -47,26 +47,13 @@ static int pcm051_devices_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_SPI:
-		devfs_add_partition("m25p0", 0x00000, SZ_128K,
-					DEVFS_PARTITION_FIXED, "xload");
-		devfs_add_partition("m25p0", SZ_128K, SZ_512K,
-					DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("m25p0", SZ_128K + SZ_512K, SZ_128K,
-					DEVFS_PARTITION_FIXED, "env0");
+		of_device_enable_path("/chosen/environment-spi");
 		break;
 	case BOOTSOURCE_MMC:
 		omap_set_bootmmc_devname("mmc0");
 		break;
 	default:
-		devfs_add_partition("nand0", 0x00000, SZ_128K,
-					DEVFS_PARTITION_FIXED, "xload_raw");
-		dev_add_bb_dev("xload_raw", "xload");
-		devfs_add_partition("nand0", SZ_512K, SZ_512K,
-					DEVFS_PARTITION_FIXED, "self_raw");
-		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", SZ_512K + SZ_512K, SZ_128K,
-					DEVFS_PARTITION_FIXED, "env_raw");
-		dev_add_bb_dev("env_raw", "env0");
+		of_device_enable_path("/chosen/environment-nand");
 		break;
 	}
 
diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x-phytec-phycore.dts
index 8fbfae6..81c08fd 100644
--- a/arch/arm/dts/am335x-phytec-phycore.dts
+++ b/arch/arm/dts/am335x-phytec-phycore.dts
@@ -6,6 +6,22 @@
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x", "ti,am33xx";
 
+	chosen {
+		linux,stdout-path = &uart0;
+
+		environment-spi {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:bareboxenv";
+			status = "disabled";
+		};
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &nand, "partname:bareboxenv";
+			status = "disabled";
+		};
+	};
+
 	memory {
 		device_type = "memory";
 		reg = <0x80000000 0x20000000>; /* 512 MB */
@@ -211,7 +227,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins_s0>;
 	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
-	nand@0,0 {
+	nand: nand@0,0 {
 		reg = <0 0 0>; /* CS0, offset 0 */
 		nand-bus-width = <8>;
 		ti,nand-ecc-opt = "bch8-romcode";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
