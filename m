Delivery-date: Fri, 14 Jun 2024 15:37:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76z-005x6O-0B
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 15:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76y-0002Cm-FM
	for lore@pengutronix.de; Fri, 14 Jun 2024 15:37:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YHqk+Mid+MvIau76HwNsyo0POcL2q41Xjzmu4W1+cy0=; b=HoncEE3Y64EfmJpkAMuzZSPxNq
	BIIpAFlebPLrjq7ZFLqavMyINZBhkQ0zGiDKVkJQio+2JVkr5fRGyQuS5Xjne/oCghPnLgkJmeoeh
	q/pQ3jR/CUHHHAvlNmG5KvF6pZDDIR/5ddWHkZ6qrFLcFLE6N7fjqj01oxicPcgih+5XQwUCYJ5Hx
	BCAh8LGTaWH8SLSq3rUxpASFEWY/ULWl0ndY+Pkke2pzq8cy1RpsBLoqLE7fJ2V+FABix91sRmFjV
	SXcVONeJUE5U3EHLMuq9x7OfKnlv+E3vqSwNvLttebLHSeIRKdS9srSSMeI15meSTNXud+34wFey0
	RLEeMfOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI76K-00000002tJa-0YeB;
	Fri, 14 Jun 2024 13:36:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI768-00000002tDR-0Xya
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 13:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-0001yi-Ga; Fri, 14 Jun 2024 15:36:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-002HR6-42; Fri, 14 Jun 2024 15:36:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-00AI7X-04;
	Fri, 14 Jun 2024 15:36:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Jun 2024 15:36:03 +0200
Message-Id: <20240614133603.2452891-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614133603.2452891-1-s.hauer@pengutronix.de>
References: <20240614133603.2452891-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_063608_247390_B79F7890 
X-CRM114-Status: GOOD (  11.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] mtd: nand: make interleaved placement optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently only one driver in the tree (denali.c) needs interleaved
layout support. Make support for it optional to safe a few bytes
of binary space when interleaved support is not needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/Kconfig     | 4 ++++
 drivers/mtd/nand/raw/nand_base.c | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index e9d1b83706..b6c6e62731 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -35,6 +35,9 @@ config NAND_ALLOW_ERASE_BAD
 config NAND_NEED_EXEC_OP
 	bool
 
+config NAND_NEED_ECC_PLACEMENT_INTERLEAVED
+	bool
+
 comment "Raw/parallel NAND flash controllers"
 
 config NAND_IMX
@@ -156,6 +159,7 @@ config MTD_NAND_DENALI
 	tristate "Support Denali NAND controller"
 	depends on HAS_DMA
 	select NAND_NEED_EXEC_OP
+	select NAND_NEED_ECC_PLACEMENT_INTERLEAVED
 	help
 	  Enable support for the Denali NAND controller.  This should be
 	  combined with either the PCI or platform drivers to provide device
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index cf4d510211..5ab5e9e03a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5671,6 +5671,8 @@ static int nand_set_ecc_on_host_ops(struct nand_chip *chip)
 		fallthrough;
 
 	case NAND_ECC_PLACEMENT_INTERLEAVED:
+		if (!IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED))
+			break;
 		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
 		    (!ecc->read_page ||
 		     ecc->read_page == nand_read_page_hwecc ||
-- 
2.39.2



