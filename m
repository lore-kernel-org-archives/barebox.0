Delivery-date: Mon, 17 Mar 2025 10:36:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tz-000Ys5-1h
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:36:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tx-0002Bs-Ka
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:36:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WTdzZmC+5U9COzpLzgx1QC3FXQUN1aBRnaq66GeaLLg=; b=zowYGVppXHUlehbLX8nwST4v1A
	7b2DAgHMDdV7uTi0lg+PDR28vjpTxmNcH1MsSJl/STfb6iq4c/B9dLqanK7MBARFtY5JXzll7J2cn
	IZIJqntBZyssXNF+YKztbPu607OH5pCREMkcKCq8C8ZNCB0uFaj6lwCjEb7CD+YONk59NZgsLM9/g
	Ziy0Plnd9UeUd8byL4h11y8RqluPqYw6eD1l8y80ml/StKEwMnpRK07mFp9aaGr/4kqDSofMiNO7W
	xR2IwT99+jvWiae04wj+v+jWWyxGRIfDWe4aM32O5mn0sm0NyfuH1J38oYfij4uFFVoJzCHq2fnq5
	x5fCkgfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6tV-00000001xI3-103u;
	Mon, 17 Mar 2025 09:36:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6rv-00000001wpf-3auh
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:34:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-0001Qp-Mk; Mon, 17 Mar 2025 10:34:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rl-000DpK-34;
	Mon, 17 Mar 2025 10:34:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-00H5gy-0v;
	Mon, 17 Mar 2025 10:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2025 10:34:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-mci-misc-cleanup-v1-1-24b4d6f5d31a@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742204078; l=17013;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=b/hvXjdbfIWLBfAA2nSzf/93Jxc4PSqxrGHOsKU9vOs=;
 b=9/LdCSHwzNnUKDEdjzWnd5GVc77ARGLgXWwtwPV53NSdJ4wBfkBzym6TDknhyrx3XIFbK4Eop
 B8CAGJZdVfVCHd3c4zaS5W9o7S0JgsufoT6QAjdnHTwaOVJpwZ76Djx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_023448_218277_34E8305B 
X-CRM114-Status: GOOD (  24.32  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] mci: use struct cid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has a struct mmc_cid where the CID data is parsed into whereas
in barebox we call the UNSTUFF_BITS macro whenever we need a field
from the CID data. Do it like Linux and parse the CID data into the
same struct. While at it convert the UNSTUFF_BITS macro into a
unstuff_bits static inline function.

This also changes some names of the mci device parameters:

- cid_mdt is now split up into year and month and becomes cid_year and
  cid_month
- cid_prv is now split up into hardware revision and firmware revision
  and becomes cid_hwrev and cid_fwrev

This is done as Linux has this as well. It is assumed that these
variables are informational only and thus no scripts depend on the
exact names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 340 ++++++++++++++++++++-----------------------------
 include/mci.h          |  16 ++-
 2 files changed, 154 insertions(+), 202 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 7ec2643b8d..34ea775813 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -26,19 +26,19 @@
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
-#define UNSTUFF_BITS(resp,start,size)					\
-	({								\
-		const int __size = size;				\
-		const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1;	\
-		const int __off = 3 - ((start) / 32);			\
-		const int __shft = (start) & 31;			\
-		u32 __res;						\
-									\
-		__res = resp[__off] >> __shft;				\
-		if (__size + __shft > 32)				\
-			__res |= resp[__off-1] << ((32 - __shft) % 32);	\
-		__res & __mask;						\
-	})
+static inline u32 unstuff_bits(const u32 *resp, int start, int size)
+{
+	const int __size = size;
+	const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1;
+	const int __off = 3 - (start / 32);
+	const int __shft = start & 31;
+	u32 __res = resp[__off] >> __shft;
+
+	if (__size + __shft > 32)
+		__res |= resp[__off - 1] << ((32 - __shft) % 32);
+
+	return __res & __mask;
+}
 
 LIST_HEAD(mci_list);
 
@@ -1202,7 +1202,7 @@ static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
  */
 static void mci_extract_block_lengths_from_csd(struct mci *mci)
 {
-	mci->read_bl_len = 1 << UNSTUFF_BITS(mci->csd, 80, 4);
+	mci->read_bl_len = 1 << unstuff_bits(mci->csd, 80, 4);
 
 	/* Quoting Physical Layer Simplified Specification Version 9.10:
 	 * Note that in an SD Memory Card the WRITE_BL_LEN is always
@@ -1224,18 +1224,18 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 static void mci_extract_erase_group_size(struct mci *mci)
 {
 	if (!IS_ENABLED(CONFIG_MCI_ERASE) ||
-	    !(UNSTUFF_BITS(mci->csd, 84, 12) & CCC_ERASE))
+	    !(unstuff_bits(mci->csd, 84, 12) & CCC_ERASE))
 		return;
 
 
 	if (IS_SD(mci)) {
-		if (UNSTUFF_BITS(mci->csd, 126, 2) == 0) {
-			unsigned int write_blkbits = UNSTUFF_BITS(mci->csd, 22, 4);
+		if (unstuff_bits(mci->csd, 126, 2) == 0) {
+			unsigned int write_blkbits = unstuff_bits(mci->csd, 22, 4);
 
-			if (UNSTUFF_BITS(mci->csd, 46, 1)) {
+			if (unstuff_bits(mci->csd, 46, 1)) {
 				mci->erase_grp_size = 1;
 			} else if (write_blkbits >= 9) {
-				mci->erase_grp_size = UNSTUFF_BITS(mci->csd, 39, 7) + 1;
+				mci->erase_grp_size = unstuff_bits(mci->csd, 39, 7) + 1;
 				mci->erase_grp_size <<= write_blkbits - 9;
 			}
 		} else {
@@ -1279,7 +1279,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 
 	if (mci->high_capacity) {
 		if (IS_SD(mci)) {
-			csize = UNSTUFF_BITS(mci->csd, 48, 22);
+			csize = unstuff_bits(mci->csd, 48, 22);
 			mci->capacity = (1 + csize) << 10;
 		} else {
 			mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
@@ -1288,12 +1288,12 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 				mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;
 		}
 	} else {
-		cmult = UNSTUFF_BITS(mci->csd, 47, 3);
-		csize = UNSTUFF_BITS(mci->csd, 62, 12);
+		cmult = unstuff_bits(mci->csd, 47, 3);
+		csize = unstuff_bits(mci->csd, 62, 12);
 		mci->capacity = (csize + 1) << (cmult + 2);
 	}
 
-	mci->capacity *= 1 << UNSTUFF_BITS(mci->csd, 80, 4);
+	mci->capacity *= 1 << unstuff_bits(mci->csd, 80, 4);
 	dev_dbg(&mci->dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
 
@@ -1303,7 +1303,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
  */
 static void mci_extract_card_dsr_imp_from_csd(struct mci *mci)
 {
-	mci->dsr_imp = UNSTUFF_BITS(mci->csd, 76, 1);
+	mci->dsr_imp = unstuff_bits(mci->csd, 76, 1);
 }
 
 static int mmc_compare_ext_csds(struct mci *mci, enum mci_bus_width bus_width)
@@ -1806,10 +1806,10 @@ static int mci_startup(struct mci *mci)
 		return err;
 	}
 
-	memcpy(mci->cid, cmd.response, 16);
+	memcpy(mci->raw_cid, cmd.response, 16);
 
 	dev_dbg(&mci->dev, "Card's identification data is: %08X-%08X-%08X-%08X\n",
-		mci->cid[0], mci->cid[1], mci->cid[2], mci->cid[3]);
+		mci->raw_cid[0], mci->raw_cid[1], mci->raw_cid[2], mci->raw_cid[3]);
 
 	/*
 	 * For MMC cards, set the Relative Address.
@@ -2259,156 +2259,6 @@ static int mci_sd_read(struct block_device *blk, void *buffer, sector_t block,
 
 /* ------------------ attach to the device API --------------------------- */
 
-/**
- * Extract the Manufacturer ID from the CID
- * @param mci Instance data
- *
- * The 'MID' is encoded in bit 127:120 in the CID
- */
-static unsigned extract_mid(struct mci *mci)
-{
-	if (!IS_SD(mci) && mci->version <= MMC_VERSION_1_4)
-		return UNSTUFF_BITS(mci->cid, 104, 24);
-	else
-		return UNSTUFF_BITS(mci->cid, 120, 8);
-}
-
-/**
- * Extract the CBX from the CID
- * @param mci Instance data
- *
- * The 'CBX' is encoded in bit 113:112 in the CID and only present in MMC cards
- */
-static unsigned extract_cbx(struct mci *mci)
-{
-	return UNSTUFF_BITS(mci->cid, 112, 2);
-}
-
-/**
- * Extract the OEM/Application ID from the CID
- * @param mci Instance data
- *
- * The 'OID' is encoded in bit 119:104 in the CID for SD cards and 111:104 for
- * MMC cards
- */
-static void extract_oid(struct mci *mci, char oid[static 5])
-{
-	if (IS_SD(mci)) {
-		// SD cards have a 2 character long OEM ID
-		snprintf(oid, 5, "%c%c", UNSTUFF_BITS(mci->cid, 112, 8), UNSTUFF_BITS(mci->cid, 104, 8));
-	} else {
-		// MMC cards have a 8-bit binary number as OEM ID
-		snprintf(oid, 5, "0x%02X", UNSTUFF_BITS(mci->cid, 104, 8));
-	}
-}
-
-/**
- * Extract the product name from the CID
- * @param mci Instance data
- *
- * The 'PNM' is encoded in bit 103:64 in the CID for SD cards and 103:56 for
- * MMC cards
- */
-static void extract_pnm(struct mci *mci, char pnm[static 7])
-{
-	pnm[0] = UNSTUFF_BITS(mci->cid, 96, 8);
-	pnm[1] = UNSTUFF_BITS(mci->cid, 88, 8);
-	pnm[2] = UNSTUFF_BITS(mci->cid, 80, 8);
-	pnm[3] = UNSTUFF_BITS(mci->cid, 72, 8);
-	pnm[4] = UNSTUFF_BITS(mci->cid, 64, 8);
-
-	if (IS_SD(mci)) {
-		// SD cards have a 5 character long product name
-		pnm[5] = '\0';
-	} else {
-		// MMC cards have a 6 character long product name
-		pnm[5] = UNSTUFF_BITS(mci->cid, 56, 8);
-		pnm[6] = '\0';
-	}
-}
-
-/**
- * Extract the product revision from the CID
- * @param mci Instance data
- *
- * The 'PRV' is encoded in bit 63:56 in the CID for SD cards and 55:48 for MMC cards
- */
-static void extract_prv(struct mci *mci, char prv[static 8])
-{
-	unsigned prv_bcd = IS_SD(mci) ? UNSTUFF_BITS(mci->cid, 56, 8) : UNSTUFF_BITS(mci->cid, 48, 8);
-
-	snprintf(prv, 8,"%u.%u", prv_bcd >> 4, prv_bcd & 0xf);
-}
-
-/**
- * Extract the product serial number from the CID
- * @param mci Instance data
- *
- * The 'PSN' is encoded in bit 55:24 in the CID for SD cards and 47:16 for MMC cards
- */
-static unsigned extract_psn(struct mci *mci)
-{
-	if (IS_SD(mci)) {
-		return UNSTUFF_BITS(mci->csd, 24, 32);
-	} else {
-		if (mci->version > MMC_VERSION_1_4)
-			return UNSTUFF_BITS(mci->cid, 16, 32);
-		else
-			return UNSTUFF_BITS(mci->cid, 16, 24);
-	}
-
-}
-
-/**
- * Extract the month of the manufacturing date from the CID
- * @param mci Instance data
- *
- * The 'MDT' is encoded in bit 19:8 in the CID, month in 11:8
- */
-static unsigned extract_mdt_month(struct mci *mci)
-{
-	if (IS_SD(mci))
-		return UNSTUFF_BITS(mci->cid, 8, 4);
-	else
-		return UNSTUFF_BITS(mci->cid, 12, 4);
-}
-
-/**
- * Extract the year of the manufacturing date from the CID
- * @param mci Instance data
- *
- * The 'MDT' is encoded in bit 19:8 in the CID, year in 19:12
- * An encoded 0 means the year 2000
- */
-static unsigned extract_mdt_year(struct mci *mci)
-{
-	unsigned year;
-	if (IS_SD(mci))
-		year = UNSTUFF_BITS(mci->cid, 12, 8) + 2000;
-	else if (mci->version < MMC_VERSION_4_41)
-		return UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
-	else {
-		year = UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
-		if (year < 2010)
-			year += 16;
-	}
-	return year;
-}
-
-/**
- * Extract the manufacturing date from the CID
- * @param mci Instance data
- *
- * The 'MDT' is encoded in bit 19:8 in the CID
- */
-static void extract_mdt(struct mci *mci, char mdt[static 8])
-{
-	unsigned month = extract_mdt_month(mci);
-	unsigned year = extract_mdt_year(mci);
-
-	snprintf(mdt, 8, "%u.%u", year, month);
-}
-
 static const char *mci_timing_tostr(unsigned timing)
 {
 	switch (timing) {
@@ -2440,6 +2290,88 @@ static void mci_print_caps(unsigned caps)
 		caps & MMC_CAP_MMC_1_2V_DDR ? "ddr-1.2v " : "");
 }
 
+/*
+ * Given the decoded CSD structure, decode the raw CID to our CID structure.
+ */
+static int mci_mmc_decode_cid(struct mci *card)
+{
+	u32 *resp = card->raw_cid;
+	u32 mmca_vsn = unstuff_bits(card->csd, 122, 4);
+
+	/*
+	 * The selection of the format here is based upon published
+	 * specs from sandisk and from what people have reported.
+	 */
+	switch (mmca_vsn) {
+	case 0: /* MMC v1.0 - v1.2 */
+	case 1: /* MMC v1.4 */
+		card->cid.manfid	= unstuff_bits(resp, 104, 24);
+		card->cid.prod_name[0]	= unstuff_bits(resp, 96, 8);
+		card->cid.prod_name[1]	= unstuff_bits(resp, 88, 8);
+		card->cid.prod_name[2]	= unstuff_bits(resp, 80, 8);
+		card->cid.prod_name[3]	= unstuff_bits(resp, 72, 8);
+		card->cid.prod_name[4]	= unstuff_bits(resp, 64, 8);
+		card->cid.prod_name[5]	= unstuff_bits(resp, 56, 8);
+		card->cid.prod_name[6]	= unstuff_bits(resp, 48, 8);
+		card->cid.hwrev		= unstuff_bits(resp, 44, 4);
+		card->cid.fwrev		= unstuff_bits(resp, 40, 4);
+		card->cid.serial	= unstuff_bits(resp, 16, 24);
+		card->cid.month		= unstuff_bits(resp, 12, 4);
+		card->cid.year		= unstuff_bits(resp, 8, 4) + 1997;
+		break;
+
+	case 2: /* MMC v2.0 - v2.2 */
+	case 3: /* MMC v3.1 - v3.3 */
+	case 4: /* MMC v4 */
+		card->cid.manfid	= unstuff_bits(resp, 120, 8);
+		card->cid.oemid		= unstuff_bits(resp, 104, 16);
+		card->cid.prod_name[0]	= unstuff_bits(resp, 96, 8);
+		card->cid.prod_name[1]	= unstuff_bits(resp, 88, 8);
+		card->cid.prod_name[2]	= unstuff_bits(resp, 80, 8);
+		card->cid.prod_name[3]	= unstuff_bits(resp, 72, 8);
+		card->cid.prod_name[4]	= unstuff_bits(resp, 64, 8);
+		card->cid.prod_name[5]	= unstuff_bits(resp, 56, 8);
+		card->cid.prv		= unstuff_bits(resp, 48, 8);
+		card->cid.serial	= unstuff_bits(resp, 16, 32);
+		card->cid.month		= unstuff_bits(resp, 12, 4);
+		card->cid.year		= unstuff_bits(resp, 8, 4) + 1997;
+		break;
+
+	default:
+		dev_err(&card->dev, "card has unknown MMCA version %d\n", mmca_vsn);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/*
+ * Given the decoded CSD structure, decode the raw CID to our CID structure.
+ */
+static void mci_sd_decode_cid(struct mci *card)
+{
+	u32 *resp = card->raw_cid;
+
+	/*
+	 * SD doesn't currently have a version field so we will
+	 * have to assume we can parse this.
+	 */
+	card->cid.manfid		= unstuff_bits(resp, 120, 8);
+	card->cid.oemid			= unstuff_bits(resp, 104, 16);
+	card->cid.prod_name[0]		= unstuff_bits(resp, 96, 8);
+	card->cid.prod_name[1]		= unstuff_bits(resp, 88, 8);
+	card->cid.prod_name[2]		= unstuff_bits(resp, 80, 8);
+	card->cid.prod_name[3]		= unstuff_bits(resp, 72, 8);
+	card->cid.prod_name[4]		= unstuff_bits(resp, 64, 8);
+	card->cid.hwrev			= unstuff_bits(resp, 60, 4);
+	card->cid.fwrev			= unstuff_bits(resp, 56, 4);
+	card->cid.serial		= unstuff_bits(resp, 24, 32);
+	card->cid.year			= unstuff_bits(resp, 12, 8);
+	card->cid.month			= unstuff_bits(resp, 8, 4);
+
+	card->cid.year += 2000; /* SD cards year offset */
+}
+
 /**
  * Output some valuable information when the user runs 'devinfo' on an MCI device
  * @param mci MCI device instance
@@ -2492,38 +2424,44 @@ static void mci_info(struct device *dev)
 
 	if (mci->high_capacity)
 		printf("  High capacity card\n");
-	printf("   CID: %08X-%08X-%08X-%08X\n", mci->cid[0], mci->cid[1],
-		mci->cid[2], mci->cid[3]);
+	printf("   CID: %08X-%08X-%08X-%08X\n", mci->raw_cid[0], mci->raw_cid[1],
+		mci->raw_cid[2], mci->raw_cid[3]);
 	printf("   CSD: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1],
 		mci->csd[2], mci->csd[3]);
 	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
 	mci_print_caps(mci->card_caps);
-	printf("  Manufacturer ID: %s\n", dev_get_param(dev, "cid_mid"));
-	printf("  OEM/Application ID: %s\n", dev_get_param(dev, "cid_oid"));
-	if (!IS_SD(mci))
-		printf("  CBX: %s\n", dev_get_param(dev, "cid_cbx"));
-	printf("  Product name: '%s'\n", dev_get_param(dev, "cid_pnm"));
-	printf("  Product revision: %s\n", dev_get_param(dev, "cid_prv"));
-	printf("  Serial no: %s\n", dev_get_param(dev, "cid_psn"));
-	printf("  Manufacturing date: %s\n", dev_get_param(dev, "cid_mdt"));
+	printf("  Manufacturer ID: 0x%02x\n", mci->cid.manfid);
+	printf("  OEM/Application ID: 0x%04x\n", mci->cid.oemid);
+	printf("  Product name: '%s'\n", mci->cid.prod_name);
+	printf("  Hardware revision: 0x%02x\n", mci->cid.hwrev);
+	printf("  Firmware revision: 0x%02x\n", mci->cid.fwrev);
+	printf("  Serial no: %u\n", mci->cid.serial);
+	printf("  Manufacturing date: %u.%u\n", mci->cid.year, mci->cid.month);
 }
 
-static void mci_parse_cid(struct mci *mci) {
+static void mci_parse_cid(struct mci *mci)
+{
 	struct device *dev = &mci->dev;
-	char buffer[8];
-
-	dev_add_param_uint32_fixed(dev, "cid_mid", extract_mid(mci), "0x%02X");
-	extract_oid(mci, buffer);
-	dev_add_param_string_fixed(dev, "cid_oid", buffer);
-	if (!IS_SD(mci))
-		dev_add_param_uint32_fixed(dev, "cid_cbx", extract_cbx(mci), "%u");
-	extract_pnm(mci, buffer);
-	dev_add_param_string_fixed(dev, "cid_pnm", buffer);
-	extract_prv(mci, buffer);
-	dev_add_param_string_fixed(dev, "cid_prv", buffer);
-	dev_add_param_uint32_fixed(dev, "cid_psn", extract_psn(mci), "%0u");
-	extract_mdt(mci, buffer);
-	dev_add_param_string_fixed(dev, "cid_mdt", buffer);
+
+	if (IS_SD(mci))
+		mci_sd_decode_cid(mci);
+	else
+		mci_mmc_decode_cid(mci);
+
+	if (mci->ext_csd[EXT_CSD_REV] >= 5) {
+		/* Adjust production date as per JEDEC JESD84-B451 */
+		if (mci->cid.year < 2010)
+			mci->cid.year += 16;
+	}
+
+	dev_add_param_uint32_fixed(dev, "cid_mid", mci->cid.manfid, "0x%02X");
+	dev_add_param_uint32_fixed(dev, "cid_oid", mci->cid.oemid, "0x%04X");
+	dev_add_param_string_fixed(dev, "cid_pnm", mci->cid.prod_name);
+	dev_add_param_uint32_fixed(dev, "cid_hwrev", mci->cid.hwrev, "0x%02X");
+	dev_add_param_uint32_fixed(dev, "cid_fwrev", mci->cid.fwrev, "0x%02X");
+	dev_add_param_uint32_fixed(dev, "cid_psn", mci->cid.serial, "%0u");
+	dev_add_param_uint32_fixed(dev, "cid_year", mci->cid.year, "%0u");
+	dev_add_param_uint32_fixed(dev, "cid_month", mci->cid.month, "%0u");
 }
 
 /**
diff --git a/include/mci.h b/include/mci.h
index 1e37570274..689ca7167f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -626,6 +626,18 @@ struct sd_ssr {
 	unsigned int erase_offset;      /* In milliseconds */
 };
 
+struct mmc_cid {
+	unsigned int		manfid;
+	char			prod_name[8];
+	unsigned char		prv;
+	unsigned int		serial;
+	unsigned short		oemid;
+	unsigned short		year;
+	unsigned char		hwrev;
+	unsigned char		fwrev;
+	unsigned char		month;
+};
+
 /** MMC/SD and interface instance information */
 struct mci {
 	struct mci_host *host;		/**< the host for this card */
@@ -635,7 +647,7 @@ struct mci {
 	unsigned ocr;		/**< card's "operation condition register" */
 	unsigned scr[2];
 	unsigned csd[4];	/**< card's "card specific data register" */
-	unsigned cid[4];	/**< card's "card identification register" */
+	unsigned raw_cid[4];	/**< card's "card identification register" */
 	unsigned short rca;	/**< relative card address */
 	u8 sdio:1;              /**< card is a SDIO card */
 	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */
@@ -663,6 +675,8 @@ struct mci {
 	struct mci_part *part_curr;
 	u8 ext_csd_part_config;
 
+	struct mmc_cid cid;
+
 	struct list_head list;     /* The list of all mci devices */
 };
 

-- 
2.39.5



