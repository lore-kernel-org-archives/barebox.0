Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v81-00038F-R2
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:23:59 +0200
Message-Id: <20190828102402.18332-4-s.hauer@pengutronix.de>
In-Reply-To: <20190828102402.18332-1-s.hauer@pengutronix.de>
References: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] mtd: nand: gpmc: Add BCH16 support
To: Barebox List <barebox@lists.infradead.org>

This adds support for BCH16 ECC encoding. The support is mostly taken
from Linux-5.3-rc6. One major change is the different wrap mode used.
The Kernel uses wrapmode 1, which means "pass all data through the BCH
engine". Still the Kernel has to skip the OOB marker which is done by
reading all user data, then use NAND_CMD_RNDOUT to position right
behind the OOB marker and then read the ECC data. Instead of doing this
we use wrap mode 4 which allows us to bypass the OOB marker from the
BCH engine automatically. This explains

bch_wrapmode = 1, eccsize0 = 0, eccsize1 = 52 vs.
bch_wrapmode = 4, eccsize0 = 4, eccsize1 = 52

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   1 +
 drivers/bus/omap-gpmc.c                     |   3 +
 drivers/mtd/nand/nand_omap_gpmc.c           | 333 +++++++++++++++++++-
 include/linux/mtd/mtd-abi.h                 |   2 +-
 4 files changed, 330 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index c9730a9454..f172b576eb 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -34,6 +34,7 @@ enum gpmc_ecc_mode {
 	OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
 	OMAP_ECC_BCH8_CODE_HW,
 	OMAP_ECC_BCH8_CODE_HW_ROMCODE,
+	OMAP_ECC_BCH16_CODE_HW,
 };
 
 /** omap nand platform data structure */
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index a3fccb2182..8fd7a91740 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -448,6 +448,9 @@ static struct dt_eccmode modes[] = {
 	}, {
 		.name = "bch8",
 		.mode = OMAP_ECC_BCH8_CODE_HW_ROMCODE,
+	}, {
+		.name = "bch16",
+		.mode = OMAP_ECC_BCH16_CODE_HW,
 	},
 };
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 2dcf7e723b..ba2c2c4314 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -70,6 +70,7 @@
 #include <io.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
+#include <platform_data/elm.h>
 
 #include "nand_omap_bch_decoder.h"
 
@@ -91,6 +92,10 @@
 
 static const uint8_t bch8_vector[] = {0xf3, 0xdb, 0x14, 0x16, 0x8b, 0xd2,
 		0xbe, 0xcc, 0xac, 0x6b, 0xff, 0x99, 0x7b};
+static u_char bch16_vector[] = {0xf5, 0x24, 0x1c, 0xd0, 0x61, 0xb3, 0xf1, 0x55,
+				0x2e, 0x2c, 0x86, 0xa3, 0xed, 0x36, 0x1b, 0x78,
+				0x48, 0x76, 0xa9, 0x3b, 0x97, 0xd1, 0x7a, 0x93,
+				0x07, 0x0e};
 
 static const char *ecc_mode_strings[] = {
 	"software",
@@ -232,7 +237,7 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	unsigned int reg;
+	unsigned int reg, reg1, val;
 	unsigned int val1 = 0x0, val2 = 0x0;
 	unsigned int val3 = 0x0, val4 = 0x0;
 	int ecc_size = 8;
@@ -274,6 +279,45 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
 		/* P2048o, P1024o, P512o, P256o, P2048e, P1024e, P512e, P256e */
 		*ecc_code++ = ((val1 >> 8) & 0x0f) | ((val1 >> 20) & 0xf0);
 		break;
+
+	case OMAP_ECC_BCH16_CODE_HW:
+		reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * sblock);
+		reg1 = 0x300 + (0x10 * sblock);
+
+		val = readl(oinfo->gpmc_base + reg1 + 0x8);
+		ecc_code[0]  = ((val >>  8) & 0xFF);
+		ecc_code[1]  = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg1 + 0x4);
+		ecc_code[2]  = ((val >> 24) & 0xFF);
+		ecc_code[3]  = ((val >> 16) & 0xFF);
+		ecc_code[4]  = ((val >>  8) & 0xFF);
+		ecc_code[5]  = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg1 + 0x0);
+		ecc_code[6]  = ((val >> 24) & 0xFF);
+		ecc_code[7]  = ((val >> 16) & 0xFF);
+		ecc_code[8]  = ((val >>  8) & 0xFF);
+		ecc_code[9]  = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg + 0xc);
+		ecc_code[10] = ((val >> 24) & 0xFF);
+		ecc_code[11] = ((val >> 16) & 0xFF);
+		ecc_code[12] = ((val >>  8) & 0xFF);
+		ecc_code[13] = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg + 0x8);
+		ecc_code[14] = ((val >> 24) & 0xFF);
+		ecc_code[15] = ((val >> 16) & 0xFF);
+		ecc_code[16] = ((val >>  8) & 0xFF);
+		ecc_code[17] = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg + 0x4);
+		ecc_code[18] = ((val >> 24) & 0xFF);
+		ecc_code[19] = ((val >> 16) & 0xFF);
+		ecc_code[20] = ((val >>  8) & 0xFF);
+		ecc_code[21] = ((val >>  0) & 0xFF);
+		val = readl(oinfo->gpmc_base + reg + 0x0);
+		ecc_code[22] = ((val >> 24) & 0xFF);
+		ecc_code[23] = ((val >> 16) & 0xFF);
+		ecc_code[24] = ((val >>  8) & 0xFF);
+		ecc_code[25] = ((val >>  0) & 0xFF);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -294,7 +338,7 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	int j, actual_eccsize;
 	const uint8_t *erased_ecc_vec;
-	unsigned int err_loc[8];
+	unsigned int err_loc[16];
 	int bch_max_err;
 	int bitflip_count = 0;
 	bool eccflag = 0;
@@ -311,6 +355,11 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 		erased_ecc_vec = bch8_vector;
 		bch_max_err = BCH8_MAX_ERROR;
 		break;
+	case OMAP_ECC_BCH16_CODE_HW:
+		actual_eccsize = eccsize;
+		erased_ecc_vec = bch16_vector;
+		bch_max_err = 16;
+		break;
 	default:
 		dev_err(oinfo->pdev, "invalid driver configuration\n");
 		return -EINVAL;
@@ -441,13 +490,27 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		if (mode == NAND_ECC_READ) {
-			eccsize1 = 0x1A; eccsize0 = 0x18;
+			eccsize0 = 24;
+			eccsize1 = 26;
 			bch_mod = 1;
-			bch_wrapmode = 0x04;
+			bch_wrapmode = 4;
 		} else {
-			eccsize1 = 0x20; eccsize0 = 0x00;
+			eccsize0 = 0;
+			eccsize1 = 32;
 			bch_mod = 1;
-			bch_wrapmode = 0x06;
+			bch_wrapmode = 6;
+		}
+		break;
+	case OMAP_ECC_BCH16_CODE_HW:
+		bch_mod = 2;
+		if (mode == NAND_ECC_READ) {
+			bch_wrapmode = 4;
+			eccsize0 = 4; /* ECC bits in nibbles per sector */
+			eccsize1 = 52;  /* non-ECC bits in nibbles per sector */
+		} else {
+			bch_wrapmode = 4;
+			eccsize0 = 4;  /* extra bits in nibbles per sector */
+			eccsize1 = 52; /* OOB bits in nibbles per sector */
 		}
 		break;
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
@@ -483,7 +546,7 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 				GPMC_ECC_CONFIG_ECCBCHTSEL(bch_mod) |
 				GPMC_ECC_CONFIG_ECCWRAPMODE(bch_wrapmode) |
 				dev_width |
-				GPMC_ECC_CONFIG_ECCTOPSECTOR(3) |
+				GPMC_ECC_CONFIG_ECCTOPSECTOR(nand->ecc.steps - 1) |
 				GPMC_ECC_CONFIG_ECCCS(cs) |
 				GPMC_ECC_CONFIG_ECCENABLE);
 	}
@@ -689,6 +752,234 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	return max_bitflips;
 }
 
+/**
+ * erased_sector_bitflips - count bit flips
+ * @data:	data sector buffer
+ * @oob:	oob buffer
+ * oinfo:	gpmc_nand_info
+ *
+ * Check the bit flips in erased page falls below correctable level.
+ * If falls below, report the page as erased with correctable bit
+ * flip, else report as uncorrectable page.
+ */
+static int erased_sector_bitflips(u_char *data, u_char *oob,
+		struct gpmc_nand_info *oinfo)
+{
+	int flip_bits = 0, i;
+
+	for (i = 0; i < oinfo->nand.ecc.size; i++) {
+		flip_bits += hweight8(~data[i]);
+		if (flip_bits > oinfo->nand.ecc.strength)
+			return 0;
+	}
+
+	for (i = 0; i < oinfo->nand.ecc.bytes - 1; i++) {
+		flip_bits += hweight8(~oob[i]);
+		if (flip_bits > oinfo->nand.ecc.strength)
+			return 0;
+	}
+
+	/*
+	 * Bit flips falls in correctable level.
+	 * Fill data area with 0xFF
+	 */
+	if (flip_bits) {
+		memset(data, 0xFF, oinfo->nand.ecc.size);
+		memset(oob, 0xFF, oinfo->nand.ecc.bytes);
+	}
+
+	return flip_bits;
+}
+
+/**
+ * omap_elm_correct_data - corrects page data area in case error reported
+ * @chip:	NAND chip object
+ * @data:	page data
+ * @read_ecc:	ecc read from nand flash
+ * @calc_ecc:	ecc read from HW ECC registers
+ *
+ * Calculated ecc vector reported as zero in case of non-error pages.
+ * In case of non-zero ecc vector, first filter out erased-pages, and
+ * then process data via ELM to detect bit-flips.
+ */
+static int omap_elm_correct_data(struct nand_chip *chip, u_char *data,
+				 u_char *read_ecc, u_char *calc_ecc)
+{
+	struct gpmc_nand_info *oinfo = chip->priv;
+	struct nand_ecc_ctrl *ecc = &oinfo->nand.ecc;
+	int eccsteps = oinfo->nand.ecc.steps;
+	int i , j, stat = 0;
+	int eccflag, actual_eccbytes;
+	struct elm_errorvec err_vec[ERROR_VECTOR_MAX];
+	u_char *ecc_vec = calc_ecc;
+	u_char *spare_ecc = read_ecc;
+	const u_char *erased_ecc_vec;
+	u_char *buf;
+	int bitflip_count;
+	bool is_error_reported = false;
+	u32 bit_pos, byte_pos, error_max, pos;
+	int err;
+
+	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_BCH8_CODE_HW:
+		/* omit 14th ECC byte reserved for ROM code compatibility */
+		actual_eccbytes = ecc->bytes - 1;
+		erased_ecc_vec = bch8_vector;
+		break;
+	case OMAP_ECC_BCH16_CODE_HW:
+		actual_eccbytes = ecc->bytes;
+		erased_ecc_vec = bch16_vector;
+		break;
+	default:
+		dev_err(oinfo->pdev, "invalid driver configuration\n");
+		return -EINVAL;
+	}
+
+	/* Initialize elm error vector to zero */
+	memset(err_vec, 0, sizeof(err_vec));
+
+	for (i = 0; i < eccsteps ; i++) {
+		eccflag = 0;	/* initialize eccflag */
+
+		/*
+		 * Check any error reported,
+		 * In case of error, non zero ecc reported.
+		 */
+		for (j = 0; j < actual_eccbytes; j++) {
+			if (calc_ecc[j] != 0) {
+				eccflag = 1; /* non zero ecc, error present */
+				break;
+			}
+		}
+
+		if (eccflag == 1) {
+			if (memcmp(calc_ecc, erased_ecc_vec,
+						actual_eccbytes) == 0) {
+				/*
+				 * calc_ecc[] matches pattern for ECC(all 0xff)
+				 * so this is definitely an erased-page
+				 */
+			} else {
+				buf = &data[oinfo->nand.ecc.size * i];
+				/*
+				 * count number of 0-bits in read_buf.
+				 * This check can be removed once a similar
+				 * check is introduced in generic NAND driver
+				 */
+				bitflip_count = erased_sector_bitflips(
+						buf, read_ecc, oinfo);
+				if (bitflip_count) {
+					/*
+					 * number of 0-bits within ECC limits
+					 * So this may be an erased-page
+					 */
+					stat += bitflip_count;
+				} else {
+					/*
+					 * Too many 0-bits. It may be a
+					 * - programmed-page, OR
+					 * - erased-page with many bit-flips
+					 * So this page requires check by ELM
+					 */
+					err_vec[i].error_reported = true;
+					is_error_reported = true;
+				}
+			}
+		}
+
+		/* Update the ecc vector */
+		calc_ecc += ecc->bytes;
+		read_ecc += ecc->bytes;
+	}
+
+	/* Check if any error reported */
+	if (!is_error_reported)
+		return stat;
+
+	/* Decode BCH error using ELM module */
+	elm_decode_bch_error_page(ecc_vec, err_vec);
+
+	err = 0;
+	for (i = 0; i < eccsteps; i++) {
+		if (err_vec[i].error_uncorrectable) {
+			dev_err(oinfo->pdev,
+				"uncorrectable bit-flips found\n");
+			err = -EBADMSG;
+		} else if (err_vec[i].error_reported) {
+			for (j = 0; j < err_vec[i].error_count; j++) {
+				switch (oinfo->ecc_mode) {
+				case OMAP_ECC_BCH8_CODE_HW:
+				case OMAP_ECC_BCH16_CODE_HW:
+					pos = err_vec[i].error_loc[j];
+					break;
+				default:
+					return -EINVAL;
+				}
+				error_max = (ecc->size + actual_eccbytes) * 8;
+				/* Calculate bit position of error */
+				bit_pos = pos % 8;
+
+				/* Calculate byte position of error */
+				byte_pos = (error_max - pos - 1) / 8;
+
+				if (pos < error_max) {
+					if (byte_pos < 512) {
+						pr_debug("bitflip@dat[%d]=%x\n",
+						     byte_pos, data[byte_pos]);
+						data[byte_pos] ^= 1 << bit_pos;
+					} else {
+						pr_debug("bitflip@oob[%d]=%x\n",
+							(byte_pos - 512),
+						     spare_ecc[byte_pos - 512]);
+						spare_ecc[byte_pos - 512] ^=
+							1 << bit_pos;
+					}
+				} else {
+					dev_err(oinfo->pdev,
+						"invalid bit-flip @ %d:%d\n",
+						byte_pos, bit_pos);
+					err = -EBADMSG;
+				}
+			}
+		}
+
+		/* Update number of correctable errors */
+		stat = max_t(unsigned int, stat, err_vec[i].error_count);
+
+		/* Update page data with sector size */
+		data += ecc->size;
+		spare_ecc += ecc->bytes;
+	}
+
+	return (err) ? err : stat;
+}
+
+static int gpmc_read_page_hwecc_elm(struct mtd_info *mtd,
+				    struct nand_chip *chip, uint8_t *buf,
+				    int oob_required, int page)
+{
+	int i;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	chip->ecc.hwctl(mtd, NAND_ECC_READ);
+	chip->read_buf(mtd, buf, mtd->writesize);
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	eccsteps = chip->ecc.steps;
+
+	for (i = 0; eccsteps; eccsteps--, i++)
+		__omap_calculate_ecc(mtd, &ecc_calc[i * eccbytes], i);
+
+	return omap_elm_correct_data(chip, buf, ecc_code, ecc_calc);
+}
+
 static int gpmc_read_page_hwecc(struct mtd_info *mtd,
 				struct nand_chip *chip, uint8_t *buf,
 				int oob_required, int page)
@@ -732,7 +1023,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 {
 	struct mtd_info *minfo = &oinfo->minfo;
 	struct nand_chip *nand = &oinfo->nand;
-	int offset;
+	int offset, err;
 	int i, j;
 
 	if (nand->options & NAND_BUSWIDTH_16)
@@ -807,6 +1098,32 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		for (i = 2; i < 58; i++)
 			omap_oobinfo.eccpos[j++] = i;
 		break;
+	case OMAP_ECC_BCH16_CODE_HW:
+		oinfo->nand.ecc.size = 512;
+		oinfo->nand.ecc.bytes = 26;
+		oinfo->nand.ecc.strength = 16;
+		oinfo->nand.ecc.steps =
+				minfo->writesize / oinfo->nand.ecc.size;
+		oinfo->nand.ecc.total =
+				oinfo->nand.ecc.steps * oinfo->nand.ecc.bytes;
+		omap_oobinfo.eccbytes = oinfo->nand.ecc.total;
+
+		for (i = 0; i < oinfo->nand.ecc.total; i++)
+			omap_oobinfo.eccpos[i] = i + 2;
+
+		/* reserved marker already included in ecclayout->eccbytes */
+		omap_oobinfo.oobfree->offset =
+			omap_oobinfo.eccpos[oinfo->nand.ecc.total - 1] + 1;
+
+		err = elm_config(BCH16_ECC,
+				 oinfo->minfo.writesize / nand->ecc.size,
+				 nand->ecc.size, nand->ecc.bytes);
+		if (err < 0)
+			return err;
+
+		nand->ecc.read_page = gpmc_read_page_hwecc_elm;
+
+		break;
 	case OMAP_ECC_SOFT:
 		nand->ecc.layout = NULL;
 		nand->ecc.mode = NAND_ECC_SOFT;
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 9bca9b5e06..dfcb3554fb 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -137,7 +137,7 @@ struct nand_oobfree {
 };
 
 #define MTD_MAX_OOBFREE_ENTRIES_LARGE  32
-#define MTD_MAX_ECCPOS_ENTRIES_LARGE   128 /* FIXME : understand why 448 is not working */
+#define MTD_MAX_ECCPOS_ENTRIES_LARGE   640
 /*
  * ECC layout control structure. Exported to userspace for
  * diagnosis and to allow creation of raw images
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
