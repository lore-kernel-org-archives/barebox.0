Delivery-date: Thu, 12 Oct 2023 13:12:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtcE-005ipy-8k
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 13:12:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtcC-0002Xb-Iu
	for lore@pengutronix.de; Thu, 12 Oct 2023 13:12:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VSVA8tge30jI1x13e2I1fVYyrJuH/ae092zY0AGLoEQ=; b=vYCutfAGT0bQ2v
	WBeP4dO+yUY2vGFzUClN+5q2DJ81Dmx8GbNDwAIPZO4l+8HL1KG/Jx5Q6p7dkBz//nfKIa5cn57AB
	3jlRuapnKGTsn7jC3ToD5DLxbCzzsnfvVyKS4yBk4VnZVFVLr5rYzvkml5HiPN717h3JltQC9es4z
	SqCa4ZCUzEIVkZh54mHuVbEhdUrqQgN5ws0LVIi53T775XGMQyZLK65EkAx+SbfHu8cFe09YmaDWR
	Q5tndmMRp+3kVWT3loSttFyuJxicJQJGo6OjLpCUFJRhdkViikBbTIKx+qZ6plz5RR+p64Jb6Iag3
	D9R2ayvEn/SlAI/3LYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtal-000kJ9-0n;
	Thu, 12 Oct 2023 11:10:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtaf-000kHp-2A
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 11:10:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0002H1-NB; Thu, 12 Oct 2023 13:10:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0018LA-AF; Thu, 12 Oct 2023 13:10:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-001ht1-0n;
	Thu, 12 Oct 2023 13:10:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Oct 2023 13:10:42 +0200
Message-Id: <20231012111044.406987-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_041053_733513_383A7F77 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: Steffen Trumtrar <str@pengutronix.de>
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
Subject: [PATCH 1/3] mtd: initialize partitions_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

&mtd->partitions_entry is added to the parents partition list only when
DEVFS_PARTITION_FIXED is not set, but later this check is not done when
removing it from the list again. This results in NULL pointer derefs
when a mtd partition is added with DEVFS_PARTITION_FIXED set and removed
later.

Do a INIT_LIST_HEAD() on &mtd->partitions_entry so we can safely call
list_del() on it later without additional checks. This means we can
remove the existing check as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ae6b0f9cd4..97a7996cf6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -688,6 +688,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 					     mtd->dev.id);
 
 	INIT_LIST_HEAD(&mtd->partitions);
+	INIT_LIST_HEAD(&mtd->partitions_entry);
 
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->dev;
@@ -763,8 +764,7 @@ int del_mtd_device(struct mtd_info *mtd)
 	unregister_device(&mtd->dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
-	if (mtd->parent)
-		list_del(&mtd->partitions_entry);
+	list_del(&mtd->partitions_entry);
 
 	return 0;
 }
-- 
2.39.2



