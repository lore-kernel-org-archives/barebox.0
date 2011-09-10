Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R2T4d-0007dT-Qg
	for barebox@lists.infradead.org; Sat, 10 Sep 2011 19:18:44 +0000
Received: by fxd20 with SMTP id 20so4221120fxd.36
	for <barebox@lists.infradead.org>; Sat, 10 Sep 2011 12:18:42 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Sat, 10 Sep 2011 21:18:33 +0200
Message-Id: <1315682313-19130-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1315682313-19130-1-git-send-email-h.feurstein@gmail.com>
References: <1315682313-19130-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/2] at91sam9g45: add atmel-spi support
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |   41 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h  |    2 +
 2 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 022f3e1..ac95260 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -256,3 +256,44 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
 
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+/* SPI */
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start;
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
+	if (spi_id == 0) {
+		start = AT91SAM9G45_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PB0, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PB1, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PB2, 0);	/* SPI0_SPCK */
+
+		add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+	}
+
+	else if (spi_id == 1) {
+		start = AT91SAM9G45_BASE_SPI1;
+		at91_set_A_periph(AT91_PIN_PB14, 0);	/* SPI1_MISO */
+		at91_set_A_periph(AT91_PIN_PB15, 0);	/* SPI1_MOSI */
+		at91_set_A_periph(AT91_PIN_PB16, 0);	/* SPI1_SPCK */
+
+		add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+	}
+}
+
+#else
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index e88834b..2adc035 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -82,4 +82,6 @@ struct at91_spi_platform_data {
 	int *chipselect;	/* array of gpio_pins */
 	int num_chipselect;	/* chipselect array entry count */
 };
+
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
 #endif
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
