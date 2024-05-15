Delivery-date: Wed, 15 May 2024 10:06:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79eD-00FWlt-1n
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:06:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79e8-0000vC-SC
	for lore@pengutronix.de; Wed, 15 May 2024 10:06:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LyRLGD6Kxn1TOZ69bfbUM5xvLb1xYon+VHYejbocipM=; b=yqmPvhURCPZzxhZTzic94RKBl4
	LlPmpShWoT/5pzLeQ5QsJjQ4ExXW6xmPZ2J0GDtlkgHKlaXqhbcXdT+YrB3Vep/0QIewmro9O0u2N
	+SQN+jkXlRsNzpxCcjuQi0cGgpvVFRWmydfiWPpI3JMYeS8v3VqnXuZ0p4NJdAmcdP4dQBtmWI3wO
	/UvuTAmGY78WeHXpO3lDzBv9dcAfNffB23P9mvtgOoZEibdv7HU/K0L983v798SYK5lOXhVYVvA/f
	K0wvchIa7PVJcOE1WHQsu2y+Yz6lH1SyCRmnjF6EFDYHeGa6OwgI+jslXbW374rsg3fUOgdjsL2x5
	+bOrPxzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dY-00000000sv3-2mgD;
	Wed, 15 May 2024 08:05:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79dT-00000000ssG-0AXQ
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:05:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-0000dT-Sv; Wed, 15 May 2024 10:05:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-001UtC-GK; Wed, 15 May 2024 10:05:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s79dM-00H1E8-1J;
	Wed, 15 May 2024 10:05:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 10:05:06 +0200
Message-Id: <20240515080507.4056255-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
References: <20240515080507.4056255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010515_132992_B1966067 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] fs: devfs: restore cdev reference count maintenance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox v2024.03.0 moves the reference count maintenance into
cdev_open/cdev_close, but missed to switch devfs_open and devfs_close to
actually use cdev_open/cdev_close. The result was that the cdev could be
deleted, e.g. due to partition reparsing, and further use of the file
descriptor would result in a use-after-free.

Fix this by doing what the commit introducing the breakage was purported
to do.

Fixes: d84c3daf1314 ("fs: move cdev open count to cdev_open()/cdev_close()")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index c8ddbbdab04d..f5bad5aa9bf2 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -102,33 +102,19 @@ static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 	struct inode *inode = f->f_inode;
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
 	struct cdev *cdev = node->cdev;
-	int ret;
 
 	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
 	f->priv = cdev;
 
-	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev, f->flags);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
+	return cdev_open(cdev, f->flags);
 }
 
 static int devfs_close(struct device *_dev, FILE *f)
 {
 	struct cdev *cdev = f->priv;
-	int ret;
 
-	if (cdev->ops->close) {
-		ret = cdev->ops->close(cdev);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
+	return cdev_close(cdev);
 }
 
 static int devfs_flush(struct device *_dev, FILE *f)
-- 
2.39.2



