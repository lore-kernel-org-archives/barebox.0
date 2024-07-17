Delivery-date: Wed, 17 Jul 2024 08:34:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEu-0005cL-22
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEt-0004Pm-DP
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqTzrPJUGCSnWlcIghJTB8MWydZdUvaFs7l+UEgOAjo=; b=W40ICTy+PTbYSQ1/LSyzkI69se
	g9Q6R/TLR4c21z6po7D1dQMU4Hp367vjHZRfJDFYHuXgbu//VXzWdE1ghJo9yLcxb7FYe97KhhZpv
	Rnnr3OuONxRwcZ1BYWJkWdReX+Yzw0w1bowkt0ERWbJAEFn0fUodo1NRDjSLrhmrQX0FzJECHZ3DA
	yWjvfN0Z1uprDMNtbC4Gbrw7da+VgbxubxYbvQCm9pQBL0q/70AolZAqirpdmeDRB2ahPIAakKVTr
	BuwngZxSET4zMzyl5WyMc5w7Yf6xio81M9bzpkKJcAD6fShk1xbCXIlq4oIRQoA+1/VYKtGPDwNVl
	psgZ2gYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEM-0000000CrFh-1caY;
	Wed, 17 Jul 2024 06:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEI-0000000CrDm-1KWb
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045U-Im; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-0009Q5-1M; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEF-00BnEX-34;
	Wed, 17 Jul 2024 08:33:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Richard Weinberger <richard@sigma-star.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:33:23 +0200
Message-Id: <20240717063328.2810835-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233334_385793_42792DC4 
X-CRM114-Status: GOOD (  17.17  )
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
Subject: [PATCH 1/6] squashfs: be more careful about metadata corruption
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit 01cfb7937a9af2abb1136c7e89fbf3fd92952956:

| Author:     Linus Torvalds <torvalds@linux-foundation.org>
| AuthorDate: Sun Jul 29 12:44:46 2018 -0700
|
| Anatoly Trosinenko reports that a corrupted squashfs image can cause a
| kernel oops.  It turns out that squashfs can end up being confused about
| negative fragment lengths.
|
| The regular squashfs_read_data() does check for negative lengths, but
| squashfs_read_metadata() did not, and the fragment size code just
| blindly trusted the on-disk value.  Fix both the fragment parsing and
| the metadata reading code.
|
| Reported-by: Anatoly Trosinenko <anatoly.trosinenko@gmail.com>
| Cc: Al Viro <viro@zeniv.linux.org.uk>
| Cc: Phillip Lougher <phillip@squashfs.org.uk>
| Cc: stable@kernel.org
| Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Reported-by: Richard Weinberger <richard@sigma-star.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/cache.c       |  3 +++
 fs/squashfs/file.c        |  8 ++++++--
 fs/squashfs/fragment.c    |  4 +---
 fs/squashfs/squashfs_fs.h | 11 +++++++++++
 4 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/fs/squashfs/cache.c b/fs/squashfs/cache.c
index 766bc99493b9..5a027d6fe5d0 100644
--- a/fs/squashfs/cache.c
+++ b/fs/squashfs/cache.c
@@ -284,6 +284,9 @@ int squashfs_read_metadata(struct super_block *sb, void *buffer,
 
 	TRACE("Entered squashfs_read_metadata [%llx:%x]\n", *block, *offset);
 
+	if (unlikely(length < 0))
+		return -EIO;
+
 	while (length) {
 		entry = squashfs_cache_get(sb, msblk->block_cache, *block, 0);
 		if (entry->error) {
diff --git a/fs/squashfs/file.c b/fs/squashfs/file.c
index 0806f90b9667..1413ef7ecbd8 100644
--- a/fs/squashfs/file.c
+++ b/fs/squashfs/file.c
@@ -169,7 +169,11 @@ static long long read_indexes(struct super_block *sb, int n,
 		}
 
 		for (i = 0; i < blocks; i++) {
-			int size = le32_to_cpu(blist[i]);
+			int size = squashfs_block_size(blist[i]);
+			if (size < 0) {
+				err = size;
+				goto failure;
+			}
 			block += SQUASHFS_COMPRESSED_SIZE_BLOCK(size);
 		}
 		n -= blocks;
@@ -340,7 +344,7 @@ static int read_blocklist(struct inode *inode, int index, u64 *block)
 			sizeof(size));
 	if (res < 0)
 		return res;
-	return le32_to_cpu(size);
+	return squashfs_block_size(size);
 }
 
 /* Copy data into page cache  */
diff --git a/fs/squashfs/fragment.c b/fs/squashfs/fragment.c
index 2b99ff52e334..343444000e02 100644
--- a/fs/squashfs/fragment.c
+++ b/fs/squashfs/fragment.c
@@ -56,9 +56,7 @@ int squashfs_frag_lookup(struct super_block *sb, unsigned int fragment,
 		return size;
 
 	*fragment_block = le64_to_cpu(fragment_entry.start_block);
-	size = le32_to_cpu(fragment_entry.size);
-
-	return size;
+	return squashfs_block_size(fragment_entry.size);
 }
 
 
diff --git a/fs/squashfs/squashfs_fs.h b/fs/squashfs/squashfs_fs.h
index 279a3db1bcb2..6ce6ed01ba76 100644
--- a/fs/squashfs/squashfs_fs.h
+++ b/fs/squashfs/squashfs_fs.h
@@ -1,5 +1,10 @@
 #ifndef SQUASHFS_FS
 #define SQUASHFS_FS
+
+#include <asm/byteorder.h>
+#include <linux/types.h>
+#include <linux/errno.h>
+
 /*
  * Squashfs
  *
@@ -125,6 +130,12 @@
 
 #define SQUASHFS_COMPRESSED_BLOCK(B)	(!((B) & SQUASHFS_COMPRESSED_BIT_BLOCK))
 
+static inline int squashfs_block_size(__le32 raw)
+{
+	u32 size = le32_to_cpu(raw);
+	return (size >> 25) ? -EIO : size;
+}
+
 /*
  * Inode number ops.  Inodes consist of a compressed block number, and an
  * uncompressed offset within that block
-- 
2.39.2



