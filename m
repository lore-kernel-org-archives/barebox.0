Delivery-date: Tue, 16 Apr 2024 08:22:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcDO-002z9W-1Q
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:22:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcDM-0004JP-NU
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:22:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a6Dp0Y2xKPS8BzqEjEo9K0+rsseAqYiYhkHEAID2a3A=; b=Nyq89UgFR9Tj7hH5IjCm1B3NFB
	WqQ9rDSEgs7SND+ptCCbyMCavOoUimLtYzhSKPdlGoAabaO4EndzBTHkjGeONr54DVxZv8sUdzR97
	o9iDJLLRo0ozBihJnIf/LebeuKNdP7npGUu8OUDuLEQIc8diH3nb01vKgIebRKt2IbkTiR5K4J4lS
	TuGJQkd7m31/UKRBNNAGhYjp7byI/qQV1YOy05wl+/wjzeFpsuSHbdjb2zYdV9KeZxwex4jLYK3zP
	ZqtkT0a+RD0wFGr4q3OI2pizvJV93DhiOe2DWF+tsC6MHKpGKLXduF71TBIaaHBzNb724CAvv1zci
	cicDHlVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcCY-0000000B4X0-10KX;
	Tue, 16 Apr 2024 06:21:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcCT-0000000B4Vy-2f5k
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:21:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcCS-0003Qv-G0; Tue, 16 Apr 2024 08:21:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcCS-00CYjY-3L; Tue, 16 Apr 2024 08:21:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcCR-005bsb-3B;
	Tue, 16 Apr 2024 08:21:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:21:47 +0200
Message-Id: <20240416062147.1337233-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_232150_013839_60B2DF24 
X-CRM114-Status: GOOD (  30.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bch: update from Kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates BCH support from Linux as of Linux-6.9-rc2. Among other
things in Linux the bch function names changed from a _bch suffix to a bch_
prefix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c   |  12 +--
 drivers/mtd/devices/docg3.c |   8 +-
 drivers/mtd/nand/nand_bch.c |  10 +--
 include/linux/bch.h         |  25 ++----
 lib/Kconfig                 |   1 +
 lib/bch.c                   | 167 +++++++++++++++++++++++-------------
 6 files changed, 130 insertions(+), 93 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 0d46192720..d0261140cf 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -79,7 +79,7 @@ static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
 	int blocksize = 128;
 	int numblocks = 8;
 	int ecc_buf_size = (m * eccbits + 7) / 8;
-	struct bch_control *bch = init_bch(m, eccbits, 0);
+	struct bch_control *bch = bch_init(m, eccbits, 0, false);
 	uint8_t *ecc_buf = xmalloc(ecc_buf_size);
 	uint8_t *tmp_buf = xzalloc(blocksize * numblocks);
 	uint8_t *psrc, *pdst;
@@ -109,7 +109,7 @@ static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
 		for (j = 0; j < blocksize; j++)
 			psrc[j] = reverse_bit(psrc[j]);
 
-		encode_bch(bch, psrc, blocksize, ecc_buf);
+		bch_encode(bch, psrc, blocksize, ecc_buf);
 
 		/* reverse ecc bit */
 		for (j = 0; j < ecc_buf_size; j++)
@@ -121,7 +121,7 @@ static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
 
 	free(ecc_buf);
 	free(tmp_buf);
-	free_bch(bch);
+	bch_free(bch);
 }
 
 static struct fcb_block *fcb_decode_bch(void *rawpage, int eccbits)
@@ -130,7 +130,7 @@ static struct fcb_block *fcb_decode_bch(void *rawpage, int eccbits)
 	int blocksize = 128;
 	int numblocks = 8;
 	int ecc_buf_size = (m * eccbits + 7) / 8;
-	struct bch_control *bch = init_bch(m, eccbits, 0);
+	struct bch_control *bch = bch_init(m, eccbits, 0, false);
 	uint8_t *fcb = xmalloc(numblocks * blocksize);
 	uint8_t *ecc_buf = xmalloc(ecc_buf_size);
 	uint8_t *data_buf = xmalloc(blocksize);
@@ -152,7 +152,7 @@ static struct fcb_block *fcb_decode_bch(void *rawpage, int eccbits)
 		for (j = 0; j < ecc_buf_size; j++)
 			ecc_buf[j] = reverse_bit(psrc[j + blocksize]);
 
-		ret = decode_bch(bch, data_buf, blocksize, ecc_buf,
+		ret = bch_decode(bch, data_buf, blocksize, ecc_buf,
 				 NULL, NULL, errloc);
 
 		if (ret < 0) {
@@ -185,7 +185,7 @@ static struct fcb_block *fcb_decode_bch(void *rawpage, int eccbits)
 	free(data_buf);
 	free(ecc_buf);
 	free(errloc);
-	free_bch(bch);
+	bch_free(bch);
 
 	return (struct fcb_block *)fcb;
 }
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 593a7035e5..fcf9403b8f 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -325,7 +325,7 @@ static int doc_ecc_bch_fix_data(struct docg3 *docg3, void *buf, u8 *hwecc)
 
 	for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
 		ecc[i] = bitrev8(hwecc[i]);
-	numerrs = decode_bch(docg3_bch, NULL, DOC_ECC_BCH_COVERED_BYTES,
+	numerrs = bch_decode(docg3_bch, NULL, DOC_ECC_BCH_COVERED_BYTES,
 			     NULL, ecc, NULL, errorpos);
 	BUG_ON(numerrs == -EINVAL);
 	if (numerrs < 0)
@@ -1144,8 +1144,8 @@ static int __init docg3_probe(struct device *dev)
 	base = IOMEM(iores->start);
 
 	ret = -ENOMEM;
-	docg3_bch = init_bch(DOC_ECC_BCH_M, DOC_ECC_BCH_T,
-			     DOC_ECC_BCH_PRIMPOLY);
+	docg3_bch = bch_init(DOC_ECC_BCH_M, DOC_ECC_BCH_T,
+			     DOC_ECC_BCH_PRIMPOLY, false);
 	if (!docg3_bch)
 		goto nomem2;
 
@@ -1181,7 +1181,7 @@ static int __init docg3_probe(struct device *dev)
 	ret = -ENODEV;
 	dev_info(dev, "No supported DiskOnChip found\n");
 err_probe:
-	free_bch(docg3_bch);
+	bch_free(docg3_bch);
 nomem2:
 	return ret;
 }
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
index 0d636d9608..45f9c5052a 100644
--- a/drivers/mtd/nand/nand_bch.c
+++ b/drivers/mtd/nand/nand_bch.c
@@ -42,7 +42,7 @@ int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
 	unsigned int i;
 
 	memset(code, 0, chip->ecc.bytes);
-	encode_bch(nbc->bch, buf, chip->ecc.size, code);
+	bch_encode(nbc->bch, buf, chip->ecc.size, code);
 
 	/* apply mask so that an erased page is a valid codeword */
 	for (i = 0; i < chip->ecc.bytes; i++)
@@ -68,7 +68,7 @@ int nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
 	unsigned int *errloc = nbc->errloc;
 	int i, count;
 
-	count = decode_bch(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
+	count = bch_decode(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
 			   NULL, errloc);
 	if (count > 0) {
 		for (i = 0; i < count; i++) {
@@ -131,7 +131,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 	if (!nbc)
 		goto fail;
 
-	nbc->bch = init_bch(m, t, 0);
+	nbc->bch = bch_init(m, t, 0, false);
 	if (!nbc->bch)
 		goto fail;
 
@@ -183,7 +183,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 
 	memset(erased_page, 0xff, eccsize);
-	encode_bch(nbc->bch, erased_page, eccsize, nbc->eccmask);
+	bch_encode(nbc->bch, erased_page, eccsize, nbc->eccmask);
 	kfree(erased_page);
 
 	for (i = 0; i < eccbytes; i++)
@@ -206,7 +206,7 @@ EXPORT_SYMBOL(nand_bch_init);
 void nand_bch_free(struct nand_bch_control *nbc)
 {
 	if (nbc) {
-		free_bch(nbc->bch);
+		bch_free(nbc->bch);
 		kfree(nbc->errloc);
 		kfree(nbc->eccmask);
 		kfree(nbc);
diff --git a/include/linux/bch.h b/include/linux/bch.h
index 295b4ef153..85fdce83d4 100644
--- a/include/linux/bch.h
+++ b/include/linux/bch.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Generic binary BCH encoding/decoding library
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License version 2 as published by
- * the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc., 51
- * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Copyright © 2011 Parrot S.A.
  *
  * Author: Ivan Djelic <ivan.djelic@parrot.com>
@@ -45,6 +33,7 @@
  * @cache:      log-based polynomial representation buffer
  * @elp:        error locator polynomial
  * @poly_2t:    temporary polynomials of degree 2t
+ * @swap_bits:  swap bits within data and syndrome bytes
  */
 struct bch_control {
 	unsigned int    m;
@@ -63,16 +52,18 @@ struct bch_control {
 	int            *cache;
 	struct gf_poly *elp;
 	struct gf_poly *poly_2t[4];
+	bool		swap_bits;
 };
 
-struct bch_control *init_bch(int m, int t, unsigned int prim_poly);
+struct bch_control *bch_init(int m, int t, unsigned int prim_poly,
+			     bool swap_bits);
 
-void free_bch(struct bch_control *bch);
+void bch_free(struct bch_control *bch);
 
-void encode_bch(struct bch_control *bch, const uint8_t *data,
+void bch_encode(struct bch_control *bch, const uint8_t *data,
 		unsigned int len, uint8_t *ecc);
 
-int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
+int bch_decode(struct bch_control *bch, const uint8_t *data, unsigned int len,
 	       const uint8_t *recv_ecc, const uint8_t *calc_ecc,
 	       const unsigned int *syn, unsigned int *errloc);
 
diff --git a/lib/Kconfig b/lib/Kconfig
index 71715ef6e8..df9ba6ccc9 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -86,6 +86,7 @@ config BCH_CONST_PARAMS
 	bool
 
 config BCH
+	select BITREV
 	bool
 
 config BITREV
diff --git a/lib/bch.c b/lib/bch.c
index 5797c3faf8..c4e59eaf37 100644
--- a/lib/bch.c
+++ b/lib/bch.c
@@ -10,6 +10,10 @@
  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
  * more details.
  *
+ * You should have received a copy of the GNU General Public License along with
+ * this program; if not, write to the Free Software Foundation, Inc., 51
+ * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
+ *
  * Copyright © 2011 Parrot S.A.
  *
  * Author: Ivan Djelic <ivan.djelic@parrot.com>
@@ -19,15 +23,15 @@
  * This library provides runtime configurable encoding/decoding of binary
  * Bose-Chaudhuri-Hocquenghem (BCH) codes.
  *
- * Call init_bch to get a pointer to a newly allocated bch_control structure for
+ * Call bch_init to get a pointer to a newly allocated bch_control structure for
  * the given m (Galois field order), t (error correction capability) and
  * (optional) primitive polynomial parameters.
  *
- * Call encode_bch to compute and store ecc parity bytes to a given buffer.
- * Call decode_bch to detect and locate errors in received data.
+ * Call bch_encode to compute and store ecc parity bytes to a given buffer.
+ * Call bch_decode to detect and locate errors in received data.
  *
  * On systems supporting hw BCH features, intermediate results may be provided
- * to decode_bch in order to skip certain steps. See decode_bch() documentation
+ * to bch_decode in order to skip certain steps. See bch_decode() documentation
  * for details.
  *
  * Option CONFIG_BCH_CONST_PARAMS can be used to force fixed values of
@@ -59,16 +63,14 @@
  * - WEWoRC 2009, Graz, Austria, LNCS, Springer, July 2009, to appear.
  * [2] [Zin96] V.A. Zinoviev. On the solution of equations of degree 10 over
  * finite fields GF(2^q). In Rapport de recherche INRIA no 2829, 1996.
- *
- * Taken from the linux kernel.
  */
 
-#include <common.h>
-#include <errno.h>
-#include <init.h>
-#include <malloc.h>
 #include <linux/kernel.h>
+#include <linux/export.h>
+#include <linux/errno.h>
+#include <linux/slab.h>
 #include <linux/bitops.h>
+#include <linux/bitrev.h>
 #include <asm/byteorder.h>
 #include <linux/bch.h>
 
@@ -76,15 +78,21 @@
 #define GF_M(_p)               (CONFIG_BCH_CONST_M)
 #define GF_T(_p)               (CONFIG_BCH_CONST_T)
 #define GF_N(_p)               ((1 << (CONFIG_BCH_CONST_M))-1)
+#define BCH_MAX_M              (CONFIG_BCH_CONST_M)
+#define BCH_MAX_T	       (CONFIG_BCH_CONST_T)
 #else
 #define GF_M(_p)               ((_p)->m)
 #define GF_T(_p)               ((_p)->t)
 #define GF_N(_p)               ((_p)->n)
+#define BCH_MAX_M              15 /* 2KB */
+#define BCH_MAX_T              64 /* 64 bit correction */
 #endif
 
 #define BCH_ECC_WORDS(_p)      DIV_ROUND_UP(GF_M(_p)*GF_T(_p), 32)
 #define BCH_ECC_BYTES(_p)      DIV_ROUND_UP(GF_M(_p)*GF_T(_p), 8)
 
+#define BCH_ECC_MAX_WORDS      DIV_ROUND_UP(BCH_MAX_M * BCH_MAX_T, 32)
+
 #ifndef dbg
 #define dbg(_fmt, args...)     do {} while (0)
 #endif
@@ -94,7 +102,7 @@
  */
 struct gf_poly {
 	unsigned int deg;    /* polynomial degree */
-	unsigned int c[0];   /* polynomial terms */
+	unsigned int c[];   /* polynomial terms */
 };
 
 /* given its degree, compute a polynomial size in bytes */
@@ -106,10 +114,18 @@ struct gf_poly_deg1 {
 	unsigned int   c[2];
 };
 
+static u8 swap_bits(struct bch_control *bch, u8 in)
+{
+	if (!bch->swap_bits)
+		return in;
+
+	return bitrev8(in);
+}
+
 /*
- * same as encode_bch(), but process input data one byte at a time
+ * same as bch_encode(), but process input data one byte at a time
  */
-static void encode_bch_unaligned(struct bch_control *bch,
+static void bch_encode_unaligned(struct bch_control *bch,
 				 const unsigned char *data, unsigned int len,
 				 uint32_t *ecc)
 {
@@ -118,7 +134,9 @@ static void encode_bch_unaligned(struct bch_control *bch,
 	const int l = BCH_ECC_WORDS(bch)-1;
 
 	while (len--) {
-		p = bch->mod8_tab + (l+1)*(((ecc[0] >> 24)^(*data++)) & 0xff);
+		u8 tmp = swap_bits(bch, *data++);
+
+		p = bch->mod8_tab + (l+1)*(((ecc[0] >> 24)^(tmp)) & 0xff);
 
 		for (i = 0; i < l; i++)
 			ecc[i] = ((ecc[i] << 8)|(ecc[i+1] >> 24))^(*p++);
@@ -137,10 +155,16 @@ static void load_ecc8(struct bch_control *bch, uint32_t *dst,
 	unsigned int i, nwords = BCH_ECC_WORDS(bch)-1;
 
 	for (i = 0; i < nwords; i++, src += 4)
-		dst[i] = (src[0] << 24)|(src[1] << 16)|(src[2] << 8)|src[3];
+		dst[i] = ((u32)swap_bits(bch, src[0]) << 24) |
+			((u32)swap_bits(bch, src[1]) << 16) |
+			((u32)swap_bits(bch, src[2]) << 8) |
+			swap_bits(bch, src[3]);
 
 	memcpy(pad, src, BCH_ECC_BYTES(bch)-4*nwords);
-	dst[nwords] = (pad[0] << 24)|(pad[1] << 16)|(pad[2] << 8)|pad[3];
+	dst[nwords] = ((u32)swap_bits(bch, pad[0]) << 24) |
+		((u32)swap_bits(bch, pad[1]) << 16) |
+		((u32)swap_bits(bch, pad[2]) << 8) |
+		swap_bits(bch, pad[3]);
 }
 
 /*
@@ -153,20 +177,20 @@ static void store_ecc8(struct bch_control *bch, uint8_t *dst,
 	unsigned int i, nwords = BCH_ECC_WORDS(bch)-1;
 
 	for (i = 0; i < nwords; i++) {
-		*dst++ = (src[i] >> 24);
-		*dst++ = (src[i] >> 16) & 0xff;
-		*dst++ = (src[i] >>  8) & 0xff;
-		*dst++ = (src[i] >>  0) & 0xff;
+		*dst++ = swap_bits(bch, src[i] >> 24);
+		*dst++ = swap_bits(bch, src[i] >> 16);
+		*dst++ = swap_bits(bch, src[i] >> 8);
+		*dst++ = swap_bits(bch, src[i]);
 	}
-	pad[0] = (src[nwords] >> 24);
-	pad[1] = (src[nwords] >> 16) & 0xff;
-	pad[2] = (src[nwords] >>  8) & 0xff;
-	pad[3] = (src[nwords] >>  0) & 0xff;
+	pad[0] = swap_bits(bch, src[nwords] >> 24);
+	pad[1] = swap_bits(bch, src[nwords] >> 16);
+	pad[2] = swap_bits(bch, src[nwords] >> 8);
+	pad[3] = swap_bits(bch, src[nwords]);
 	memcpy(dst, pad, BCH_ECC_BYTES(bch)-4*nwords);
 }
 
 /**
- * encode_bch - calculate BCH ecc parity of data
+ * bch_encode - calculate BCH ecc parity of data
  * @bch:   BCH control structure
  * @data:  data to encode
  * @len:   data length in bytes
@@ -179,31 +203,35 @@ static void store_ecc8(struct bch_control *bch, uint8_t *dst,
  * The exact number of computed ecc parity bits is given by member @ecc_bits of
  * @bch; it may be less than m*t for large values of t.
  */
-void encode_bch(struct bch_control *bch, const uint8_t *data,
+void bch_encode(struct bch_control *bch, const uint8_t *data,
 		unsigned int len, uint8_t *ecc)
 {
 	const unsigned int l = BCH_ECC_WORDS(bch)-1;
 	unsigned int i, mlen;
 	unsigned long m;
-	uint32_t w, r[l+1];
+	uint32_t w, r[BCH_ECC_MAX_WORDS];
+	const size_t r_bytes = BCH_ECC_WORDS(bch) * sizeof(*r);
 	const uint32_t * const tab0 = bch->mod8_tab;
 	const uint32_t * const tab1 = tab0 + 256*(l+1);
 	const uint32_t * const tab2 = tab1 + 256*(l+1);
 	const uint32_t * const tab3 = tab2 + 256*(l+1);
 	const uint32_t *pdata, *p0, *p1, *p2, *p3;
 
+	if (WARN_ON(r_bytes > sizeof(r)))
+		return;
+
 	if (ecc) {
 		/* load ecc parity bytes into internal 32-bit buffer */
 		load_ecc8(bch, bch->ecc_buf, ecc);
 	} else {
-		memset(bch->ecc_buf, 0, sizeof(r));
+		memset(bch->ecc_buf, 0, r_bytes);
 	}
 
 	/* process first unaligned data bytes */
 	m = ((unsigned long)data) & 3;
 	if (m) {
 		mlen = (len < (4-m)) ? len : 4-m;
-		encode_bch_unaligned(bch, data, mlen, bch->ecc_buf);
+		bch_encode_unaligned(bch, data, mlen, bch->ecc_buf);
 		data += mlen;
 		len  -= mlen;
 	}
@@ -213,7 +241,7 @@ void encode_bch(struct bch_control *bch, const uint8_t *data,
 	mlen  = len/4;
 	data += 4*mlen;
 	len  -= 4*mlen;
-	memcpy(r, bch->ecc_buf, sizeof(r));
+	memcpy(r, bch->ecc_buf, r_bytes);
 
 	/*
 	 * split each 32-bit word into 4 polynomials of weight 8 as follows:
@@ -228,7 +256,13 @@ void encode_bch(struct bch_control *bch, const uint8_t *data,
 	 */
 	while (mlen--) {
 		/* input data is read in big-endian format */
-		w = r[0]^cpu_to_be32(*pdata++);
+		w = cpu_to_be32(*pdata++);
+		if (bch->swap_bits)
+			w = (u32)swap_bits(bch, w) |
+			    ((u32)swap_bits(bch, w >> 8) << 8) |
+			    ((u32)swap_bits(bch, w >> 16) << 16) |
+			    ((u32)swap_bits(bch, w >> 24) << 24);
+		w ^= r[0];
 		p0 = tab0 + (l+1)*((w >>  0) & 0xff);
 		p1 = tab1 + (l+1)*((w >>  8) & 0xff);
 		p2 = tab2 + (l+1)*((w >> 16) & 0xff);
@@ -239,17 +273,17 @@ void encode_bch(struct bch_control *bch, const uint8_t *data,
 
 		r[l] = p0[l]^p1[l]^p2[l]^p3[l];
 	}
-	memcpy(bch->ecc_buf, r, sizeof(r));
+	memcpy(bch->ecc_buf, r, r_bytes);
 
 	/* process last unaligned bytes */
 	if (len)
-		encode_bch_unaligned(bch, data, len, bch->ecc_buf);
+		bch_encode_unaligned(bch, data, len, bch->ecc_buf);
 
 	/* store ecc parity bytes into original parity buffer */
 	if (ecc)
 		store_ecc8(bch, ecc, bch->ecc_buf);
 }
-EXPORT_SYMBOL_GPL(encode_bch);
+EXPORT_SYMBOL_GPL(bch_encode);
 
 static inline int modulo(struct bch_control *bch, unsigned int v)
 {
@@ -432,7 +466,7 @@ static int solve_linear_system(struct bch_control *bch, unsigned int *rows,
 {
 	const int m = GF_M(bch);
 	unsigned int tmp, mask;
-	int rem, c, r, p, k, param[m];
+	int rem, c, r, p, k, param[BCH_MAX_M];
 
 	k = 0;
 	mask = 1 << m;
@@ -515,7 +549,7 @@ static int find_affine4_roots(struct bch_control *bch, unsigned int a,
 	k = a_log(bch, a);
 	rows[0] = c;
 
-	/* buid linear system to solve X^4+aX^2+bX+c = 0 */
+	/* build linear system to solve X^4+aX^2+bX+c = 0 */
 	for (i = 0; i < m; i++) {
 		rows[i+1] = bch->a_pow_tab[4*i]^
 			(a ? bch->a_pow_tab[mod_s(bch, k)] : 0)^
@@ -940,7 +974,7 @@ static int chien_search(struct bch_control *bch, unsigned int len,
 #endif /* USE_CHIEN_SEARCH */
 
 /**
- * decode_bch - decode received codeword and find bit error locations
+ * bch_decode - decode received codeword and find bit error locations
  * @bch:      BCH control structure
  * @data:     received data, ignored if @calc_ecc is provided
  * @len:      data length in bytes, must always be provided
@@ -954,22 +988,22 @@ static int chien_search(struct bch_control *bch, unsigned int len,
  *  invalid parameters were provided
  *
  * Depending on the available hw BCH support and the need to compute @calc_ecc
- * separately (using encode_bch()), this function should be called with one of
+ * separately (using bch_encode()), this function should be called with one of
  * the following parameter configurations -
  *
  * by providing @data and @recv_ecc only:
- *   decode_bch(@bch, @data, @len, @recv_ecc, NULL, NULL, @errloc)
+ *   bch_decode(@bch, @data, @len, @recv_ecc, NULL, NULL, @errloc)
  *
  * by providing @recv_ecc and @calc_ecc:
- *   decode_bch(@bch, NULL, @len, @recv_ecc, @calc_ecc, NULL, @errloc)
+ *   bch_decode(@bch, NULL, @len, @recv_ecc, @calc_ecc, NULL, @errloc)
  *
  * by providing ecc = recv_ecc XOR calc_ecc:
- *   decode_bch(@bch, NULL, @len, NULL, ecc, NULL, @errloc)
+ *   bch_decode(@bch, NULL, @len, NULL, ecc, NULL, @errloc)
  *
  * by providing syndrome results @syn:
- *   decode_bch(@bch, NULL, @len, NULL, NULL, @syn, @errloc)
+ *   bch_decode(@bch, NULL, @len, NULL, NULL, @syn, @errloc)
  *
- * Once decode_bch() has successfully returned with a positive value, error
+ * Once bch_decode() has successfully returned with a positive value, error
  * locations returned in array @errloc should be interpreted as follows -
  *
  * if (errloc[n] >= 8*len), then n-th error is located in ecc (no need for
@@ -981,7 +1015,7 @@ static int chien_search(struct bch_control *bch, unsigned int len,
  * Note that this function does not perform any data correction by itself, it
  * merely indicates error locations.
  */
-int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
+int bch_decode(struct bch_control *bch, const uint8_t *data, unsigned int len,
 	       const uint8_t *recv_ecc, const uint8_t *calc_ecc,
 	       const unsigned int *syn, unsigned int *errloc)
 {
@@ -1000,7 +1034,7 @@ int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
 			/* compute received data ecc into an internal buffer */
 			if (!data || !recv_ecc)
 				return -EINVAL;
-			encode_bch(bch, data, len, NULL);
+			bch_encode(bch, data, len, NULL);
 		} else {
 			/* load provided calculated ecc */
 			load_ecc8(bch, bch->ecc_buf, calc_ecc);
@@ -1036,12 +1070,14 @@ int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
 				break;
 			}
 			errloc[i] = nbits-1-errloc[i];
-			errloc[i] = (errloc[i] & ~7)|(7-(errloc[i] & 7));
+			if (!bch->swap_bits)
+				errloc[i] = (errloc[i] & ~7) |
+					    (7-(errloc[i] & 7));
 		}
 	}
 	return (err >= 0) ? err : -EBADMSG;
 }
-EXPORT_SYMBOL_GPL(decode_bch);
+EXPORT_SYMBOL_GPL(bch_decode);
 
 /*
  * generate Galois field lookup tables
@@ -1112,7 +1148,7 @@ static int build_deg2_base(struct bch_control *bch)
 {
 	const int m = GF_M(bch);
 	int i, j, r;
-	unsigned int sum, x, y, remaining, ak = 0, xi[m];
+	unsigned int sum, x, y, remaining, ak = 0, xi[BCH_MAX_M];
 
 	/* find k s.t. Tr(a^k) = 1 and 0 <= k < m */
 	for (i = 0; i < m; i++) {
@@ -1224,27 +1260,29 @@ static uint32_t *compute_generator_polynomial(struct bch_control *bch)
 }
 
 /**
- * init_bch - initialize a BCH encoder/decoder
+ * bch_init - initialize a BCH encoder/decoder
  * @m:          Galois field order, should be in the range 5-15
  * @t:          maximum error correction capability, in bits
  * @prim_poly:  user-provided primitive polynomial (or 0 to use default)
+ * @swap_bits:  swap bits within data and syndrome bytes
  *
  * Returns:
  *  a newly allocated BCH control structure if successful, NULL otherwise
  *
  * This initialization can take some time, as lookup tables are built for fast
  * encoding/decoding; make sure not to call this function from a time critical
- * path. Usually, init_bch() should be called on module/driver init and
- * free_bch() should be called to release memory on exit.
+ * path. Usually, bch_init() should be called on module/driver init and
+ * bch_free() should be called to release memory on exit.
  *
  * You may provide your own primitive polynomial of degree @m in argument
- * @prim_poly, or let init_bch() use its default polynomial.
+ * @prim_poly, or let bch_init() use its default polynomial.
  *
- * Once init_bch() has successfully returned a pointer to a newly allocated
+ * Once bch_init() has successfully returned a pointer to a newly allocated
  * BCH control structure, ecc length in bytes is given by member @ecc_bytes of
  * the structure.
  */
-struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
+struct bch_control *bch_init(int m, int t, unsigned int prim_poly,
+			     bool swap_bits)
 {
 	int err = 0;
 	unsigned int i, words;
@@ -1252,7 +1290,6 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 	struct bch_control *bch = NULL;
 
 	const int min_m = 5;
-	const int max_m = 15;
 
 	/* default primitive polynomials */
 	static const unsigned int prim_poly_tab[] = {
@@ -1268,7 +1305,7 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 		goto fail;
 	}
 #endif
-	if ((m < min_m) || (m > max_m))
+	if ((m < min_m) || (m > BCH_MAX_M))
 		/*
 		 * values of m greater than 15 are not currently supported;
 		 * supporting m > 15 would require changing table base type
@@ -1276,6 +1313,13 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 		 */
 		goto fail;
 
+	if (t > BCH_MAX_T)
+		/*
+		 * we can support larger than 64 bits if necessary, at the
+		 * cost of higher stack usage.
+		 */
+		goto fail;
+
 	/* sanity checks */
 	if ((t < 1) || (m*t >= ((1 << m)-1)))
 		/* invalid t value */
@@ -1303,6 +1347,7 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 	bch->syn       = bch_alloc(2*t*sizeof(*bch->syn), &err);
 	bch->cache     = bch_alloc(2*t*sizeof(*bch->cache), &err);
 	bch->elp       = bch_alloc((t+1)*sizeof(struct gf_poly_deg1), &err);
+	bch->swap_bits = swap_bits;
 
 	for (i = 0; i < ARRAY_SIZE(bch->poly_2t); i++)
 		bch->poly_2t[i] = bch_alloc(GF_POLY_SZ(2*t), &err);
@@ -1329,16 +1374,16 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 	return bch;
 
 fail:
-	free_bch(bch);
+	bch_free(bch);
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(init_bch);
+EXPORT_SYMBOL_GPL(bch_init);
 
 /**
- *  free_bch - free the BCH control structure
+ *  bch_free - free the BCH control structure
  *  @bch:    BCH control structure to release
  */
-void free_bch(struct bch_control *bch)
+void bch_free(struct bch_control *bch)
 {
 	unsigned int i;
 
@@ -1359,7 +1404,7 @@ void free_bch(struct bch_control *bch)
 		kfree(bch);
 	}
 }
-EXPORT_SYMBOL_GPL(free_bch);
+EXPORT_SYMBOL_GPL(bch_free);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
-- 
2.39.2



