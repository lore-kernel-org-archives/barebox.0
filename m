Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tj-0005h4-1b
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:06:02 +0200
Message-Id: <1373983566-27721-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] ARM: i.MX Datamodul edmqx6: configure environment from
 devicetree
To: barebox@lists.infradead.org

This drops support for storing the environment in the eMMC,
but the standard bootsource is the SPI NOR flash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c | 26 ++++++++++----------------
 arch/arm/configs/dmo-realq7_defconfig  |  1 +
 arch/arm/dts/imx6q-dmo-realq7.dts      | 31 +++++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 9cf6c31..69d93f8 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -114,22 +114,6 @@ static int realq7_env_init(void)
 		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x00907000);
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.barebox",
 		0, NULL, 0, 0x00907000);
-
-	switch (bootsource_get()) {
-	case BOOTSOURCE_MMC:
-		device_detect_by_name("mmc3");
-		devfs_add_partition("mmc3", 0, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.barebox");
-		devfs_add_partition("mmc3", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.bareboxenv");
-		default_environment_path = "/dev/mmc3.bareboxenv";
-		break;
-	default:
-	case BOOTSOURCE_SPI:
-		devfs_add_partition("m25p0", 0, SZ_256K, DEVFS_PARTITION_FIXED, "m25p0.barebox");
-		devfs_add_partition("m25p0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "m25p0.bareboxenv");
-		default_environment_path = "/dev/m25p0.bareboxenv";
-		break;
-	}
-
 	return 0;
 }
 late_initcall(realq7_env_init);
@@ -141,6 +125,16 @@ static int realq7_console_init(void)
 
 	imx6_init_lowlevel();
 
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		of_device_enable_path("/chosen/environment-emmc");
+		break;
+	default:
+	case BOOTSOURCE_SPI:
+		of_device_enable_path("/chosen/environment-spi");
+		break;
+	}
+
 	return 0;
 }
 postcore_initcall(realq7_console_init);
diff --git a/arch/arm/configs/dmo-realq7_defconfig b/arch/arm/configs/dmo-realq7_defconfig
index ab8aa43..501a182 100644
--- a/arch/arm/configs/dmo-realq7_defconfig
+++ b/arch/arm/configs/dmo-realq7_defconfig
@@ -71,6 +71,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
diff --git a/arch/arm/dts/imx6q-dmo-realq7.dts b/arch/arm/dts/imx6q-dmo-realq7.dts
index a33a700..672f15d 100644
--- a/arch/arm/dts/imx6q-dmo-realq7.dts
+++ b/arch/arm/dts/imx6q-dmo-realq7.dts
@@ -19,6 +19,18 @@
 
 	chosen {
 		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-spi {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+			status = "disabled";
+		};
 	};
 
 	aliases {
@@ -87,6 +99,18 @@
 		compatible = "m25p80";
 		spi-max-frequency = <40000000>;
 		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		partition@1 {
+			label = "barebox-environment";
+			reg = <0x80000 0x20000>;
+		};
 	};
 };
 
@@ -351,4 +375,11 @@
 	non-removable;
 	bus-width = <8>;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x0 0x80000>;
+	};
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
