Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9o-000757-2y
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:58 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DF395FF8485
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:19 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:46 +0200
Message-Id: <1333083528-24289-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/9] ARM: at91: allow to pass the interface id to
 at91_add_device_eth
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

On the sam9x5 series we now support 1 or 2 macb.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |    2 +-
 arch/arm/boards/at91sam9260ek/init.c     |    2 +-
 arch/arm/boards/at91sam9263ek/init.c     |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |    2 +-
 arch/arm/boards/dss11/init.c             |    2 +-
 arch/arm/boards/mmccpu/init.c            |    2 +-
 arch/arm/boards/pm9263/init.c            |    2 +-
 arch/arm/boards/pm9g45/init.c            |    2 +-
 arch/arm/boards/tny-a926x/init.c         |    2 +-
 arch/arm/boards/usb-a926x/init.c         |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c  |    4 ++--
 arch/arm/mach-at91/at91sam9260_devices.c |    4 ++--
 arch/arm/mach-at91/at91sam9263_devices.c |    4 ++--
 arch/arm/mach-at91/at91sam9g45_devices.c |    4 ++--
 arch/arm/mach-at91/include/mach/board.h  |    2 +-
 15 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 9a46ac6..6911447 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -114,7 +114,7 @@ static int at91rm9200ek_devices_init(void)
 	 */
 	at91_set_gpio_output(AT91_PIN_PA23, 1);
 
-	at91_add_device_eth(&ether_pdata);
+	at91_add_device_eth(0, &ether_pdata);
 
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 	/* USB Host */
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 03abc0e..a1d3750 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -254,7 +254,7 @@ static int at91sam9260ek_devices_init(void)
 {
 	ek_add_device_nand();
 	at91sam9260ek_phy_reset();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	at91_add_device_udc(&ek_udc_data);
 	ek_usb_add_device_mci();
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 4a8d167..33b7955 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -183,7 +183,7 @@ static int at91sam9263ek_devices_init(void)
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
 	ek_add_device_nand();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
 	ek_add_device_mci();
 	ek_device_add_leds();
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 8371376..6011bad 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -175,7 +175,7 @@ mem_initcall(at91sam9m10g45ek_mem_init);
 static int at91sam9m10g45ek_devices_init(void)
 {
 	ek_add_device_nand();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	ek_add_device_mci();
 	ek_device_add_leds();
 
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 722c0f6..950cf76 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -131,7 +131,7 @@ static int dss11_devices_init(void)
 {
 	dss11_add_device_nand();
 	dss11_phy_reset();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	at91_add_device_mci(0, &dss11_mci_data);
 	at91_add_device_usbh_ohci(&dss11_usbh_data);
 
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 51dbf24..9d4d496 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -60,7 +60,7 @@ static int mmccpu_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 
 	devfs_add_partition("nor0", 0x00000, 256 * 1024, PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 92d7e9f..499ee46 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -108,7 +108,7 @@ static int pm9263_devices_init(void)
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
 	pm_add_device_nand();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 4d3078e..9b22276 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -138,7 +138,7 @@ static int pm9g45_devices_init(void)
 	pm_add_device_nand();
 	pm9g45_add_device_mci();
 	pm9g45_phy_init();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	pm9g45_add_device_usbh();
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index ad77f7b..2065eae 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -156,7 +156,7 @@ static void tny_a9260_phy_reset(void)
 static void __init ek_add_device_macb(void)
 {
 	tny_a9260_phy_reset();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 }
 #else
 static void __init ek_add_device_macb(void) {}
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index af025b4..57609b1 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -320,7 +320,7 @@ static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
 	usb_a9260_phy_reset();
-	at91_add_device_eth(&macb_pdata);
+	at91_add_device_eth(0, &macb_pdata);
 	usb_a9260_add_device_mci();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_device_udc();
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index bda73e6..c380c7d 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -72,7 +72,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_NET_AT91_ETHER)
-void __init at91_add_device_eth(struct at91_ether_platform_data *data)
+void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
 	if (!data)
 		return;
@@ -104,7 +104,7 @@ void __init at91_add_device_eth(struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void __init at91_add_device_eth(struct at91_ether_platform_data *data) {}
+void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 #endif
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 3bdcd4f..23da8c1 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -67,7 +67,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
 	if (!data)
 		return;
@@ -104,7 +104,7 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 87a1726..12d6a24 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -75,7 +75,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
 	if (!data)
 		return;
@@ -106,7 +106,7 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 6931a3f..05b197c 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -54,7 +54,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
 	if (!data)
 		return;
@@ -86,7 +86,7 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 9f1abc1..f45bad6 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -70,7 +70,7 @@ struct at91_ether_platform_data {
 	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
 };
 
-void at91_add_device_eth(struct at91_ether_platform_data *data);
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data);
 
 /* SDRAM */
 void at91_add_device_sdram(u32 size);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
