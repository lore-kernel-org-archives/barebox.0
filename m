Delivery-date: Wed, 17 Jul 2024 08:34:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEw-0005dB-2K
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEv-0004Ru-Td
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5/PjLy+Jqo7VU9Eq9ZSqWdNJD88dAPBfnY/ZMar/HEQ=; b=zM5MvdH862KXXe5Bn43t3c64kw
	N0iXkYJmwxU72sXZKPMQjGuO8l03biYw8VWmcrWe2pneBMpFV3Xpfwy7LLMFBguekHCIdLqdDXLAh
	VlYurKpsc85H64s3YR1SIL1VSVQ2/E4dQI1RpWkwGSLRFkdwCyUTaW2inqeLfNeH2O7cw90OtyXLF
	RQpQ13vgUbx0sDc8Bb9XOJiYkCLSMxHmBbmA3p3ZykN4A++u700Ozdm/n6P6Ttf4qgtXNBu3k6gbL
	7cnc6Y49BClOlE5wf4UUJapx0WBenIPg9E6Gl9cshXGBkcuVx2fbwFkYShuIPoKSLGkuDt8vOUVXf
	TXwrOBzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEU-0000000CrLy-3S8C;
	Wed, 17 Jul 2024 06:33:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEP-0000000CrHq-3n9X
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045d-Ku; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-0009QH-7I; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00BnEX-0Q;
	Wed, 17 Jul 2024 08:33:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Richard Weinberger <richard@sigma-star.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:33:27 +0200
Message-Id: <20240717063328.2810835-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233342_014954_D52AD0C2 
X-CRM114-Status: GOOD (  17.97  )
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
Subject: [PATCH 5/6] Squashfs: Compute expected length from inode size rather than block length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit a3f94cb99a854fa381fe7fadd97c4f61633717a5:

| Author:     Phillip Lougher <phillip@squashfs.org.uk>
| AuthorDate: Thu Aug 2 16:45:15 2018 +0100
|
| Previously in squashfs_readpage() when copying data into the page
| cache, it used the length of the datablock read from the filesystem
| (after decompression).  However, if the filesystem has been corrupted
| this data block may be short, which will leave pages unfilled.
|
| The fix for this is to compute the expected number of bytes to copy
| from the inode size, and use this to detect if the block is short.
|
| Signed-off-by: Phillip Lougher <phillip@squashfs.org.uk>
| Tested-by: Willy Tarreau <w@1wt.eu>
| Cc: Анатолий Тросиненко <anatoly.trosinenko@gmail.com>
| Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Reported-by: Richard Weinberger <richard@sigma-star.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/file.c       | 26 ++++++++++----------------
 fs/squashfs/file_cache.c |  4 ++--
 fs/squashfs/squashfs.h   |  2 +-
 3 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/fs/squashfs/file.c b/fs/squashfs/file.c
index 8316f0edb645..16914415299a 100644
--- a/fs/squashfs/file.c
+++ b/fs/squashfs/file.c
@@ -388,10 +388,9 @@ int squashfs_copy_cache(struct page *page, struct squashfs_cache_entry *buffer,
 }
 
 /* Read datablock stored packed inside a fragment (tail-end packed block) */
-static int squashfs_readpage_fragment(struct page *page)
+static int squashfs_readpage_fragment(struct page *page, int expected)
 {
 	struct inode *inode = page->inode;
-	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
 	struct squashfs_cache_entry *buffer = squashfs_get_fragment(inode->i_sb,
 		squashfs_i(inode)->fragment_block,
 		squashfs_i(inode)->fragment_size);
@@ -404,24 +403,16 @@ static int squashfs_readpage_fragment(struct page *page)
 			squashfs_i(inode)->fragment_block,
 			squashfs_i(inode)->fragment_size);
 	else
-		squashfs_copy_cache(page, buffer, i_size_read(inode) &
-			(msblk->block_size - 1),
+		squashfs_copy_cache(page, buffer, expected,
 			squashfs_i(inode)->fragment_offset);
 
 	squashfs_cache_put(buffer);
 	return res;
 }
 
-static int squashfs_readpage_sparse(struct page *page, int index, int file_end)
+static int squashfs_readpage_sparse(struct page *page, int expected)
 {
-	struct inode *inode = page->inode;
-	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
-	int bytes = index == file_end ?
-			(i_size_read(inode) & (msblk->block_size - 1)) :
-			 msblk->block_size;
-
-	squashfs_copy_cache(page, NULL, bytes, 0);
-
+	squashfs_copy_cache(page, NULL, expected, 0);
 	return 0;
 }
 
@@ -431,6 +422,9 @@ int squashfs_readpage(struct file *file, struct page *page)
 	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
 	int index = page->index >> (msblk->block_log - PAGE_CACHE_SHIFT);
 	int file_end = i_size_read(inode) >> msblk->block_log;
+	int expected = index == file_end ?
+			(i_size_read(inode) & (msblk->block_size - 1)) :
+			 msblk->block_size;
 	int res;
 
 	TRACE("Entered squashfs_readpage, page index %lx, start block %llx\n",
@@ -448,11 +442,11 @@ int squashfs_readpage(struct file *file, struct page *page)
 			goto out;
 
 		if (bsize == 0)
-			res = squashfs_readpage_sparse(page, index, file_end);
+			res = squashfs_readpage_sparse(page, expected);
 		else
-			res = squashfs_readpage_block(page, block, bsize);
+			res = squashfs_readpage_block(page, block, bsize, expected);
 	} else
-		res = squashfs_readpage_fragment(page);
+		res = squashfs_readpage_fragment(page, expected);
 
 	if (!res)
 		return 0;
diff --git a/fs/squashfs/file_cache.c b/fs/squashfs/file_cache.c
index fbd829849d18..0b64be0994c7 100644
--- a/fs/squashfs/file_cache.c
+++ b/fs/squashfs/file_cache.c
@@ -17,7 +17,7 @@
 #include "squashfs.h"
 
 /* Read separately compressed datablock and memcopy into page cache */
-int squashfs_readpage_block(struct page *page, u64 block, int bsize)
+int squashfs_readpage_block(struct page *page, u64 block, int bsize, int expected)
 {
 	struct inode *i = page->inode;
 	struct squashfs_cache_entry *buffer = squashfs_get_datablock(i->i_sb,
@@ -25,7 +25,7 @@ int squashfs_readpage_block(struct page *page, u64 block, int bsize)
 	int res = buffer->error;
 
 	if (!res)
-		res = squashfs_copy_cache(page, buffer, buffer->length, 0);
+		res = squashfs_copy_cache(page, buffer, expected, 0);
 
 	if (res)
 		ERROR("Unable to read page, block %llx, size %x\n", block,
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 456021dcfd3e..1f2fee59d688 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -98,7 +98,7 @@ int squashfs_copy_cache(struct page *, struct squashfs_cache_entry *, int,
 extern int squashfs_readpage(struct file *file, struct page *page);
 
 /* file_xxx.c */
-extern int squashfs_readpage_block(struct page *, u64, int);
+extern int squashfs_readpage_block(struct page *, u64, int, int);
 
 /* id.c */
 extern int squashfs_get_id(struct super_block *, unsigned int, unsigned int *);
-- 
2.39.2



