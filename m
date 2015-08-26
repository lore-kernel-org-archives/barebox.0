Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUaY1-0006vW-6f
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 13:15:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 15:15:02 +0200
Message-Id: <1440594902-21001-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: m25p80: make it possible to use large blocks if desired
To: Barebox List <barebox@lists.infradead.org>

Some SPI NOR flashes support 4K erase blocks. 4K erase blocks do not
work with UBIFS which needs a minimum erase block size of 15360 bytes.
Also bigger sectors are faster to erase. This patch adds a device tree
option to use the bigger blocks instead of the default 4K blocks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 Documentation/devicetree/bindings/mtd/m25p80.rst | 10 ++++++++++
 drivers/mtd/devices/m25p80.c                     |  6 +++++-
 drivers/mtd/spi-nor/cadence-quadspi.c            |  2 +-
 drivers/mtd/spi-nor/spi-nor.c                    |  7 ++++---
 include/linux/mtd/spi-nor.h                      |  4 +++-
 5 files changed, 23 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/m25p80.rst

diff --git a/Documentation/devicetree/bindings/mtd/m25p80.rst b/Documentation/devicetree/bindings/mtd/m25p80.rst
new file mode 100644
index 0000000..d7c8914
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/m25p80.rst
@@ -0,0 +1,10 @@
+MTD SPI driver for ST M25Pxx (and similar) serial flash chips
+=============================================================
+
+Additionally to the Linux bindings in ``dts/Bindings/mtd/m25p80.txt``
+the barebox driver has the following optional properties:
+
+- use-large-blocks : Use large blocks rather than the 4K blocks some devices
+                     support. 4K erase blocks do not work with UBIFS which needs
+		     a minimum erase block size of 15360 bytes. Also bigger sectors
+		     are faster to erase.
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 794c9db..d627690 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -235,6 +235,7 @@ static int m25p_probe(struct device_d *dev)
 	enum read_mode mode =		SPI_NOR_NORMAL;
 	const char			*flash_name = NULL;
 	int				device_id;
+	bool				use_large_blocks;
 	int ret;
 
 	data = dev->platform_data;
@@ -272,7 +273,10 @@ static int m25p_probe(struct device_d *dev)
 	else
 		flash_name = NULL; /* auto-detect */
 
-	ret = spi_nor_scan(nor, flash_name, mode);
+	use_large_blocks = of_property_read_bool(dev->device_node,
+			"use-large-blocks");
+
+	ret = spi_nor_scan(nor, flash_name, mode, use_large_blocks);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index dce29ca..ff7bb7a 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1078,7 +1078,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 	nor->write = cqspi_write;
 	nor->erase = cqspi_erase;
 
-	ret = spi_nor_scan(nor, NULL, SPI_NOR_QUAD);
+	ret = spi_nor_scan(nor, NULL, SPI_NOR_QUAD, false);
 	if (ret)
 		goto probe_failed;
 
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c85ed34..edf0dd5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -923,7 +923,8 @@ static int spi_nor_check(struct spi_nor *nor)
 	return 0;
 }
 
-int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode)
+int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
+		 bool use_large_blocks)
 {
 	const struct spi_device_id	*id = NULL;
 	struct flash_info		*info;
@@ -1012,10 +1013,10 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode)
 
 #ifdef CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
 	/* prefer "small sector" erase if possible */
-	if (info->flags & SECT_4K) {
+	if (info->flags & SECT_4K && !use_large_blocks) {
 		nor->erase_opcode = SPINOR_OP_BE_4K;
 		mtd->erasesize = 4096;
-	} else if (info->flags & SECT_4K_PMC) {
+	} else if (info->flags & SECT_4K_PMC && !use_large_blocks) {
 		nor->erase_opcode = SPINOR_OP_BE_4K_PMC;
 		mtd->erasesize = 4096;
 	} else
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index f099406..bd2b16d 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -190,6 +190,7 @@ struct spi_nor {
  * @nor:	the spi_nor structure
  * @name:	the chip type name
  * @mode:	the read mode supported by the driver
+ * @use_large_blocks: prefer large blocks even if 4k blocks are supported
  *
  * The drivers can use this fuction to scan the SPI NOR.
  * In the scanning, it will try to get all the necessary information to
@@ -199,6 +200,7 @@ struct spi_nor {
  *
  * Return: 0 for success, others for failure.
  */
-int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode);
+int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
+		 bool use_large_blocks);
 
 #endif
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
