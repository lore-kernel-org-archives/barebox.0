Delivery-date: Fri, 20 Mar 2026 09:36:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VLh-002xxm-0j
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:36:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VLg-0004IZ-KQ
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iDgv+5gRLJFFxDNg8qsIgJ8VFy27bi1U8GymB9tAnCM=; b=QXaIag2BUkRW1WsmeSzhalTbLc
	TvJAfHTRFTQ3gZGb3KaJT5HGJ+aAkpCQct+vm78oOT5ppjuoyqSASHQzrmQgxBVccjG72T72p909e
	YDIXow2tzHL5Wjr2kimup41Z0w3j/OCKN6hdQUqww/qObrP49AbWFtvGx0hJb3U7TX/QKbT7FQA1D
	rRASun278VCezE9thgqQkXaPI1gFjwGyZC9ycCZpc7fYhEL0PO8MkSabGqY7gr6kZQ49CVlekeI+I
	FCoSZClO1Sb4v8JHBhTHmYt7e8EshRB6h7BiX8Bjznrzn/mLbMLeYR7+LOPL4HzNyvFUhp1kPaWuH
	X49MApCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VLF-0000000CMkx-2jD5;
	Fri, 20 Mar 2026 08:36:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VLD-0000000CMkP-2w9A
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VLC-0004Be-1e; Fri, 20 Mar 2026 09:36:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VLB-001DGg-2k;
	Fri, 20 Mar 2026 09:36:21 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VLB-0000000EKDl-39Eb;
	Fri, 20 Mar 2026 09:36:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 20 Mar 2026 09:36:20 +0100
Message-ID: <20260320083620.3414296-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-1-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-1-fcc1f327acf8@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013623_740093_847BB868 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! mci: add data segment to mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
 drivers/mci/atmel_mci_pbl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index b70997a918..ee8007fd0c 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -9,7 +9,8 @@
 #define SUPPORT_MAX_BLOCKS		16U
 
 static int pbl_atmci_common_request(struct pbl_mci *mci,
-				    struct mci_cmd *cmd)
+				    struct mci_cmd *cmd,
+				    struct mci_data *data)
 {
 	return atmci_common_request(mci->priv, cmd, cmd->data);
 }
-- 
2.47.3



