Delivery-date: Fri, 04 Mar 2022 10:43:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ4TI-00HQc6-D4
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 10:43:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ4TG-0005Pg-Cx
	for lore@pengutronix.de; Fri, 04 Mar 2022 10:43:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C5jf9EYw1ZyIzhx/Da9M2lnljgauU/spfvABUMtnvXs=; b=CWMF6CVO7hgfdM
	tmWFdBPGESHcUB0zrKg697OrelsXCO5hZh2BEQSPQibqAuYcF6G5QDdXrCu/r/Y/Q0ug2Pjw01bl4
	8S1NkLyoWCMVVqkX5xDAs7x4ahodz/rEmpt+FUynRAvAeR87VW77840/xAdDuCUPSzOt1nY8CmITw
	scjUucf2v91CWpFMtekw/csVVijRDgvA8HEya98OpK8c1PClhRWr54CT0v4OJuz8yU8DnXhICa458
	uLL2jew4XqMajk+SDDrSDePMw70/vDHB23iWmANC7S6VG0luaipyYW3jvYbUgumfekT+HlCsRp9SH
	GxllLeUB09cgCd1shKdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ4RW-009M21-Nk; Fri, 04 Mar 2022 09:41:47 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ4ES-009Hgs-8k
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 09:28:18 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 17CF8200007;
 Fri,  4 Mar 2022 09:28:09 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
 Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  4 Mar 2022 10:28:05 +0100
Message-Id: <20220304092805.1213879-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_012816_645559_17C491D2 
X-CRM114-Status: GOOD (  15.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] block: set S_IFBLK for block devices instead of S_IFCHR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In barebox, block devices are a special case of character devices.
Nevertheless, differentiation can be useful to allow scripts iterating
over all block devices without accounting for naming, e.g.

  for dev in /dev/*; do
	test -b $dev && echo $dev: blockdevice
  done

Add the necessary support. This will break scripts that assume
test -c blockdevice to be true, but that's a quite improbable check.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/memtester/memtester.c | 2 +-
 common/block.c                 | 8 ++++++++
 fs/devfs.c                     | 7 ++++++-
 fs/legacy.c                    | 1 +
 include/block.h                | 2 ++
 5 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
index 130dc97c8334..f4adbfc855cb 100644
--- a/commands/memtester/memtester.c
+++ b/commands/memtester/memtester.c
@@ -113,7 +113,7 @@ static int do_memtester(int argc, char **argv) {
                             strerror(errno));
                     return COMMAND_ERROR_USAGE;
                 } else {
-                    if (!S_ISCHR(statbuf.st_mode)) {
+                    if (!S_ISCHR(statbuf.st_mode) && !S_ISBLK(statbuf.st_mode)) {
                         printf("can not mmap non-char device %s\n",
                                 optarg);
                         return COMMAND_ERROR_USAGE;
diff --git a/common/block.c b/common/block.c
index 1d386edcfd49..a48016d8dcbd 100644
--- a/common/block.c
+++ b/common/block.c
@@ -361,6 +361,14 @@ static struct cdev_operations block_ops = {
 	.discard_range = block_op_discard_range,
 };
 
+struct block_device *cdev_get_block_device(struct cdev *cdev)
+{
+	if (cdev->ops != &block_ops)
+		return NULL;
+
+	return container_of(cdev, struct block_device, cdev);
+}
+
 int blockdevice_register(struct block_device *blk)
 {
 	loff_t size = (loff_t)blk->num_blocks * BLOCKSIZE(blk);
diff --git a/fs/devfs.c b/fs/devfs.c
index deb244feeab6..49cd48f6d84e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -29,6 +29,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/mtd-abi.h>
 #include <partition.h>
+#include <block.h>
 
 struct devfs_inode {
 	struct inode inode;
@@ -231,6 +232,7 @@ static struct inode *devfs_get_inode(struct super_block *sb, const struct inode
 	default:
 		return NULL;
 	case S_IFCHR:
+	case S_IFBLK:
 		inode->i_op = &devfs_file_inode_operations;
 		inode->i_fop = &devfs_file_operations;
 		break;
@@ -250,12 +252,15 @@ static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
 	struct devfs_inode *dinode;
 	struct inode *inode;
 	struct cdev *cdev;
+	umode_t mode;
 
 	cdev = cdev_by_name(dentry->name);
 	if (!cdev)
 		return ERR_PTR(-ENOENT);
 
-	inode = devfs_get_inode(dir->i_sb, dir, S_IFCHR);
+	mode = cdev_get_block_device(cdev) ? S_IFBLK : S_IFCHR;
+
+	inode = devfs_get_inode(dir->i_sb, dir, mode);
 	if (!inode)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/fs/legacy.c b/fs/legacy.c
index fc6a18f408ed..779f54629440 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -288,6 +288,7 @@ static struct inode *legacy_get_inode(struct super_block *sb, const struct inode
 		return NULL;
 	case S_IFREG:
 	case S_IFCHR:
+	case S_IFBLK:
 		inode->i_op = &legacy_file_inode_operations;
 		break;
 	case S_IFDIR:
diff --git a/include/block.h b/include/block.h
index d3a154bf73c0..06c15a71b58a 100644
--- a/include/block.h
+++ b/include/block.h
@@ -49,4 +49,6 @@ static inline int block_flush(struct block_device *blk)
 	return cdev_flush(&blk->cdev);
 }
 
+struct block_device *cdev_get_block_device(struct cdev *cdev);
+
 #endif /* __BLOCK_H */
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

