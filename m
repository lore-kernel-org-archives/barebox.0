Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wn-0001ho-49
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:55 +0000
Received: by mail-pf0-x244.google.com with SMTP id 67so14532421pfg.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:33 -0800
Message-Id: <20170306225356.31475-23-andrew.smirnov@gmail.com>
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
Subject: [PATCH 22/45] at91sam9x5ek: Configure MMC in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 20 --------------------
 arch/arm/dts/at91sam9x5ek.dts       |  5 +++++
 2 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index fca5e7d..8acb23c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -168,25 +168,6 @@ static void ek_add_device_lcdc(void)
 static void ek_add_device_lcdc(void) {}
 #endif
 
-/*
- * MCI (SD/MMC)
- */
-/* mci0 detect_pin is revision dependent */
-static struct atmel_mci_platform_data mci0_data = {
-	.bus_width	= 4,
-	.detect_pin	= AT91_PIN_PD15,
-	.wp_pin		= -EINVAL,
-};
-
-static void ek_add_device_mci(void)
-{
-	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
-		mci0_data.detect_pin = -EINVAL;
-
-	/* MMC0 */
-	at91_add_device_mci(0, &mci0_data);
-}
-
 static const struct spi_board_info ek_cm_cogent_spi_devices[] = {
 	{
 		.name		= "mtd_dataflash",
@@ -255,7 +236,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_nand();
 	ek_add_device_eth();
 	ek_add_device_spi();
-	ek_add_device_mci();
 	ek_add_device_usb();
 	ek_add_device_lcdc();
 
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index f9ae091..00bb86a 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -9,6 +9,11 @@
 #include <arm/at91sam9x5ek.dtsi>
 
 / {
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+	};
+
 	i2c-gpio-0 {
 		status = "okay";
 	};
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
