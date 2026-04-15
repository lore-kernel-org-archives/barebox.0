Delivery-date: Wed, 15 Apr 2026 15:09:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wD004-00CQDm-0M
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 15:09:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wD003-0007hd-J7
	for lore@pengutronix.de; Wed, 15 Apr 2026 15:09:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z1mATT8yEPO7okv1N7MBYq6U9wOJT119mlSzxXpOegc=; b=Xch9v+enGI47EADGJzYG840zaM
	jBng2Wx69nmST/whd3JJV3cz+J42NblasHE4ne5U4Q5rRI0dOjuVFWQdj7Hd2tcoRTg5zd76AG1H1
	hPBHQ9868cTTOE+iG0yXDK8/Ai+yjOQO0gAC7tbpJVtNspJTeuPgJpvXcGgR0QsQ+/nYwvAFXfqrU
	0VKGxlMsV9iXXtnwtka+1MKZnOxUGpJeXI7MShcZhsxjbl50TrT+KpsJZdZYBP2poCg4qtPK5LTCY
	hR7MVAm5TSt536/2eOcE1oRjFVNyRfs/NMr2ITRYgvNZGDOk9LaYzFzN9tvotQ4vIsvM9M+Tb4s7T
	JqEjsMVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCzzJ-00000001AQT-0nlJ;
	Wed, 15 Apr 2026 13:09:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCzzG-00000001AQ7-0Ex9
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 13:08:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCzzE-0007Vu-3b; Wed, 15 Apr 2026 15:08:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCzzD-005W0h-2y;
	Wed, 15 Apr 2026 15:08:55 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCzzD-0000000G3N6-3PSK;
	Wed, 15 Apr 2026 15:08:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 15 Apr 2026 15:08:54 +0200
Message-ID: <20260415130854.3826102-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_060858_117767_4E4CF2B7 
X-CRM114-Status: GOOD (  10.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: Do not mntput() the root device parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The vfs rootfs ("/") parent points to itself, so do not call mntput() on
the parent when it's the root device as the reference counter would
become negative.

This doesn't happen in normal configurations as we normally have a ramfs
mounted at / and we leave fs_remove() early in that case. Some xload
configurations have a FAT from SD/eMMC mounted at / though which leads
to a "refcount for mount \"%s\" becomes negative\n" warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index f1f69a501f..a562fe0fc6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -874,7 +874,8 @@ static void fs_remove(struct device *dev)
 	list_for_each_entry_safe(inode, tmp, &sb->s_inodes, i_sb_list)
 		destroy_inode(inode);
 
-	mntput(fsdev->vfsmount.parent);
+	if (&fsdev->vfsmount != fsdev->vfsmount.parent)
+		mntput(fsdev->vfsmount.parent);
 
 	free(fsdev->backingstore);
 }
-- 
2.47.3



