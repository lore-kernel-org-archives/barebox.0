Delivery-date: Wed, 17 Jul 2024 08:34:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEt-0005bw-2U
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEs-0004PI-Vh
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1AjGGk5li+dMjvA738JzgPTSpimSgDKla6WP6+a1XLY=; b=KlERYB/VuqtwJsqgoa2N0hcfQZ
	o1MRK8gy7AQYtsTdRsw9MqhQsJyBxcZAAU2pZk7wqKCzW66zFoZ5unCbKlVPBw0wTK+8FsLYFCiwO
	1CrFgiOr87hEsVF3IXsmY8PqzW3CVKIWdcbRnZm/J1ZmgY0uUFxfxM5nVdvRtAsH3n+dHiGuiZhbg
	fIUkInOLM4UjvA4hbzyFwEPurzK+N/XDWMja4qXiuKVpRmNLFDu2HTiTQdkVyZAwOI/AH6o3QtImC
	vwF2mBD7oXPeu6PlMaIDhVvn6jzkxCQUux5qzx5k3PHlACsOflpgnCCJcf0QntPRLI6WK8CYQIJP3
	VLThgcRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEN-0000000CrGK-0Inw;
	Wed, 17 Jul 2024 06:33:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEI-0000000CrDk-1KyC
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045X-Jp; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-0009QE-5z; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00BnEX-0G;
	Wed, 17 Jul 2024 08:33:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Richard Weinberger <richard@sigma-star.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:33:26 +0200
Message-Id: <20240717063328.2810835-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233334_390066_D4B56319 
X-CRM114-Status: GOOD (  15.35  )
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
Subject: [PATCH 4/6] squashfs: more metadata hardening
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit 71755ee5350b63fb1f283de8561cdb61b47f4d1d:

| Author:     Linus Torvalds <torvalds@linux-foundation.org>
| AuthorDate: Thu Aug 2 08:43:35 2018 -0700
|
| The squashfs fragment reading code doesn't actually verify that the
| fragment is inside the fragment table.  The end result _is_ verified to
| be inside the image when actually reading the fragment data, but before
| that is done, we may end up taking a page fault because the fragment
| table itself might not even exist.
|
| Another report from Anatoly and his endless squashfs image fuzzing.
|
| Reported-by: Анатолий Тросиненко <anatoly.trosinenko@gmail.com>
| Acked-by:: Phillip Lougher <phillip.lougher@gmail.com>,
| Cc: Willy Tarreau <w@1wt.eu>
| Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Reported-by: Richard Weinberger <richard@sigma-star.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/fragment.c       | 13 +++++++++----
 fs/squashfs/squashfs_fs_sb.h |  1 +
 fs/squashfs/super.c          |  5 +++--
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/fs/squashfs/fragment.c b/fs/squashfs/fragment.c
index 343444000e02..9d60741ce5f0 100644
--- a/fs/squashfs/fragment.c
+++ b/fs/squashfs/fragment.c
@@ -44,11 +44,16 @@ int squashfs_frag_lookup(struct super_block *sb, unsigned int fragment,
 				u64 *fragment_block)
 {
 	struct squashfs_sb_info *msblk = sb->s_fs_info;
-	int block = SQUASHFS_FRAGMENT_INDEX(fragment);
-	int offset = SQUASHFS_FRAGMENT_INDEX_OFFSET(fragment);
-	u64 start_block = le64_to_cpu(msblk->fragment_index[block]);
+	int block, offset, size;
 	struct squashfs_fragment_entry fragment_entry;
-	int size;
+	u64 start_block;
+
+	if (fragment >= msblk->fragments)
+		return -EIO;
+	block = SQUASHFS_FRAGMENT_INDEX(fragment);
+	offset = SQUASHFS_FRAGMENT_INDEX_OFFSET(fragment);
+
+	start_block = le64_to_cpu(msblk->fragment_index[block]);
 
 	size = squashfs_read_metadata(sb, &fragment_entry, &start_block,
 					&offset, sizeof(fragment_entry));
diff --git a/fs/squashfs/squashfs_fs_sb.h b/fs/squashfs/squashfs_fs_sb.h
index c6fc37d48f25..8ac5a1f3b6e3 100644
--- a/fs/squashfs/squashfs_fs_sb.h
+++ b/fs/squashfs/squashfs_fs_sb.h
@@ -75,6 +75,7 @@ struct squashfs_sb_info {
 	unsigned short				block_log;
 	long long				bytes_used;
 	unsigned int				inodes;
+	unsigned int				fragments;
 	int					xattr_ids;
 	struct cdev				*cdev;
 	struct device				*dev;
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index 2e34c0e540df..f3dac6de1527 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -189,6 +189,7 @@ static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
 	msblk->inode_table = le64_to_cpu(sblk->inode_table_start);
 	msblk->directory_table = le64_to_cpu(sblk->directory_table_start);
 	msblk->inodes = le32_to_cpu(sblk->inodes);
+	msblk->fragments = le32_to_cpu(sblk->fragments);
 	flags = le16_to_cpu(sblk->flags);
 
 	TRACE("Found valid superblock on %pg\n", sb->s_bdev);
@@ -199,7 +200,7 @@ static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
 	TRACE("Filesystem size %lld bytes\n", msblk->bytes_used);
 	TRACE("Block size %d\n", msblk->block_size);
 	TRACE("Number of inodes %d\n", msblk->inodes);
-	TRACE("Number of fragments %d\n", le32_to_cpu(sblk->fragments));
+	TRACE("Number of fragments %d\n", msblk->fragments);
 	TRACE("Number of ids %d\n", le16_to_cpu(sblk->no_ids));
 	TRACE("sblk->inode_table_start %llx\n", msblk->inode_table);
 	TRACE("sblk->directory_table_start %llx\n", msblk->directory_table);
@@ -253,7 +254,7 @@ static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
 		goto handle_fragments;
 
 handle_fragments:
-	fragments = le32_to_cpu(sblk->fragments);
+	fragments = msblk->fragments;
 	if (fragments == 0)
 		goto check_directory_table;
 	msblk->fragment_cache = squashfs_cache_init("fragment",
-- 
2.39.2



