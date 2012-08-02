Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Ok-Ev
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:11:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:15 +0200
Message-Id: <1343902216-13262-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
References: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] mtd nand: implement buswidth detection
To: barebox@lists.infradead.org

This introduces a new NAND_BUSWIDTH_AUTO flag which can be used
to automatically detect the nand buswidth. The id is always read
in 8bit mode. An additional callback is needed to switch the nand
controller into 16bit mode.
This currently depends on a safe read_byte (always) and read_buf
(for onfi-only flashes) callback. It has been tested on OMAP, but
is not something that generally works. For this reason the existence
of the set_buswidth callback is used to determine whether we are
able to do autodetection or not.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |   20 ++++++++++++++++----
 include/linux/mtd/nand.h     |    3 +++
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index a5bf757..37e57b3 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1000,7 +1000,7 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 
 	if (!chip->select_chip)
 		chip->select_chip = nand_select_chip;
-	if (!chip->read_byte)
+	if (!chip->read_byte || chip->read_byte == nand_read_byte)
 		chip->read_byte = busw ? nand_read_byte16 : nand_read_byte;
 	if (!chip->read_word)
 		chip->read_word = nand_read_word;
@@ -1009,12 +1009,12 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 #ifdef CONFIG_MTD_WRITE
 	if (!chip->block_markbad)
 		chip->block_markbad = nand_default_block_markbad;
-	if (!chip->write_buf)
+	if (!chip->write_buf || chip->write_buf == nand_write_buf)
 		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
 #endif
-	if (!chip->read_buf)
+	if (!chip->read_buf || chip->read_buf == nand_read_buf)
 		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
-	if (!chip->verify_buf)
+	if (!chip->verify_buf || chip->verify_buf == nand_verify_buf)
 		chip->verify_buf = busw ? nand_verify_buf16 : nand_verify_buf;
 #ifdef CONFIG_NAND_BBT
 	if (!chip->scan_bbt)
@@ -1258,6 +1258,13 @@ ident_done:
 			break;
 	}
 
+	if (chip->options & NAND_BUSWIDTH_AUTO) {
+		chip->options |= busw;
+		nand_set_defaults(chip, busw);
+		if (chip->set_buswidth)
+			chip->set_buswidth(mtd, chip, busw);
+	}
+
 	/*
 	 * Check, if buswidth is correct. Hardware drivers should set
 	 * chip correct !
@@ -1326,6 +1333,11 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	struct nand_chip *chip = mtd->priv;
 	struct nand_flash_dev *type;
 
+	if (chip->options & NAND_BUSWIDTH_AUTO && !chip->set_buswidth) {
+		printk(KERN_ERR "buswidth detection but no buswidth callback\n");
+		return -EINVAL;
+	}
+
 	/* Get buswidth to select the correct functions */
 	busw = chip->options & NAND_BUSWIDTH_16;
 	/* Set the default functions */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 4a492b5..d2f8648 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -169,6 +169,8 @@ typedef enum {
 #define NAND_NO_READRDY		0x00000100
 /* Chip does not allow subpage writes */
 #define NAND_NO_SUBPAGE_WRITE	0x00000200
+/* Buswitdh shal be autodetected */
+#define NAND_BUSWIDTH_AUTO	0x00080000
 
 
 /* Options valid for Samsung large page devices */
@@ -451,6 +453,7 @@ struct nand_chip {
 	int		(*errstat)(struct mtd_info *mtd, struct nand_chip *this, int state, int status, int page);
 	int		(*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
 				      const uint8_t *buf, int page, int cached, int raw);
+	int		(*set_buswidth)(struct mtd_info *mtd, struct nand_chip *this, int buswidth);
 
 	int		chip_delay;
 	unsigned int	options;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
