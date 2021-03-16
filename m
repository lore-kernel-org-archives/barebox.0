Delivery-date: Tue, 16 Mar 2021 13:37:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x3-0002fS-Ss
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 13:37:33 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x3-0002xU-5x
	for lore@pengutronix.de; Tue, 16 Mar 2021 13:37:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ig3vViJ5R+BoMF09E2SNeWYhwuTEy8b0wSOFO+eQTuI=; b=VRxAYT3hY78tgDjaVvaf9Idv1
	TJWerLJI6j7/43nbQYOJHJCIE8wMgI1lBNiQdMqmWJkpyGCTFuQSa274Yq8NDak1LS+c2RyaR/iXk
	/FLB1I30nvn8wJXJ0zW/i4GYwEzMonabSRCJVx+98nJtXUC5vIEZn6B8x2CG3Zt2mS0vpFuWcqMA2
	ax+I/v8816cnqPX0Sukm56efBIhHa5RzaogcL4XpzxdA3Djg1H+prwehZijq7TXM3ueZJktE0iKfc
	kmyy9HWZkNUpTCz4cb923EDXWJPHgLnmlM7YAMw6TFsvmjE/GYrphnAtFZLFqC0njl2oi7ZnLpaFP
	En+XVWPQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM8wB-000iZ0-CZ; Tue, 16 Mar 2021 12:36:40 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM8w5-000iXM-HS
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 12:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1615898193; x=1618490193;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q6Gd3tHzphC2EVY+VkkSj/QPbmItJVqX+5Sdpqkpvbk=;
 b=HDeMQE1dJdBhKan8mJlunIPSPDa7mAExZkTG/Xl6TnWUDwIPNDgF4OrcC8EN+P5a
 LjwYGKIaI4MvnEgN9DAriwzolrXqUirh+1dGfrMRb4GG2jIpVZ5KOpDrXKtxwcJt
 ClYfzRi+ErtWsJ8/aaADGp1FmaYtBW8yG8s9AWN/xEA=;
X-AuditID: c39127d2-0d3b770000001c86-79-6050a651df40
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 0C.F1.07302.156A0506;
 Tue, 16 Mar 2021 13:36:33 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021031613374715-157538 ;
 Tue, 16 Mar 2021 13:37:47 +0100 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 16 Mar 2021 13:36:26 +0100
Message-Id: <20210316123626.25872-2-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210316123626.25872-1-s.riedmueller@phytec.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 16.03.2021 13:37:47,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 16.03.2021 13:37:47
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplluLIzCtJLcpLzFFi42JZI8DApRu4LCDB4OxyaYsTi/uZHRg9Ni+p
 D2CM4rJJSc3JLEst0rdL4MrY0LmZteAoV8X2ky1sDYw3OLoYOTkkBEwkLjz/ztLFyMUhJLCV
 UaL3zl0o5xqjxJZF39lBqtgEjCQWTGtkArFFBOQl5u5vYwWxmQUMJK43rAaLCwuESUw7vZgR
 xGYRUJU4cuMIG4jNK2AjMWHCfiaIbfISMy9BzOQUsJWY2bwVaBkH0DIbiaPHXCHKBSVOznwC
 doOEwBVGianNr5kheoUkTi8+ywyxV1ti2cLXzBMYBWYh6ZmFJLWAkWkVo1BuZnJ2alFmtl5B
 RmVJarJeSuomRmCQHZ6ofmkHY98cj0OMTByMhxglOJiVRHhN8wIShHhTEiurUovy44tKc1KL
 DzFKc7AoifNu4C0JExJITyxJzU5NLUgtgskycXBKNTB2SSzZYLhsY/LsWt9DKs7vt639pMt/
 1aO3qfaH/yPWHssYNoaFQsdy2JZurlYrinIweiP42Ll7wg85nskukzNCxJZPiLoyweJ3rmu8
 36XSump5b34Da9W8tPnCEr0iDjZla09KXOTp6mx5WLPn89qrhxdqCJsmXVi/VsVrBWf8k88p
 t0zsliqxFGckGmoxFxUnAgDbDfYtIAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_123633_749574_0C9D3D47 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for the BBT
 in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The blocks containing the bad block table can become bad as well. So
make sure to skip any blocks that are marked bad when searching for the
bad block table.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/mtd/nand/nand_bbt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index a86b5b2da38e..0b48373e6a0b 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -528,6 +528,7 @@ static int search_bbt(struct nand_chip *this, uint8_t *buf,
 {
 	u64 targetsize = nanddev_target_size(&this->base);
 	struct mtd_info *mtd = nand_to_mtd(this);
+	struct nand_bbt_descr *bd = this->badblock_pattern;
 	int i, chips;
 	int startblock, block, dir;
 	int scanlen = mtd->writesize + mtd->oobsize;
@@ -563,6 +564,9 @@ static int search_bbt(struct nand_chip *this, uint8_t *buf,
 			int actblock = startblock + dir * block;
 			loff_t offs = (loff_t)actblock << this->bbt_erase_shift;
 
+			/* Check if block is marked bad */
+			if (scan_block_fast(this, bd, offs, buf))
+				continue;
 			/* Read first page */
 			scan_read(this, buf, offs, mtd->writesize, td);
 			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

