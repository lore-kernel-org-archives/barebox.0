Delivery-date: Fri, 14 Feb 2025 11:01:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWD-002Dj3-0S
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:01:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWB-0005re-T9
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:01:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSIRdlDlHrPiL1FvymFdeIDI6kH5N35B7CrgcEYGqgE=; b=kdu9XGJAgFbL8ZLw8vK4o8VnE+
	1IEXG0PW0ZlX94QoDW2RYlf//rEMZTcCMFWikNNyOm57u5VXfW7UzoLTTyLJEze1JTaif3NUcJAlh
	BzMl3nsZ6qa9V4uXxN25wp/3YQ78DfwAKtm00NTdwgdnjmwUWac0XC5PAvXPAg8WcZwWbB4Et3aGu
	fNPY1QqQ5kUQLrPrkBg97WWeacZHc3T3q8YgedQZCkmv5eJgnVdqMKos38QKt0rc91T4doe2eiBI4
	El7kV5gPfbsSYBsRUdcdUiIHSqpR/zS1klR0Qf0JLhHcwd92a+o+gxx6ieeHo3LhSAJNU6IJk+7DV
	3RigNaSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisVk-0000000EQIU-080A;
	Fri, 14 Feb 2025 10:01:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMd-0000000EOcj-07Ek
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 09:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WSIRdlDlHrPiL1FvymFdeIDI6kH5N35B7CrgcEYGqgE=; b=bJo1cUUGQQ5vQPn94H0vLW84sb
	1mXvu4ILXczjjCclLuBscrGzChz03pt+W0MijZQT8cxJIQ5fAbJmQJGBqfGzY0NcFmDnRDBrWBxOC
	wj8c4Cnf+0v1xmTr9F8fqerNvQtHuo05WRT8EPs3U/A+36ymVmoKG1F4DD0LOi9IK9hNJ+XvnJ0ye
	GSMBl/ppyI3ik+h2QatcXwjTBN7q2AGNHnzLb20/TVjzYZn4HzmYf1AmmB6aGkDCYiFPWeJ4Vb2ss
	s1edXrSzQ654pZ4+n/no7xu7bBQXb/QphbGfOm0gFc/OvHo00xqRcp738XIQOoig6ZpnAuzvFt97L
	/cd9fcig==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMa-00000001Drq-0q6p
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 09:52:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-0003bT-Gx; Fri, 14 Feb 2025 10:51:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-000ta1-14;
	Fri, 14 Feb 2025 10:51:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-00BxeG-0m;
	Fri, 14 Feb 2025 10:51:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 10:51:56 +0100
Message-Id: <20250214095157.2850839-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
References: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_095200_449703_609CEAF1 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] fs: remove unused members in struct file_operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Eventually, we want to actually use these members in struct file_operations,
but until we do so, having them there without effect only causes
confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/jffs2/dir.c     | 1 -
 fs/ubifs/dir.c     | 2 +-
 include/linux/fs.h | 8 ++++----
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/fs/jffs2/dir.c b/fs/jffs2/dir.c
index 94ef51f77881..48584466724d 100644
--- a/fs/jffs2/dir.c
+++ b/fs/jffs2/dir.c
@@ -26,7 +26,6 @@ static struct dentry *jffs2_lookup (struct inode *,struct dentry *,
 
 const struct file_operations jffs2_dir_operations =
 {
-	.read 	 = NULL,
 	.iterate = jffs2_readdir,
 };
 
diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
index a16546e615b7..98a4ec6b81e8 100644
--- a/fs/ubifs/dir.c
+++ b/fs/ubifs/dir.c
@@ -492,7 +492,7 @@ const struct inode_operations ubifs_dir_inode_operations = {
 const struct file_operations ubifs_dir_operations = {
 /* 	.llseek         = NULL, not present in barebox */
 /* 	.release        = NULL, not present in barebox */
-	.read           = NULL, /* not present in barebox */
+/*	.read           = NULL, not present in barebox */
 	.iterate	= ubifs_readdir,
 /* 	.fsync          = NULL, not present in barebox */
 /*	.unlocked_ioctl = NULL, not present in barebox */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 28d3146516a6..7461eb367d07 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -456,10 +456,10 @@ struct file_operations {
 	int (*open) (struct inode *, struct file *);
 	int (*release) (struct inode *, struct file *);
 	int (*iterate) (struct file *, struct dir_context *);
-	ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
-	ssize_t (*write) (struct file *, const char __user *, size_t, loff_t *);
-	int (*ioctl) (struct file *, unsigned int request, void *buf);
-	int (*truncate) (struct file *, loff_t);
+	/*
+	 * TODO: move the remaining callbacks in struct fs_driver
+	 * here with Linux semantics
+	 */
 };
 
 void drop_nlink(struct inode *inode);
-- 
2.39.5



