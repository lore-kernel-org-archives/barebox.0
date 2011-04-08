Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rs-HE
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:53 +0200
Message-Id: <1302273422-6987-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/16] nand: remove unused header file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/compat.h |   46 --------------------------------------------
 1 files changed, 0 insertions(+), 46 deletions(-)
 delete mode 100644 include/linux/mtd/compat.h

diff --git a/include/linux/mtd/compat.h b/include/linux/mtd/compat.h
deleted file mode 100644
index a99d86e..0000000
--- a/include/linux/mtd/compat.h
+++ /dev/null
@@ -1,46 +0,0 @@
-#ifndef _LINUX_COMPAT_H_
-#define _LINUX_COMPAT_H_
-
-#define __user
-#define __iomem
-
-#define ndelay(x)	udelay(1)
-
-#define printk	printf
-
-#define KERN_EMERG
-#define KERN_ALERT
-#define KERN_CRIT
-#define KERN_ERR
-#define KERN_WARNING
-#define KERN_NOTICE
-#define KERN_INFO
-#define KERN_DEBUG
-
-#define kmalloc(size, flags)	malloc(size)
-#define kfree(ptr)		free(ptr)
-
-/*
- * ..and if you can't take the strict
- * types, you can specify one yourself.
- *
- * Or not use min/max at all, of course.
- */
-#define min_t(type,x,y) \
-	({ type __x = (x); type __y = (y); __x < __y ? __x: __y; })
-#define max_t(type,x,y) \
-	({ type __x = (x); type __y = (y); __x > __y ? __x: __y; })
-
-#ifndef BUG
-#define BUG() do { \
-	printf("barebox BUG at %s:%d!\n", __FILE__, __LINE__); \
-} while (0)
-
-#define BUG_ON(condition) do { if (condition) BUG(); } while(0)
-#endif /* BUG */
-
-#define likely(x)	__builtin_expect(!!(x), 1)
-#define unlikely(x)	__builtin_expect(!!(x), 0)
-
-#define PAGE_SIZE	4096
-#endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
