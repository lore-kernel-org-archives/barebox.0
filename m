Delivery-date: Thu, 27 Nov 2025 10:20:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAY-005NXH-1j
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAX-0003Wd-FN
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uDhX8lAbP7VwCJau12p3iTNiJoQNd5ZbiJemBctGcZk=; b=EJHLxTiZW4BF4mPs/f3wOVaecK
	7yWN3lMcCUeraGjnSWrtryoXj7z9Il4W3SDRLk+/wo6wVHzhMsRoBRQhcF5C1FgRYSXqTT4LOCt8B
	iOb7SRpYtzaGV2DQTuRFH2TF/j9GqJtj0QSNtc8naxPEXhbmXJax/qV2kk7KfPGu9TLEnEviESMeT
	U82etwAxpLasE1+sdmTZbJMRJvEvg63yvWS7qNudFKKG3ftmlZZMQr9gRrPGFgNXOZaOG3M4vlHer
	Mf/sihnhc4CNNICi5LAQzbke7K9Q9nQVf5O5w0LSccw8MFk2le8eQUBdJ4PmHqW1KpxbxTID7m9CJ
	oy+vWcSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA0-0000000GGiR-0BBy;
	Thu, 27 Nov 2025 09:19:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9v-0000000GGfE-3TyI
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035G-8E; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPD-32;
	Thu, 27 Nov 2025 10:19:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1C75;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-3-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=1458;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YdO8m4WLx/2JYZCRYzN7vzg4O7CGBwaUENqI9nBYj/Y=;
 b=4Fr9U4XuzZYcuGw2/AeOiOLQZAnMtv2uNkxkX1M8dCgwQVm2RfpRAAw6P6iIKENh27dk92BfJ
 1I6X2ecBxSNDJYLcRScN3Q8hJKRbfiayCNGeuDqMLucZbaxvggz/Niz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011927_876203_B9834F7C 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] fs: ramfs: add device file support
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



