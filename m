Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkotX-0006cH-2V
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:11:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:11:10 +0200
Message-Id: <1400134270-21234-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] spi: omap: support swapping D0/D1
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

The OMAP SPI core allows swapping MISO/MOSI and some boards are
wired up that way, so add a property to swap the lines.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/spi/omap3_spi.c | 24 ++++++++++++++++++++++--
 drivers/spi/omap3_spi.h |  1 +
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 073a98f..c62288b 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -106,8 +106,15 @@ int spi_claim_bus(struct spi_device *spi)
 	/* standard 4-wire master mode:	SCK, MOSI/out, MISO/in, nCS
 	 * REVISIT: this controller could support SPI_3WIRE mode.
 	 */
-	conf &= ~(OMAP3_MCSPI_CHCONF_IS|OMAP3_MCSPI_CHCONF_DPE1);
-	conf |= OMAP3_MCSPI_CHCONF_DPE0;
+	if (omap3_master->swap_miso_mosi) {
+		/* swapped */
+		conf |= (OMAP3_MCSPI_CHCONF_IS | OMAP3_MCSPI_CHCONF_DPE1);
+		conf &= ~OMAP3_MCSPI_CHCONF_DPE0;
+	} else {
+		 /* bootloader default */
+		conf &= ~(OMAP3_MCSPI_CHCONF_IS | OMAP3_MCSPI_CHCONF_DPE1);
+		conf |= OMAP3_MCSPI_CHCONF_DPE0;
+	}
 
 	/* wordlength */
 	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
@@ -343,6 +350,17 @@ static int omap3_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
+static int omap3_spi_probe_dt(struct device_d *dev, struct omap3_spi_master *omap3_master)
+{
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+		return -ENODEV;
+
+	if (of_property_read_bool(dev->device_node, "ti,pindir-d0-out-d1-in"))
+		omap3_master->swap_miso_mosi = 1;
+
+	return 0;
+}
+
 static int omap3_spi_probe(struct device_d *dev)
 {
 	struct spi_master *master;
@@ -356,6 +374,8 @@ static int omap3_spi_probe(struct device_d *dev)
 
 	omap3_master = xzalloc(sizeof(*omap3_master));
 
+	omap3_spi_probe_dt(dev, omap3_master);
+
 	master = &omap3_master->master;
 	master->dev = dev;
 
diff --git a/drivers/spi/omap3_spi.h b/drivers/spi/omap3_spi.h
index ce4a29b..6fd6bda 100644
--- a/drivers/spi/omap3_spi.h
+++ b/drivers/spi/omap3_spi.h
@@ -93,6 +93,7 @@ struct omap3_spi_master {
 			     * offset of 0x100 between start of register space
 			     * and registers
 			     */
+	int swap_miso_mosi;
 };
 
 #endif /* _OMAP3_SPI_H_ */
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
