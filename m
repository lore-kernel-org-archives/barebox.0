Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StgHP-0004ZQ-OY
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 14:40:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 131F4BF0E9
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 16:39:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 24 Jul 2012 16:39:54 +0200
Message-Id: <1343140796-21934-2-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
References: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 1/3] nand: base: Add autodetect buswidth
To: barebox@lists.infradead.org

If a 16bit NAND is attached, but configured with 8bit nand_base will fail.
Add a flag NAND_BUSWIDTH_UNKNOWN and callback set_buswidth to allow it to
change the configuration to 16bit.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/mtd/nand/nand_base.c |   45 ++++++++++++++++++++++++++++++++++++++---
 include/linux/mtd/nand.h     |    4 +++
 2 files changed, 45 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index c4eca0d..055c710 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1027,6 +1027,23 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 }
 
 /*
+ * Override defaults with 16 bit ones
+ */
+static void nand_set_defaults16(struct nand_chip *chip)
+{
+	if (chip->read_byte == nand_read_byte)
+		chip->read_byte = nand_read_byte16;
+#ifdef CONFIG_MTD_WRITE
+	if (chip->write_buf == nand_write_buf)
+		chip->write_buf = nand_write_buf16;
+#endif
+	if (chip->read_buf == nand_read_buf)
+		chip->read_buf = nand_read_buf16;
+	if (chip->verify_buf == nand_verify_buf)
+		chip->verify_buf = nand_verify_buf16;
+}
+
+/*
  * Get the flash and manufacturer id and lookup if the type is supported
  */
 static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
@@ -1128,9 +1145,12 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 
 	/*
 	 * Check, if buswidth is correct. Hardware drivers should set
-	 * chip correct !
+	 * chip correct or ask for autodetection!
 	 */
-	if (busw != (chip->options & NAND_BUSWIDTH_16)) {
+	if (chip->options & NAND_BUSWIDTH_UNKNOWN) {
+		printk(KERN_INFO "NAND bus width %d bit detected\n",
+		       (type->options & NAND_BUSWIDTH_16) ? 16 : 8);
+	} else if (busw != (chip->options & NAND_BUSWIDTH_16)) {
 		printk(KERN_INFO "NAND device: Manufacturer ID:"
 		       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id,
 		       dev_id, nand_manuf_ids[maf_idx].name, mtd->name);
@@ -1202,8 +1222,18 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	struct nand_chip *chip = mtd->priv;
 	struct nand_flash_dev *type;
 
-	/* Get buswidth to select the correct functions */
-	busw = chip->options & NAND_BUSWIDTH_16;
+	if (chip->options & NAND_BUSWIDTH_UNKNOWN) {
+		if (!chip->set_buswidth) {
+			chip->options &= ~NAND_BUSWIDTH_UNKNOWN;
+			printk(KERN_WARNING "Buswidth unknown, but no callback to fix it.\n");
+		}
+		/* Detect NAND with 8bit buswidth*/
+		busw = 0;
+	} else {
+		/* Get buswidth to select the correct functions */
+		busw = chip->options & NAND_BUSWIDTH_16;
+	}
+
 	/* Set the default functions */
 	nand_set_defaults(chip, busw);
 
@@ -1216,6 +1246,13 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 		return PTR_ERR(type);
 	}
 
+	if (chip->options & NAND_BUSWIDTH_UNKNOWN) {
+		chip->set_buswidth(mtd, chip);
+		if (chip->options & NAND_BUSWIDTH_16)
+			/* Change buswidth to 16 bit*/
+			nand_set_defaults16(chip);
+	}
+
 	/* Check for a chip array */
 	for (i = 1; i < maxchips; i++) {
 		chip->select_chip(mtd, i);
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 8e20876..184fc69 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -192,6 +192,8 @@ typedef enum {
 /* This option is defined if the board driver allocates its own buffers
    (e.g. because it needs them DMA-coherent */
 #define NAND_OWN_BUFFERS	0x00040000
+/* Buswitdh is currently unknown */
+#define NAND_BUSWIDTH_UNKNOWN	0x00080000
 /* Options set by nand scan */
 /* Nand scan has allocated controller struct */
 #define NAND_CONTROLLER_ALLOC	0x80000000
@@ -358,6 +360,7 @@ struct nand_buffers {
  * @errstat:		[OPTIONAL] hardware specific function to perform additional error status checks
  *			(determine if errors are correctable)
  * @write_page:		[REPLACEABLE] High-level page write function
+ * @set_buswidth:	[BOARDSPECIFIC] hardware specific function to configure buswidth
  */
 struct nand_chip {
 
@@ -382,6 +385,7 @@ struct nand_chip {
 	int		(*errstat)(struct mtd_info *mtd, struct nand_chip *this, int state, int status, int page);
 	int		(*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
 				      const uint8_t *buf, int page, int cached, int raw);
+	int		(*set_buswidth)(struct mtd_info *mtd, struct nand_chip *this);
 
 	int		chip_delay;
 	unsigned int	options;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
