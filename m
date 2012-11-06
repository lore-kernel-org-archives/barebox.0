Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow7-00080J-0L
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:49 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C1891FFBD8E
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:33 +0100
Message-Id: <1352230416-9396-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121106193010.GE25679@game.jcrosoft.org>
 <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] atmel_spi: fix cs support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |  122 ++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 100 insertions(+), 22 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 17b91eb..ba1e467 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -66,16 +66,104 @@ static inline bool atmel_spi_is_v2(void)
 	return !cpu_is_at91rm9200();
 }
 
-static void atmel_spi_chipselect(struct spi_device *spi, struct atmel_spi *as, int on)
+/*
+ * Earlier SPI controllers (e.g. on at91rm9200) have a design bug whereby
+ * they assume that spi slave device state will not change on deselect, so
+ * that automagic deselection is OK.  ("NPCSx rises if no data is to be
+ * transmitted")  Not so!  Workaround uses nCSx pins as GPIOs; or newer
+ * controllers have CSAAT and friends.
+ *
+ * Since the CSAAT functionality is a bit weird on newer controllers as
+ * well, we use GPIO to control nCSx pins on all controllers, updating
+ * MR.PCS to avoid confusing the controller.  Using GPIOs also lets us
+ * support active-high chipselects despite the controller's belief that
+ * only active-low devices/systems exists.
+ *
+ * However, at91rm9200 has a second erratum whereby nCS0 doesn't work
+ * right when driven with GPIO.  ("Mode Fault does not allow more than one
+ * Master on Chip Select 0.")  No workaround exists for that ... so for
+ * nCS0 on that chip, we (a) don't use the GPIO, (b) can't support CS_HIGH,
+ * and (c) will trigger that first erratum in some cases.
+ *
+ * TODO: Test if the atmel_spi_is_v2() branch below works on
+ * AT91RM9200 if we use some other register than CSR0. However, don't
+ * do this unconditionally since AP7000 has an errata where the BITS
+ * field in CSR0 overrides all other CSRs.
+ */
+
+static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 {
 	struct spi_master *master = &as->master;
-	int cs_pin;
-	int val = ((spi->mode & SPI_CS_HIGH) != 0) == on;
+	int npcs_pin;
+	unsigned active = spi->mode & SPI_CS_HIGH;
+	u32 mr, csr;
 
 	BUG_ON(spi->chip_select >= master->num_chipselect);
-	cs_pin = as->cs_pins[spi->chip_select];
+	npcs_pin = as->cs_pins[spi->chip_select];
+
+	csr = (u32)spi->controller_data;
 
-	gpio_direction_output(cs_pin, val);
+	if (atmel_spi_is_v2()) {
+		/*
+		 * Always use CSR0. This ensures that the clock
+		 * switches to the correct idle polarity before we
+		 * toggle the CS.
+		 */
+		spi_writel(as, CSR0, csr);
+		spi_writel(as, MR, SPI_BF(PCS, 0x0e) | SPI_BIT(MODFDIS)
+				| SPI_BIT(MSTR));
+		mr = spi_readl(as, MR);
+		gpio_set_value(npcs_pin, active);
+	} else {
+		u32 cpol = (spi->mode & SPI_CPOL) ? SPI_BIT(CPOL) : 0;
+		int i;
+		u32 csr;
+
+		/* Make sure clock polarity is correct */
+		for (i = 0; i < spi->master->num_chipselect; i++) {
+			csr = spi_readl(as, CSR0 + 4 * i);
+			if ((csr ^ cpol) & SPI_BIT(CPOL))
+				spi_writel(as, CSR0 + 4 * i,
+						csr ^ SPI_BIT(CPOL));
+		}
+
+		mr = spi_readl(as, MR);
+		mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
+		if (npcs_pin != AT91_PIN_PA3)
+			gpio_set_value(npcs_pin, active);
+		spi_writel(as, MR, mr);
+	}
+
+	dev_dbg(&spi->dev, "activate %u%s, mr %08x\n",
+			npcs_pin, active ? " (high)" : "",
+			mr);
+}
+
+static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
+{
+	struct spi_master *master = &as->master;
+	int npcs_pin;
+	unsigned active = spi->mode & SPI_CS_HIGH;
+	u32 mr;
+
+	BUG_ON(spi->chip_select >= master->num_chipselect);
+	npcs_pin = as->cs_pins[spi->chip_select];
+
+	/* only deactivate *this* device; sometimes transfers to
+	 * another device may be active when this routine is called.
+	 */
+	mr = spi_readl(as, MR);
+	if (~SPI_BFEXT(PCS, mr) & (1 << spi->chip_select)) {
+		mr = SPI_BFINS(PCS, 0xf, mr);
+		spi_writel(as, MR, mr);
+	}
+
+	dev_dbg(&spi->dev, "DEactivate %u%s, mr %08x\n",
+			npcs_pin, active ? " (low)" : "",
+			mr);
+
+	if (atmel_spi_is_v2() || npcs_pin != AT91_PIN_PA3)
+		gpio_set_value(npcs_pin, !active);
 }
 
 static int atmel_spi_setup(struct spi_device *spi)
@@ -101,12 +189,6 @@ static int atmel_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
-	if (spi->controller_data) {
-		csr = (u32)spi->controller_data;
-		spi_writel(as, CSR0, csr);
-		goto out;
-	}
-
 	dev_dbg(master->dev, "%s mode 0x%08x bits_per_word: %d speed: %d\n",
 			__func__, spi->mode, spi->bits_per_word,
 			spi->max_speed_hz);
@@ -157,17 +239,12 @@ static int atmel_spi_setup(struct spi_device *spi)
 		"setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\n",
 		bus_hz / scbr, bits, spi->mode, spi->chip_select, csr);
 
-	spi_writel(as, CSR0, csr);
+	spi->controller_data = (void *)csr;
 
-	/*
-	 * store the csr-setting when bits are defined. This happens usually
-	 * after the specific spi_device driver has been probed.
-	 */
-	if (bits > 0)
-		spi->controller_data = (void *)csr;
+	cs_deactivate(as, spi);
 
-out:
-	atmel_spi_chipselect(spi, as, 0);
+	if (!atmel_spi_is_v2())
+		spi_writel(as, CSR0 + 4 * spi->chip_select, csr);
 
 	return 0;
 }
@@ -260,7 +337,8 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 			t, t->len, t->tx_buf, t->rx_buf);
 	}
 #endif
-	atmel_spi_chipselect(spi, as, 1);
+
+	cs_activate(as, spi);
 
 	list_for_each_entry(t, &mesg->transfers, transfer_list) {
 
@@ -271,7 +349,7 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	}
 
 out:
-	atmel_spi_chipselect(spi, as, 0);
+	cs_deactivate(as, spi);
 	return ret;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
