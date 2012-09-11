Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZI-0003hU-Na
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:31:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:50 +0200
Message-Id: <1347370313-15184-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] SPI: Put SPI devices on their own bus bus
To: barebox@lists.infradead.org

This patch adds a SPI bus on which the SPI devices and drivers register.
This makes it cleaner as SPI devices won't accidently end up probed by
a platform_device driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at25.c |    2 +-
 drivers/mfd/mc13xxx.c |    2 +-
 drivers/mfd/mc34708.c |    2 +-
 drivers/nor/m25p80.c  |    2 +-
 drivers/spi/spi.c     |   24 ++++++++++++++++++++++++
 include/spi/spi.h     |    7 +++++++
 6 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 03d191e..5578c78 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -312,7 +312,7 @@ static struct driver_d at25_driver = {
 
 static int at25_init(void)
 {
-	register_driver(&at25_driver);
+	spi_register_driver(&at25_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 58394a7..42ed960 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -367,7 +367,7 @@ static struct driver_d mc_spi_driver = {
 
 static int mc_spi_init(void)
 {
-	return register_driver(&mc_spi_driver);
+	return spi_register_driver(&mc_spi_driver);
 }
 
 device_initcall(mc_spi_init);
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index 02c58a9..75fff7b 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -289,7 +289,7 @@ static struct driver_d mc_spi_driver = {
 static int mc_init(void)
 {
         register_driver(&mc_i2c_driver);
-        register_driver(&mc_spi_driver);
+        spi_register_driver(&mc_spi_driver);
         return 0;
 }
 
diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 5713ad5..f718483 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -838,7 +838,7 @@ static struct driver_d epcs_flash_driver = {
 
 static int epcs_init(void)
 {
-	register_driver(&epcs_flash_driver);
+	spi_register_driver(&epcs_flash_driver);
 	return 0;
 }
 
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index a7fe10c..4416783 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -27,6 +27,7 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <errno.h>
+#include <init.h>
 
 /* SPI devices should normally not be created by SPI device drivers; that
  * would make them board-specific.  Similarly with SPI master drivers.
@@ -77,6 +78,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->mode = chip->mode;
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
+	proxy->dev.bus = &spi_bus;
 	strcpy(proxy->dev.name, chip->name);
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
@@ -240,3 +242,25 @@ int spi_write_then_read(struct spi_device *spi,
 	return status;
 }
 EXPORT_SYMBOL(spi_write_then_read);
+
+static int spi_match(struct device_d *dev, struct driver_d *drv)
+{
+	return strcmp(dev->name, drv->name) ? -1 : 0;
+}
+
+static int spi_probe(struct device_d *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static void spi_remove(struct device_d *dev)
+{
+	dev->driver->remove(dev);
+}
+
+struct bus_type spi_bus = {
+	.name = "spi",
+	.match = spi_match,
+	.probe = spi_probe,
+	.remove = spi_remove,
+};
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 9d01d06..569cdcd 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -427,4 +427,11 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
+extern struct bus_type spi_bus;
+
+static inline int spi_register_driver(struct driver_d *drv)
+{
+	drv->bus = &spi_bus;
+	return register_driver(drv);
+}
 #endif /* __INCLUDE_SPI_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
