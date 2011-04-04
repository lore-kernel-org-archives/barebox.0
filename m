Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T6-Uv
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:57 +0200
Message-Id: <1301923918-28746-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
References: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd nand omap: make ecc mode runtime configurable
To: barebox@lists.infradead.org

On omap we use different ecc modes for different purposes. The initial
boot code has to be written with hardware ecc whereas Linux usually uses
software ecc. To be able to write in both modes with a sinlge barebox
image introduce a eccmode device parameter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/gpmc.h |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c      |  269 +++++++++++++++++++++-----------
 2 files changed, 182 insertions(+), 88 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
index a658cf0..3ddc5f5 100644
--- a/arch/arm/mach-omap/include/mach/gpmc.h
+++ b/arch/arm/mach-omap/include/mach/gpmc.h
@@ -66,6 +66,7 @@
 #define GPMC_ECC7_RESULT	(0x218)
 #define GPMC_ECC8_RESULT	(0x21C)
 #define GPMC_ECC9_RESULT	(0x220)
+#define GPMC_ECC_BCH_RESULT_0	0x240
 
 #define GPMC_CONFIG1_0		(0x60)
 #define GPMC_CONFIG1_1		(0x90)
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 86fe6b9..889009b 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -86,6 +86,13 @@
 #endif
 #define gpmcnand_err(ARGS...) fprintf(stderr, "omapnand: " ARGS);
 
+int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
+
+static char *ecc_mode_strings[] = {
+	"software",
+	"hamming_hw_romcode",
+};
+
 /** internal structure maintained for nand information */
 struct gpmc_nand_info {
 	struct nand_hw_control controller;
@@ -103,10 +110,21 @@ struct gpmc_nand_info {
 	unsigned inuse:1;
 	unsigned wait_pol:1;
 	unsigned char ecc_parity_pairs;
-	unsigned int ecc_config;
+	enum gpmc_ecc_mode ecc_mode;
 };
 
 /* Typical BOOTROM oob layouts-requires hwecc **/
+static struct nand_ecclayout omap_oobinfo;
+/* Define some generic bad / good block scan pattern which are used
+ * while scanning a device for factory marked good / bad blocks
+ */
+static uint8_t scan_ff_pattern[] = { 0xff };
+static struct nand_bbt_descr bb_descrip_flashbased = {
+	.options = NAND_BBT_SCANEMPTY | NAND_BBT_SCANALLPAGES,
+	.offs = 0,
+	.len = 1,
+	.pattern = scan_ff_pattern,
+};
 
 /** Large Page x8 NAND device Layout */
 static struct nand_ecclayout ecc_lp_x8 = {
@@ -288,38 +306,51 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	unsigned char bit;
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	int blockCnt = 0;
 
 	gpmcnand_dbg("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
 		  (unsigned int)dat, (unsigned int)read_ecc,
 		  (unsigned int)calc_ecc);
 
-	/* Regenerate the orginal ECC */
-	orig_ecc = gen_true_ecc(read_ecc);
-	new_ecc = gen_true_ecc(calc_ecc);
-	/* Get the XOR of real ecc */
-	res = orig_ecc ^ new_ecc;
-	if (res) {
-		/* Get the hamming width */
-		hm = hweight32(res);
-		/* Single bit errors can be corrected! */
-		if (hm == oinfo->ecc_parity_pairs) {
-			/* Correctable data! */
-			parity_bits = res >> 16;
-			bit = (parity_bits & 0x7);
-			byte = (parity_bits >> 3) & 0x1FF;
-			/* Flip the bit to correct */
-			dat[byte] ^= (0x1 << bit);
-
-		} else if (hm == 1) {
-			gpmcnand_err("Ecc is wrong\n");
-			/* ECC itself is corrupted */
-			return 2;
-		} else {
-			gpmcnand_err("bad compare! failed\n");
-			/* detected 2 bit error */
-			return -1;
+	if ((nand->ecc.mode == NAND_ECC_HW) &&
+			(nand->ecc.size  == 2048))
+		blockCnt = 4;
+	else
+		blockCnt = 1;
+
+	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
+		/* Regenerate the orginal ECC */
+		orig_ecc = gen_true_ecc(read_ecc);
+		new_ecc = gen_true_ecc(calc_ecc);
+		/* Get the XOR of real ecc */
+		res = orig_ecc ^ new_ecc;
+		if (res) {
+			/* Get the hamming width */
+			hm = hweight32(res);
+			/* Single bit errors can be corrected! */
+			if (hm == oinfo->ecc_parity_pairs) {
+				/* Correctable data! */
+				parity_bits = res >> 16;
+				bit = (parity_bits & 0x7);
+				byte = (parity_bits >> 3) & 0x1FF;
+				/* Flip the bit to correct */
+				dat[byte] ^= (0x1 << bit);
+			} else if (hm == 1) {
+				gpmcnand_err("Ecc is wrong\n");
+				/* ECC itself is corrupted */
+				return 2;
+			} else {
+				gpmcnand_err("bad compare! failed\n");
+				/* detected 2 bit error */
+				return -1;
+			}
 		}
+		break;
+	default:
+		return -EINVAL;
 	}
+
 	return 0;
 }
 
@@ -341,54 +372,136 @@ static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	unsigned int val;
-	gpmcnand_dbg("mtd=%x dat=%x ecc_code=%x", (unsigned int)mtd,
-		  (unsigned int)dat, (unsigned int)ecc_code);
-	debug("ecc 0 1 2 = %x %x %x", ecc_code[0], ecc_code[1], ecc_code[2]);
-
-	/* Since we smartly tell mtd driver to use eccsize of 512, only
-	 * ECC Reg1 will be used.. we just read that */
-	val = readl(oinfo->gpmc_base + GPMC_ECC1_RESULT);
-	ecc_code[0] = val & 0xFF;
-	ecc_code[1] = (val >> 16) & 0xFF;
-	ecc_code[2] = ((val >> 8) & 0x0f) | ((val >> 20) & 0xf0);
-
-	/* Stop reading anymore ECC vals and clear old results
-	 * enable will be called if more reads are required */
-	writel(0x000, oinfo->gpmc_base + GPMC_ECC_CONFIG);
+	unsigned int val1 = 0x0;
+
+	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
+		/* read ecc result */
+		val1 = readl(oinfo->gpmc_base + GPMC_ECC1_RESULT);
+		*ecc_code++ = val1;          /* P128e, ..., P1e */
+		*ecc_code++ = val1 >> 16;    /* P128o, ..., P1o */
+		/* P2048o, P1024o, P512o, P256o, P2048e, P1024e, P512e, P256e */
+		*ecc_code++ = ((val1 >> 8) & 0x0f) | ((val1 >> 20) & 0xf0);
+		break;
+	default:
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
-/*
- * omap_enable_ecc - This function enables the hardware ecc functionality
- * @param mtd - mtd info structure
- * @param mode - Read/Write mode
- */
 static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	gpmcnand_dbg("mtd=%x mode=%x", (unsigned int)mtd, mode);
+	unsigned int eccsize1 = 0;
+	unsigned int ecc_conf_val = 0, ecc_size_conf_val = 0;
+	int dev_width = 0;
+	int ecc_size = nand->ecc.size;
+	int cs = 0;
+
+	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
+		eccsize1 = ((ecc_size >> 1) - 1) << 22;
+		break;
+	case OMAP_ECC_SOFT:
+		return;
+	}
+
+	writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+	ecc_size_conf_val = (eccsize1 << 22) | 0x0000000F;
+	ecc_conf_val = (dev_width << 7) | (cs << 1) | (0x1);
+
+	writel(ecc_size_conf_val, oinfo->gpmc_base + GPMC_ECC_SIZE_CONFIG);
+	writel(ecc_conf_val, oinfo->gpmc_base + GPMC_ECC_CONFIG);
+	writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+}
+
+static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
+		enum gpmc_ecc_mode mode)
+{
+	struct mtd_info *minfo = &oinfo->minfo;
+	struct nand_chip *nand = &oinfo->nand;
+	int offset;
+	int i;
+
+	if (nand->options & NAND_BUSWIDTH_16)
+		nand->badblock_pattern = &bb_descrip_flashbased;
+	else
+		nand->badblock_pattern = NULL;
+
+	if (oinfo->nand.options & NAND_BUSWIDTH_16)
+		offset = 2;
+	else
+		offset = 1;
+
+	if (mode != OMAP_ECC_SOFT) {
+		nand->ecc.layout = &omap_oobinfo;
+		nand->ecc.calculate = omap_calculate_ecc;
+		nand->ecc.hwctl = omap_enable_hwecc;
+		nand->ecc.correct = omap_correct_data;
+		nand->ecc.read_page = NULL;
+		nand->ecc.write_page = NULL;
+		nand->ecc.read_oob = NULL;
+		nand->ecc.write_oob = NULL;
+		nand->ecc.mode = NAND_ECC_HW;
+	}
+
 	switch (mode) {
-	case NAND_ECC_READ:
-	case NAND_ECC_WRITE:
-		/* Clear the ecc result registers
-		 * select ecc reg as 1
-		 */
-		writel(0x101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-		/* Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
-		 * tell all regs to generate size0 sized regs
-		 * we just have a single ECC engine for all CS
-		 */
-		writel(0x3FCFF000, oinfo->gpmc_base +
-				GPMC_ECC_SIZE_CONFIG);
-		writel(oinfo->ecc_config, oinfo->gpmc_base +
-				GPMC_ECC_CONFIG);
+	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
+		oinfo->nand.ecc.bytes    = 3;
+		oinfo->nand.ecc.size     = 512;
+		for (i = 0; i < omap_oobinfo.eccbytes; i++)
+			omap_oobinfo.eccpos[i] = i + offset;
+		omap_oobinfo.oobfree->offset = offset + omap_oobinfo.eccbytes;
+		omap_oobinfo.oobfree->length = minfo->oobsize -
+					offset - omap_oobinfo.eccbytes;
 		break;
-	default:
-		gpmcnand_err("Error: Unrecognized Mode[%d]!\n", mode);
+	case OMAP_ECC_SOFT:
+		nand->ecc.layout = NULL;
+		nand->ecc.mode = NAND_ECC_SOFT;
 		break;
+	default:
+		return -EINVAL;
+	}
+
+	omap_oobinfo.eccbytes = oinfo->nand.ecc.bytes;
+
+	oinfo->ecc_mode = mode;
+
+	if (nand->buffers)
+		kfree(nand->buffers);
+
+	/* second phase scan */
+	if (nand_scan_tail(minfo))
+		return -ENXIO;
+
+	nand->options |= NAND_SKIP_BBTSCAN;
+
+	return 0;
+}
+
+static int omap_gpmc_eccmode_set(struct device_d *dev, struct param_d *param, const char *val)
+{
+	struct gpmc_nand_info *oinfo = dev->priv;
+	int i;
+
+	if (!val)
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(ecc_mode_strings); i++)
+		if (!strcmp(ecc_mode_strings[i], val))
+			break;
+
+	if (i == ARRAY_SIZE(ecc_mode_strings)) {
+		dev_err(dev, "invalid ecc mode '%s'\n", val);
+		printf("valid modes:\n");
+		for (i = 0; i < ARRAY_SIZE(ecc_mode_strings); i++)
+			printf("%s\n", ecc_mode_strings[i]);
+		return -EINVAL;
 	}
+
+	return omap_gpmc_eccmode(oinfo, i);
 }
 
 /**
@@ -425,6 +538,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	oinfo->pdev = pdev;
 	oinfo->pdata = pdata;
 	pdev->platform_data = (void *)oinfo;
+	pdev->priv = oinfo;
 
 	nand = &oinfo->nand;
 	nand->priv = (void *)oinfo;
@@ -548,31 +662,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
-	if (pdata->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE) {
-		nand->ecc.layout = layout;
-
-		/* Program how many columns we expect+
-		 * enable the cs we want and enable the engine
-		 */
-		oinfo->ecc_config = (pdata->cs << 1) |
-		    ((nand->options & NAND_BUSWIDTH_16) ?
-		     (0x1 << 7) : 0x0) | 0x1;
-		nand->ecc.hwctl = omap_enable_hwecc;
-		nand->ecc.calculate = omap_calculate_ecc;
-		nand->ecc.correct = omap_correct_data;
-		nand->ecc.mode = NAND_ECC_HW;
-		nand->ecc.size = 512;
-		nand->ecc.bytes = 3;
-		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
-		oinfo->ecc_parity_pairs = 12;
-	} else
-		nand->ecc.mode = NAND_ECC_SOFT;
-
-	/* second phase scan */
-	if (nand_scan_tail(minfo)) {
-		err = -ENXIO;
-		goto out_release_mem;
-	}
+	omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
 
 	/* We are all set to register with the system now! */
 	err = add_mtd_device(minfo);
@@ -580,6 +670,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		gpmcnand_err("device registration failed\n");
 		goto out_release_mem;
 	}
+
+	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
+
 	return 0;
 
 out_release_mem:
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
