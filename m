Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlhBl-0006k8-JJ
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:33:36 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D1373104ED1F
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:42:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Dec 2012 15:31:45 +0100
Message-Id: <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121220142902.GI26483@game.jcrosoft.org>
References: <20121220142902.GI26483@game.jcrosoft.org>
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
Subject: [PATCH 1/6] at91: use gpio_is_valid to check gpio
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |   10 +++++-----
 arch/arm/mach-at91/at91sam9260_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9261_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9263_devices.c |   16 ++++++++--------
 arch/arm/mach-at91/at91sam9g45_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9n12_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9x5_devices.c  |   14 +++++++-------
 drivers/mtd/nand/atmel_nand.c            |    4 ++--
 drivers/usb/gadget/at91_udc.c            |    2 +-
 9 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 4751664..4109172 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -54,12 +54,12 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #ifdef CONFIG_USB_GADGET_DRIVER_AT91
 void __init at91_add_device_udc(struct at91_udc_data *data)
 {
-	if (data->vbus_pin > 0) {
+	if (gpio_is_valid(data->vbus_pin)) {
 		at91_set_gpio_input(data->vbus_pin, 0);
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
 
-	if (data->pullup_pin > 0)
+	if (gpio_is_valid(data->pullup_pin))
 		at91_set_gpio_output(data->pullup_pin, 0);
 
 	add_generic_device("at91_udc", DEVICE_ID_DYNAMIC, NULL, AT91RM9200_BASE_UDP,
@@ -134,15 +134,15 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	at91_set_A_periph(AT91_PIN_PC1, 0);		/* SMOE */
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 04a9c5f..a893a95 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -59,7 +59,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #ifdef CONFIG_USB_GADGET_DRIVER_AT91
 void __init at91_add_device_udc(struct at91_udc_data *data)
 {
-	if (data->vbus_pin > 0) {
+	if (gpio_is_valid(data->vbus_pin)) {
 		at91_set_gpio_input(data->vbus_pin, 0);
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
@@ -137,15 +137,15 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_CS3A_SMC_SMARTMEDIA);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	add_generic_device_res("atmel_nand", 0, nand_resources,
@@ -221,7 +221,7 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
 		cs_pin = pdata->chipselect[i];
 
 		/* enable chip-select pin */
-		if (cs_pin > 0)
+		if (gpio_is_valid(cs_pin))
 			at91_set_gpio_output(cs_pin, 1);
 	}
 
@@ -346,12 +346,12 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
 
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	/* CLK */
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 68d75c3..becd25f 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -62,7 +62,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #ifdef CONFIG_USB_GADGET_DRIVER_AT91
 void __init at91_add_device_udc(struct at91_udc_data *data)
 {
-	if (data->vbus_pin > 0) {
+	if (gpio_is_valid(data->vbus_pin)) {
 		at91_set_gpio_input(data->vbus_pin, 0);
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
@@ -86,15 +86,15 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_CS3A_SMC_SMARTMEDIA);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	at91_set_A_periph(AT91_PIN_PC0, 0);		/* NANDOE */
@@ -172,7 +172,7 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 		cs_pin = pdata->chipselect[i];
 
 		/* enable chip-select pin */
-		if (cs_pin > 0)
+		if (gpio_is_valid(cs_pin))
 			at91_set_gpio_output(cs_pin, 1);
 	}
 
@@ -260,12 +260,12 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
 
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	/* CLK */
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index fcd157d..b72cc5a 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -49,7 +49,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
-		if (data->vbus_pin[i])
+		if (gpio_is_valid(data->vbus_pin[i]))
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
@@ -67,7 +67,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #ifdef CONFIG_USB_GADGET_DRIVER_AT91
 void __init at91_add_device_udc(struct at91_udc_data *data)
 {
-	if (data->vbus_pin > 0) {
+	if (gpio_is_valid(data->vbus_pin)) {
 		at91_set_gpio_input(data->vbus_pin, 0);
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
@@ -139,15 +139,15 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	at91_sys_write(AT91_MATRIX_EBI0CSA, csa | AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	add_generic_device_res("atmel_nand", DEVICE_ID_DYNAMIC, nand_resources,
@@ -222,7 +222,7 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 		cs_pin = pdata->chipselect[i];
 
 		/* enable chip-select pin */
-		if (cs_pin > 0)
+		if (gpio_is_valid(cs_pin))
 			at91_set_gpio_output(cs_pin, 1);
 	}
 
@@ -310,12 +310,12 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
 
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	if (mmc_id == 0) {		/* MCI0 */
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 2529404..c5f99b1 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -43,7 +43,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
-		if (data->vbus_pin[i])
+		if (gpio_is_valid(data->vbus_pin[i]))
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
@@ -115,15 +115,15 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	add_generic_device_res("atmel_nand", DEVICE_ID_DYNAMIC, nand_resources,
@@ -256,12 +256,12 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
 
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	if (mmc_id == 0) {		/* MCI0 */
@@ -348,7 +348,7 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 		cs_pin = pdata->chipselect[i];
 
 		/* enable chip-select pin */
-		if (cs_pin > 0)
+		if (gpio_is_valid(cs_pin))
 			at91_set_gpio_output(cs_pin, 1);
 	}
 
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 33baf41..3f41f3e 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -45,7 +45,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
-		if (data->vbus_pin[i])
+		if (gpio_is_valid(data->vbus_pin[i]))
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
@@ -63,7 +63,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #ifdef CONFIG_USB_GADGET_DRIVER_AT91
 void __init at91_add_device_udc(struct at91_udc_data *data)
 {
-	if (data->vbus_pin > 0) {
+	if (gpio_is_valid(data->vbus_pin)) {
 		at91_set_gpio_input(data->vbus_pin, 0);
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
@@ -87,11 +87,11 @@ void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *da
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	/* CLK */
@@ -167,15 +167,15 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	at91_sys_write(AT91_MATRIX_EBICSA, csa);
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	/* configure NANDOE */
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index c2b64e9..e92fa0d 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -44,7 +44,7 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
-		if (data->vbus_pin[i])
+		if (gpio_is_valid(data->vbus_pin[i]))
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
@@ -137,11 +137,11 @@ void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *da
 		return;
 
 	/* input/irq */
-	if (data->detect_pin) {
+	if (gpio_is_valid(data->detect_pin)) {
 		at91_set_gpio_input(data->detect_pin, 1);
 		at91_set_deglitch(data->detect_pin, 1);
 	}
-	if (data->wp_pin)
+	if (gpio_is_valid(data->wp_pin))
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	if (mmc_id == 0) {		/* MCI0 */
@@ -226,15 +226,15 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	data->pmecc_lookup_table_offset = 0x8000;
 
 	/* enable pin */
-	if (data->enable_pin)
+	if (gpio_is_valid(data->enable_pin))
 		at91_set_gpio_output(data->enable_pin, 1);
 
 	/* ready/busy pin */
-	if (data->rdy_pin)
+	if (gpio_is_valid(data->rdy_pin))
 		at91_set_gpio_input(data->rdy_pin, 1);
 
 	/* card detect pin */
-	if (data->det_pin)
+	if (gpio_is_valid(data->det_pin))
 		at91_set_gpio_input(data->det_pin, 1);
 
 	add_generic_device_res("atmel_nand", 0, nand_resources,
@@ -336,7 +336,7 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 		cs_pin = pdata->chipselect[i];
 
 		/* enable chip-select pin */
-		if (cs_pin > 0)
+		if (gpio_is_valid(cs_pin))
 			at91_set_gpio_output(cs_pin, 1);
 	}
 
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 69e8171..7e0de51 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1114,7 +1114,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	nand_chip->IO_ADDR_W = host->io_base;
 	nand_chip->cmd_ctrl = atmel_nand_cmd_ctrl;
 
-	if (host->board->rdy_pin)
+	if (gpio_is_valid(host->board->rdy_pin))
 		nand_chip->dev_ready = atmel_nand_device_ready;
 
 	nand_chip->ecc.mode = NAND_ECC_SOFT;
@@ -1137,7 +1137,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	atmel_nand_enable(host);
 
-	if (host->board->det_pin) {
+	if (gpio_is_valid(host->board->det_pin)) {
 		if (gpio_get_value(host->board->det_pin)) {
 			printk("No SmartMedia card inserted.\n");
 			res = ENXIO;
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 80d6de0..a2cd99b 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1496,7 +1496,7 @@ static int __init at91udc_probe(struct device_d *dev)
 	at91_udp_write(udc, AT91_UDP_ICR, 0xffffffff);
 	clk_disable(udc->iclk);
 
-	if (udc->board.vbus_pin > 0) {
+	if (gpio_is_valid(udc->board.vbus_pin)) {
 		/*
 		 * Get the initial state of VBUS - we cannot expect
 		 * a pending interrupt.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
