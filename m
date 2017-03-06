Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wr-0001i8-VF
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:00 +0000
Received: by mail-pf0-x244.google.com with SMTP id o126so4812154pfb.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:40 -0800
Message-Id: <20170306225356.31475-30-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 29/45] at91sam9x5ek: Configure SPI in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 36 ------------------------------------
 arch/arm/dts/at91sam9x5ek.dts       | 24 ++++++++++++++++++++++++
 2 files changed, 24 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 8acb23c..2fe724c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -168,41 +168,6 @@ static void ek_add_device_lcdc(void)
 static void ek_add_device_lcdc(void) {}
 #endif
 
-static const struct spi_board_info ek_cm_cogent_spi_devices[] = {
-	{
-		.name		= "mtd_dataflash",
-		.chip_select	= 0,
-		.max_speed_hz	= 15 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static const struct spi_board_info ek_spi_devices[] = {
-	{
-		.name		= "m25p80",
-		.chip_select	= 0,
-		.max_speed_hz	= 30 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static unsigned spi0_standard_cs[] = { AT91_PIN_PA14};
-static struct at91_spi_platform_data spi_pdata = {
-	.chipselect = spi0_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
-};
-
-static void ek_add_device_spi(void)
-{
-	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
-		spi_register_board_info(ek_cm_cogent_spi_devices,
-				ARRAY_SIZE(ek_cm_cogent_spi_devices));
-	else
-		spi_register_board_info(ek_spi_devices,
-				ARRAY_SIZE(ek_spi_devices));
-	at91_add_device_spi(0, &spi_pdata);
-}
-
 #if defined(CONFIG_USB_OHCI) || defined(CONFIG_USB_EHCI)
 /*
  * USB HS Host port (common to OHCI & EHCI)
@@ -235,7 +200,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_w1();
 	ek_add_device_nand();
 	ek_add_device_eth();
-	ek_add_device_spi();
 	ek_add_device_usb();
 	ek_add_device_lcdc();
 
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index 00bb86a..efdba61 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -17,8 +17,32 @@
 	i2c-gpio-0 {
 		status = "okay";
 	};
+
+	ahb {
+		apb {
+			pinctrl@fffff400 {
+				spi {
+					pinctrl_board_spi: spi-board {
+						atmel,pins = <AT91_PIOA 14 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spi0>, <&pinctrl_board_spi>;
 };
 
 &i2c0 {
 	status = "disabled";
 };
+
+/*
+ * This one conflicts with SPI NOR on the SoM
+ */
+&mmc1 {
+	status = "disabled";
+};
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
