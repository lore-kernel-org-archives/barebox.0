Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tm-0005h5-2J
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:06:05 +0200
Message-Id: <1373983566-27721-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] ARM: i.MX51 efikasb: configure environment from
 devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c | 29 ++++++++++-------------------
 arch/arm/dts/imx51-genesi-efika-sb.dts     | 26 ++++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 1735c3e..85ff466 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -210,6 +210,16 @@ static int efikamx_usb_init(void)
 		mxc_iomux_v3_setup_pad(MX51_PAD_EIM_A26__USBH2_STP);
 	}
 
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		of_device_enable_path("/chosen/environment-sd");
+		break;
+	case BOOTSOURCE_SPI:
+	default:
+		of_device_enable_path("/chosen/environment-spi");
+		break;
+	}
+
 	return 0;
 }
 console_initcall(efikamx_usb_init);
@@ -230,7 +240,6 @@ extern char flash_header_imx51_genesi_efikasb_end[];
 
 static int efikamx_late_init(void)
 {
-	enum bootsource bootsource;
 	int i;
 
 	if (!of_machine_is_compatible("genesi,imx51-sb"))
@@ -255,24 +264,6 @@ static int efikamx_late_init(void)
 	armlinux_set_architecture(2370);
 	armlinux_set_revision(0x5100 | imx_silicon_revision());
 
-	bootsource = bootsource_get();
-
-	switch (bootsource) {
-	case BOOTSOURCE_MMC:
-		device_detect_by_name("mmc1");
-
-		devfs_add_partition("mmc1", 0x00000, 0x80000,
-				DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("mmc1", 0x80000, 0x80000,
-				DEVFS_PARTITION_FIXED, "env0");
-		break;
-	case BOOTSOURCE_SPI:
-	default:
-		devfs_add_partition("m25p0", 0x80000, 0x20000,
-				DEVFS_PARTITION_FIXED, "env0");
-		break;
-	}
-
 	return 0;
 }
 late_initcall(efikamx_late_init);
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index dc92b2a..21b7c7e 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -18,6 +18,18 @@
 
 	chosen {
 		linux,stdout-path = "/soc/aips@70000000/serial@73fbc000";
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &esdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-spi {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+			status = "disabled";
+		};
 	};
 
 	memory {
@@ -178,6 +190,13 @@
 	cd-gpios = <&gpio1 8 0>;
 	wp-gpios = <&gpio1 7 0>;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
 };
 
 &ecspi1 {
@@ -290,6 +309,13 @@
 		compatible = "sst,sst25vf032b", "m25p80";
 		spi-max-frequency = <15000000>;
 		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
 	};
 };
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
