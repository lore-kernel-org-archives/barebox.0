Delivery-date: Tue, 07 May 2024 09:38:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FPT-000TvM-1i
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 09:38:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FPS-00046b-SL
	for lore@pengutronix.de; Tue, 07 May 2024 09:38:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zSrSourD9KBX9QBAZHI8teEdTVhbDydv+JZGeKoCPh8=; b=BgUsr2jHU9mWtBRAaDfAn1GVRI
	ar0xXSOw6nY82ZJ/oqCmr2mODj+1YEKf7DBDsSQW/3zHyJhOfG/oOaMAFPx4TWOhz72kb2EzQCym4
	MgYHtwAIe2dZYQzXWCCAMn2QHMlANL3hVMbJmwLTh8yYd1vruSzDhYSjxyhoGVZCy1CphdWja9mOp
	iEUP0LnyINdxCI4kEVW+BVZLymyF9fz4LP8XqEJzomhDd/2BdY0u30lQRhQWaMHhaeWYnJwvp55jH
	OP7J8hABJft26u7gX7BQb0TKMFlL+LCUaHsw9TQcXL/pYTMVsoURSwnY7U/JgTsacIQYUdcR849/v
	pDbEkRmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FOy-0000000A0PL-0fB8;
	Tue, 07 May 2024 07:38:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FOu-0000000A0OQ-44nB
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 07:38:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FOt-0003vQ-Ob; Tue, 07 May 2024 09:38:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FOt-0003RL-Bx; Tue, 07 May 2024 09:38:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FOt-004AAJ-0q;
	Tue, 07 May 2024 09:38:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 May 2024 09:38:09 +0200
Message-Id: <20240507073809.991918-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003813_030546_3A4DE5C5 
X-CRM114-Status: GOOD (  16.70  )
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
Subject: [PATCH] mtd: nand: raw: add back support for marking blocks as good
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Support for marking blocks as good was lost during the last NAND layer
update. Add that back.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_base.c | 64 ++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 119e640eaf..c7cde7643f 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -493,6 +493,49 @@ static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
 	return ret;
 }
 
+/**
+ * nand_block_markgood_lowlevel - mark a block good
+ * @mtd: MTD device structure
+ * @ofs: offset from device start
+ *
+ * We try operations in the following order:
+ *  (1) erase the affected block
+ *  (2) check bad block marker
+ *  (3) update the BBT
+ */
+static int nand_block_markgood_lowlevel(struct nand_chip *chip, loff_t ofs)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	bool allow_erasebad;
+	int ret;
+
+	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
+		struct erase_info einfo;
+
+		/* Attempt erase possibly bad block */
+		allow_erasebad = mtd->allow_erasebad;
+		mtd->allow_erasebad = true;
+		memset(&einfo, 0, sizeof(einfo));
+		einfo.mtd = mtd;
+		einfo.addr = ofs;
+		einfo.len = 1 << chip->phys_erase_shift;
+		nand_erase_nand(chip, &einfo, 0);
+		mtd->allow_erasebad = allow_erasebad;
+	}
+
+	/* Mark block good in BBT */
+	if (chip->bbt) {
+		ret = nand_markgood_bbt(chip, ofs);
+		if (ret)
+			return ret;
+	}
+
+	if (mtd->ecc_stats.badblocks > 0)
+		mtd->ecc_stats.badblocks--;
+
+	return 0;
+}
+
 /**
  * nand_block_isreserved - [GENERIC] Check if a block is marked reserved.
  * @mtd: MTD device structure
@@ -4621,6 +4664,26 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return nand_block_markbad_lowlevel(mtd_to_nand(mtd), ofs);
 }
 
+/**
+ * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
+ * @mtd: MTD device structure
+ * @ofs: offset relative to mtd start
+ */
+static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	int ret;
+
+	ret = nand_block_isbad(mtd, ofs);
+	if (ret < 0)
+		return ret;
+
+	if (!ret)
+		/* If it was good already, return success and do nothing */
+		return 0;
+
+	return nand_block_markgood_lowlevel(mtd_to_nand(mtd), ofs);
+}
+
 /**
  * nand_lock - [MTD Interface] Lock the NAND flash
  * @mtd: MTD device structure
@@ -6213,6 +6276,7 @@ int nand_scan_tail(struct nand_chip *chip)
 	mtd->_block_isbad = nand_block_isbad;
 	mtd->_block_markbad = nand_block_markbad;
 	mtd->_max_bad_blocks = nanddev_mtd_max_bad_blocks;
+	mtd->_block_markgood = nand_block_markgood;
 
 	/*
 	 * Initialize bitflip_threshold to its default prior scan_bbt() call.
-- 
2.39.2



