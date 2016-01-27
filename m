Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aORws-00036n-CL
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 15:23:59 +0000
Received: by mail-wm0-x243.google.com with SMTP id l65so3961337wmf.3
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 07:23:37 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 16:22:56 +0100
Message-Id: <1453908178-7106-3-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
References: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 3/5] Introduce include/linux/mutex.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Move mutex related defines to its original place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/pstore/platform.c            |  1 +
 fs/ubifs/ubifs.h                |  1 +
 include/linux/barebox-wrapper.h |  5 -----
 include/linux/fs.h              |  1 +
 include/linux/mtd/spi-nor.h     |  2 ++
 include/linux/mutex.h           | 18 ++++++++++++++++++
 6 files changed, 23 insertions(+), 5 deletions(-)
 create mode 100644 include/linux/mutex.h

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 98fd26d..963ecaf 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -24,6 +24,7 @@
 #include <linux/string.h>
 #include <linux/kernel.h>
 #include <linux/spinlock.h>
+#include <linux/mutex.h>
 #include <malloc.h>
 #include <printk.h>
 #include <module.h>
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 0164551..d655cfa 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -42,6 +42,7 @@
 #include <linux/path.h>
 #include <linux/sched.h>
 #include <linux/spinlock.h>
+#include <linux/mutex.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 91b67e1..49439fa 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -35,11 +35,6 @@ typedef int     gfp_t;
 #define MODULE_LICENSE(x)
 #define MODULE_ALIAS(x)
 
-#define mutex_init(...)
-#define mutex_lock(...)
-#define mutex_unlock(...)
-struct mutex { int i; };
-
 struct rw_semaphore { int i; };
 
 #define __user
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 8419ebd..89fbaea 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -7,6 +7,7 @@
 #include <linux/mount.h>
 #include <linux/path.h>
 #include <linux/spinlock.h>
+#include <linux/mutex.h>
 
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index bd2b16d..de9ac08 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -10,6 +10,8 @@
 #ifndef __LINUX_MTD_SPI_NOR_H
 #define __LINUX_MTD_SPI_NOR_H
 
+#include <linux/mutex.h>
+
 /*
  * Note on opcode nomenclature: some opcodes have a format like
  * SPINOR_OP_FUNCTION{4,}_x_y_z. The numbers x, y, and z stand for the number
diff --git a/include/linux/mutex.h b/include/linux/mutex.h
new file mode 100644
index 0000000..a84085c
--- /dev/null
+++ b/include/linux/mutex.h
@@ -0,0 +1,18 @@
+/*
+ * Mutexes: blocking mutual exclusion locks
+ *
+ * started by Ingo Molnar:
+ *
+ *  Copyright (C) 2004, 2005, 2006 Red Hat, Inc., Ingo Molnar <mingo@redhat.com>
+ *
+ * This file contains the main data structure and API definitions.
+ */
+#ifndef __LINUX_MUTEX_H
+#define __LINUX_MUTEX_H
+
+#define mutex_init(...)
+#define mutex_lock(...)
+#define mutex_unlock(...)
+struct mutex { int i; };
+
+#endif /* __LINUX_MUTEX_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
