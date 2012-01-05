Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rinf6-00052q-KL
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:47:22 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1339D1058624
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:48:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:40:49 +0100
Message-Id: <1325770850-11776-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] at91: add spi device ressources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |   32 +++++++++++++++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   44 +++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   44 +++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   45 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   21 ++++++-------
 5 files changed, 175 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 68bcffc..1fc78ab 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -154,6 +154,38 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 /* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+
+	BUG_ON(spi_id > 0);
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (cs_pin > 0)
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	at91_set_A_periph(AT91_PIN_PA0, 0);	/* MISO */
+	at91_set_A_periph(AT91_PIN_PA1, 0);	/* MOSI */
+	at91_set_A_periph(AT91_PIN_PA2, 0);	/* SPCK */
+
+	add_generic_device("atmel_spi", spi_id, NULL, AT91RM9200_BASE_SPI,
+			   SZ_16K, IORESOURCE_MEM, pdata);
+}
+#else
+void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
+
+/* --------------------------------------------------------------------
  *  UART
  * -------------------------------------------------------------------- */
 
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 8e8ea3b..695a3ee 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -150,6 +150,50 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (cs_pin > 0)
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	/* Configure SPI bus(es) */
+	switch (spi_id) {
+	case 0:
+		start = AT91SAM9260_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PA0, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PA1, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PA2, 0);	/* SPI1_SPCK */
+		break;
+	case 1:
+		start = AT91SAM9260_BASE_SPI1;
+		at91_set_A_periph(AT91_PIN_PB0, 0);	/* SPI1_MISO */
+		at91_set_A_periph(AT91_PIN_PB1, 0);	/* SPI1_MOSI */
+		at91_set_A_periph(AT91_PIN_PB2, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PB14, 0);		/* DRXD */
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index ff7a938..3f55e2e 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -102,6 +102,50 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (cs_pin > 0)
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	/* Configure SPI bus(es) */
+	switch (spi_id) {
+	case 0:
+		start = AT91SAM9261_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PA0, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PA1, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PA2, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = AT91SAM9213_BASE_SPI1;
+		at91_set_A_periph(AT91_PIN_PB30, 0);	/* SPI1_MISO */
+		at91_set_A_periph(AT91_PIN_PB31, 0);	/* SPI1_MOSI */
+		at91_set_A_periph(AT91_PIN_PB29, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index d447e24..ce6221d 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -152,6 +152,50 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (cs_pin > 0)
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	/* Configure SPI bus(es) */
+	switch (spi_id) {
+	case 0:
+		start = AT91SAM9263_BASE_SPI0;
+		at91_set_B_periph(AT91_PIN_PA0, 0);	/* SPI0_MISO */
+		at91_set_B_periph(AT91_PIN_PA1, 0);	/* SPI0_MOSI */
+		at91_set_B_periph(AT91_PIN_PA2, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = AT91SAM9263_BASE_SPI1;
+		at91_set_A_periph(AT91_PIN_PB12, 0);	/* SPI1_MISO */
+		at91_set_A_periph(AT91_PIN_PB13, 0);	/* SPI1_MOSI */
+		at91_set_A_periph(AT91_PIN_PB14, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PC30, 0);		/* DRXD */
@@ -284,3 +328,4 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
+
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 5f1a45a..d087e1f 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -299,7 +299,9 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
 	int cs_pin;
-	resource_size_t start;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
 
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
@@ -310,27 +312,24 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 	}
 
 	/* Configure SPI bus(es) */
-	if (spi_id == 0) {
+	switch (spi_id) {
+	case 0:
 		start = AT91SAM9G45_BASE_SPI0;
 		at91_set_A_periph(AT91_PIN_PB0, 0);	/* SPI0_MISO */
 		at91_set_A_periph(AT91_PIN_PB1, 0);	/* SPI0_MOSI */
 		at91_set_A_periph(AT91_PIN_PB2, 0);	/* SPI0_SPCK */
-
-		add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
-			   IORESOURCE_MEM, pdata);
-	}
-
-	else if (spi_id == 1) {
+		break;
+	case 1:
 		start = AT91SAM9G45_BASE_SPI1;
 		at91_set_A_periph(AT91_PIN_PB14, 0);	/* SPI1_MISO */
 		at91_set_A_periph(AT91_PIN_PB15, 0);	/* SPI1_MOSI */
 		at91_set_A_periph(AT91_PIN_PB16, 0);	/* SPI1_SPCK */
+		break;
+	}
 
-		add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
 			   IORESOURCE_MEM, pdata);
-	}
 }
-
 #else
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
