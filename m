Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXZPC-0004XU-TZ
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 14:20:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 15:20:16 +0100
Message-Id: <1323094816-22324-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix cramfs support broken since zlib update
To: barebox@lists.infradead.org

cramfs does not compile since we updated zlib to the kernel
version. Fix this by using the kernel version of uncompress.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c         |    2 +-
 fs/cramfs/uncompress.c     |   93 ++++++++++++++++---------------------------
 include/cramfs/cramfs_fs.h |    4 +-
 3 files changed, 38 insertions(+), 61 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index b9ab50f..bdbb47e 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -337,7 +337,7 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 		if (priv->curr_base < 0 || priv->curr_base != base) {
 
 			cdev_read(priv->cdev, cramfs_read_buf, 4096, base, 0);
-			priv->curr_block_len = cramfs_uncompress_block(priv->buf,
+			priv->curr_block_len = cramfs_uncompress_block(priv->buf, 4096,
 					cramfs_read_buf, 4096);
 			if (priv->curr_block_len <= 0)
 				break;
diff --git a/fs/cramfs/uncompress.c b/fs/cramfs/uncompress.c
index 659869b..b7887bd 100644
--- a/fs/cramfs/uncompress.c
+++ b/fs/cramfs/uncompress.c
@@ -1,12 +1,7 @@
 /*
  * uncompress.c
  *
- * Copyright (C) 1999 Linus Torvalds
- * Copyright (C) 2000-2002 Transmeta Corporation
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License (Version 2) as
- * published by the Free Software Foundation.
+ * (C) Copyright 1999 Linus Torvalds
  *
  * cramfs interfaces to the uncompression library. There's really just
  * three entrypoints:
@@ -22,81 +17,63 @@
 
 #include <common.h>
 #include <malloc.h>
-#include <watchdog.h>
-#include <zlib.h>
+#include <linux/kernel.h>
+#include <errno.h>
+#include <linux/zlib.h>
+#include <asm/byteorder.h>
+#include <cramfs/cramfs_fs.h>
 
 static z_stream stream;
-
-#define ZALLOC_ALIGNMENT	16
-
-static void *zalloc (void *x, unsigned items, unsigned size)
-{
-	void *p;
-
-	size *= items;
-	size = (size + ZALLOC_ALIGNMENT - 1) & ~(ZALLOC_ALIGNMENT - 1);
-
-	p = malloc (size);
-
-	return (p);
-}
-
-static void zfree (void *x, void *addr, unsigned nb)
-{
-	free (addr);
-}
+static int initialized;
 
 /* Returns length of decompressed data. */
-int cramfs_uncompress_block (void *dst, void *src, int srclen)
+int cramfs_uncompress_block(void *dst, int dstlen, void *src, int srclen)
 {
 	int err;
 
-	inflateReset (&stream);
-
 	stream.next_in = src;
 	stream.avail_in = srclen;
 
 	stream.next_out = dst;
-	stream.avail_out = 4096 * 2;
+	stream.avail_out = dstlen;
 
-	err = inflate (&stream, Z_FINISH);
+	err = zlib_inflateReset(&stream);
+	if (err != Z_OK) {
+		printk("zlib_inflateReset error %d\n", err);
+		zlib_inflateEnd(&stream);
+		zlib_inflateInit(&stream);
+	}
 
+	err = zlib_inflate(&stream, Z_FINISH);
 	if (err != Z_STREAM_END)
 		goto err;
 	return stream.total_out;
 
-      err:
-	/*printf ("Error %d while decompressing!\n", err); */
-	/*printf ("%p(%d)->%p\n", src, srclen, dst); */
-	return -1;
+err:
+	printk("Error %d while decompressing!\n", err);
+	printk("%p(%d)->%p(%d)\n", src, srclen, dst, dstlen);
+	return -EIO;
 }
 
-int cramfs_uncompress_init (void)
+int cramfs_uncompress_init(void)
 {
-	int err;
-
-	stream.zalloc = zalloc;
-	stream.zfree = zfree;
-	stream.next_in = 0;
-	stream.avail_in = 0;
-
-#if defined(CONFIG_HW_WATCHDOG) || defined(CONFIG_WATCHDOG)
-	stream.outcb = (cb_func) WATCHDOG_RESET;
-#else
-	stream.outcb = Z_NULL;
-#endif /* CONFIG_HW_WATCHDOG */
-
-	err = inflateInit (&stream);
-	if (err != Z_OK) {
-		printf ("Error: inflateInit2() returned %d\n", err);
-		return -1;
+	if (!initialized++) {
+		stream.workspace = malloc(zlib_inflate_workspacesize());
+		if ( !stream.workspace ) {
+			initialized = 0;
+			return -ENOMEM;
+		}
+		stream.next_in = NULL;
+		stream.avail_in = 0;
+		zlib_inflateInit(&stream);
 	}
-
 	return 0;
 }
 
-int cramfs_uncompress_exit (void)
+void cramfs_uncompress_exit(void)
 {
-	inflateEnd (&stream);
-	return 0;
+	if (!--initialized) {
+		zlib_inflateEnd(&stream);
+		vfree(stream.workspace);
+	}
 }
diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
index 3d3c56f..af2940b 100644
--- a/include/cramfs/cramfs_fs.h
+++ b/include/cramfs/cramfs_fs.h
@@ -119,8 +119,8 @@ struct cramfs_super {
 #endif
 
 /* Uncompression interfaces to the underlying zlib */
-int cramfs_uncompress_block(void *dst, void *src, int srclen);
+int cramfs_uncompress_block(void *dst, int dstlen, void *src, int srclen);
 int cramfs_uncompress_init(void);
-int cramfs_uncompress_exit(void);
+void cramfs_uncompress_exit(void);
 
 #endif	/* __CRAMFS_H */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
