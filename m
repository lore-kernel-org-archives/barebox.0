Delivery-date: Tue, 16 Apr 2024 08:18:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc99-002yue-1P
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:18:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc98-0000GA-60
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:18:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NSLmuDhD0ieE4H3iPBX04HgriR7fCQdMu66XAmCPcQI=; b=rJXpZ+BfCdH+WI
	XqCqhZK5fEpJmBW5wVQSmaXwGja64czlriINMMNin4O3hg3TmdzB/G4WjUccDqMW3MMV5FpfLD074
	P3SwuBGi+aLf2jSnRT3PAQEXBMfHBxX5sGdkp6whWmWL7jgARCItr4sJ/ZK8pJ7fRZCMgSn4Dd3oH
	5tHb7RsiXbNHMNIWJ8pEU7US0303lNxdUZ2XiU9Ov3lv6gPS03MdSgllMbL8lp3WCvLQrkJq0SXlu
	azRwjj1sVgTaSDAahC5SMhouAnMArK8Q1wqr/tSlNH7jm1tTBmV3Y53xqYApLKlSJe726l6D7T1Mb
	VM/rV2ZYg7KOw4Q3da/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwc8d-0000000B3Wk-2wh1;
	Tue, 16 Apr 2024 06:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwc8M-0000000B3M1-1Tse
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-0007oY-Ol; Tue, 16 Apr 2024 08:17:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-00CYir-Aq; Tue, 16 Apr 2024 08:17:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-005bWw-0j;
	Tue, 16 Apr 2024 08:17:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:17:29 +0200
Message-Id: <20240416061730.1335890-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_231734_853559_4D4E9727 
X-CRM114-Status: GOOD (  25.40  )
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
Cc: Juergen Borleis <jbe@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: jffs2: remove NAND write support entirely
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Juergen Borleis <jbe@pengutronix.de>

Our JFFS2 implementation refuses to work on NAND flashes because we lack
support for CONFIG_JFFS2_FS_WRITEBUFFER currently. JFFS2 is barely used
anymore and it seems unlikely that write support for it will ever be
added, so remove write support altogether. With this we can now safely
operate on NAND flashes.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/Kconfig       |  4 ++-
 fs/jffs2/fs.c          | 11 ------
 fs/jffs2/jffs2_fs_sb.h | 16 ---------
 fs/jffs2/nodelist.h    |  8 -----
 fs/jffs2/os-linux.h    | 79 ++++++++++--------------------------------
 fs/jffs2/scan.c        | 59 +------------------------------
 fs/jffs2/super.c       |  4 +--
 7 files changed, 23 insertions(+), 158 deletions(-)

diff --git a/fs/jffs2/Kconfig b/fs/jffs2/Kconfig
index 329e7b806a..76f2a9f70a 100644
--- a/fs/jffs2/Kconfig
+++ b/fs/jffs2/Kconfig
@@ -20,7 +20,7 @@ config FS_JFFS2_COMPRESSION_OPTIONS
 	  compression modules, if any, are enabled in JFFS2. Removing
 	  compressors can mean you cannot read existing file systems,
 	  and enabling experimental compressors can mean that you
-	  write a file system which cannot be read by a standard kernel.
+	  write a file system which cannot be read by the bootloader.
 
 	  If unsure, you should _definitely_ say 'N'.
 
@@ -30,6 +30,8 @@ config FS_JFFS2_COMPRESSION_ZLIB
 	bool
 	select ZLIB
 	prompt "ZLIB compression support"
+	help
+	  Enable zlib, if compression type 0x06 is missed at run-time.
 
 config FS_JFFS2_COMPRESSION_LZO
 	bool
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 6f2cbff6c9..a9831582bd 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -269,17 +269,6 @@ int jffs2_do_fill_super(struct super_block *sb, int silent)
 
 	c = JFFS2_SB_INFO(sb);
 
-#ifndef CONFIG_JFFS2_FS_WRITEBUFFER
-	if (c->mtd->type == MTD_NANDFLASH) {
-		pr_err("Cannot operate on NAND flash unless jffs2 NAND support is compiled in");
-		return -EINVAL;
-	}
-	if (c->mtd->type == MTD_DATAFLASH) {
-		pr_err("Cannot operate on DataFlash unless jffs2 DataFlash support is compiled in");
-		return -EINVAL;
-	}
-#endif
-
 	c->flash_size = c->mtd->size;
 	c->sector_size = c->mtd->erasesize;
 	blocks = c->flash_size / c->sector_size;
diff --git a/fs/jffs2/jffs2_fs_sb.h b/fs/jffs2/jffs2_fs_sb.h
index 20fa9a26a4..9e35a142e4 100644
--- a/fs/jffs2/jffs2_fs_sb.h
+++ b/fs/jffs2/jffs2_fs_sb.h
@@ -120,22 +120,6 @@ struct jffs2_sb_info {
 
 	uint32_t wbuf_pagesize; /* 0 for NOR and other flashes with no wbuf */
 
-#ifdef CONFIG_JFFS2_FS_WBUF_VERIFY
-	unsigned char *wbuf_verify; /* read-back buffer for verification */
-#endif
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	unsigned char *wbuf; /* Write-behind buffer for NAND flash */
-	uint32_t wbuf_ofs;
-	uint32_t wbuf_len;
-	struct jffs2_inodirty *wbuf_inodes;
-	struct rw_semaphore wbuf_sem;	/* Protects the write buffer */
-
-	struct delayed_work wbuf_dwork; /* write-buffer write-out work */
-
-	unsigned char *oobbuf;
-	int oobavail; /* How many bytes are available for JFFS2 in OOB */
-#endif
-
 	struct jffs2_summary *summary;		/* Summary information */
 	struct jffs2_mount_opts mount_opts;
 
diff --git a/fs/jffs2/nodelist.h b/fs/jffs2/nodelist.h
index b5f7716ce2..d8687319c7 100644
--- a/fs/jffs2/nodelist.h
+++ b/fs/jffs2/nodelist.h
@@ -489,14 +489,6 @@ int jffs2_do_mount_fs(struct jffs2_sb_info *c);
 int jffs2_erase_pending_blocks(struct jffs2_sb_info *c, int count);
 void jffs2_free_jeb_node_refs(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb);
 
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-/* wbuf.c */
-int jffs2_flush_wbuf_gc(struct jffs2_sb_info *c, uint32_t ino);
-int jffs2_flush_wbuf_pad(struct jffs2_sb_info *c);
-int jffs2_check_nand_cleanmarker(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb);
-int jffs2_write_nand_cleanmarker(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb);
-#endif
-
 #include "debug.h"
 
 #endif /* __JFFS2_NODELIST_H__ */
diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index 29915715bb..424acbdc4d 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -11,6 +11,8 @@
 #ifndef __JFFS2_OS_LINUX_H__
 #define __JFFS2_OS_LINUX_H__
 
+#include <linux/mtd/mtd.h>
+
 /* JFFS2 uses Linux mode bits natively -- no need for conversion */
 #define os_to_jffs2_mode(x) (x)
 #define jffs2_to_os_mode(x) (x)
@@ -67,11 +69,21 @@ struct jffs2_file {
 	unsigned int offset;
 };
 
-#define jffs2_is_readonly(c) (OFNI_BS_2SFFJ(c)->s_flags & SB_RDONLY)
+/* Read-only support */
+#define jffs2_is_readonly(c) (1)
 
 #define SECTOR_ADDR(x) ( (((unsigned long)(x) / c->sector_size) * c->sector_size) )
-#ifndef CONFIG_JFFS2_FS_WRITEBUFFER
 
+static inline int jffs2_flash_read(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, u_char *buf)
+{
+	return mtd_read((c)->mtd, ofs, len, retlen, buf);
+}
+
+/* support run-time speed-up while scanning NAND flashs */
+#define jffs2_cleanmarker_oob(c) (c->mtd->type == MTD_NANDFLASH)
+/* no write buffer, due to read-only suppport */
+#define jffs2_wbuf_dirty(c) (0)
+#define jffs2_is_writebuffered(c) (0)
 
 #ifdef CONFIG_JFFS2_SUMMARY
 #define jffs2_can_mark_obsolete(c) (0)
@@ -79,74 +91,19 @@ struct jffs2_file {
 #define jffs2_can_mark_obsolete(c) (1)
 #endif
 
-#define jffs2_is_writebuffered(c) (0)
-#define jffs2_cleanmarker_oob(c) (0)
-#define jffs2_write_nand_cleanmarker(c,jeb) (-EIO)
-
-#define jffs2_flash_write(c, ofs, len, retlen, buf) jffs2_flash_direct_write(c, ofs, len, retlen, buf)
-#define jffs2_flash_read(c, ofs, len, retlen, buf) (mtd_read((c)->mtd, ofs, len, retlen, buf))
-#define jffs2_flush_wbuf_pad(c) ({ do{} while(0); (void)(c), 0; })
-#define jffs2_flush_wbuf_gc(c, i) ({ do{} while(0); (void)(c), (void) i, 0; })
-#define jffs2_write_nand_badblock(c,jeb,bad_offset) (1)
 #define jffs2_nand_flash_setup(c) (0)
 #define jffs2_nand_flash_cleanup(c) do {} while(0)
-#define jffs2_wbuf_dirty(c) (0)
-#define jffs2_flash_writev(a,b,c,d,e,f) jffs2_flash_direct_writev(a,b,c,d,e)
-#define jffs2_wbuf_timeout NULL
-#define jffs2_wbuf_process NULL
+
 #define jffs2_dataflash(c) (0)
 #define jffs2_dataflash_setup(c) (0)
 #define jffs2_dataflash_cleanup(c) do {} while (0)
-#define jffs2_nor_wbuf_flash(c) (0)
-#define jffs2_nor_wbuf_flash_setup(c) (0)
-#define jffs2_nor_wbuf_flash_cleanup(c) do {} while (0)
+
 #define jffs2_ubivol(c) (0)
 #define jffs2_ubivol_setup(c) (0)
 #define jffs2_ubivol_cleanup(c) do {} while (0)
-#define jffs2_dirty_trigger(c) do {} while (0)
-
-#else /* NAND and/or ECC'd NOR support present */
-
-#define jffs2_is_writebuffered(c) (c->wbuf != NULL)
-
-#ifdef CONFIG_JFFS2_SUMMARY
-#define jffs2_can_mark_obsolete(c) (0)
-#else
-#define jffs2_can_mark_obsolete(c) (c->mtd->flags & (MTD_BIT_WRITEABLE))
-#endif
-
-#define jffs2_cleanmarker_oob(c) (c->mtd->type == MTD_NANDFLASH)
 
-#define jffs2_wbuf_dirty(c) (!!(c)->wbuf_len)
-
-/* wbuf.c */
-int jffs2_flash_writev(struct jffs2_sb_info *c, const struct kvec *vecs, unsigned long count, loff_t to, size_t *retlen, uint32_t ino);
-int jffs2_flash_write(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, const u_char *buf);
-int jffs2_flash_read(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, u_char *buf);
-int jffs2_check_oob_empty(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb,int mode);
-int jffs2_check_nand_cleanmarker(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb);
-int jffs2_write_nand_cleanmarker(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb);
-int jffs2_write_nand_badblock(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb, uint32_t bad_offset);
-void jffs2_wbuf_timeout(unsigned long data);
-void jffs2_wbuf_process(void *data);
-int jffs2_flush_wbuf_gc(struct jffs2_sb_info *c, uint32_t ino);
-int jffs2_flush_wbuf_pad(struct jffs2_sb_info *c);
-int jffs2_nand_flash_setup(struct jffs2_sb_info *c);
-void jffs2_nand_flash_cleanup(struct jffs2_sb_info *c);
-
-#define jffs2_dataflash(c) (c->mtd->type == MTD_DATAFLASH)
-int jffs2_dataflash_setup(struct jffs2_sb_info *c);
-void jffs2_dataflash_cleanup(struct jffs2_sb_info *c);
-#define jffs2_ubivol(c) (c->mtd->type == MTD_UBIVOLUME)
-int jffs2_ubivol_setup(struct jffs2_sb_info *c);
-void jffs2_ubivol_cleanup(struct jffs2_sb_info *c);
-
-#define jffs2_nor_wbuf_flash(c) (c->mtd->type == MTD_NORFLASH && ! (c->mtd->flags & MTD_BIT_WRITEABLE))
-int jffs2_nor_wbuf_flash_setup(struct jffs2_sb_info *c);
-void jffs2_nor_wbuf_flash_cleanup(struct jffs2_sb_info *c);
-void jffs2_dirty_trigger(struct jffs2_sb_info *c);
-
-#endif /* WRITEBUFFER */
+#define jffs2_nor_wbuf_flash(c) (0)
+#define jffs2_nor_wbuf_flash_cleanup(c) do {} while (0)
 
 /* background.c */
 int jffs2_start_garbage_collect_thread(struct jffs2_sb_info *c);
diff --git a/fs/jffs2/scan.c b/fs/jffs2/scan.c
index 0d74a8f51f..039ea399e4 100644
--- a/fs/jffs2/scan.c
+++ b/fs/jffs2/scan.c
@@ -47,12 +47,7 @@ static int jffs2_scan_dirent_node(struct jffs2_sb_info *c, struct jffs2_eraseblo
 static inline int min_free(struct jffs2_sb_info *c)
 {
 	uint32_t min = 2 * sizeof(struct jffs2_raw_inode);
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	if (!jffs2_can_mark_obsolete(c) && min < c->wbuf_pagesize)
-		return c->wbuf_pagesize;
-#endif
 	return min;
-
 }
 
 static inline uint32_t EMPTY_SCAN_SIZE(uint32_t sector_size) {
@@ -229,20 +224,7 @@ int jffs2_scan_medium(struct jffs2_sb_info *c)
 		c->dirty_size -= c->nextblock->dirty_size;
 		c->nextblock->dirty_size = 0;
 	}
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	if (!jffs2_can_mark_obsolete(c) && c->wbuf_pagesize && c->nextblock && (c->nextblock->free_size % c->wbuf_pagesize)) {
-		/* If we're going to start writing into a block which already
-		   contains data, and the end of the data isn't page-aligned,
-		   skip a little and align it. */
-
-		uint32_t skip = c->nextblock->free_size % c->wbuf_pagesize;
-
-		jffs2_dbg(1, "%s(): Skipping %d bytes in nextblock to ensure page alignment\n",
-			  __func__, skip);
-		jffs2_prealloc_raw_node_refs(c, c->nextblock, 1);
-		jffs2_scan_dirty_space(c, c->nextblock, skip);
-	}
-#endif
+
 	if (c->nr_erasing_blocks) {
 		if ( !c->used_size && ((c->nr_free_blocks+empty_blocks+bad_blocks)!= c->nr_blocks || bad_blocks == c->nr_blocks) ) {
 			pr_notice("Cowardly refusing to erase blocks on filesystem with no valid JFFS2 nodes\n");
@@ -424,37 +406,11 @@ static int jffs2_scan_eraseblock (struct jffs2_sb_info *c, struct jffs2_eraseblo
 	int err;
 	int noise = 0;
 
-
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	int cleanmarkerfound = 0;
-#endif
-
 	ofs = jeb->offset;
 	prevofs = jeb->offset - 1;
 
 	jffs2_dbg(1, "%s(): Scanning block at 0x%x\n", __func__, ofs);
 
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	if (jffs2_cleanmarker_oob(c)) {
-		int ret;
-
-		if (mtd_block_isbad(c->mtd, jeb->offset))
-			return BLK_STATE_BADBLOCK;
-
-		ret = jffs2_check_nand_cleanmarker(c, jeb);
-		jffs2_dbg(2, "jffs_check_nand_cleanmarker returned %d\n", ret);
-
-		/* Even if it's not found, we still scan to see
-		   if the block is empty. We use this information
-		   to decide whether to erase it or not. */
-		switch (ret) {
-		case 0:		cleanmarkerfound = 1; break;
-		case 1: 	break;
-		default: 	return ret;
-		}
-	}
-#endif
-
 	if (jffs2_sum_active()) {
 		struct jffs2_sum_marker *sm;
 		void *sumptr = NULL;
@@ -548,19 +504,6 @@ static int jffs2_scan_eraseblock (struct jffs2_sb_info *c, struct jffs2_eraseblo
 		ofs += 4;
 
 	if (ofs == max_ofs) {
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-		if (jffs2_cleanmarker_oob(c)) {
-			/* scan oob, take care of cleanmarker */
-			int ret = jffs2_check_oob_empty(c, jeb, cleanmarkerfound);
-			jffs2_dbg(2, "jffs2_check_oob_empty returned %d\n",
-				  ret);
-			switch (ret) {
-			case 0:		return cleanmarkerfound ? BLK_STATE_CLEANMARKER : BLK_STATE_ALLFF;
-			case 1: 	return BLK_STATE_ALLDIRTY;
-			default: 	return ret;
-			}
-		}
-#endif
 		jffs2_dbg(1, "Block at 0x%08x is empty (erased)\n",
 			  jeb->offset);
 		if (c->cleanmarker_size == 0)
diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index 37b3f328c6..2829de9abb 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -106,9 +106,7 @@ static int __init init_jffs2_fs(void)
 	BUILD_BUG_ON(sizeof(struct jffs2_raw_summary) != 32);
 
 	pr_info("JFFS version 2.2."
-#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
-	       " (NAND)"
-#endif
+	       " (NAND ro)"
 #ifdef CONFIG_JFFS2_SUMMARY
 	       " (SUMMARY) "
 #endif
-- 
2.39.2



