Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000MQ-5w
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:03 +0100
Message-Id: <1292685309-32326-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] Add generic poll infrastructure
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

Barebox does not have interrupt functionality. Nevertheless it's
sometimes useful to periodically call functions, like for example
a heartbeat LED or watchdog reset. Instead of cluttering the code
with calls to these functions this patch adds a generic polling
infrastructure. Code which might run for longer now can call
poller_call() periodically which in turn will call all registered
pollers.
This patch adds a call to poller_call in two generic pathes. First
of them is getc() which covers waiting for uart input. Second is
ctrlc() which should be called anyway from code which might run
for longer. So instead adding poller_call directly to your code,
consider checking ctrlc instead which also gives additional
convenience to the user.
The poller code is safe against reentrancy which means that it's
safe to call poller_call inside a poller.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   |    3 +++
 common/Makefile  |    1 +
 common/console.c |    5 +++++
 common/poller.c  |   45 +++++++++++++++++++++++++++++++++++++++++++++
 include/poller.h |   31 +++++++++++++++++++++++++++++++
 5 files changed, 85 insertions(+), 0 deletions(-)
 create mode 100644 common/poller.c
 create mode 100644 include/poller.h

diff --git a/common/Kconfig b/common/Kconfig
index 617f640..02bc67e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -414,6 +414,9 @@ config DEFAULT_ENVIRONMENT_PATH
 	  Relative pathes will be relative to the barebox Toplevel dir, but absolute
 	  pathes are fine aswell.
 
+config POLLER
+	bool "generic polling infrastructure"
+
 endmenu
 
 menu "Debugging                     "
diff --git a/common/Makefile b/common/Makefile
index 753455b..98c9d36 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_OF_FLAT_TREE)	+= ft_build.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
+obj-$(CONFIG_POLLER)		+= poller.o
 
 obj-y += dlmalloc.o
 obj-y += clock.o
diff --git a/common/console.c b/common/console.c
index 82786f2..39ead4b 100644
--- a/common/console.c
+++ b/common/console.c
@@ -34,6 +34,7 @@
 #include <clock.h>
 #include <kfifo.h>
 #include <module.h>
+#include <poller.h>
 #include <linux/list.h>
 
 LIST_HEAD(console_list);
@@ -205,6 +206,8 @@ int getc(void)
 	 */
 	start = get_time_ns();
 	while (1) {
+		poller_call();
+
 		if (tstc()) {
 			kfifo_putc(console_input_buffer, getc_raw());
 
@@ -397,6 +400,8 @@ EXPORT_SYMBOL(vprintf);
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
+	poller_call();
+
 	if (tstc() && getc() == 3)
 		return 1;
 	return 0;
diff --git a/common/poller.c b/common/poller.c
new file mode 100644
index 0000000..0583a53
--- /dev/null
+++ b/common/poller.c
@@ -0,0 +1,45 @@
+/*
+ * Copyright (C) 2010 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <module.h>
+#include <param.h>
+#include <poller.h>
+
+static LIST_HEAD(poller_list);
+static int poller_active;
+
+int poller_register(struct poller_struct *poller)
+{
+	list_add_tail(&poller->list, &poller_list);
+
+	return 0;
+}
+
+int poller_unregister(struct poller_struct *poller)
+{
+	list_del(&poller->list);
+
+	return 0;
+}
+
+void poller_call(void)
+{
+	struct poller_struct *poller, *tmp;
+
+	if (poller_active)
+		return;
+
+	poller_active = 1;
+
+	list_for_each_entry_safe(poller, tmp, &poller_list, list)
+		poller->func(poller);
+
+	poller_active = 0;
+}
diff --git a/include/poller.h b/include/poller.h
new file mode 100644
index 0000000..dc98155
--- /dev/null
+++ b/include/poller.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2010 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef POLLER_H
+#define POLLER_H
+
+#include <linux/list.h>
+
+struct poller_struct {
+	void (*func)(struct poller_struct *poller);
+
+	struct list_head list;
+};
+
+int poller_register(struct poller_struct *poller);
+int poller_unregister(struct poller_struct *poller);
+
+
+#ifdef CONFIG_POLLER
+void poller_call(void);
+#else
+static inline void poller_call(void)
+{
+}
+#endif	/* CONFIG_POLLER */
+
+#endif	/* !POLLER_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
