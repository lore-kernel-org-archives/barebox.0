Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmX-0005Wq-Rp
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:07 +0000
Received: by mail-pg0-x242.google.com with SMTP id 77so4616125pgc.0
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:08 -0800
Message-Id: <20170308220909.4560-20-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/20] spi: atmel_spi: Use VERSION register instead of CPU type
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use VERSION register instead of CPU type to determine IP block's version
and capabilities. This what corresponding Linux kernel driver does.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/atmel_spi.c | 35 +++++++++++++++++++++++++++++------
 drivers/spi/atmel_spi.h |  1 +
 2 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 67028e6..ef57867 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -40,11 +40,16 @@
 
 #include "atmel_spi.h"
 
+struct atmel_spi_caps {
+	bool	is_spi2;
+};
+
 struct atmel_spi {
 	struct spi_master	master;
 	void __iomem		*regs;
 	struct clk		*clk;
 	int			*cs_pins;
+	struct atmel_spi_caps	caps;
 };
 
 #define to_atmel_spi(p)		container_of(p, struct atmel_spi, master)
@@ -62,9 +67,9 @@ struct atmel_spi {
  * register, but I haven't checked that it exists on all chips, and
  * this is cheaper anyway.
  */
-static inline bool atmel_spi_is_v2(void)
+static inline bool atmel_spi_is_v2(struct atmel_spi *as)
 {
-	return !cpu_is_at91rm9200();
+	return as->caps.is_spi2;
 }
 
 /*
@@ -104,7 +109,7 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 
 	csr = (u32)spi->controller_data;
 
-	if (atmel_spi_is_v2()) {
+	if (atmel_spi_is_v2(as)) {
 		/*
 		 * Always use CSR0. This ensures that the clock
 		 * switches to the correct idle polarity before we
@@ -163,8 +168,9 @@ static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
 			npcs_pin, active ? " (low)" : "",
 			mr);
 
-	if (atmel_spi_is_v2() || npcs_pin != AT91_PIN_PA3)
+	if (atmel_spi_is_v2(as) || npcs_pin != AT91_PIN_PA3) {
 		gpio_set_value(npcs_pin, !active);
+	}
 }
 
 static int atmel_spi_setup(struct spi_device *spi)
@@ -199,7 +205,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 			spi->max_speed_hz);
 
 	bus_hz = clk_get_rate(as->clk);
-	if (!atmel_spi_is_v2())
+	if (!atmel_spi_is_v2(as))
 		bus_hz /= 2;
 
 	if (spi->max_speed_hz) {
@@ -248,7 +254,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 
 	cs_deactivate(as, spi);
 
-	if (!atmel_spi_is_v2())
+	if (!atmel_spi_is_v2(as))
 		spi_writel(as, CSR0 + 4 * spi->chip_select, csr);
 
 	return 0;
@@ -373,6 +379,21 @@ err:
 	return ret;
 }
 
+static inline unsigned int atmel_get_version(struct atmel_spi *as)
+{
+	return spi_readl(as, VERSION) & 0x00000fff;
+}
+
+static void atmel_get_caps(struct atmel_spi *as)
+{
+	unsigned int version;
+
+	version = atmel_get_version(as);
+	dev_info(as->master.dev, "version: 0x%x\n", version);
+
+	as->caps.is_spi2 = version > 0x121;
+}
+
 static int atmel_spi_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -409,6 +430,8 @@ static int atmel_spi_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	as->regs = IOMEM(iores->start);
 
+	atmel_get_caps(as);
+
 	for (i = 0; i < master->num_chipselect; i++) {
 		ret = gpio_request(as->cs_pins[i], dev_name(dev));
 		if (ret)
diff --git a/drivers/spi/atmel_spi.h b/drivers/spi/atmel_spi.h
index 38ce119..3f4d7ba 100644
--- a/drivers/spi/atmel_spi.h
+++ b/drivers/spi/atmel_spi.h
@@ -23,6 +23,7 @@
 #define SPI_CSR1				0x0034
 #define SPI_CSR2				0x0038
 #define SPI_CSR3				0x003c
+#define SPI_VERSION				0x00fc
 #define SPI_RPR					0x0100
 #define SPI_RCR					0x0104
 #define SPI_TPR					0x0108
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
