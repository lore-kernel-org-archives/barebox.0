Delivery-date: Wed, 11 Jan 2023 18:44:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf92-0091n3-Vx
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:44:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8z-0006Rx-TR
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:44:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HOKfByDyu+fnhsUJLzMdjoFP81q0OgYLJhqd1zihDMg=; b=Yta9s0la2TA/SdP10r1Upw818Y
	Jd7+79HnpuZU6TifVePNaEi5lB663PhOMrQBh7YD7Ljmpx4b09ecccupEX9i/VswT5soJJQ6g9KXm
	MfDzH6wbmPiOurXIbRfwbn0UMe/vuETXPmsBG1lSzhiDTUYm/Og99w+XO/vvVHxiyj6shh8Plpngs
	oCbWFWD3DjJmo8U0CqA77+Lhyvea3r1GcB/b5OxBbpbFSngZLVtrADTVRuW1FS/Fwz5UD0+e7VDdB
	bjCQ9sMhc5llJsM4xONlbU/vcZ94kLrgf7YTO0bGHDi54OOQPR0EoJPC06hYNeyDHUG0llint7a3S
	tQlh1WYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf7R-00CUSl-Ci; Wed, 11 Jan 2023 17:42:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5a-00CTNy-I2
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00053H-AW; Wed, 11 Jan 2023 18:40:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5Q-005M6U-Jb; Wed, 11 Jan 2023 18:40:28 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGH-F4; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:12 +0100
Message-Id: <20230111174023.1719129-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094039_018234_962374B0 
X-CRM114-Status: GOOD (  23.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/15] mtd: nand: rename nand_device::eccreq to Linux' ecc.requirements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adopt the Linux nomenclature to make future ports easier. No functional
change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c    | 20 ++++++++---------
 drivers/mtd/nand/nand_esmt.c    | 10 ++++-----
 drivers/mtd/nand/nand_hynix.c   | 40 ++++++++++++++++-----------------
 drivers/mtd/nand/nand_jedec.c   |  4 ++--
 drivers/mtd/nand/nand_micron.c  | 14 +++++++-----
 drivers/mtd/nand/nand_onfi.c    |  8 +++----
 drivers/mtd/nand/nand_samsung.c | 18 +++++++--------
 drivers/mtd/nand/nand_toshiba.c | 10 ++++-----
 include/linux/mtd/nand.h        | 27 ++++++++++++++++++----
 9 files changed, 86 insertions(+), 65 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index b686cef79bc6..beb17f38a0e4 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -4673,8 +4673,8 @@ static bool find_full_id_nand(struct nand_chip *chip,
 					   memorg->pagesize *
 					   memorg->pages_per_eraseblock);
 		chip->options |= type->options;
-		chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
-		chip->base.eccreq.step_size = NAND_ECC_STEP(type);
+		chip->base.ecc.requirements.strength = NAND_ECC_STRENGTH(type);
+		chip->base.ecc.requirements.step_size = NAND_ECC_STEP(type);
 
 		chip->parameters.model = strdup(type->name);
 		if (!chip->parameters.model)
@@ -5292,8 +5292,8 @@ nand_match_ecc_req(struct nand_chip *chip,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	const struct nand_ecc_step_info *stepinfo;
-	int req_step = chip->base.eccreq.step_size;
-	int req_strength = chip->base.eccreq.strength;
+	int req_step = chip->base.ecc.requirements.step_size;
+	int req_strength = chip->base.ecc.requirements.strength;
 	int req_corr, step_size, strength, nsteps, ecc_bytes, ecc_bytes_total;
 	int best_step, best_strength, best_ecc_bytes;
 	int best_ecc_bytes_total = INT_MAX;
@@ -5486,7 +5486,7 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int corr, ds_corr;
 
-	if (ecc->size == 0 || chip->base.eccreq.step_size == 0)
+	if (ecc->size == 0 || chip->base.ecc.requirements.step_size == 0)
 		/* Not enough information */
 		return true;
 
@@ -5495,10 +5495,10 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 	 * the correction density.
 	 */
 	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * chip->base.eccreq.strength) /
-		  chip->base.eccreq.step_size;
+	ds_corr = (mtd->writesize * chip->base.ecc.requirements.strength) /
+		  chip->base.ecc.requirements.step_size;
 
-	return corr >= ds_corr && ecc->strength >= chip->base.eccreq.strength;
+	return corr >= ds_corr && ecc->strength >= chip->base.ecc.requirements.strength;
 }
 
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
@@ -5774,8 +5774,8 @@ int nand_scan_tail(struct nand_chip *chip)
 	if (!nand_ecc_strength_good(chip))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name, chip->ecc.strength, chip->ecc.size,
-			chip->base.eccreq.strength,
-			chip->base.eccreq.step_size);
+			chip->base.ecc.requirements.strength,
+			chip->base.ecc.requirements.step_size);
 
 	/* Allow subpage writes up to ecc.steps. Not possible for MLC flash */
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && nand_is_slc(chip)) {
diff --git a/drivers/mtd/nand/nand_esmt.c b/drivers/mtd/nand/nand_esmt.c
index 2331eb174ebd..cd635c27efcc 100644
--- a/drivers/mtd/nand/nand_esmt.c
+++ b/drivers/mtd/nand/nand_esmt.c
@@ -14,20 +14,20 @@ static void esmt_nand_decode_id(struct nand_chip *chip)
 
 	/* Extract ECC requirements from 5th id byte. */
 	if (chip->id.len >= 5 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		chip->base.ecc.requirements.step_size = 512;
 		switch (chip->id.data[4] & 0x3) {
 		case 0x0:
-			chip->base.eccreq.strength = 4;
+			chip->base.ecc.requirements.strength = 4;
 			break;
 		case 0x1:
-			chip->base.eccreq.strength = 2;
+			chip->base.ecc.requirements.strength = 2;
 			break;
 		case 0x2:
-			chip->base.eccreq.strength = 1;
+			chip->base.ecc.requirements.strength = 1;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			chip->base.ecc.requirements.step_size = 0;
 			break;
 		}
 	}
diff --git a/drivers/mtd/nand/nand_hynix.c b/drivers/mtd/nand/nand_hynix.c
index 0422ed53aa3a..fef92074953b 100644
--- a/drivers/mtd/nand/nand_hynix.c
+++ b/drivers/mtd/nand/nand_hynix.c
@@ -498,30 +498,30 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 
 	if (valid_jedecid) {
 		/* Reference: H27UCG8T2E datasheet */
-		chip->base.eccreq.step_size = 1024;
+		chip->base.ecc.requirements.step_size = 1024;
 
 		switch (ecc_level) {
 		case 0:
-			chip->base.eccreq.step_size = 0;
-			chip->base.eccreq.strength = 0;
+			chip->base.ecc.requirements.step_size = 0;
+			chip->base.ecc.requirements.strength = 0;
 			break;
 		case 1:
-			chip->base.eccreq.strength = 4;
+			chip->base.ecc.requirements.strength = 4;
 			break;
 		case 2:
-			chip->base.eccreq.strength = 24;
+			chip->base.ecc.requirements.strength = 24;
 			break;
 		case 3:
-			chip->base.eccreq.strength = 32;
+			chip->base.ecc.requirements.strength = 32;
 			break;
 		case 4:
-			chip->base.eccreq.strength = 40;
+			chip->base.ecc.requirements.strength = 40;
 			break;
 		case 5:
-			chip->base.eccreq.strength = 50;
+			chip->base.ecc.requirements.strength = 50;
 			break;
 		case 6:
-			chip->base.eccreq.strength = 60;
+			chip->base.ecc.requirements.strength = 60;
 			break;
 		default:
 			/*
@@ -542,14 +542,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		if (nand_tech < 3) {
 			/* > 26nm, reference: H27UBG8T2A datasheet */
 			if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << ecc_level;
+				chip->base.ecc.requirements.step_size = 512;
+				chip->base.ecc.requirements.strength = 1 << ecc_level;
 			} else if (ecc_level < 7) {
 				if (ecc_level == 5)
-					chip->base.eccreq.step_size = 2048;
+					chip->base.ecc.requirements.step_size = 2048;
 				else
-					chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24;
+					chip->base.ecc.requirements.step_size = 1024;
+				chip->base.ecc.requirements.strength = 24;
 			} else {
 				/*
 				 * We should never reach this case, but if that
@@ -562,14 +562,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		} else {
 			/* <= 26nm, reference: H27UBG8T2B datasheet */
 			if (!ecc_level) {
-				chip->base.eccreq.step_size = 0;
-				chip->base.eccreq.strength = 0;
+				chip->base.ecc.requirements.step_size = 0;
+				chip->base.ecc.requirements.strength = 0;
 			} else if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << (ecc_level - 1);
+				chip->base.ecc.requirements.step_size = 512;
+				chip->base.ecc.requirements.strength = 1 << (ecc_level - 1);
 			} else {
-				chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24 +
+				chip->base.ecc.requirements.step_size = 1024;
+				chip->base.ecc.requirements.strength = 24 +
 							(8 * (ecc_level - 5));
 			}
 		}
diff --git a/drivers/mtd/nand/nand_jedec.c b/drivers/mtd/nand/nand_jedec.c
index 48997bd5f53d..2b21e2d5b548 100644
--- a/drivers/mtd/nand/nand_jedec.c
+++ b/drivers/mtd/nand/nand_jedec.c
@@ -121,8 +121,8 @@ int nand_jedec_detect(struct nand_chip *chip)
 	ecc = &p->ecc_info[0];
 
 	if (ecc->codeword_size >= 9) {
-		chip->base.eccreq.strength = ecc->ecc_bits;
-		chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+		chip->base.ecc.requirements.strength = ecc->ecc_bits;
+		chip->base.ecc.requirements.step_size = 1 << ecc->codeword_size;
 	} else {
 		pr_warn("Invalid codeword size\n");
 	}
diff --git a/drivers/mtd/nand/nand_micron.c b/drivers/mtd/nand/nand_micron.c
index 4401a55886b2..758316e68139 100644
--- a/drivers/mtd/nand/nand_micron.c
+++ b/drivers/mtd/nand/nand_micron.c
@@ -426,7 +426,8 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (chip->base.ecc.requirements.strength != 4 &&
+	     chip->base.ecc.requirements.strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	/* 0x2 means on-die ECC is available. */
@@ -467,7 +468,8 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (chip->base.ecc.requirements.strength != 4 &&
+	     chip->base.ecc.requirements.strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	return MICRON_ON_DIE_SUPPORTED;
@@ -524,7 +526,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		 * That's not needed for 8-bit ECC, because the status expose
 		 * a better approximation of the number of bitflips in a page.
 		 */
-		if (chip->base.eccreq.strength == 4) {
+		if (chip->base.ecc.requirements.strength == 4) {
 			micron->ecc.rawbuf = kmalloc(mtd->writesize +
 						     mtd->oobsize,
 						     GFP_KERNEL);
@@ -534,16 +536,16 @@ static int micron_nand_init(struct nand_chip *chip)
 			}
 		}
 
-		if (chip->base.eccreq.strength == 4)
+		if (chip->base.ecc.requirements.strength == 4)
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_4_ooblayout_ops);
 		else
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_8_ooblayout_ops);
 
-		chip->ecc.bytes = chip->base.eccreq.strength * 2;
+		chip->ecc.bytes = chip->base.ecc.requirements.strength * 2;
 		chip->ecc.size = 512;
-		chip->ecc.strength = chip->base.eccreq.strength;
+		chip->ecc.strength = chip->base.ecc.requirements.strength;
 		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
diff --git a/drivers/mtd/nand/nand_onfi.c b/drivers/mtd/nand/nand_onfi.c
index c6b187be0285..5dd29ba6baf4 100644
--- a/drivers/mtd/nand/nand_onfi.c
+++ b/drivers/mtd/nand/nand_onfi.c
@@ -95,8 +95,8 @@ static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 		goto ext_out;
 	}
 
-	chip->base.eccreq.strength = ecc->ecc_bits;
-	chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+	chip->base.ecc.requirements.strength = ecc->ecc_bits;
+	chip->base.ecc.requirements.step_size = 1 << ecc->codeword_size;
 	ret = 0;
 
 ext_out:
@@ -266,8 +266,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 		chip->options |= NAND_BUSWIDTH_16;
 
 	if (p->ecc_bits != 0xff) {
-		chip->base.eccreq.strength = p->ecc_bits;
-		chip->base.eccreq.step_size = 512;
+		chip->base.ecc.requirements.strength = p->ecc_bits;
+		chip->base.ecc.requirements.step_size = 512;
 	} else if (onfi_version >= 21 &&
 		(le16_to_cpu(p->features) & ONFI_FEATURE_EXT_PARAM_PAGE)) {
 
diff --git a/drivers/mtd/nand/nand_samsung.c b/drivers/mtd/nand/nand_samsung.c
index 3a4a19e808f6..ee993af1e52f 100644
--- a/drivers/mtd/nand/nand_samsung.c
+++ b/drivers/mtd/nand/nand_samsung.c
@@ -71,23 +71,23 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 		/* Extract ECC requirements from 5th id byte*/
 		extid = (chip->id.data[4] >> 4) & 0x07;
 		if (extid < 5) {
-			chip->base.eccreq.step_size = 512;
-			chip->base.eccreq.strength = 1 << extid;
+			chip->base.ecc.requirements.step_size = 512;
+			chip->base.ecc.requirements.strength = 1 << extid;
 		} else {
-			chip->base.eccreq.step_size = 1024;
+			chip->base.ecc.requirements.step_size = 1024;
 			switch (extid) {
 			case 5:
-				chip->base.eccreq.strength = 24;
+				chip->base.ecc.requirements.strength = 24;
 				break;
 			case 6:
-				chip->base.eccreq.strength = 40;
+				chip->base.ecc.requirements.strength = 40;
 				break;
 			case 7:
-				chip->base.eccreq.strength = 60;
+				chip->base.ecc.requirements.strength = 60;
 				break;
 			default:
 				WARN(1, "Could not decode ECC info");
-				chip->base.eccreq.step_size = 0;
+				chip->base.ecc.requirements.step_size = 0;
 			}
 		}
 	} else {
@@ -97,8 +97,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			switch (chip->id.data[1]) {
 			/* K9F4G08U0D-S[I|C]B0(T00) */
 			case 0xDC:
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1;
+				chip->base.ecc.requirements.step_size = 512;
+				chip->base.ecc.requirements.strength = 1;
 				break;
 
 			/* K9F1G08U0E 21nm chips do not support subpage write */
diff --git a/drivers/mtd/nand/nand_toshiba.c b/drivers/mtd/nand/nand_toshiba.c
index 21a5dbc7e01b..cd29cc587293 100644
--- a/drivers/mtd/nand/nand_toshiba.c
+++ b/drivers/mtd/nand/nand_toshiba.c
@@ -175,20 +175,20 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	 *  - 24nm: 8 bit ECC for each 512Byte is required.
 	 */
 	if (chip->id.len >= 6 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		chip->base.ecc.requirements.step_size = 512;
 		switch (chip->id.data[5] & 0x7) {
 		case 0x4:
-			chip->base.eccreq.strength = 1;
+			chip->base.ecc.requirements.strength = 1;
 			break;
 		case 0x5:
-			chip->base.eccreq.strength = 4;
+			chip->base.ecc.requirements.strength = 4;
 			break;
 		case 0x6:
-			chip->base.eccreq.strength = 8;
+			chip->base.ecc.requirements.strength = 8;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			chip->base.ecc.requirements.step_size = 0;
 			break;
 		}
 	}
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 876849e7e806..6ce5c1d041b8 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -165,11 +165,19 @@ struct nand_ops {
 	bool (*isbad)(struct nand_device *nand, const struct nand_pos *pos);
 };
 
+/**
+ * struct nand_ecc - Information relative to the ECC
+ * @requirements: ECC requirements from the NAND chip perspective
+ */
+struct nand_ecc {
+	struct nand_ecc_props requirements;
+};
+
 /**
  * struct nand_device - NAND device
  * @mtd: MTD instance attached to the NAND device
  * @memorg: memory layout
- * @eccreq: ECC requirements
+ * @ecc: ECC information
  * @rowconv: position to row address converter
  * @bbt: bad block table info
  * @ops: NAND operations attached to the NAND device
@@ -177,8 +185,8 @@ struct nand_ops {
  * Generic NAND object. Specialized NAND layers (raw NAND, SPI NAND, OneNAND)
  * should declare their own NAND object embedding a nand_device struct (that's
  * how inheritance is done).
- * struct_nand_device->memorg and struct_nand_device->eccreq should be filled
- * at device detection time to reflect the NAND device
+ * struct_nand_device->memorg and struct_nand_device->ecc.requirement should
+ * be filled at device detection time to reflect the NAND device
  * capabilities/requirements. Once this is done nanddev_init() can be called.
  * It will take care of converting NAND information into MTD ones, which means
  * the specialized NAND layers should never manually tweak
@@ -187,7 +195,7 @@ struct nand_ops {
 struct nand_device {
 	struct mtd_info mtd;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_props eccreq;
+	struct nand_ecc ecc;
 	struct nand_row_converter rowconv;
 	struct nand_bbt bbt;
 	const struct nand_ops *ops;
@@ -395,6 +403,17 @@ int nanddev_init(struct nand_device *nand, const struct nand_ops *ops,
 		 struct module *owner);
 void nanddev_cleanup(struct nand_device *nand);
 
+/**
+ * nanddev_get_ecc_requirements() - Extract the ECC requirements from a NAND
+ *                                  device
+ * @nand: NAND device
+ */
+static inline const struct nand_ecc_props *
+nanddev_get_ecc_requirements(struct nand_device *nand)
+{
+	return &nand->ecc.requirements;
+}
+
 /**
  * nanddev_offs_to_pos() - Convert an absolute NAND offset into a NAND position
  * @nand: NAND device
-- 
2.30.2



