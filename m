Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlhBl-0006k9-JI
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:33:35 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EAACF104ED22
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:42:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Dec 2012 15:31:46 +0100
Message-Id: <1356013910-30196-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121220142902.GI26483@game.jcrosoft.org>
 <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] at91: use -EINVAL for invalid gpio
To: barebox@lists.infradead.org

switch gpio type from u8 to int in the data struct

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c     |    1 +
 arch/arm/boards/at91sam9260ek/init.c    |    3 ++-
 arch/arm/boards/at91sam9261ek/init.c    |    2 +-
 arch/arm/boards/at91sam9263ek/init.c    |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c |    2 +-
 arch/arm/boards/at91sam9n12ek/init.c    |    4 ++--
 arch/arm/boards/at91sam9x5ek/init.c     |    2 +-
 arch/arm/boards/dss11/init.c            |    3 ++-
 arch/arm/boards/pm9261/init.c           |    2 +-
 arch/arm/boards/pm9263/init.c           |    2 +-
 arch/arm/boards/pm9g45/init.c           |    4 ++--
 arch/arm/boards/qil-a9260/init.c        |    4 ++--
 arch/arm/boards/tny-a926x/init.c        |    4 ++--
 arch/arm/boards/usb-a926x/init.c        |    3 ++-
 arch/arm/mach-at91/include/mach/board.h |   12 ++++++------
 15 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index f5d242f..a40d3b9 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -47,6 +47,7 @@ mem_initcall(at91rm9200ek_mem_init);
 
 static struct at91_usbh_data ek_usbh_data = {
 	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
 };
 
 #ifdef CONFIG_LED_GPIO
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index e9bfee6..5816a1d 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -59,7 +59,7 @@ static void ek_set_board_type(void)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
@@ -187,6 +187,7 @@ static void ek_usb_add_device_mci(void) {}
  */
 static struct at91_usbh_data __initdata ek_usbh_data = {
 	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
 };
 
 /*
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 8842cfe..0020c92 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -42,7 +42,7 @@
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
 	.cle		= 21,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC15,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 45a30fd..50e4009 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -40,7 +40,7 @@
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PA22,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 4b6d5c4..7d01d96 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -63,7 +63,7 @@ static void ek_set_board_revision(void)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC8,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 3d4ab5b..51c4fb0 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -44,7 +44,7 @@
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-	.det_pin	= 0,
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PD5,
 	.enable_pin	= AT91_PIN_PD4,
 	.ecc_mode	= NAND_ECC_HW,
@@ -186,7 +186,7 @@ static void ek_add_device_spi(void)
  */
 static struct at91_udc_data __initdata ek_udc_data = {
 	.vbus_pin	= AT91_PIN_PB16,
-	.pullup_pin	= 0,		/* pull-up driven by UDC */
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
 };
 
 struct gpio_led leds[] = {
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index ba5bc47..39765e0 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -53,7 +53,7 @@ struct w1_gpio_platform_data w1_pdata = {
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-	.det_pin	= 0,
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PD5,
 	.enable_pin	= AT91_PIN_PD4,
 	.ecc_mode	= NAND_ECC_HW,
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index aacef33..27c1ec7 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -38,7 +38,7 @@
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.ecc_mode	= NAND_ECC_HW,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
@@ -117,6 +117,7 @@ static struct atmel_mci_platform_data dss11_mci_data = {
 
 static struct at91_usbh_data dss11_usbh_data = {
 	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
 };
 
 static int dss11_mem_init(void)
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 6d2ac98..a91fa7a 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -47,7 +47,7 @@ struct w1_gpio_platform_data w1_pdata = {
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
 	.cle		= 21,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PA16,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 486df9a..6a92a67 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -47,7 +47,7 @@ struct w1_gpio_platform_data w1_pdata = {
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PB30,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index a79b128..a974139 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -46,7 +46,7 @@ struct w1_gpio_platform_data w1_pdata = {
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PD3,
 	.enable_pin	= AT91_PIN_PC14,
 	.bus_width_16	= 0,
@@ -102,7 +102,7 @@ static void pm9g45_add_device_mci(void) {}
 #ifdef CONFIG_USB_OHCI_AT91
 static struct at91_usbh_data  __initdata usbh_data = {
 	.ports		= 2,
-	.vbus_pin	= { AT91_PIN_PD0,  0x0 },
+	.vbus_pin	= { AT91_PIN_PD0,  -EINVAL },
 };
 
 static void __init pm9g45_add_device_usbh(void)
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 3bec4e2..a06566c 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -32,7 +32,7 @@
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-	.det_pin	= 0,
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 	.on_flash_bbt	= 1,
@@ -120,7 +120,7 @@ static void qil_a9260_phy_reset(void)
  */
 static struct at91_udc_data __initdata ek_udc_data = {
 	.vbus_pin	= AT91_PIN_PC5,
-	.pullup_pin	= 0,		/* pull-up driven by UDC */
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
 };
 
 static void __init qil_a9260_add_device_mb(void)
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 98f1d2b..e30cccf 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -52,7 +52,7 @@ static void tny_a9260_set_board_type(void)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-	.det_pin	= 0,
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 	.on_flash_bbt	= 1,
@@ -132,7 +132,7 @@ static void __init ek_add_device_macb(void) {}
  */
 static struct at91_udc_data __initdata ek_udc_data = {
 	.vbus_pin	= AT91_PIN_PB30,
-	.pullup_pin	= 0,		/* pull-up driven by UDC */
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
 };
 
 static struct spi_eeprom eeprom = {
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 5190aca..dd136da 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -55,7 +55,7 @@ static void usb_a9260_set_board_type(void)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
-/*	.det_pin	= ... not connected */
+	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 	.on_flash_bbt	= 1,
@@ -208,6 +208,7 @@ static void usb_a9260_add_device_mci(void) {}
 
 static struct at91_usbh_data ek_usbh_data = {
 	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
 };
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index d4a3e3b..b18f1c0 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -28,7 +28,7 @@
  /* USB Host */
 struct at91_usbh_data {
 	u8		ports;		/* number of ports on root hub */
-	u8		vbus_pin[2];	/* port power-control pin */
+	int		vbus_pin[2];	/* port power-control pin */
 };
 extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
 
@@ -46,9 +46,9 @@ extern void __init at91_add_device_udc(struct at91_udc_data *data);
 
  /* NAND / SmartMedia */
 struct atmel_nand_data {
-	u8		enable_pin;	/* chip enable */
-	u8		det_pin;	/* card detect */
-	u8		rdy_pin;	/* ready/busy */
+	int		enable_pin;	/* chip enable */
+	int		det_pin;	/* card detect */
+	int		rdy_pin;	/* ready/busy */
 	u8		ale;		/* address line number connected to ALE */
 	u8		cle;		/* address line number connected to CLE */
 	u8		bus_width_16;	/* buswidth is 16 bit */
@@ -148,8 +148,8 @@ struct atmel_mci_platform_data {
 	unsigned slot_b;
 	unsigned bus_width;
 	unsigned host_caps; /* MCI_MODE_* from mci.h */
-	unsigned detect_pin;
-	unsigned wp_pin;
+	int detect_pin;
+	int wp_pin;
 };
 
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
