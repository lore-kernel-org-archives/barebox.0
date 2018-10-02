Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z5-Uh
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:51 +0200
Message-Id: <20181002140403.3735-3-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/14] Add kmemdup
To: Barebox List <barebox@lists.infradead.org>

We have kmemdup as a UBIFS specific variant, put it into the correct
header files. Instead of reimplementing it just use memdup we already
have.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.c       | 17 -----------------
 fs/ubifs/ubifs.h       |  2 --
 include/linux/string.h |  7 +++++++
 include/string.h       |  1 -
 4 files changed, 7 insertions(+), 20 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index f9b4f4babc..97cbe4991f 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -86,23 +86,6 @@ struct ubifs_compressor *ubifs_compressors[UBIFS_COMPR_TYPES_CNT];
 #ifdef __BAREBOX__
 /* from mm/util.c */
 
-/**
- * kmemdup - duplicate region of memory
- *
- * @src: memory region to duplicate
- * @len: memory region length
- * @gfp: GFP mask to use
- */
-void *kmemdup(const void *src, size_t len, gfp_t gfp)
-{
-	void *p;
-
-	p = kmalloc(len, gfp);
-	if (p)
-		memcpy(p, src, len);
-	return p;
-}
-
 struct crypto_comp {
 	int compressor;
 };
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 19af05ade3..d4df668ca6 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -71,8 +71,6 @@ struct page {
 	struct inode *inode;
 };
 
-void *kmemdup(const void *src, size_t len, gfp_t gfp);
-
 /* uapi/linux/limits.h */
 #define XATTR_LIST_MAX 65536	/* size of extended attribute namelist (64k) */
 
diff --git a/include/linux/string.h b/include/linux/string.h
index ed4eeb5519..3418b4fbe4 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -115,4 +115,11 @@ void *memchr_inv(const void *start, int c, size_t bytes);
 }
 #endif
 
+void *memdup(const void *, size_t);
+
+static inline void *kmemdup(const void *src, size_t len, gfp_t gfp)
+{
+	return memdup(src, len);
+}
+
 #endif /* _LINUX_STRING_H_ */
diff --git a/include/string.h b/include/string.h
index 6ceb33224e..8c63f22491 100644
--- a/include/string.h
+++ b/include/string.h
@@ -3,7 +3,6 @@
 
 #include <linux/string.h>
 
-void *memdup(const void *, size_t);
 int strtobool(const char *str, int *val);
 
 void *__default_memset(void *, int, __kernel_size_t);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
