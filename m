Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0b6-00019P-G2
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:38:37 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 85F0DFFABF4
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 20:48:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 20:36:19 +0100
Message-Id: <1351798582-22667-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121101193002.GL29599@game.jcrosoft.org>
References: <20121101193002.GL29599@game.jcrosoft.org>
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
Subject: [PATCH 1/4] at91sam9x5: add spi support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5.c         |    2 +
 arch/arm/mach-at91/at91sam9x5_devices.c |   62 +++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index c256989..a9065ff 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -205,6 +205,8 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
 	CLKDEV_CON_DEV_ID("macb_clk", "macb1", &macb1_clk),
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 5a24325..710ded7 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -228,6 +228,68 @@ void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_de
 #endif
 
 /* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static unsigned spi0_standard_cs[4] = { AT91_PIN_PA14, AT91_PIN_PA7, AT91_PIN_PA1, AT91_PIN_PB3 };
+
+static unsigned spi1_standard_cs[4] = { AT91_PIN_PA8, AT91_PIN_PA0, AT91_PIN_PA31, AT91_PIN_PA30 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
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
+		start = AT91SAM9X5_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PA11, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PA12, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PA13, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = AT91SAM9X5_BASE_SPI1;
+		at91_set_B_periph(AT91_PIN_PA21, 0);	/* SPI1_MISO */
+		at91_set_B_periph(AT91_PIN_PA22, 0);	/* SPI1_MOSI */
+		at91_set_B_periph(AT91_PIN_PA23, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
+/* --------------------------------------------------------------------
  *  UART
  * -------------------------------------------------------------------- */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
