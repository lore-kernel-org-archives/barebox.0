Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvmOF-0007Lh-Ko
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 07:26:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 15 Sep 2010 09:26:34 +0200
Message-Id: <1284535596-26814-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
References: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/3] poller: add poller support
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/Kconfig   |    3 +++
 common/Makefile  |    1 +
 common/poller.c  |   45 +++++++++++++++++++++++++++++++++++++++++++++
 include/poller.h |   32 ++++++++++++++++++++++++++++++++
 4 files changed, 81 insertions(+), 0 deletions(-)
 create mode 100644 common/poller.c
 create mode 100644 include/poller.h

diff --git a/common/Kconfig b/common/Kconfig
index 6556c62..77129bf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -363,6 +363,9 @@ config DEFAULT_ENVIRONMENT_PATH
 	  Relative pathes will be relative to the barebox Toplevel dir, but absolute
 	  pathes are fine aswell.
 
+config POLLER
+	bool "generic polling infrastructure"
+
 endmenu
 
 menu "Debugging                     "
diff --git a/common/Makefile b/common/Makefile
index 4b8cce0..cd71044 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_OF_FLAT_TREE)	+= ft_build.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
+obj-$(CONFIG_POLLER)		+= poller.o
 
 obj-y += dlmalloc.o
 obj-y += clock.o
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
index 0000000..622ceaa
--- /dev/null
+++ b/include/poller.h
@@ -0,0 +1,32 @@
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
+	return;
+}
+#endif	/* CMD_POLLER */
+
+#endif	/* !POLLER_H */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
