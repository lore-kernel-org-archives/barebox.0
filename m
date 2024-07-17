Delivery-date: Wed, 17 Jul 2024 08:34:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEr-0005b9-2m
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEq-0004Nh-Of
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nftSVbJKUPnBR8z9Hida1R5IMgeWVv0vVHb2MFEv3PU=; b=SzZ0NWUSsShdFCpn0AOgUSQCJv
	X4Soijbefs83IgXZDfnLAqRnKU+Qyi9Ife6i/HAPHUyvuzEXIjbqE+bRRe0MYNkZGTPsuNoYThsoC
	DCLF93PLA+jPF7ClWTitybSHrqusB2atmbKtVrRgPyO0uJ3TuByptLoXxUR9q2iXW/5WIUyYq4biO
	2/N1cViHDxYdOIdqSe6ntU4YD3fmi1nSvFrxif6jKJrOHhE7IWAFViEbTm2BGeUogh/7KpSJvZvwf
	mbluk7c3U9027iWaFt2Hfpj0WJYpOKX7cZvcYn7RXeBjWdngNYLVvj+cz/ltZ24XZfndUHi/z8/KX
	eywxFQvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEL-0000000CrFa-3KF0;
	Wed, 17 Jul 2024 06:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEI-0000000CrDj-0DkD
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045W-Iv; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-0009QB-4T; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00BnEX-07;
	Wed, 17 Jul 2024 08:33:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Richard Weinberger <richard@sigma-star.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:33:25 +0200
Message-Id: <20240717063328.2810835-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233334_357338_0B28384B 
X-CRM114-Status: GOOD (  18.08  )
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
Subject: [PATCH 3/6] squashfs metadata 2: electric boogaloo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit cdbb65c4c7ead680ebe54f4f0d486e2847a500ea:

| Author:     Linus Torvalds <torvalds@linux-foundation.org>
| AuthorDate: Wed Aug 1 10:38:43 2018 -0700
|
| Anatoly continues to find issues with fuzzed squashfs images.
|
| This time, corrupt, missing, or undersized data for the page filling
| wasn't checked for, because the squashfs_{copy,read}_cache() functions
| did the squashfs_copy_data() call without checking the resulting data
| size.
|
| Which could result in the page cache pages being incompletely filled in,
| and no error indication to the user space reading garbage data.
|
| So make a helper function for the "fill in pages" case, because the
| exact same incomplete sequence existed in two places.
|
| [ I should have made a squashfs branch for these things, but I didn't
|   intend to start doing them in the first place.
|
|   My historical connection through cramfs is why I got into looking at
|   these issues at all, and every time I (continue to) think it's a
|   one-off.
|
|   Because _this_ time is always the last time. Right?   - Linus ]
|
| Reported-by: Anatoly Trosinenko <anatoly.trosinenko@gmail.com>
| Tested-by: Willy Tarreau <w@1wt.eu>
| Cc: Al Viro <viro@zeniv.linux.org.uk>
| Cc: Phillip Lougher <phillip@squashfs.org.uk>
| Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Reported-by: Richard Weinberger <richard@sigma-star.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/file.c       | 23 +++++++++++++++++++----
 fs/squashfs/file_cache.c |  5 +++--
 fs/squashfs/squashfs.h   |  2 +-
 3 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/fs/squashfs/file.c b/fs/squashfs/file.c
index 1413ef7ecbd8..8316f0edb645 100644
--- a/fs/squashfs/file.c
+++ b/fs/squashfs/file.c
@@ -347,12 +347,23 @@ static int read_blocklist(struct inode *inode, int index, u64 *block)
 	return squashfs_block_size(size);
 }
 
+static int squashfs_fill_page(char *dest, struct squashfs_cache_entry *buffer,
+			      int offset, int avail)
+{
+	int copied;
+
+	copied = squashfs_copy_data(dest, buffer, offset, avail);
+	memset(dest + avail, 0, PAGE_CACHE_SIZE - avail);
+
+	return copied == avail ? 0 : -EILSEQ;
+}
+
 /* Copy data into page cache  */
-void squashfs_copy_cache(struct page *page, struct squashfs_cache_entry *buffer,
+int squashfs_copy_cache(struct page *page, struct squashfs_cache_entry *buffer,
 	int bytes, int offset)
 {
-	int i;
 	struct squashfs_page *sq_page = squashfs_page(page);
+	int ret, i;
 
 	/*
 	 * Loop copying datablock into pages.  As the datablock likely covers
@@ -366,10 +377,14 @@ void squashfs_copy_cache(struct page *page, struct squashfs_cache_entry *buffer,
 
 		TRACE("bytes %d, i %d, available_bytes %d\n", bytes, i, avail);
 
-		squashfs_copy_data(sq_page->buf[i], buffer, offset, avail);
-		memset(sq_page->buf[i] + avail, 0, PAGE_CACHE_SIZE - avail);
+		ret = squashfs_fill_page(sq_page->buf[i], buffer, offset, avail);
+		if (ret)
+			return ret;
+
 		sq_page->idx++;
 	}
+
+	return 0;
 }
 
 /* Read datablock stored packed inside a fragment (tail-end packed block) */
diff --git a/fs/squashfs/file_cache.c b/fs/squashfs/file_cache.c
index 9443e4558d1a..fbd829849d18 100644
--- a/fs/squashfs/file_cache.c
+++ b/fs/squashfs/file_cache.c
@@ -24,11 +24,12 @@ int squashfs_readpage_block(struct page *page, u64 block, int bsize)
 		block, bsize);
 	int res = buffer->error;
 
+	if (!res)
+		res = squashfs_copy_cache(page, buffer, buffer->length, 0);
+
 	if (res)
 		ERROR("Unable to read page, block %llx, size %x\n", block,
 			bsize);
-	else
-		squashfs_copy_cache(page, buffer, buffer->length, 0);
 
 	squashfs_cache_put(buffer);
 	return res;
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index d22e83dc3c55..456021dcfd3e 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -93,7 +93,7 @@ extern int squashfs_frag_lookup(struct super_block *, unsigned int, u64 *);
 extern __le64 *squashfs_read_fragment_index_table(struct super_block *,
 				u64, u64, unsigned int);
 /* file.c */
-void squashfs_copy_cache(struct page *, struct squashfs_cache_entry *, int,
+int squashfs_copy_cache(struct page *, struct squashfs_cache_entry *, int,
 				int);
 extern int squashfs_readpage(struct file *file, struct page *page);
 
-- 
2.39.2



