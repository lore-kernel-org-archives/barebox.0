Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003py-FB
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:08 +0200
Message-Id: <1374487450-13800-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
References: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mtd: introduce ecc strength
To: barebox@lists.infradead.org

This introduces the ecc stength fields in the structures and fills
them in, but leaves them unused right now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c      |  2 ++
 drivers/mtd/nand/nand_imx.c       |  3 +++
 drivers/mtd/nand/nand_mxs.c       |  1 +
 drivers/mtd/nand/nand_omap_gpmc.c |  8 ++++++++
 drivers/mtd/nand/nand_s3c24xx.c   |  2 ++
 drivers/mtd/nand/nand_swecc.c     |  1 +
 drivers/mtd/nand/nomadik_nand.c   |  1 +
 include/linux/mtd/mtd.h           | 24 ++++++++++++++++++++++++
 include/linux/mtd/nand.h          |  2 ++
 9 files changed, 44 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 6a81f41..cc7a3db 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1686,6 +1686,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		chip->ecc.read_oob = nand_read_oob_std;
 		chip->ecc.size = mtd->writesize;
 		chip->ecc.bytes = 0;
+		chip->ecc.strength = 0;
 		break;
 #endif
 	default:
@@ -1762,6 +1763,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 #endif
 	/* propagate ecc.layout to mtd_info */
 	mtd->ecclayout = chip->ecc.layout;
+	mtd->ecc_strength = chip->ecc.strength;
 
 	/* Check, if we should skip the bad block table scan */
 	if (chip->options & NAND_SKIP_BBTSCAN)
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 1d7d3e8..91ee494 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1298,6 +1298,9 @@ static int __init imxnd_probe(struct device_d *dev)
 			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
 	}
 
+	if (this->ecc.mode == NAND_ECC_HW)
+		this->ecc.strength = host->eccsize;
+
 	/* second phase scan */
 	if (nand_scan_tail(mtd)) {
 		err = -ENXIO;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 6ecfe04..5d3a488 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1242,6 +1242,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand->ecc.mode		= NAND_ECC_HW;
 	nand->ecc.bytes		= 9;
 	nand->ecc.size		= 512;
+	nand->ecc.strength	= 8;
 
 	/* first scan to find the device and get the page size */
 	err = nand_scan_ident(mtd, 1);
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d448251..9c1f3d7 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -85,6 +85,9 @@
 #define GPMC_ECC_SIZE_CONFIG_ECCSIZE0(x)	((x) << 12)
 #define GPMC_ECC_SIZE_CONFIG_ECCSIZE1(x)	((x) << 22)
 
+#define BCH8_MAX_ERROR	8	/* upto 8 bit correctable */
+#define BCH4_MAX_ERROR	4	/* upto 4 bit correctable */
+
 int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
 static char *ecc_mode_strings[] = {
@@ -785,6 +788,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		oinfo->nand.ecc.bytes    = 3;
 		oinfo->nand.ecc.size     = 512;
+		oinfo->nand.ecc.strength = 1;
 		oinfo->ecc_parity_pairs  = 12;
 		if (oinfo->nand.options & NAND_BUSWIDTH_16) {
 			offset = 2;
@@ -802,6 +806,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_BCH4_CODE_HW:
 		oinfo->nand.ecc.bytes    = 4 * 7;
 		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.strength = BCH4_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
@@ -812,6 +817,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_BCH8_CODE_HW:
 		oinfo->nand.ecc.bytes    = 4 * 13;
 		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
@@ -822,6 +828,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		oinfo->nand.ecc.bytes    = 4 * 13;
 		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
 		omap_oobinfo.oobfree->length = 0;
 		j = 0;
@@ -837,6 +844,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_SOFT:
 		nand->ecc.layout = NULL;
 		nand->ecc.mode = NAND_ECC_SOFT;
+		oinfo->nand.ecc.strength = 1;
 		break;
 	default:
 		return -EINVAL;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index a3f947a..4406352 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -456,6 +456,8 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	 */
 	chip->ecc.mode = NAND_ECC_HW;
 	chip->ecc.bytes = 3;	/* always 24 bit ECC per turn */
+	chip->ecc.strength  = 1;
+
 #ifdef CONFIG_CPU_S3C2440
 	if (readl(host->base) & 0x8) {
 		/* large page (2048 bytes per page) */
diff --git a/drivers/mtd/nand/nand_swecc.c b/drivers/mtd/nand/nand_swecc.c
index 95dfbd8..35f8469 100644
--- a/drivers/mtd/nand/nand_swecc.c
+++ b/drivers/mtd/nand/nand_swecc.c
@@ -91,4 +91,5 @@ void nand_init_ecc_soft(struct nand_chip *chip)
 #endif
 	chip->ecc.size = 256;
 	chip->ecc.bytes = 3;
+	chip->ecc.strength = 1;
 }
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index afdbef1..fbd8ecd 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -209,6 +209,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand->ecc.hwctl = nomadik_ecc_control;
 	nand->ecc.size = 512;
 	nand->ecc.bytes = 3;
+	nand->ecc.strength = 1;
 
 	nand->options = pdata->options;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 51348b9..da96483 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -104,6 +104,15 @@ struct mtd_info {
 	u_int32_t oobsize;   // Amount of OOB data per block (e.g. 16)
 	u_int32_t oobavail;  // Available OOB bytes per block
 
+	/*
+	 * read ops return -EUCLEAN if max number of bitflips corrected on any
+	 * one region comprising an ecc step equals or exceeds this value.
+	 * Settable by driver, else defaults to ecc_strength.  User can override
+	 * in sysfs.  N.B. The meaning of the -EUCLEAN return code has changed;
+	 * see Documentation/ABI/testing/sysfs-class-mtd for more detail.
+	 */
+	unsigned int bitflip_threshold;
+
 	// Kernel-only stuff starts here.
 	char *name;
 	int index;
@@ -111,6 +120,9 @@ struct mtd_info {
 	/* ecc layout structure pointer - read only ! */
 	struct nand_ecclayout *ecclayout;
 
+	/* max number of correctible bit errors per ecc step */
+	unsigned int ecc_strength;
+
 	/* Data for variable erase regions. If numeraseregions is zero,
 	 * it means that the whole device has erasesize as given above.
 	 */
@@ -273,4 +285,16 @@ int mtd_all_ff(const void *buf, unsigned int len);
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
+static inline int mtd_is_bitflip(int err) {
+	return err == -EUCLEAN;
+}
+
+static inline int mtd_is_eccerr(int err) {
+	return err == -EBADMSG;
+}
+
+static inline int mtd_is_bitflip_or_eccerr(int err) {
+	return mtd_is_bitflip(err) || mtd_is_eccerr(err);
+}
+
 #endif /* __MTD_MTD_H__ */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 25bae63..e5cfed9 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -300,6 +300,7 @@ struct nand_hw_control {
  * @steps:	number of ecc steps per page
  * @size:	data bytes per ecc step
  * @bytes:	ecc bytes per step
+ * @strength:	max number of correctible bits per ECC step
  * @total:	total number of ecc bytes per page
  * @prepad:	padding information for syndrome based ecc generators
  * @postpad:	padding information for syndrome based ecc generators
@@ -321,6 +322,7 @@ struct nand_ecc_ctrl {
 	int			size;
 	int			bytes;
 	int			total;
+	int			strength;
 	int			prepad;
 	int			postpad;
 	struct nand_ecclayout	*layout;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
