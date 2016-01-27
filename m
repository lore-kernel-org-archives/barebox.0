Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOfl-0001qv-Vl
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:07 +0000
Received: by mail-wm0-x244.google.com with SMTP id p63so2886546wmp.1
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:53:45 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:02 +0100
Message-Id: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] fs: move PAGE_CACHE definitions to include/linux/pagemap.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h        |  5 +----
 include/linux/pagemap.h | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 4 deletions(-)
 create mode 100644 include/linux/pagemap.h

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 2d0cd4c..d16f780 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -35,6 +35,7 @@
 #include <malloc.h>
 #include <lzo.h>
 #include <linux/fs.h>
+#include <linux/pagemap.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
@@ -173,10 +174,6 @@ struct file {
  */
 #define get_seconds()		0
 
-/* 4k page size */
-#define PAGE_CACHE_SHIFT	12
-#define PAGE_CACHE_SIZE		(1 << PAGE_CACHE_SHIFT)
-
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
 #if BITS_PER_LONG==32
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
new file mode 100644
index 0000000..345bd40
--- /dev/null
+++ b/include/linux/pagemap.h
@@ -0,0 +1,14 @@
+#ifndef _LINUX_PAGEMAP_H
+#define _LINUX_PAGEMAP_H
+
+/*
+ * Copyright 1995 Linus Torvalds
+ */
+
+#include <common.h>
+
+#define PAGE_CACHE_SHIFT        PAGE_SHIFT
+#define PAGE_CACHE_SIZE         PAGE_SIZE
+#define PAGE_CACHE_MASK         PAGE_MASK
+
+#endif /* _LINUX_PAGEMAP_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
