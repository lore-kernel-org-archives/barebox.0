Delivery-date: Thu, 24 Jul 2025 12:09:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uesta-003D50-1y
	for lore@lore.pengutronix.de;
	Thu, 24 Jul 2025 12:09:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uesta-0002Sw-0l
	for lore@pengutronix.de; Thu, 24 Jul 2025 12:09:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rK4X23kOq+Ua9Lk0N/V3pCX0Vc8LD/I/jOW218Stm1M=; b=BBFaaBMqYDIRYnVISICJbRvfWB
	g9aJOujlhDVzE68dWGofeYNQGhCK6Ql4oxwWpoPxgWJfHP7Q7EspFr7olZb4+04Atm9X0Yp7/9W5B
	mcBMmw7iArICuZYLeRvda4WwUeU1TQp4LUeSw0eatN9Ogi0Ibe8BbXy0LkFaCq4k+U/BaBxmcB3/q
	kwxNxQNa2vFLhaoCBust1qUTyiZmft40YvxwapUzRAV6Kjcz7qLUAca4BLC1iGYS7KYD40aOQL+Mu
	4XLmwK2y95l6XqPWP28379APQP7KUgUVAProCabiHMgTqvJncsPCs68xKGxR5ePTx9WuSMlIfaWh4
	mHcxesoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesss-00000007APo-0bsH;
	Thu, 24 Jul 2025 10:09:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ues1H-0000000709e-3yyB
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 09:13:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ues1G-0001ZU-NF
	for barebox@lists.infradead.org; Thu, 24 Jul 2025 11:13:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jul 2025 11:13:39 +0200
Message-Id: <20250724091339.1091147-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_021343_986435_3C42916A 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] block: fix block device detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before commit a6410cfa9aff ("block: mark underlying cdev with
DEVFS_IS_BLOCK_DEV") the block device decision was made based on the
block_ops. Since each parition-cdev inherits the parent (master)
cdev-ops the parition-cdevs were detected as block device.

Commit a6410cfa9aff the detection mechanism to be based on cdev flag but
commit a6410cfa9aff forgot to pass the flag to the partition (child)
cdev.

Fix this by passing the DEVFS_IS_BLOCK_DEV to the partition (child) cdev
as well. Add a small helper function to query the inheritable devfs
flags instead of open coding it within __devfs_add_partition().

Fixes: a6410cfa9aff ("block: mark underlying cdev with DEVFS_IS_BLOCK_DEV")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 fs/devfs-core.c  |  4 ++--
 include/driver.h | 10 ++++++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 73a13be7336d..f80281aaf91c 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -584,7 +584,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	loff_t _end = end ? *end : 0;
 	static struct cdev *new;
 	struct cdev *overlap;
-	unsigned inherited_flags = 0;
+	unsigned inherited_flags;
 
 	if (cdev_by_name(partinfo->name))
 		return ERR_PTR(-EEXIST);
@@ -628,7 +628,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	}
 
 	/* Filter flags that we want to pass along to children */
-	inherited_flags |= cdev->flags & DEVFS_WRITE_AUTOERASE;
+	inherited_flags = get_inheritable_devfs_flags(cdev);
 
 	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		struct mtd_info *mtd;
diff --git a/include/driver.h b/include/driver.h
index dd50a7aa3cce..01e04578540b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -627,6 +627,16 @@ static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
 	return master && (master->flags & DEVFS_IS_GPT_PARTITIONED);
 }
 
+#define DEVFS_INHERITABLE_FLAGS (DEVFS_WRITE_AUTOERASE | DEVFS_IS_BLOCK_DEV)
+
+static inline unsigned int
+get_inheritable_devfs_flags(const struct cdev *parent_cdev)
+{
+	if (!parent_cdev)
+		return 0;
+	return parent_cdev->flags & DEVFS_INHERITABLE_FLAGS;
+}
+
 struct cdev *
 cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid);
 
-- 
2.39.5



