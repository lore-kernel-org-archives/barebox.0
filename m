Delivery-date: Thu, 12 Oct 2023 13:12:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtcE-005ipz-A4
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 13:12:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtcA-0002Wy-PH
	for lore@pengutronix.de; Thu, 12 Oct 2023 13:12:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3g9XINJuBIXjfE/F2qEmTZShkYQ6/dAB4D2V2KyDfs=; b=gUVlmAttYOmUZJ
	BGk3iKmqImYuM90soH4jMIPXHOBkpYoc+WyEBxHPUnINpevsAES9Rr/mxY8lk+q0BnptV/B0cayL2
	EVavXxxRHFfG1IidsC4VLalFCG6o10LU5xS903mUHTvel52kvpz/fibax5oMwf05HIrbceugp8Cxz
	hy2u4LOLgCEZn0QENN3WGlt1l0vMvK+EFR38uH+6u7i7lfjbck6jD+LjohOvYW9RDd25AovJsazvG
	L17wfQOaJrSHpjz7h00Dt6uMS4jbphUA8t/PBnIn6wlicgV+vpR3HTdbwMhp1cj2fZ4KslmOHq7tA
	a8EmyfFoR8qsV/JelNNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtaj-000kIq-2t;
	Thu, 12 Oct 2023 11:10:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtaf-000kHr-2B
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 11:10:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0002H3-O5; Thu, 12 Oct 2023 13:10:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0018LC-BX; Thu, 12 Oct 2023 13:10:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-001ht8-0w;
	Thu, 12 Oct 2023 13:10:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Oct 2023 13:10:44 +0200
Message-Id: <20231012111044.406987-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012111044.406987-1-s.hauer@pengutronix.de>
References: <20231012111044.406987-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_041053_710881_074EC9BB 
X-CRM114-Status: GOOD (  13.41  )
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
Subject: [PATCH 3/3] devfs: check for valid flags before removing a partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a partition is a mtd device then it is removed before checking if
the cdev actually a partition. move the call to mtd_del_partition()
further down to a point where we know the operation is valid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c9f7fcfb07..4e16d55e36 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -582,16 +582,16 @@ int devfs_del_partition(const char *name)
 	if (!cdev)
 		return -ENOENT;
 
-	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
-		ret = mtd_del_partition(cdev->mtd);
-		return ret;
-	}
-
 	if (!cdev_is_partition(cdev))
 		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
 
+	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
+		ret = mtd_del_partition(cdev->mtd);
+		return ret;
+	}
+
 	ret = devfs_remove(cdev);
 	if (ret)
 		return ret;
-- 
2.39.2



