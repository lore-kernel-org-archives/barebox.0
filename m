Delivery-date: Tue, 09 Dec 2025 13:52:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCJ-009YsE-03
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-0001Ev-LL
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J+5oRMHFcWa/7x6Vu1QknnonoQcny2CC8XGlXh019+Q=; b=Xs9Y7oHBeTAN/Vbjh343IJn2BP
	fI91HR5WGhHdwz+TZ4LCfQNVmGGgxJ3siFWH4U6oB72RzorducXOGygMg9hhi8W9YTbz09xgc6ciM
	4I05G1j0RkGycyJ3oyx7GqN+9cMpz0s+uOqU/Z9pU+jzFI/elvGG7ri/B9Kf8SQzpb+pN8tvQSWqZ
	8qFsop/+CUSpzAGptniXpNGB716Tegq075IziJNwFR0R8mp/lTwq4OPxzJep2uY2JIaMVdqxX4vh4
	4OUZLlHrf24GCXhrCFkfdwWkavUVYExHR9LpLvixj5VYg13h+zwc31z/+8KYByNSHX35r1pw9Tc6Y
	TkLyjk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBj-0000000EHKc-1Xcg;
	Tue, 09 Dec 2025 12:51:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHR-26z0
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000p0-IN; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004muf-0U;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-01rS;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-6-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1875;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SfbxU3NDjTuOo696moew9qpSSX0xblytJJ63ghrDOPI=;
 b=SpZT0S9u0T4Cjc51e41ckEx3mdiKL1K4T2Fc7SWlzfUhI4a0ZMQKZ8V/I9a4pMkGRGF54kBje
 XXcPVXM/wfVDs6Q98mrwkiVhzSdP1yojzDz5dtJo2S8KlQQ7HGAvRHz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_597568_631831EC 
X-CRM114-Status: GOOD (  11.62  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/13] cdev: add cdev_size() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll need the size of a cdev later, add a helper for retrieving the
size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 6 ++++++
 fs/devfs.c       | 3 +--
 include/driver.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 91082265d1aaa965160de5e414364e3fb14824d1..467aa51c858a8bde6ab4e17cc4c838b989606486 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -435,6 +435,12 @@ int cdev_truncate(struct cdev *cdev, size_t size)
 	return -EPERM;
 }
 
+loff_t cdev_size(struct cdev *cdev)
+{
+	return cdev->flags & DEVFS_IS_CHARACTER_DEV ?
+		FILE_SIZE_STREAM : cdev->size;
+}
+
 static struct cdev *cdev_alloc(const char *name)
 {
 	struct cdev *new;
diff --git a/fs/devfs.c b/fs/devfs.c
index be3272be49e66eb843823b3ff664a1565f326790..a48c6452697b47cbd3ffc6f993230e7993e565fe 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -109,8 +109,7 @@ static int devfs_open(struct inode *inode, struct file *f)
 			return -ENOENT;
 	}
 
-	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
-			FILE_SIZE_STREAM : cdev->size;
+	f->f_size = cdev_size(cdev);
 	f->private_data = cdev;
 
 	return cdev_open(cdev, f->f_flags);
diff --git a/include/driver.h b/include/driver.h
index e0fddecd085c991db4f1fe34c56405d28b6f53ad..0c7a75b3d5632fdbde65ac52667e3bdee325dcf2 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -526,6 +526,7 @@ int cdev_protect(struct cdev*, size_t count, loff_t offset, int prot);
 int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
 int cdev_memmap(struct cdev*, void **map, int flags);
 int cdev_truncate(struct cdev*, size_t size);
+loff_t cdev_size(struct cdev *cdev);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 static inline bool cdev_is_partition(const struct cdev *cdev)
 {

-- 
2.47.3



