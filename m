Delivery-date: Mon, 06 Jan 2025 10:19:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGM-00HQdZ-0P
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGL-0003NY-06
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h3w4kf4Pd0briBQ23RPJ48O1/rVj/gYoj98U8CzQXrw=; b=pqtsEqEL/eMZ5Uka06MQeaFmcO
	cT2VhDnBR+Po2zHxQU60OMMUmP9sTeron+qd+pMN/y5kyX5pLZqR01LDKqLs1ZbfvAi9FHjRsIfBv
	yYMIjApnm2w+UV6lyk+JLXPI4JRkdEVgTmaPPK4mZWUk5D9bhXj3t3SFXHUPjBPWCyYID9GiRF9ht
	FuwWnO5AH+AGT2t+vs16V44Uxkux+RJxVmMqeKmnQ+vxKYP+z0SEjkRhzJmtYYmq81z92E8t7xSqa
	16IzAejbZM3lnPe0Mw4yDrdsRMIlZEvDvQ3IwchTL+515xg7K0vBKvDdThOrsHVU0gzeXDEYgw00E
	hZSk1wDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFv-00000000drE-3vGI;
	Mon, 06 Jan 2025 09:18:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFt-00000000dol-1Uld
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00030j-WF; Mon, 06 Jan 2025 10:18:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-0078qO-08;
	Mon, 06 Jan 2025 10:18:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00EPYv-2K;
	Mon, 06 Jan 2025 10:18:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:30 +0100
Message-Id: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011837_394326_0246689D 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] fs: ramfs: drop unneeded indirection during unlink
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ramfs_unlink and simple_unlink have the same prototype, so we can just
use simple_unlink directly instead of defining a trivial intermediate
function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ramfs.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index c1ef7acd9107..e34742e42959 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -164,11 +164,6 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 	return 0;
 }
 
-static int ramfs_unlink(struct inode *dir, struct dentry *dentry)
-{
-	return simple_unlink(dir, dentry);
-}
-
 static const char *ramfs_get_link(struct dentry *dentry, struct inode *inode)
 {
 	return inode->i_link;
@@ -185,7 +180,7 @@ static const struct inode_operations ramfs_dir_inode_operations =
 	.symlink = ramfs_symlink,
 	.mkdir = ramfs_mkdir,
 	.rmdir = simple_rmdir,
-	.unlink = ramfs_unlink,
+	.unlink = simple_unlink,
 	.create = ramfs_create,
 };
 
-- 
2.39.5



