Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aORwq-000369-9M
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 15:23:57 +0000
Received: by mail-wm0-x242.google.com with SMTP id l65so3961157wmf.3
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 07:23:35 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 16:22:55 +0100
Message-Id: <1453908178-7106-2-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 2/5] Introduce include/linux/spinlock.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Move spinlock related definitions to its original place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/mtd/nand/denali.h             |  1 +
 drivers/usb/gadget/f_acm.c            |  1 +
 drivers/usb/musb/musb_core.h          |  1 +
 drivers/usb/musb/phy-am335x-control.c |  1 +
 drivers/video/imx-ipu-v3/imx-ipu-v3.h |  1 +
 fs/pstore/platform.c                  |  1 +
 fs/pstore/ram.c                       |  1 +
 fs/ubifs/ubifs.h                      |  1 +
 include/linux/barebox-wrapper.h       |  7 -------
 include/linux/dcache.h                |  2 ++
 include/linux/fs.h                    |  1 +
 include/linux/spinlock.h              | 11 +++++++++++
 include/usb/composite.h               |  1 +
 13 files changed, 23 insertions(+), 7 deletions(-)
 create mode 100644 include/linux/spinlock.h

diff --git a/drivers/mtd/nand/denali.h b/drivers/mtd/nand/denali.h
index f5511c9..515353e 100644
--- a/drivers/mtd/nand/denali.h
+++ b/drivers/mtd/nand/denali.h
@@ -21,6 +21,7 @@
 #define __DENALI_H__
 
 #include <linux/mtd/nand.h>
+#include <linux/spinlock.h>
 
 #define DEVICE_RESET				0x0
 #define     DEVICE_RESET__BANK0				0x0001
diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/f_acm.c
index f582fcd..cba59b1 100644
--- a/drivers/usb/gadget/f_acm.c
+++ b/drivers/usb/gadget/f_acm.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <usb/cdc.h>
 #include <linux/err.h>
+#include <linux/spinlock.h>
 #include <asm/byteorder.h>
 #include <usb/composite.h>
 
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 46265d6..a21ddd5 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -39,6 +39,7 @@
 #include <notifier.h>
 #include <usb/usb.h>
 #include <usb/phy.h>
+#include <linux/spinlock.h>
 
 struct musb;
 struct musb_hw_ep;
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index 214ae71..809c518 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -2,6 +2,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/err.h>
+#include <linux/spinlock.h>
 
 struct phy_control {
 	void (*phy_power)(struct phy_control *phy_ctrl, u32 id, bool on);
diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
index 783535e..8deb295 100644
--- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
+++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
@@ -16,6 +16,7 @@
 #include <fb.h>
 #include <video/vpl.h>
 #include <video/fourcc.h>
+#include <linux/spinlock.h>
 
 struct ipu_soc;
 
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index dc2611f..98fd26d 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -23,6 +23,7 @@
 #include <linux/pstore.h>
 #include <linux/string.h>
 #include <linux/kernel.h>
+#include <linux/spinlock.h>
 #include <malloc.h>
 #include <printk.h>
 #include <module.h>
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index dc31ed1..66b4975 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -29,6 +29,7 @@
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/log2.h>
+#include <linux/spinlock.h>
 #include <malloc.h>
 #include <printk.h>
 #include <stdio.h>
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index a4f8523..0164551 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -41,6 +41,7 @@
 #include <linux/mount.h>
 #include <linux/path.h>
 #include <linux/sched.h>
+#include <linux/spinlock.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 3433631..91b67e1 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -35,13 +35,6 @@ typedef int     gfp_t;
 #define MODULE_LICENSE(x)
 #define MODULE_ALIAS(x)
 
-typedef int   spinlock_t;
-#define spin_lock_init(...)
-#define spin_lock(...)
-#define spin_unlock(...)
-#define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
-#define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
-
 #define mutex_init(...)
 #define mutex_lock(...)
 #define mutex_unlock(...)
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index ea69b68..9f33e75 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -10,6 +10,8 @@
  * with heavy changes by Linus Torvalds
  */
 
+#include <linux/spinlock.h>
+
 #define IS_ROOT(x) ((x) == (x)->d_parent)
 
 /* The hash is always the low bits of hash_len */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index e9fb881..8419ebd 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -6,6 +6,7 @@
 #include <linux/time.h>
 #include <linux/mount.h>
 #include <linux/path.h>
+#include <linux/spinlock.h>
 
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
new file mode 100644
index 0000000..b32114f
--- /dev/null
+++ b/include/linux/spinlock.h
@@ -0,0 +1,11 @@
+#ifndef __LINUX_SPINLOCK_H
+#define __LINUX_SPINLOCK_H
+
+typedef int   spinlock_t;
+#define spin_lock_init(...)
+#define spin_lock(...)
+#define spin_unlock(...)
+#define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
+#define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
+
+#endif /* __LINUX_SPINLOCK_H */
diff --git a/include/usb/composite.h b/include/usb/composite.h
index d24454c..f30568a 100644
--- a/include/usb/composite.h
+++ b/include/usb/composite.h
@@ -38,6 +38,7 @@
 #include <usb/gadget.h>
 #include <linux/log2.h>
 #include <linux/stringify.h>
+#include <linux/spinlock.h>
 
 /*
  * USB function drivers should return USB_GADGET_DELAYED_STATUS if they
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
