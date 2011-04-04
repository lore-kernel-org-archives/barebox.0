Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T5-V4
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:58 +0200
Message-Id: <1301923918-28746-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] mtd nand omap: Add BCH ecc support
To: barebox@lists.infradead.org

This patch adds BCH ecc support to the omap nand driver. The BCH
error correction allows for up to 8 bit error correction. It is
also needed for booting from nand on omap4.

This is based on code from Sukumar Ghorai <s-ghorai@ti.com>:

[PATCH] omap3: nand: bch ecc support added

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/gpmc_nand.h |    3 +
 drivers/mtd/nand/Makefile                   |    2 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c    |  389 +++++++++++++++++++++++++++
 drivers/mtd/nand/nand_omap_gpmc.c           |  223 +++++++++++++---
 4 files changed, 579 insertions(+), 38 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_omap_bch_decoder.c

diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index a57d2a9..1bc52ff 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -36,6 +36,9 @@
 enum gpmc_ecc_mode {
 	OMAP_ECC_SOFT,
 	OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
+	OMAP_ECC_BCH4_CODE_HW,
+	OMAP_ECC_BCH8_CODE_HW,
+	OMAP_ECC_BCH8_CODE_HW_ROMCODE,
 };
 
 /** omap nand platform data structure */
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index bac39e7..e9a94b9 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -7,7 +7,7 @@ obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
 obj-$(CONFIG_MTD_NAND_DISKONCHIP)	+= diskonchip.o
 obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
-obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o
+obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
 obj-$(CONFIG_NAND_S3C24X0)		+= nand_s3c2410.o
 #obj-$(CONFIG_NAND)			+= nand_util.o
diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.c b/drivers/mtd/nand/nand_omap_bch_decoder.c
new file mode 100644
index 0000000..356f71f
--- /dev/null
+++ b/drivers/mtd/nand/nand_omap_bch_decoder.c
@@ -0,0 +1,389 @@
+/*
+ * drivers/mtd/nand/omap_omap_bch_decoder.c
+ *
+ * Whole BCH ECC Decoder (Post hardware generated syndrome decoding)
+ *
+ * Copyright (c) 2007 Texas Instruments
+ *
+ * Author: Sukumar Ghorai <s-ghorai@xxxxxx
+ *		   Michael Fillinger <m-fillinger@xxxxxx>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+
+#define mm		13
+#define kk_shorten	4096
+#define nn		8191	/* Length of codeword, n = 2**mm - 1 */
+
+#define PPP	0x201B	/* Primary Polynomial : x^13 + x^4 + x^3 + x + 1 */
+#define P	0x001B	/* With omitted x^13 */
+#define POLY	12	/* degree of the primary Polynomial less one */
+
+/**
+ * mpy_mod_gf - GALOIS field multiplier
+ * Input  : A(x), B(x)
+ * Output : A(x)*B(x) mod P(x)
+ */
+static unsigned int mpy_mod_gf(unsigned int a, unsigned int b)
+{
+	unsigned int R = 0;
+	unsigned int R1 = 0;
+	unsigned int k = 0;
+
+	for (k = 0; k < mm; k++) {
+
+		R = (R << 1) & 0x1FFE;
+		if (R1 == 1)
+			R ^= P;
+
+		if (((a >> (POLY - k)) & 1) == 1)
+			R ^= b;
+
+		if (k < POLY)
+			R1 = (R >> POLY) & 1;
+	}
+	return R;
+}
+
+/**
+ * chien - CHIEN search
+ *
+ * @location - Error location vector pointer
+ *
+ * Inputs  : ELP(z)
+ *	     No. of found errors
+ *	     Size of input codeword
+ * Outputs : Up to 8 locations
+ *	     No. of errors
+ */
+static int chien(unsigned int select_4_8, int err_nums,
+				unsigned int err[], unsigned int *location)
+{
+	int i, count; /* Number of dectected errors */
+	/* Contains accumulation of evaluation at x^i (i:1->8) */
+	unsigned int gammas[8] = {0};
+	unsigned int alpha;
+	unsigned int bit, ecc_bits;
+	unsigned int elp_sum;
+
+	ecc_bits = (select_4_8 == 0) ? 52 : 104;
+
+	/* Start evaluation at Alpha**8192 and decreasing */
+	for (i = 0; i < 8; i++)
+		gammas[i] = err[i];
+
+	count = 0;
+	for (i = 1; (i <= nn) && (count < err_nums); i++) {
+
+		/* Result of evaluation at root */
+		elp_sum = 1 ^ gammas[0] ^ gammas[1] ^
+				gammas[2] ^ gammas[3] ^
+				gammas[4] ^ gammas[5] ^
+				gammas[6] ^ gammas[7];
+
+		alpha = PPP >> 1;
+		gammas[0] = mpy_mod_gf(gammas[0], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-2 */
+		gammas[1] = mpy_mod_gf(gammas[1], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-2 */
+		gammas[2] = mpy_mod_gf(gammas[2], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-3 */
+		gammas[3] = mpy_mod_gf(gammas[3], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-4 */
+		gammas[4] = mpy_mod_gf(gammas[4], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-5 */
+		gammas[5] = mpy_mod_gf(gammas[5], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-6 */
+		gammas[6] = mpy_mod_gf(gammas[6], alpha);
+		alpha = mpy_mod_gf(alpha, (PPP >> 1));	/* x alphha^-7 */
+		gammas[7] = mpy_mod_gf(gammas[7], alpha);
+
+		if (elp_sum == 0) {
+			/* calculate bit position in main data area */
+			bit = ((i-1) & ~7)|(7-((i-1) & 7));
+			if (i >= 2 * ecc_bits)
+				location[count++] =
+					kk_shorten - (bit - 2 * ecc_bits) - 1;
+		}
+	}
+
+	/* Failure: No. of detected errors != No. or corrected errors */
+	if (count != err_nums) {
+		count = -1;
+		printk(KERN_ERR "BCH decoding failed\n");
+	}
+	for (i = 0; i < count; i++)
+		pr_debug("%d ", location[i]);
+
+	return count;
+}
+
+/* synd : 16 Syndromes
+ * return: gamaas - Coefficients to the error polynomial
+ * return: : Number of detected errors
+*/
+static unsigned int berlekamp(unsigned int select_4_8,
+			unsigned int synd[], unsigned int err[])
+{
+	int loop, iteration;
+	unsigned int LL = 0;		/* Detected errors */
+	unsigned int d = 0;	/* Distance between Syndromes and ELP[n](z) */
+	unsigned int invd = 0;		/* Inverse of d */
+	/* Intermediate ELP[n](z).
+	 * Final ELP[n](z) is Error Location Polynomial
+	 */
+	unsigned int gammas[16] = {0};
+	/* Intermediate normalized ELP[n](z) : D[n](z) */
+	unsigned int D[16] = {0};
+	/* Temporary value that holds an ELP[n](z) coefficient */
+	unsigned int next_gamma = 0;
+
+	int e = 0;
+	unsigned int sign = 0;
+	unsigned int u = 0;
+	unsigned int v = 0;
+	unsigned int C1 = 0, C2 = 0;
+	unsigned int ss = 0;
+	unsigned int tmp_v = 0, tmp_s = 0;
+	unsigned int tmp_poly;
+
+	/*-------------- Step 0 ------------------*/
+	for (loop = 0; loop < 16; loop++)
+		gammas[loop] = 0;
+	gammas[0] = 1;
+	D[1] = 1;
+
+	iteration = 0;
+	LL = 0;
+	while ((iteration < ((select_4_8+1)*2*4)) &&
+			(LL <= ((select_4_8+1)*4))) {
+
+		pr_debug("\nIteration.............%d\n", iteration);
+		d = 0;
+		/* Step: 0 */
+		for (loop = 0; loop <= LL; loop++) {
+			tmp_poly = mpy_mod_gf(
+					gammas[loop], synd[iteration - loop]);
+			d ^= tmp_poly;
+			pr_debug("%02d. s=0 LL=%x poly %x\n",
+					loop, LL, tmp_poly);
+		}
+
+		/* Step 1: 1 cycle only to perform inversion */
+		v = d << 1;
+		e = -1;
+		sign = 1;
+		ss = 0x2000;
+		invd = 0;
+		u = PPP;
+		for (loop = 0; (d != 0) && (loop <= (2 * POLY)); loop++) {
+			pr_debug("%02d. s=1 LL=%x poly NULL\n",
+						loop, LL);
+			C1 = (v >> 13) & 1;
+			C2 = C1 & sign;
+
+			sign ^= C2 ^ (e == 0);
+
+			tmp_v = v;
+			tmp_s = ss;
+
+			if (C1 == 1) {
+				v ^= u;
+				ss ^= invd;
+			}
+			v = (v << 1) & 0x3FFF;
+			if (C2 == 1) {
+				u = tmp_v;
+				invd = tmp_s;
+				e = -e;
+			}
+			invd >>= 1;
+			e--;
+		}
+
+		for (loop = 0; (d != 0) && (loop <= (iteration + 1)); loop++) {
+			/* Step 2
+			 * Interleaved with Step 3, if L<(n-k)
+			 * invd: Update of ELP[n](z) = ELP[n-1](z) - d.D[n-1](z)
+			 */
+
+			/* Holds value of ELP coefficient until precedent
+			 * value does not have to be used anymore
+			 */
+			tmp_poly = mpy_mod_gf(d, D[loop]);
+			pr_debug("%02d. s=2 LL=%x poly %x\n",
+						loop, LL, tmp_poly);
+
+			next_gamma = gammas[loop] ^ tmp_poly;
+			if ((2 * LL) < (iteration + 1)) {
+				/* Interleaving with Step 3
+				 * for parallelized update of ELP(z) and D(z)
+				 */
+			} else {
+				/* Update of ELP(z) only -> stay in Step 2 */
+				gammas[loop] = next_gamma;
+				if (loop == (iteration + 1)) {
+					/* to step 4 */
+					break;
+				}
+			}
+
+			/* Step 3
+			 * Always interleaved with Step 2 (case when L<(n-k))
+			 * Update of D[n-1](z) = ELP[n-1](z)/d
+			 */
+			D[loop] = mpy_mod_gf(gammas[loop], invd);
+			pr_debug("%02d. s=3 LL=%x poly %x\n",
+					loop, LL, D[loop]);
+
+			/* Can safely update ELP[n](z) */
+			gammas[loop] = next_gamma;
+
+			if (loop == (iteration + 1)) {
+				/* If update finished */
+				LL = iteration - LL + 1;
+				/* to step 4 */
+				break;
+			}
+			/* Else, interleaving to step 2*/
+		}
+
+		/* Step 4: Update D(z): i:0->L */
+		/* Final update of D[n](z) = D[n](z).z*/
+		for (loop = 0; loop < 15; loop++) /* Left Shift */
+			D[15 - loop] = D[14 - loop];
+
+		D[0] = 0;
+
+		iteration++;
+	} /* while */
+
+	/* Processing finished, copy ELP to final registers : 0->2t-1*/
+	for (loop = 0; loop < 8; loop++)
+		err[loop] = gammas[loop+1];
+
+	pr_debug("\n Err poly:");
+	for (loop = 0; loop < 8; loop++)
+		pr_debug("0x%x ", err[loop]);
+
+	return LL;
+}
+
+/*
+ * syndrome - Generate syndrome components from hw generate syndrome
+ * r(x) = c(x) + e(x)
+ * s(x) = c(x) mod g(x) + e(x) mod g(x) =  e(x) mod g(x)
+ * so receiver checks if the syndrome s(x) = r(x) mod g(x) is equal to zero.
+ * unsigned int s[16]; - Syndromes
+ */
+static void syndrome(unsigned int select_4_8,
+					unsigned char *ecc, unsigned int syn[])
+{
+	unsigned int k, l, t;
+	unsigned int alpha_bit, R_bit;
+	int ecc_pos, ecc_min;
+
+	/* 2t-1 = 15 (for t=8) minimal polynomials of the first 15 powers of a
+	 * primitive elemmants of GF(m); Even powers minimal polynomials are
+	 * duplicate of odd powers' minimal polynomials.
+	 * Odd powers of alpha (1 to 15)
+	 */
+	unsigned int pow_alpha[8] = {0x0002, 0x0008, 0x0020, 0x0080,
+				 0x0200, 0x0800, 0x001B, 0x006C};
+
+	pr_debug("\n ECC[0..n]: ");
+	for (k = 0; k < 13; k++)
+		pr_debug("0x%x ", ecc[k]);
+
+	if (select_4_8 == 0) {
+		t = 4;
+		ecc_pos = 55; /* bits(52-bits): 55->4 */
+		ecc_min = 4;
+	} else {
+		t = 8;
+		ecc_pos = 103; /* bits: 103->0 */
+		ecc_min = 0;
+	}
+
+	/* total numbber of syndrom to be used is 2t */
+	/* Step1: calculate the odd syndrome(s) */
+	R_bit = ((ecc[ecc_pos/8] >> (7 - ecc_pos%8)) & 1);
+	ecc_pos--;
+	for (k = 0; k < t; k++)
+		syn[2 * k] = R_bit;
+
+	while (ecc_pos >= ecc_min) {
+		R_bit = ((ecc[ecc_pos/8] >> (7 - ecc_pos%8)) & 1);
+		ecc_pos--;
+
+		for (k = 0; k < t; k++) {
+			/* Accumulate value of x^i at alpha^(2k+1) */
+			if (R_bit == 1)
+				syn[2*k] ^= pow_alpha[k];
+
+			/* Compute a**(2k+1), using LSFR */
+			for (l = 0; l < (2 * k + 1); l++) {
+				alpha_bit = (pow_alpha[k] >> POLY) & 1;
+				pow_alpha[k] = (pow_alpha[k] << 1) & 0x1FFF;
+				if (alpha_bit == 1)
+					pow_alpha[k] ^= P;
+			}
+		}
+	}
+
+	/* Step2: calculate the even syndrome(s)
+	 * Compute S(a), where a is an even power of alpha
+	 * Evenry even power of primitive element has the same minimal
+	 * polynomial as some odd power of elemets.
+	 * And based on S(a^2) = S^2(a)
+	 */
+	for (k = 0; k < t; k++)
+		syn[2*k+1] = mpy_mod_gf(syn[k], syn[k]);
+
+	pr_debug("\n Syndromes: ");
+	for (k = 0; k < 16; k++)
+		pr_debug("0x%x ", syn[k]);
+}
+
+/**
+ * decode_bch - BCH decoder for 4- and 8-bit error correction
+ *
+ * @ecc - ECC syndrome generated by hw BCH engine
+ * @err_loc - pointer to error location array
+ *
+ * This function does post sydrome generation (hw generated) decoding
+ * for:-
+ * Dimension of Galoise Field: m = 13
+ * Length of codeword: n = 2**m - 1
+ * Number of errors that can be corrected: 4- or 8-bits
+ * Length of information bit: kk = nn - rr
+ */
+int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc)
+{
+	int no_of_err;
+	unsigned int syn[16] = {0,};	/* 16 Syndromes */
+	unsigned int err_poly[8] = {0,};
+	/* Coefficients to the error polynomial
+	 * ELP(x) = 1 + err0.x + err1.x^2 + ... + err7.x^8
+	 */
+
+	/* Decoding involes three steps
+	 * 1. Compute the syndrom from the received codeword,
+	 * 2. Find the error location polynomial from a set of equations
+	 *     derived from the syndrome,
+	 * 3. Use the error location polynomial to identify errants bits,
+	 *
+	 * And correction done by bit flips using error location and expected
+	 * to be outseide of this implementation.
+	 */
+	syndrome(select_4_8, ecc, syn);
+	no_of_err = berlekamp(select_4_8, syn, err_poly);
+	if (no_of_err <= (4 << select_4_8))
+		no_of_err = chien(select_4_8, no_of_err, err_poly, err_loc);
+
+	return no_of_err;
+}
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 889009b..1599603 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -91,6 +91,9 @@ int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 static char *ecc_mode_strings[] = {
 	"software",
 	"hamming_hw_romcode",
+	"bch4_hw",
+	"bch8_hw",
+	"bch8_hw_romcode",
 };
 
 /** internal structure maintained for nand information */
@@ -284,6 +287,66 @@ static unsigned int gen_true_ecc(u8 *ecc_buf)
 	    ((ecc_buf[2] & 0x0F) << 8);
 }
 
+static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
+			      uint8_t *ecc_code)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	unsigned int reg;
+	unsigned int val1 = 0x0, val2 = 0x0;
+	unsigned int val3 = 0x0, val4 = 0x0;
+	int i;
+	int ecc_size = 8;
+
+	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_BCH4_CODE_HW:
+		ecc_size = 4;
+		/* fall through */
+	case OMAP_ECC_BCH8_CODE_HW:
+	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
+		for (i = 0; i < 4; i++) {
+			/*
+			 * Reading HW ECC_BCH_Results
+			 * 0x240-0x24C, 0x250-0x25C, 0x260-0x26C, 0x270-0x27C
+			 */
+			reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * i);
+			val1 = readl(oinfo->gpmc_base + reg);
+			val2 = readl(oinfo->gpmc_base + reg + 4);
+			if (ecc_size == 8) {
+				val3 = readl(oinfo->gpmc_base  +reg + 8);
+				val4 = readl(oinfo->gpmc_base + reg + 12);
+
+				*ecc_code++ = (val4 & 0xFF);
+				*ecc_code++ = ((val3 >> 24) & 0xFF);
+				*ecc_code++ = ((val3 >> 16) & 0xFF);
+				*ecc_code++ = ((val3 >> 8) & 0xFF);
+				*ecc_code++ = (val3 & 0xFF);
+				*ecc_code++ = ((val2 >> 24) & 0xFF);
+			}
+			*ecc_code++ = ((val2 >> 16) & 0xFF);
+			*ecc_code++ = ((val2 >> 8) & 0xFF);
+			*ecc_code++ = (val2 & 0xFF);
+			*ecc_code++ = ((val1 >> 24) & 0xFF);
+			*ecc_code++ = ((val1 >> 16) & 0xFF);
+			*ecc_code++ = ((val1 >> 8) & 0xFF);
+			*ecc_code++ = (val1 & 0xFF);
+		}
+		break;
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
+	return 0;
+}
+
 /**
  * @brief Compares the ecc read from nand spare area with ECC
  * registers values and corrects one bit error if it has occured
@@ -306,7 +369,11 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	unsigned char bit;
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	int ecc_type = OMAP_ECC_BCH8_CODE_HW;
+	int i, j, eccsize, eccflag, count;
+	unsigned int err_loc[8];
 	int blockCnt = 0;
+	int select_4_8;
 
 	gpmcnand_dbg("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
 		  (unsigned int)dat, (unsigned int)read_ecc,
@@ -347,41 +414,48 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 			}
 		}
 		break;
-	default:
-		return -EINVAL;
-	}
+	case OMAP_ECC_BCH8_CODE_HW:
+	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
+		eccsize = 13;
+		select_4_8 = 1;
+		/* fall through */
+	case OMAP_ECC_BCH4_CODE_HW:
+		if (ecc_type == OMAP_ECC_BCH4_CODE_HW) {
+			eccsize = 7;
+			select_4_8 = 0;
+		}
 
-	return 0;
-}
+		omap_calculate_ecc(mtd, dat, calc_ecc);
+		for (i = 0; i < blockCnt; i++) {
+			/* check if any ecc error */
+			eccflag = 0;
+			for (j = 0; (j < eccsize) && (eccflag == 0); j++)
+				if (calc_ecc[j] != 0)
+					eccflag = 1;
+
+			if (eccflag == 1) {
+				eccflag = 0;
+				for (j = 0; (j < eccsize) &&
+						(eccflag == 0); j++)
+					if (read_ecc[j] != 0xFF)
+						eccflag = 1;
+			}
 
-/**
- * @brief Using noninverted ECC can be considered ugly since writing a blank
- * page ie. padding will clear the ECC bytes. This is no problem as long
- * nobody is trying to write data on the seemingly unused page. Reading
- * an erased page will produce an ECC mismatch between generated and read
- * ECC bytes that has to be dealt with separately.
- *
- * @param mtd - mtd info structure
- * @param dat data being written
- * @param ecc_code ecc code returned back to nand layer
- *
- * @return 0
- */
-static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
-			      uint8_t *ecc_code)
-{
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	unsigned int val1 = 0x0;
+			count = 0;
+			if (eccflag == 1)
+				count = decode_bch(select_4_8, calc_ecc, err_loc);
 
-	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
-		/* read ecc result */
-		val1 = readl(oinfo->gpmc_base + GPMC_ECC1_RESULT);
-		*ecc_code++ = val1;          /* P128e, ..., P1e */
-		*ecc_code++ = val1 >> 16;    /* P128o, ..., P1o */
-		/* P2048o, P1024o, P512o, P256o, P2048e, P1024e, P512e, P256e */
-		*ecc_code++ = ((val1 >> 8) & 0x0f) | ((val1 >> 20) & 0xf0);
+			for (j = 0; j < count; j++) {
+				if (err_loc[j] < 4096)
+					dat[err_loc[j] >> 3] ^=
+							1 << (err_loc[j] & 7);
+				/* else, not interested to correct ecc */
+			}
+
+			calc_ecc = calc_ecc + eccsize;
+			read_ecc = read_ecc + eccsize;
+			dat += 512;
+		}
 		break;
 	default:
 		return -EINVAL;
@@ -394,13 +468,36 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	unsigned int eccsize1 = 0;
+	unsigned int bch_mod = 0, bch_wrapmode = 0, eccsize1 = 0, eccsize0 = 0;
 	unsigned int ecc_conf_val = 0, ecc_size_conf_val = 0;
 	int dev_width = 0;
 	int ecc_size = nand->ecc.size;
 	int cs = 0;
 
 	switch (oinfo->ecc_mode) {
+	case OMAP_ECC_BCH4_CODE_HW:
+		if (mode == NAND_ECC_READ) {
+			eccsize1 = 0xD; eccsize0 = 0x48;
+			bch_mod = 0;
+			bch_wrapmode = 0x09;
+		} else {
+			eccsize1 = 0x20; eccsize0 = 0x00;
+			bch_mod = 0;
+			bch_wrapmode = 0x06;
+		}
+		break;
+	case OMAP_ECC_BCH8_CODE_HW:
+	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
+		if (mode == NAND_ECC_READ) {
+			eccsize1 = 0x1A; eccsize0 = 0x18;
+			bch_mod = 1;
+			bch_wrapmode = 0x04;
+		} else {
+			eccsize1 = 0x20; eccsize0 = 0x00;
+			bch_mod = 1;
+			bch_wrapmode = 0x06;
+		}
+		break;
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		eccsize1 = ((ecc_size >> 1) - 1) << 22;
 		break;
@@ -408,9 +505,18 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 		return;
 	}
 
-	writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-	ecc_size_conf_val = (eccsize1 << 22) | 0x0000000F;
-	ecc_conf_val = (dev_width << 7) | (cs << 1) | (0x1);
+	/* clear ecc and enable bits */
+	if (oinfo->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE) {
+		writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+		ecc_size_conf_val = (eccsize1 << 22) | 0x0000000F;
+		ecc_conf_val = (dev_width << 7) | (cs << 1) | (0x1);
+	} else {
+		writel(0x1, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+		ecc_size_conf_val = (eccsize1 << 22) | (eccsize0 << 12);
+		ecc_conf_val = ((0x01 << 16) | (bch_mod << 12)
+			| (bch_wrapmode << 8) | (dev_width << 7)
+			| (0x03 << 4) | (cs << 1) | (0x1));
+	}
 
 	writel(ecc_size_conf_val, oinfo->gpmc_base + GPMC_ECC_SIZE_CONFIG);
 	writel(ecc_conf_val, oinfo->gpmc_base + GPMC_ECC_CONFIG);
@@ -423,7 +529,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	struct mtd_info *minfo = &oinfo->minfo;
 	struct nand_chip *nand = &oinfo->nand;
 	int offset;
-	int i;
+	int i, j;
 
 	if (nand->options & NAND_BUSWIDTH_16)
 		nand->badblock_pattern = &bb_descrip_flashbased;
@@ -457,6 +563,48 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
 		break;
+	case OMAP_ECC_BCH4_CODE_HW:
+		oinfo->nand.ecc.bytes    = 4 * 7;
+		oinfo->nand.ecc.size     = 4 * 512;
+		omap_oobinfo.oobfree->offset = offset;
+		omap_oobinfo.oobfree->length = minfo->oobsize -
+					offset - omap_oobinfo.eccbytes;
+		offset = minfo->oobsize - oinfo->nand.ecc.bytes;
+		for (i = 0; i < oinfo->nand.ecc.bytes; i++)
+			omap_oobinfo.eccpos[i] = i + offset;
+		break;
+	case OMAP_ECC_BCH8_CODE_HW:
+		oinfo->nand.ecc.bytes    = 4 * 13;
+		oinfo->nand.ecc.size     = 4 * 512;
+		omap_oobinfo.oobfree->offset = offset;
+		omap_oobinfo.oobfree->length = minfo->oobsize -
+					offset - omap_oobinfo.eccbytes;
+		offset = minfo->oobsize - oinfo->nand.ecc.bytes;
+		for (i = 0; i < oinfo->nand.ecc.bytes; i++)
+			omap_oobinfo.eccpos[i] = i + offset;
+		break;
+	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
+		/*
+		 * Contradicting the datasheet the ecc checksum has to start
+		 * at byte 2 in oob. I have no idea how the rom code can
+		 * read this but it does.
+		 */
+		dev_warn(oinfo->pdev, "using rom loader ecc mode. "
+				"You can write properly but not read it back\n");
+
+		oinfo->nand.ecc.bytes    = 4 * 13;
+		oinfo->nand.ecc.size     = 4 * 512;
+		omap_oobinfo.oobfree->length = 0;
+		j = 0;
+		for (i = 2; i < 15; i++)
+			omap_oobinfo.eccpos[j++] = i;
+		for (i = 16; i < 29; i++)
+			omap_oobinfo.eccpos[j++] = i;
+		for (i = 30; i < 43; i++)
+			omap_oobinfo.eccpos[j++] = i;
+		for (i = 44; i < 57; i++)
+			omap_oobinfo.eccpos[j++] = i;
+		break;
 	case OMAP_ECC_SOFT:
 		nand->ecc.layout = NULL;
 		nand->ecc.mode = NAND_ECC_SOFT;
@@ -662,6 +810,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
+	nand->options |= NAND_SKIP_BBTSCAN;
 	omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
 
 	/* We are all set to register with the system now! */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
