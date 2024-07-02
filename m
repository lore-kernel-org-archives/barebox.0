Delivery-date: Tue, 02 Jul 2024 10:45:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOZ8x-000myT-2G
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 10:45:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOZ8w-0002e2-TU
	for lore@pengutronix.de; Tue, 02 Jul 2024 10:45:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sp7L4iSVgpieUxR7INV2sxOGJzZT008SOijEIIHre5A=; b=l/Mejj7pbJfxEAPdH9ECghHJ6Y
	78YImG6V5jltB4Fk8puB4Dhu86kXzkia72W5pS4N5M3EY40nE5y/+wBNPgglEEKSnxtk8PhGWLWM2
	IT6shuzr2JqlSowJ3XS2Wow3nAlZWKfjZB+PW8NjOVyUyIFMdce9mTFIgD5b5YYMboaGGWNWr20d6
	2+jNVqIWB7/9uFcCLMaC3xn3ep4X7pt1xsx4pq2YjmFODnfaVCMKopOA6VzGWzgMTJUrW391Qfbw+
	A6U1V2ADWogCk0QPrSE64Sgpqh4Mu2P6MUU78h+LIePUF4SLVpwT+2gFUAZMD2S7zqaiLOqkzQXVR
	eRT5I9cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOZ8I-0000000619A-1FcI;
	Tue, 02 Jul 2024 08:45:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOZ8E-0000000616c-1sLE
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 08:45:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8D-0002RW-5G; Tue, 02 Jul 2024 10:44:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8C-006ZNw-P0; Tue, 02 Jul 2024 10:44:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8C-002vYE-2A;
	Tue, 02 Jul 2024 10:44:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Jul 2024 10:44:55 +0200
Message-Id: <20240702084455.697720-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_014458_503839_5254A2E9 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: rawnand: Ensure ECC configuration is propagated to upper layers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an adoption of Linux Commit:

|commit 3a1b777eb9fb75d09c45ae5dd1d007eddcbebf1f
|Author: Miquel Raynal <miquel.raynal@bootlin.com>
|Date:   Tue May 7 10:58:42 2024 +0200
|
|    mtd: rawnand: Ensure ECC configuration is propagated to upper layers
|
|    Until recently the "upper layer" was MTD. But following incremental
|    reworks to bring spi-nand support and more recently generic ECC support,
|    there is now an intermediate "generic NAND" layer that also needs to get
|    access to some values. When using "converted" ECC engines, like the
|    software ones, these values are already propagated correctly. But
|    otherwise when using good old raw NAND controller drivers, we need to
|    manually set these values ourselves at the end of the "scan" operation,
|    once these values have been negotiated.
|
|    Without this propagation, later (generic) checks like the one warning
|    users that the ECC strength is not high enough might simply no longer
|    work.
|
|    Fixes: 8c126720fe10 ("mtd: rawnand: Use the ECC framework nand_ecc_is_strong_enough() helper")
|    Cc: stable@vger.kernel.org
|    Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
|    Closes: https://lore.kernel.org/all/Zhe2JtvvN1M4Ompw@pengutronix.de/
|    Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|    Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
|    Link: https://lore.kernel.org/linux-mtd/20240507085842.108844-1-miquel.raynal@bootlin.com

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_base.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index e586c4cc89..b6bef46499 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -6087,6 +6087,7 @@ static const struct nand_ops rawnand_ops = {
 int nand_scan_tail(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *base = &chip->base;
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int ret, i;
 
@@ -6231,9 +6232,13 @@ int nand_scan_tail(struct nand_chip *chip)
 	if (!ecc->write_oob_raw)
 		ecc->write_oob_raw = ecc->write_oob;
 
-	/* propagate ecc info to mtd_info */
+	/* Propagate ECC info to the generic NAND and MTD layers */
 	mtd->ecc_strength = ecc->strength;
+	if (!base->ecc.ctx.conf.strength)
+		base->ecc.ctx.conf.strength = ecc->strength;
 	mtd->ecc_step_size = ecc->size;
+	if (!base->ecc.ctx.conf.step_size)
+		base->ecc.ctx.conf.step_size = ecc->size;
 
 	/*
 	 * Set the number of read / write steps for one page depending on ECC
@@ -6241,6 +6246,8 @@ int nand_scan_tail(struct nand_chip *chip)
 	 */
 	if (!ecc->steps)
 		ecc->steps = mtd->writesize / ecc->size;
+	if (!base->ecc.ctx.nsteps)
+		base->ecc.ctx.nsteps = ecc->steps;
 	if (ecc->steps * ecc->size != mtd->writesize) {
 		WARN(1, "Invalid ECC parameters\n");
 		ret = -EINVAL;
-- 
2.39.2



