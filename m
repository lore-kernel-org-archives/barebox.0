Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wk-0001LK-FB
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:51 +0000
Received: by mail-pg0-x244.google.com with SMTP id 187so7289752pgb.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:30 -0800
Message-Id: <20170306225356.31475-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/45] at91sam9x5ek: Configure I2C via DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 21 ---------------------
 arch/arm/dts/at91sam9x5ek.dts       | 10 ++++++++++
 2 files changed, 10 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 85f20a9..fca5e7d 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -187,26 +187,6 @@ static void ek_add_device_mci(void)
 	at91_add_device_mci(0, &mci0_data);
 }
 
-struct qt1070_platform_data qt1070_pdata = {
-	.irq_pin	= AT91_PIN_PA7,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		.platform_data = &qt1070_pdata,
-		I2C_BOARD_INFO("qt1070", 0x1b),
-	}, {
-		I2C_BOARD_INFO("24c512", 0x51)
-	},
-};
-
-static void ek_add_device_i2c(void)
-{
-	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
-	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
-	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-}
-
 static const struct spi_board_info ek_cm_cogent_spi_devices[] = {
 	{
 		.name		= "mtd_dataflash",
@@ -277,7 +257,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_spi();
 	ek_add_device_mci();
 	ek_add_device_usb();
-	ek_add_device_i2c();
 	ek_add_device_lcdc();
 
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index db1bd67..f9ae091 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -7,3 +7,13 @@
 #include <arm/at91sam9x5_lcd.dtsi>
 #include <arm/at91sam9x5dm.dtsi>
 #include <arm/at91sam9x5ek.dtsi>
+
+/ {
+	i2c-gpio-0 {
+		status = "okay";
+	};
+};
+
+&i2c0 {
+	status = "disabled";
+};
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
