Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBb6Y-0004ES-DV
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:27:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:27:38 +0100
Message-Id: <20210215102740.30418-2-a.fatoum@pengutronix.de>
In-Reply-To: <20210215102740.30418-1-a.fatoum@pengutronix.de>
References: <20210215102740.30418-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] include: <linux/barebox-wrapper.h>: remove kthread
 'replacements'
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Replacing kthread_create, stop and wake_up_process with no-ops is not
always applicable. For example a threaded USB gadget could be ported
by blocking in kthread_run as external events come in via poller.

Allow porting kthread code that way by removing the noop
implementations. The only user is the UBIFS code, so move the
definitions there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/ubi/ubi-barebox.h   | 2 --
 fs/ubifs/misc.h                 | 3 +++
 include/linux/barebox-wrapper.h | 4 ----
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 7ee87ffd3e10..01b84890f01e 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -42,8 +42,6 @@ static inline unsigned long copy_from_user(void *dest, const void *src,
 
 /* common */
 
-#define wake_up_process(...)	do { } while (0)
-
 #define BUS_ID_SIZE		20
 
 #define MAX_ERRNO		4095
diff --git a/fs/ubifs/misc.h b/fs/ubifs/misc.h
index 82f922565757..5dafe7518be0 100644
--- a/fs/ubifs/misc.h
+++ b/fs/ubifs/misc.h
@@ -27,6 +27,9 @@
 #ifndef __UBIFS_MISC_H__
 #define __UBIFS_MISC_H__
 
+#define kthread_stop(...)	do { } while (0)
+#define wake_up_process(...)	do { } while (0)
+
 /**
  * ubifs_zn_dirty - check if znode is dirty.
  * @znode: znode to check
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 82c52dd93309..dfaec7b8a9b9 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -38,10 +38,6 @@ static inline void vfree(const void *addr)
 #define __init
 #define __exit
 
-#define kthread_create(...)	__builtin_return_address(0)
-#define kthread_stop(...)	do { } while (0)
-#define wake_up_process(...)	do { } while (0)
-
 typedef int irqreturn_t;
 #define IRQ_NONE 0
 #define IRQ_HANDLED 0
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
