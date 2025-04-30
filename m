Delivery-date: Wed, 30 Apr 2025 14:11:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Hw-000ofW-0x
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 14:11:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Hv-0008Eu-P4
	for lore@pengutronix.de; Wed, 30 Apr 2025 14:11:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U2XpzRLj2c9vGanzW3HMzPtL3AOjTbsAdIjnXCTl2Zk=; b=T1pzdQ82Bzs4b3IMFOvZ9WT7q9
	/cZ849nPxWrzwlpiYrFj6XX2jQV7M8fNsStEtVORTxsz55g+q1qWGCrh+O782PT5m1iVRM59mY3+q
	0xrVCAXWGd/vPnzyZU1i0/I6XW2IKFCHNLACrIQxDexzv7IchAreMUwSPCcLcdU3rgrviks8UD2YP
	V5VCnc7Hak0Z37epcoyY43TwiJm25sVp50tJ7sy7UMdqqtSQt5afZ/dg+VjqeoaWKm1PEQ58NIrv5
	2Q73mXBnVt90zfIreOwqziNVJe4b5lcfywER6a6hoqGuMNf8jJOeH3xXHbgK8i+eODjoWIK46Evfj
	9wza/STw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6HU-0000000Cn4b-2BQ5;
	Wed, 30 Apr 2025 12:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6HR-0000000Cn3W-3blF
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 12:11:14 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uA6HQ-0007uG-OS; Wed, 30 Apr 2025 14:11:12 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 30 Apr 2025 14:11:12 +0200
Message-Id: <20250430121112.2899908-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_051113_895599_762EF11D 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: fix NULL pointer dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calling `devlookup -k` directly on an mmc device instead of an partition
causes a NULL pointer dereference for cdevm.

Return a NULL pointer in this case to signal the error.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 592543faa7b8..abcda497646d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2536,6 +2536,9 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
 	if (mci_part->area_type != MMC_BLK_DATA_AREA_MAIN)
 		return NULL;
 
+	if (!cdevm)
+		return NULL;
+
 	id = of_alias_get_id(cdev_of_node(cdevm), "mmc");
 	if (id < 0)
 		return NULL;
-- 
2.39.5



