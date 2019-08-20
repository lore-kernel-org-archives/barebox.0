Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyEB-0006cH-Oj
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 07:06:52 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Aug 2019 09:06:38 +0200
Message-Id: <20190820070640.3526-3-o.rempel@pengutronix.de>
In-Reply-To: <20190820070640.3526-1-o.rempel@pengutronix.de>
References: <20190820070640.3526-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 2/4] mtd: spi-nor: add UNLOCK_GLOBAL_BLOCK support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Ported from linux-4.19-at91 linux4sam_6.1 and needed for
SAMA5D27 SOM1 EK.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 25 ++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 43bd402f9f..c506e62a62 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -57,7 +57,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -86,6 +86,7 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
 };
 
 enum spi_nor_read_command_index {
@@ -1045,6 +1046,17 @@ spi_nor_set_pp_settings(struct spi_nor_pp_command *pp,
 	pp->proto = proto;
 }
 
+static int spi_nor_unlock_global_block_protection(struct spi_nor *nor)
+{
+	int ret;
+
+	write_enable(nor);
+	ret = nor->write_reg(nor, SPINOR_OP_GBULK, NULL, 0);
+	if (ret < 0)
+		return ret;
+	return spi_nor_wait_till_ready(nor);
+}
+
 static int spi_nor_init_params(struct spi_nor *nor,
 			       const struct flash_info *info,
 			       struct spi_nor_flash_parameter *params)
@@ -1088,6 +1100,17 @@ static int spi_nor_init_params(struct spi_nor *nor,
 	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
 				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
 
+	if (info->flags & UNLOCK_GLOBAL_BLOCK) {
+		int err;
+
+		err = spi_nor_unlock_global_block_protection(nor);
+		if (err) {
+			dev_err(nor->dev,
+				"Cannot unlock the global block protection\n");
+			return err;
+		}
+	}
+
 	/* Select the procedure to set the Quad Enable bit. */
 	if (params->hwcaps.mask & (SNOR_HWCAPS_READ_QUAD |
 				   SNOR_HWCAPS_PP_QUAD))
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 33413ff955..105f381ada 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -64,6 +64,7 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_GBULK		0x98	/* Global Block Unlock Protection */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
