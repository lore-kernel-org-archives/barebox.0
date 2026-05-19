Delivery-date: Tue, 19 May 2026 17:29:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPMNj-001XWb-21
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 17:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPMNj-0003sm-1d
	for lore@pengutronix.de; Tue, 19 May 2026 17:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BHbNT4m9vKq7LnhuR0LkBPFdpzgOQUuUBhFl7a22Pbw=; b=hDbJ5r1Qzr/DWipYvPamKLX2Kd
	IVrjZw9NiyAFzykijMgLd9qhML1JjJbgMzWyYXEOXrcL5BFzB99yro9C0nwfiBQyLNFDam/jhE0Vr
	f5M2p3gCL25zdgilLKhagvnuwJ/x4rfDPu6grAeu5CUpuWJV+IdsDvKLeWUxu2oSQbd8c0UQEX3xh
	fBPI9+FEQYIeP6XVomr/PUXEef0AvYJ6m4otrtD8LRNtH0HIpW08bi/RcBInAmhvFpJfeQLqrUkiC
	udNVUZ0q9hbQ7OvkjdI6W1l2RahtxGwJvIU2Y4dbRMqjTFxGyzjJqVBMl/UeaK3VzamK05SjlklDO
	q8XnikJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKVB-00000001f6t-22YU;
	Tue, 19 May 2026 13:28:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKV8-00000001f3I-0hLy
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:28:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV5-0005On-JQ; Tue, 19 May 2026 15:28:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV4-000ls0-39;
	Tue, 19 May 2026 15:28:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV5-00000002VD4-1onT;
	Tue, 19 May 2026 15:28:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 May 2026 15:28:45 +0200
Message-ID: <20260519132846.596555-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_062850_202808_93689DB8 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: ubifs: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

UBIFS uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
returned from kmem_cache_alloc() is not zeroed. ubifs_alloc_inode()
zeroes all fields in the ubifs_inode except the embedded struct inode.
In Linux this is done in the kmem_cache constructor function which calls
inode_init_once(). In barebox we have the constructor function as well,
but we don't have an equivalent of inode_init_once(), so the constructor
is empty.  zero the inode in the constructor instead so that barebox
gets a zeroed inode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 45037b42ea..8eb8e574a8 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -1128,6 +1128,9 @@ static void kill_ubifs_super(struct super_block *s)
  */
 static void inode_slab_ctor(void *obj)
 {
+	struct ubifs_inode *ui = obj;
+
+	memset(&ui->vfs_inode, 0, sizeof(ui->vfs_inode));
 }
 
 static int __init ubifs_init(void)
-- 
2.47.3



