Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJc-0005UQ-Bp
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:03 +0100
Message-Id: <20210215103704.32537-11-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/12] usbgadget: ums: run gadget loop in a background
 coroutine if possible
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the new fancy poller yield support in place, we can let let the
loop yield in sleep_thread and naturally run in the background. Add this
and wrap it up inside an #ifdef, so the driver can still be used in
blocking mode for the architectures still missing out on poller yield
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/f_mass_storage.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index 9c0076be26d1..c3e6eb933ce7 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -287,6 +287,18 @@ static struct usb_gadget_strings	fsg_stringtab = {
 
 /*-------------------------------------------------------------------------*/
 
+#ifdef CONFIG_POLLER_YIELD
+
+#include <linux/completion.h>
+#include <linux/kthread.h>
+
+static inline bool poll(void)
+{
+	return !ctrlc();
+}
+
+#else
+
 struct completion { int done; };
 
 #define init_completion(x) do { (x)->done = 0; } while (0)
@@ -331,6 +343,8 @@ static struct task_struct *kthread_run(int (*threadfn)(void *), void *arg,
 
 #define poll() thread_task->threadfn(thread_task->arg)
 
+#endif
+
 #define wait_event(queue, cond)	do { poll(); } while (!(cond))
 #define wake_up(...)		do {} while (0)
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
