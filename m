Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1X6-0001id-Qd
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:14 +0000
Received: by mail-pg0-x242.google.com with SMTP id 25so20992831pgy.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:55 -0800
Message-Id: <20170306225356.31475-45-andrew.smirnov@gmail.com>
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
Subject: [PATCH 44/45] at91sam9x5ek: Configure Ethernet in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 18 ++++++++----------
 arch/arm/dts/at91sam9x5ek.dts       |  7 +++++++
 2 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index ff0ef22..29da97d 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -106,18 +106,17 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct macb_platform_data macb_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = 0,
-};
-
-static void ek_add_device_eth(void)
+static int ek_register_mac_address(void)
 {
-	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
-		w1_local_mac_address_register(0, "tml", "w1-23-0");
+	int ret;
+
+	ret = w1_local_mac_address_register(0, "tml", "w1-2d-0");
+	if (!ret)
+		return ret;
 
-	at91_add_device_eth(0, &macb_pdata);
+	return w1_local_mac_address_register(0, "tml", "w1-23-0");
 }
+late_initcall(ek_register_mac_address);
 
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
 /*
@@ -165,7 +164,6 @@ static void ek_add_device_lcdc(void) {}
 static int at91sam9x5ek_devices_init(void)
 {
 	ek_add_device_nand();
-	ek_add_device_eth();
 	ek_add_device_lcdc();
 
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index fa79347..f9e8a94 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -4,6 +4,7 @@
 #include <dt-bindings/pinctrl/at91.h>
 
 #include <arm/at91sam9x5.dtsi>
+#include <arm/at91sam9x5_macb0.dtsi>
 #include <arm/at91sam9x5_lcd.dtsi>
 #include <arm/at91sam9x5dm.dtsi>
 #include <arm/at91sam9x5ek.dtsi>
@@ -63,3 +64,9 @@
 &mmc1 {
 	status = "disabled";
 };
+
+&macb0 {
+	status = "okay";
+	phy-mode = "rmii";
+};
+
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
