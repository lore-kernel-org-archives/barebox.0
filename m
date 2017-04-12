Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyFHi-0004n8-A7
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 10:14:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Apr 2017 12:13:35 +0200
Message-Id: <20170412101336.32256-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] of: use of_property_read_bool where appropriate
To: Barebox List <barebox@lists.infradead.org>

Use of_property_read_bool where boolean properties are read.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at25.c | 2 +-
 drivers/net/dm9k.c    | 2 +-
 drivers/spi/spi.c     | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 1caaebd371..9f16f964a8 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -290,7 +290,7 @@ static int at25_np_to_chip(struct device_d *dev,
 				val);
 			return -ENODEV;
 		}
-		if (of_find_property(np, "read-only", NULL))
+		if (of_property_read_bool(np, "read-only"))
 			chip->flags |= EE_READONLY;
 	}
 	return 0;
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 25f08602f6..c99d188ded 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -737,7 +737,7 @@ static int dm9000_parse_dt(struct device_d *dev, struct dm9k *priv)
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !np)
 		return -ENODEV;
 
-	if (of_find_property(np, "davicom,no-eeprom", NULL)) {
+	if (of_property_read_bool(np, "davicom,no-eeprom")) {
 		priv->srom = 0;
 	} else {
 		priv->srom = 1;
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 99412b07e2..5650098a0a 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -118,13 +118,13 @@ static void spi_of_register_slaves(struct spi_master *master)
 		chip.name = xstrdup(n->name);
 		chip.bus_num = master->bus_num;
 		/* Mode (clock phase/polarity/etc.) */
-		if (of_find_property(n, "spi-cpha", NULL))
+		if (of_property_read_bool(n, "spi-cpha"))
 			chip.mode |= SPI_CPHA;
-		if (of_find_property(n, "spi-cpol", NULL))
+		if (of_property_read_bool(n, "spi-cpol"))
 			chip.mode |= SPI_CPOL;
-		if (of_find_property(n, "spi-cs-high", NULL))
+		if (of_property_read_bool(n, "spi-cs-high"))
 			chip.mode |= SPI_CS_HIGH;
-		if (of_find_property(n, "spi-3wire", NULL))
+		if (of_property_read_bool(n, "spi-3wire"))
 			chip.mode |= SPI_3WIRE;
 		of_property_read_u32(n, "spi-max-frequency",
 				&chip.max_speed_hz);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
