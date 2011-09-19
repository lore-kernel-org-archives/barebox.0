Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6x-0000VZ-95
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:15 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id B3E5D10140A2
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:43 +0200
Message-Id: <1316434549-15243-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/12] at91: nand switch ecc base to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c     |    2 --
 arch/arm/boards/at91sam9261ek/init.c     |    1 -
 arch/arm/boards/at91sam9263ek/init.c     |    2 --
 arch/arm/boards/pm9263/init.c            |    2 --
 arch/arm/mach-at91/at91sam9260_devices.c |   17 +++++++++++++++--
 arch/arm/mach-at91/at91sam9263_devices.c |   17 +++++++++++++++--
 arch/arm/mach-at91/at91sam9g45_devices.c |   20 +++++++++++++++-----
 arch/arm/mach-at91/include/mach/board.h  |    1 -
 drivers/mtd/nand/atmel_nand.c            |    8 ++++----
 9 files changed, 49 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index e4b98bf..8fab557 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -63,8 +63,6 @@ static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
-	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC),
-	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 73b411a..69111a0 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -43,7 +43,6 @@ static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
 	.cle		= 21,
 /*	.det_pin	= ... not connected */
-	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PC15,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 9e0981f..278e312 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -44,8 +44,6 @@ static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
-	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC0),
-	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PA22,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index a1fe0cd..8f451e8 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -43,8 +43,6 @@ static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
-	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC0),
-	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PB30,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 4540f4b..4607646 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -63,6 +63,19 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= SZ_256M,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= AT91_BASE_SYS + AT91_ECC,
+		.size	= 512,
+		.flags	= IORESOURCE_MEM,
+	}
+};
+
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -85,8 +98,8 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device("atmel_nand", 0, NULL, AT91_CHIPSELECT_3, 0x10,
-			   IORESOURCE_MEM, data);
+	add_generic_device_res("atmel_nand", 0, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index c7ae45a..f5058dc 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -62,6 +62,19 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= SZ_256M,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= AT91_BASE_SYS + AT91_ECC0,
+		.size	= 512,
+		.flags	= IORESOURCE_MEM,
+	}
+};
+
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -84,8 +97,8 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
-			   IORESOURCE_MEM, data);
+	add_generic_device_res("atmel_nand", -1, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index e18682b..8bc1104 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -63,6 +63,19 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= SZ_256M,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= AT91_BASE_SYS + AT91_ECC,
+		.size	= 512,
+		.flags	= IORESOURCE_MEM,
+	}
+};
+
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -70,9 +83,6 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (!data)
 		return;
 
-	data->ecc_base = (void __iomem *)(AT91_BASE_SYS + AT91_ECC);
-	data->ecc_mode	= NAND_ECC_SOFT;
-
 	csa = at91_sys_read(AT91_MATRIX_EBICSA);
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
 
@@ -88,8 +98,8 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
-			   IORESOURCE_MEM, data);
+	add_generic_device_res("atmel_nand", -1, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 2adc035..f970ad8 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -29,7 +29,6 @@ void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
 
  /* NAND / SmartMedia */
 struct atmel_nand_data {
-	void __iomem	*ecc_base;
 	u8		enable_pin;	/* chip enable */
 	u8		det_pin;	/* card detect */
 	u8		rdy_pin;	/* ready/busy */
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index f79be9a..0710407 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -399,13 +399,13 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	if (host->board->rdy_pin)
 		nand_chip->dev_ready = atmel_nand_device_ready;
 
-	nand_chip->ecc.mode = pdata->ecc_mode;
+	nand_chip->ecc.mode = NAND_ECC_SOFT;
 
 	if (pdata->ecc_mode == NAND_ECC_HW) {
-		if (!pdata->ecc_base)
-			return -ENODEV;
+		host->ecc = dev_request_mem_region(dev, 1);
 
-		host->ecc = pdata->ecc_base;
+		if (!host->ecc)
+			return -ENODEV;
 
 		nand_chip->ecc.mode = NAND_ECC_HW;
 		nand_chip->ecc.calculate = atmel_nand_calculate;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
