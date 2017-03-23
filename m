Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jN-0005Et-2B
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:51 +0000
Received: by mail-pf0-x243.google.com with SMTP id p189so26411351pfp.0
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:55 -0700
Message-Id: <20170323132358.8539-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/14] at91sam9x5ek: Configure 1-wire in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |  6 +++++-
 arch/arm/boards/at91sam9x5ek/hw_version.h |  1 -
 arch/arm/boards/at91sam9x5ek/init.c       | 16 ----------------
 arch/arm/dts/at91sam9x5ek.dts             | 15 +++++++++++++++
 4 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 2f84d82..d1ca036 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <libbb.h>
@@ -250,7 +251,7 @@ static int cm_cogent_fixup(struct device_node *root, void *unused)
 	return 0;
 }
 
-void at91sam9x5ek_devices_detect_hw(void)
+static int at91sam9x5ek_devices_detect_hw(void)
 {
 	at91sam9x5ek_devices_detect_one("/dev/ds24310");
 	at91sam9x5ek_devices_detect_one("/dev/ds24311");
@@ -262,4 +263,7 @@ void at91sam9x5ek_devices_detect_hw(void)
 
 	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
 		of_register_fixup(cm_cogent_fixup, NULL);
+
+	return 0;
 }
+late_initcall(at91sam9x5ek_devices_detect_hw);
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.h b/arch/arm/boards/at91sam9x5ek/hw_version.h
index 91fd429..3f3c800 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.h
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.h
@@ -29,6 +29,5 @@ enum vendor_id {
 bool at91sam9x5ek_cm_is_vendor(enum vendor_id vid);
 bool at91sam9x5ek_ek_is_vendor(enum vendor_id vid);
 bool at91sam9x5ek_dm_is_vendor(enum vendor_id vid);
-void at91sam9x5ek_devices_detect_hw(void);
 
 #endif /* __HW_REVISION_H__ */
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 2fe724c..09b7d0f 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -45,12 +45,6 @@
 
 #include "hw_version.h"
 
-struct w1_gpio_platform_data w1_pdata = {
-	.pin = AT91_PIN_PB18,
-	.ext_pullup_enable_pin = -EINVAL,
-	.is_open_drain = 0,
-};
-
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -186,18 +180,8 @@ static void ek_add_device_usb(void)
 static void ek_add_device_usb(void) {}
 #endif
 
-static void ek_add_device_w1(void)
-{
-	at91_set_gpio_input(w1_pdata.pin, 0);
-	at91_set_multi_drive(w1_pdata.pin, 1);
-	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
-
-	at91sam9x5ek_devices_detect_hw();
-}
-
 static int at91sam9x5ek_devices_init(void)
 {
-	ek_add_device_w1();
 	ek_add_device_nand();
 	ek_add_device_eth();
 	ek_add_device_usb();
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index efdba61..c169181 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -29,6 +29,21 @@
 			};
 		};
 	};
+
+	leds {
+		/*
+		 * PB18 has a resource conflict since it is both used
+                 * as a heartbeat LED and 1-wire bus in the kernel
+                 * device tree. Because 1-wire EEPROMs contains
+                 * importatnt revision information we move heartbeat
+                 * to PD21 and remove the original pb18 node
+		 */
+		/delete-node/ pb18;
+
+		pd21 {
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &spi0 {
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
