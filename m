Delivery-date: Tue, 09 Dec 2025 13:52:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCI-009Yrh-1x
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-0001Ex-KD
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uDhX8lAbP7VwCJau12p3iTNiJoQNd5ZbiJemBctGcZk=; b=hoL0nVdOMJzZ9NyvaoNK8HTPE7
	T11ac1pZdH1NIbvmOUMo0QwRB6rgpecpeduRKljFIkPQQiSvhyEcPmgfiSMb/ZviglWXYw4lLF07E
	G0ClGhbH/mVzdpSDV/wT9IpHo8QVU0X5AlXI/Vk1Kucu7TW0+hJSMxwAotDoAqmN4pJRHr8HmE40R
	qi894BR9JgaoHgwQffcz2ODun3CCf8yr5c50JASeBUkzrjxSYbCQMqGrlPgz/zRGB99tuXxpKvqvH
	++bkKJ0PcitJAXe1LKPW/BHeon6JOkCmzDV4ipDBc1Ka0HPGt3WHaIN+DdFQy1AjUDqgHueduahI9
	KElM6HiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBg-0000000EHJq-1tia;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHO-267G
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000ov-FO; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mue-0T;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-00wx;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-5-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1458;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YdO8m4WLx/2JYZCRYzN7vzg4O7CGBwaUENqI9nBYj/Y=;
 b=a+vuE2dI8z5bmLNeRg/j4PcgVYhHoCM0A15WdOkBSVP972gIi7FJ1kEkmIImY3RZZvYktjHXC
 TWU29qVDNlgCRQSD5TUPfhbU5hBfd4N+xvkuUVXGpv33ty9SmIfaqwv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_570366_F2D36463 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH v2 05/13] fs: ramfs: add device file support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement the mknod hook in ramfs for creating device special files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 1caace0183a58e8a07001eb6ce9df8ea1895ac0b..d86bf6144e8485269c589ba0024377f9852a8eaa 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -89,6 +89,9 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
 	case S_IFLNK:
 		inode->i_op = &ramfs_symlink_inode_operations;
 		break;
+	case S_IFBLK:
+	case S_IFCHR:
+		break;
 	}
 
 	return inode;
@@ -149,6 +152,20 @@ static int ramfs_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 	return ramfs_mknod(dir, dentry, mode | S_IFREG);
 }
 
+static int __ramfs_mknod(struct inode *dir,struct dentry *dentry, umode_t mode,
+			 const char *cdevname)
+{
+	int ret;
+
+	ret = ramfs_mknod(dir, dentry, mode);
+	if (ret)
+		return ret;
+
+	init_special_inode(dentry->d_inode, mode, cdevname);
+
+	return 0;
+}
+
 static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 			 const char *symname)
 {
@@ -196,6 +213,7 @@ static const struct inode_operations ramfs_dir_inode_operations =
 	.unlink = simple_unlink,
 	.create = ramfs_create,
 	.tmpfile = ramfs_tmpfile,
+	.mknod = __ramfs_mknod,
 };
 
 static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,

-- 
2.47.3



