Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpKw-0006IH-1U
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:39:49 +0200
Message-Id: <1400135990-5391-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] eeprom: at25: Add dt probe support
To: barebox@lists.infradead.org

The parsing code has been taken directly from Linux 3.15-rc5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at25.c | 98 ++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 86 insertions(+), 12 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 0a099e1..266f261 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -238,27 +238,94 @@ static struct file_operations at25_fops = {
 	.lseek	= dev_lseek_default,
 };
 
+static int at25_np_to_chip(struct device_d *dev,
+			   struct device_node *np,
+			   struct spi_eeprom *chip)
+{
+	u32 val;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return -ENODEV;
+
+	memset(chip, 0, sizeof(*chip));
+	strncpy(chip->name, np->name, sizeof(chip->name));
+
+	if (of_property_read_u32(np, "size", &val) == 0 ||
+	    of_property_read_u32(np, "at25,byte-len", &val) == 0) {
+		chip->size = val;
+	} else {
+		dev_err(dev, "Error: missing \"size\" property\n");
+		return -ENODEV;
+	}
+
+	if (of_property_read_u32(np, "pagesize", &val) == 0 ||
+	    of_property_read_u32(np, "at25,page-size", &val) == 0) {
+		chip->page_size = (u16)val;
+	} else {
+		dev_err(dev, "Error: missing \"pagesize\" property\n");
+		return -ENODEV;
+	}
+
+	if (of_property_read_u32(np, "at25,addr-mode", &val) == 0) {
+		chip->flags = (u16)val;
+	} else {
+		if (of_property_read_u32(np, "address-width", &val)) {
+			dev_err(dev,
+				"Error: missing \"address-width\" property\n");
+			return -ENODEV;
+		}
+		switch (val) {
+		case 8:
+			chip->flags |= EE_ADDR1;
+			break;
+		case 16:
+			chip->flags |= EE_ADDR2;
+			break;
+		case 24:
+			chip->flags |= EE_ADDR3;
+			break;
+		default:
+			dev_err(dev,
+				"Error: bad \"address-width\" property: %u\n",
+				val);
+			return -ENODEV;
+		}
+		if (of_find_property(np, "read-only", NULL))
+			chip->flags |= EE_READONLY;
+	}
+	return 0;
+}
+
 static int at25_probe(struct device_d *dev)
 {
 	int err, sr;
 	int addrlen;
 	struct at25_data *at25 = NULL;
-	const struct spi_eeprom *chip;
+	struct spi_eeprom *chip;
+
+	at25 = xzalloc(sizeof(*at25));
 
 	/* Chip description */
-	chip = dev->platform_data;
-	if (!chip) {
-		dev_dbg(dev, "no chip description\n");
-		err = -ENODEV;
-		goto fail;
+	if (dev->device_node) {
+		err = at25_np_to_chip(dev, dev->device_node, &at25->chip);
+		if (err)
+			goto fail;
+	} else {
+		chip = dev->platform_data;
+		if (!chip) {
+			dev_dbg(dev, "no chip description\n");
+			err =  -ENODEV;
+			goto fail;
+		}
+		at25->chip = *chip;
 	}
 
 	/* For now we only support 8/16/24 bit addressing */
-	if (chip->flags & EE_ADDR1) {
+	if (at25->chip.flags & EE_ADDR1) {
 		addrlen = 1;
-	} else if (chip->flags & EE_ADDR2) {
+	} else if (at25->chip.flags & EE_ADDR2) {
 		addrlen = 2;
-	} else if (chip->flags & EE_ADDR3) {
+	} else if (at25->chip.flags & EE_ADDR3) {
 		addrlen = 3;
 	} else {
 		dev_dbg(dev, "unsupported address type\n");
@@ -266,14 +333,12 @@ static int at25_probe(struct device_d *dev)
 		goto fail;
 	}
 
-	at25 = xzalloc(sizeof(*at25));
-	at25->chip = *chip;
 	at25->addrlen = addrlen;
 	at25->spi = dev->type_data;
 	at25->spi->mode = SPI_MODE_0;
 	at25->spi->bits_per_word = 8;
 	at25->cdev.ops = &at25_fops;
-	at25->cdev.size = chip->size;
+	at25->cdev.size = at25->chip.size;
 	at25->cdev.dev = dev;
 	at25->cdev.name = at25->chip.name[0] ? at25->chip.name : DRIVERNAME;
 	at25->cdev.priv = at25;
@@ -299,8 +364,17 @@ fail:
 	return err;
 }
 
+static __maybe_unused struct of_device_id at25_dt_ids[] = {
+	{
+		.compatible = "atmel,at25",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d at25_driver = {
 	.name  = DRIVERNAME,
+	.of_compatible = DRV_OF_COMPAT(at25_dt_ids),
 	.probe = at25_probe,
 };
 device_spi_driver(at25_driver);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
