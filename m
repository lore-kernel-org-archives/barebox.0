Delivery-date: Thu, 05 Jun 2025 13:37:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uF-003zhj-1Q
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uB-0000TU-Lk
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u6zCWfYGixYMLHVGLyrHdf6v5EjVzGOx97cpsQXoUJw=; b=asURsDVm4T9ouReo3h2CDnyTGD
	pmw+AbWe1rpqCWxhDaMVtHm/4E0c0PmzUKabp1Z6BJWgyWqGAnB845cV66MAJwYyCqJXylL68Nw5z
	xS3bp6iLKEgDCdDnVr60++1LAj0y02CJmU+JC+DhNQOhnWDB8iU64qw4+DncWtE8WsBpHm8T5xDMb
	Aw2lsbe1qUVSs4wyh7WeBQnRMZmqDxJLTqBrUCXocLc//lIk1jbplePj9GCbvbECOp2ArlwzqYzFc
	/34aqcZIoYJuLMZBUF+SNHekO1qE0QWWmSPNPLbeRkEjo1vFbuVvX2OIr/X10lgIztIsU/KMpoCVI
	EeFuFFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tX-0000000FNHa-0quS;
	Thu, 05 Jun 2025 11:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8jl-0000000FMNv-0BZr
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:26:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jj-0001hw-Qa; Thu, 05 Jun 2025 13:26:19 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jj-001wuG-22;
	Thu, 05 Jun 2025 13:26:19 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jk-008H9N-0f;
	Thu, 05 Jun 2025 13:26:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:26:18 +0200
Message-Id: <20250605112618.1972479-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042621_108315_BEFE4C32 
X-CRM114-Status: GOOD (  12.49  )
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
Subject: [PATCH] fs: ramfs: do not bother unmounting ramfs on shutdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's pointless to free memory when we are about to boot a kernel that
will reclaim all memory anyway.

As ramfs only consists of such memory buffers, let's just skip its
freeing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c    | 2 ++
 fs/ramfs.c | 5 -----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 0f821451103f..4d478eaf1f72 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -835,6 +835,8 @@ static void fs_remove(struct device *dev)
 	int ret;
 
 	if (fsdev->dev.driver) {
+		if (!dev->driver->remove)
+			return;
 		dev->driver->remove(dev);
 		list_del(&fsdev->list);
 	}
diff --git a/fs/ramfs.c b/fs/ramfs.c
index ab3c44270d43..e971f608545c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -435,10 +435,6 @@ static int ramfs_probe(struct device *dev)
 	return 0;
 }
 
-static void ramfs_remove(struct device *dev)
-{
-}
-
 static struct fs_driver ramfs_driver = {
 	.read      = ramfs_read,
 	.write     = ramfs_write,
@@ -446,7 +442,6 @@ static struct fs_driver ramfs_driver = {
 	.truncate  = ramfs_truncate,
 	.drv = {
 		.probe  = ramfs_probe,
-		.remove = ramfs_remove,
 		.name = "ramfs",
 	}
 };
-- 
2.39.5



