Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1X5-0001iF-63
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:13 +0000
Received: by mail-pf0-x242.google.com with SMTP id j5so18950495pfb.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:53 -0800
Message-Id: <20170306225356.31475-43-andrew.smirnov@gmail.com>
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
Subject: [PATCH 42/45] at91sam9x5ek: Configure USB in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 09b7d0f..ff0ef22 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -162,29 +162,10 @@ static void ek_add_device_lcdc(void)
 static void ek_add_device_lcdc(void) {}
 #endif
 
-#if defined(CONFIG_USB_OHCI) || defined(CONFIG_USB_EHCI)
-/*
- * USB HS Host port (common to OHCI & EHCI)
- */
-static struct at91_usbh_data ek_usbh_hs_data = {
-	.ports			= 2,
-	.vbus_pin		= {AT91_PIN_PD19, AT91_PIN_PD20},
-};
-
-static void ek_add_device_usb(void)
-{
-	at91_add_device_usbh_ohci(&ek_usbh_hs_data);
-	at91_add_device_usbh_ehci(&ek_usbh_hs_data);
-}
-#else
-static void ek_add_device_usb(void) {}
-#endif
-
 static int at91sam9x5ek_devices_init(void)
 {
 	ek_add_device_nand();
 	ek_add_device_eth();
-	ek_add_device_usb();
 	ek_add_device_lcdc();
 
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
