Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze1jZ-00050H-Lr
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 14:06:28 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 21 Sep 2015 16:04:41 +0200
Message-Id: <1442844284-27870-2-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
References: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 1/4] mtd nand: added 'bits_per_cell' property
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This one is available in the kernel and used by the denali driver

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |  2 ++
 include/linux/mtd/nand.h     | 12 ++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index bf4110a..ca48f59 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2819,6 +2819,8 @@ static int nand_flash_detect_onfi(struct mtd_info *mtd, struct nand_chip *chip,
 	mtd->oobsize = le16_to_cpu(p->spare_bytes_per_page);
 	chip->chipsize = le32_to_cpu(p->blocks_per_lun);
 	chip->chipsize *= (uint64_t)mtd->erasesize * p->lun_count;
+	chip->bits_per_cell = p->bits_per_cell;
+
 	*busw = 0;
 	if (le16_to_cpu(p->features) & 1)
 		*busw = NAND_BUSWIDTH_16;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 3c7509f..f126cd9 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -430,6 +430,7 @@ struct nand_buffers {
  * @badblockbits:	[INTERN] minimum number of set bits in a good block's
  *			bad block marker position; i.e., BBM == 11110111b is
  *			not bad when badblockbits == 7
+ * @bits_per_cell:	[INTERN] number of bits per cell. i.e., 1 means SLC.
  * @cellinfo:		[INTERN] MLC/multichip data from chip ident
  * @numchips:		[INTERN] number of physical chips
  * @chipsize:		[INTERN] the size of one chip for multichip arrays
@@ -506,6 +507,7 @@ struct nand_chip {
 	int pagebuf;
 	unsigned int pagebuf_bitflips;
 	int subpagesize;
+	uint8_t bits_per_cell;
 	uint8_t cellinfo;
 	int badblockpos;
 	int badblockbits;
@@ -722,4 +724,14 @@ static inline int onfi_get_sync_timing_mode(struct nand_chip *chip)
 	return le16_to_cpu(chip->onfi_params.src_sync_timing_mode);
 }
 
+/*
+ * Check if it is a SLC nand.
+ * The !nand_is_slc() can be used to check the MLC/TLC nand chips.
+ * We do not distinguish the MLC and TLC now.
+ */
+static inline bool nand_is_slc(struct nand_chip *chip)
+{
+	return chip->bits_per_cell == 1;
+}
+
 #endif /* __LINUX_MTD_NAND_H */
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
