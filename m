Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jO-0005Ez-Nb
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:52 +0000
Received: by mail-pf0-x244.google.com with SMTP id r137so28141492pfr.3
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:57 -0700
Message-Id: <20170323132358.8539-14-andrew.smirnov@gmail.com>
In-Reply-To: <20170323132358.8539-1-andrew.smirnov@gmail.com>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/14] at91sam9x5ek: Configure Ethernet in DT
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
index c169181..d5c7a8f 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -4,6 +4,7 @@
 #include <dt-bindings/pinctrl/at91.h>
 
 #include <arm/at91sam9x5.dtsi>
+#include <arm/at91sam9x5_macb0.dtsi>
 #include <arm/at91sam9x5_lcd.dtsi>
 #include <arm/at91sam9x5dm.dtsi>
 #include <arm/at91sam9x5ek.dtsi>
@@ -61,3 +62,9 @@
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
