Delivery-date: Wed, 11 Jan 2023 18:43:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8E-0091hb-Fk
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:43:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8C-0006Ef-0N
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:43:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nQIrleT//q/QjLXHgrbme/NCXfctytGjhks9qhFmAAo=; b=Imq6t3tqYBCzBhO1iMlPrWmxdH
	okKA6C4W4chrMb9t53gfgIQa4ZJtB1lryAhOPio1UlAms8sl9ZEaw9ZkKFq2iYWb8mKmG4WAQAHit
	yxQY50nYy52iooNcS5AxyRQw0916oBCJUCsAgpFmi8brLcQSJiU6M7DC/gWuO05D0cxaRsKdugTL5
	Pa3giTh1/YprNW9JUoWiL1L/RCAyJyUWhku3eBsfi3bdOXsu9vS/bA78vxDaToBFyeH4IZlrFq/KS
	Vq/iSyGsmWRduIMZjZJl8exXWZA7nuMnSZ91+Sh82OTY+UXM0h+WEmnQTxQ+UNW7ahhmCZxYD7Yjp
	xBuK99cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf6o-00CU3m-VS; Wed, 11 Jan 2023 17:41:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTHw-3J
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00053v-Nl; Wed, 11 Jan 2023 18:40:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M6e-4E; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGE-Ei; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:11 +0100
Message-Id: <20230111174023.1719129-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_290104_D37D16D6 
X-CRM114-Status: GOOD (  14.53  )
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
Subject: [PATCH 03/15] mtd: nand: prefix enum nand_ecc_algo constants with NAND_ECC_ALGO_
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This aligns us with how Linux now names these constants.
No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c    | 26 +++++++++++++-------------
 drivers/mtd/nand/nand_fsl_ifc.c |  2 +-
 drivers/mtd/nand/nand_micron.c  |  2 +-
 include/linux/mtd/rawnand.h     |  8 ++++----
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index c3cd22935bb2..b686cef79bc6 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -4936,9 +4936,9 @@ free_detect_allocation:
 }
 
 static const char * const nand_ecc_algos[] = {
-	[NAND_ECC_HAMMING]	= "hamming",
-	[NAND_ECC_BCH]		= "bch",
-	[NAND_ECC_RS]		= "rs",
+	[NAND_ECC_ALGO_HAMMING]		= "hamming",
+	[NAND_ECC_ALGO_BCH]		= "bch",
+	[NAND_ECC_ALGO_RS]		= "rs",
 };
 
 static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
@@ -4949,7 +4949,7 @@ static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 
 	err = of_property_read_string(np, "nand-ecc-algo", &pm);
 	if (!err) {
-		for (ecc_algo = NAND_ECC_HAMMING;
+		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
 		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
 		     ecc_algo++) {
 			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
@@ -4964,12 +4964,12 @@ static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
 	if (!err) {
 		if (!strcasecmp(pm, "soft"))
-			return NAND_ECC_HAMMING;
+			return NAND_ECC_ALGO_HAMMING;
 		else if (!strcasecmp(pm, "soft_bch"))
-			return NAND_ECC_BCH;
+			return NAND_ECC_ALGO_BCH;
 	}
 
-	return NAND_ECC_UNKNOWN;
+	return NAND_ECC_ALGO_UNKNOWN;
 }
 
 static int nand_dt_init(struct nand_chip *chip)
@@ -4998,7 +4998,7 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (ecc_mode >= 0)
 		chip->ecc.mode = ecc_mode;
 
-	if (ecc_algo != NAND_ECC_UNKNOWN)
+	if (ecc_algo != NAND_ECC_ALGO_UNKNOWN)
 		chip->ecc.algo = ecc_algo;
 
 	if (ecc_strength >= 0)
@@ -5127,7 +5127,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		return -EINVAL;
 
 	switch (ecc->algo) {
-	case NAND_ECC_HAMMING:
+	case NAND_ECC_ALGO_HAMMING:
 		ecc->calculate = nand_calculate_ecc;
 		ecc->correct = nand_correct_data;
 		ecc->read_page = nand_read_page_swecc;
@@ -5148,7 +5148,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 			ecc->options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 
 		return 0;
-	case NAND_ECC_BCH:
+	case NAND_ECC_ALGO_BCH:
 		if (!mtd_nand_has_bch()) {
 			WARN(1, "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
 			return -EINVAL;
@@ -5588,7 +5588,7 @@ int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_BCH)) {
+	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_ALGO_BCH)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
@@ -5684,7 +5684,7 @@ int nand_scan_tail(struct nand_chip *chip)
 		pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 			ecc->size, mtd->writesize);
 		ecc->mode = NAND_ECC_SOFT;
-		ecc->algo = NAND_ECC_HAMMING;
+		ecc->algo = NAND_ECC_ALGO_HAMMING;
 	case NAND_ECC_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
@@ -5935,7 +5935,7 @@ EXPORT_SYMBOL(nand_scan_with_ids);
 void nand_cleanup(struct nand_chip *chip)
 {
 	if (chip->ecc.mode == NAND_ECC_SOFT &&
-	    chip->ecc.algo == NAND_ECC_BCH)
+	    chip->ecc.algo == NAND_ECC_ALGO_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
 
 	nanddev_cleanup(&chip->base);
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
index 74bc9fe1edfd..8eef77e93c2f 100644
--- a/drivers/mtd/nand/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -964,7 +964,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
 	} else {
 		nand->ecc.mode = NAND_ECC_SOFT;
-		nand->ecc.algo = NAND_ECC_HAMMING;
+		nand->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
 	if (ctrl->version >= FSL_IFC_V1_1_0) {
diff --git a/drivers/mtd/nand/nand_micron.c b/drivers/mtd/nand/nand_micron.c
index d59be7ca7b02..4401a55886b2 100644
--- a/drivers/mtd/nand/nand_micron.c
+++ b/drivers/mtd/nand/nand_micron.c
@@ -544,7 +544,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		chip->ecc.bytes = chip->base.eccreq.strength * 2;
 		chip->ecc.size = 512;
 		chip->ecc.strength = chip->base.eccreq.strength;
-		chip->ecc.algo = NAND_ECC_BCH;
+		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index a05c67e1404b..87e37fa9a349 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -96,10 +96,10 @@ enum nand_ecc_mode {
 };
 
 enum nand_ecc_algo {
-	NAND_ECC_UNKNOWN,
-	NAND_ECC_HAMMING,
-	NAND_ECC_BCH,
-	NAND_ECC_RS,
+	NAND_ECC_ALGO_UNKNOWN,
+	NAND_ECC_ALGO_HAMMING,
+	NAND_ECC_ALGO_BCH,
+	NAND_ECC_ALGO_RS,
 };
 
 /*
-- 
2.30.2



