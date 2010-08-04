Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT60-0006I4-OF
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:48:44 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 03:43:55 +0200
Message-Id: <1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
References: <20100804014227.GA16337@game.jcrosoft.org>
	<1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] arm: add common clkdev
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrea GALLO <andrea.gallo@stericsson.com>
Cc: Gael SALLES <gael.salles@stericsson.com>
---
 arch/arm/Kconfig              |    1 +
 arch/arm/Makefile             |    2 +-
 arch/arm/common/Kconfig       |    2 +
 arch/arm/common/Makefile      |    5 ++
 arch/arm/common/clkdev.c      |  160 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/clkdev.h |   30 ++++++++
 lib/vsprintf.c                |   25 +++++++
 7 files changed, 224 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/common/Kconfig
 create mode 100644 arch/arm/common/Makefile
 create mode 100644 arch/arm/common/clkdev.c
 create mode 100644 arch/arm/include/asm/clkdev.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 92ec417..ed05a89 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -53,6 +53,7 @@ config ARCH_S3C24xx
 
 endchoice
 
+source arch/arm/common/Kconfig
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-at91rm9200/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8b4d64c..bd78259 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -130,7 +130,7 @@ MACH :=
 endif
 
 common-y += $(BOARD) $(MACH)
-common-y += arch/arm/lib/ arch/arm/cpu/
+common-y += arch/arm/lib/ arch/arm/cpu/ arch/arm/common/
 
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)	:= arch/arm/lib/barebox.lds
 lds-$(CONFIG_BOARD_LINKER_SCRIPT)	:= $(BOARD)/barebox.lds
diff --git a/arch/arm/common/Kconfig b/arch/arm/common/Kconfig
new file mode 100644
index 0000000..e749e45
--- /dev/null
+++ b/arch/arm/common/Kconfig
@@ -0,0 +1,2 @@
+config COMMON_CLKDEV
+	bool
diff --git a/arch/arm/common/Makefile b/arch/arm/common/Makefile
new file mode 100644
index 0000000..9cc8834
--- /dev/null
+++ b/arch/arm/common/Makefile
@@ -0,0 +1,5 @@
+#
+# Makefile for the linux kernel.
+#
+
+obj-$(CONFIG_COMMON_CLKDEV)	+= clkdev.o
diff --git a/arch/arm/common/clkdev.c b/arch/arm/common/clkdev.c
new file mode 100644
index 0000000..4d25356
--- /dev/null
+++ b/arch/arm/common/clkdev.c
@@ -0,0 +1,160 @@
+/*
+ *  arch/arm/common/clkdev.c
+ *
+ *  Copyright (C) 2008 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Helper for the clk API to assist looking up a struct clk.
+ */
+
+#include <common.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <init.h>
+#include <malloc.h>
+#include <stdio.h>
+
+#include <asm/clkdev.h>
+#include <mach/clkdev.h>
+
+static LIST_HEAD(clocks);
+
+/*
+ * Find the correct struct clk for the device and connection ID.
+ * We do slightly fuzzy matching here:
+ *  An entry with a NULL ID is assumed to be a wildcard.
+ *  If an entry has a device ID, it must match
+ *  If an entry has a connection ID, it must match
+ * Then we take the most specific entry - with the following
+ * order of precidence: dev+con > dev only > con only.
+ */
+static struct clk *clk_find(const char *dev_id, const char *con_id)
+{
+	struct clk_lookup *p;
+	struct clk *clk = NULL;
+	int match, best = 0;
+
+	list_for_each_entry(p, &clocks, node) {
+		match = 0;
+		if (p->dev_id) {
+			if (!dev_id || strcmp(p->dev_id, dev_id))
+				continue;
+			match += 2;
+		}
+		if (p->con_id) {
+			if (!con_id || strcmp(p->con_id, con_id))
+				continue;
+			match += 1;
+		}
+		if (match == 0)
+			continue;
+
+		if (match > best) {
+			clk = p->clk;
+			best = match;
+		}
+	}
+	return clk;
+}
+
+struct clk *clk_get_sys(const char *dev_id, const char *con_id)
+{
+	struct clk *clk;
+
+	clk = clk_find(dev_id, con_id);
+	if (clk && !__clk_get(clk))
+		clk = NULL;
+
+	return clk ? clk : ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL(clk_get_sys);
+
+struct clk *clk_get(struct device_d *dev, const char *con_id)
+{
+	const char *dev_id = dev ? dev_name(dev) : NULL;
+
+	return clk_get_sys(dev_id, con_id);
+}
+EXPORT_SYMBOL(clk_get);
+
+void clk_put(struct clk *clk)
+{
+	__clk_put(clk);
+}
+EXPORT_SYMBOL(clk_put);
+
+void clkdev_add(struct clk_lookup *cl)
+{
+	list_add_tail(&cl->node, &clocks);
+}
+EXPORT_SYMBOL(clkdev_add);
+
+#define MAX_DEV_ID	20
+#define MAX_CON_ID	16
+
+struct clk_lookup_alloc {
+	struct clk_lookup cl;
+	char	dev_id[MAX_DEV_ID];
+	char	con_id[MAX_CON_ID];
+};
+
+struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
+	const char *dev_fmt, ...)
+{
+	struct clk_lookup_alloc *cla;
+
+	cla = kzalloc(sizeof(*cla), GFP_KERNEL);
+	if (!cla)
+		return NULL;
+
+	cla->cl.clk = clk;
+	if (con_id) {
+		strlcpy(cla->con_id, con_id, sizeof(cla->con_id));
+		cla->cl.con_id = cla->con_id;
+	}
+
+	if (dev_fmt) {
+		va_list ap;
+
+		va_start(ap, dev_fmt);
+		vscnprintf(cla->dev_id, sizeof(cla->dev_id), dev_fmt, ap);
+		cla->cl.dev_id = cla->dev_id;
+		va_end(ap);
+	}
+
+	return &cla->cl;
+}
+EXPORT_SYMBOL(clkdev_alloc);
+
+int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
+	struct device_d *dev)
+{
+	struct clk *r = clk_get(dev, id);
+	struct clk_lookup *l;
+
+	if (IS_ERR(r))
+		return PTR_ERR(r);
+
+	l = clkdev_alloc(r, alias, alias_dev_name);
+	clk_put(r);
+	if (!l)
+		return -ENODEV;
+	clkdev_add(l);
+	return 0;
+}
+EXPORT_SYMBOL(clk_add_alias);
+
+/*
+ * clkdev_drop - remove a clock dynamically allocated
+ */
+void clkdev_drop(struct clk_lookup *cl)
+{
+	list_del(&cl->node);
+	kfree(cl);
+}
+EXPORT_SYMBOL(clkdev_drop);
diff --git a/arch/arm/include/asm/clkdev.h b/arch/arm/include/asm/clkdev.h
new file mode 100644
index 0000000..b6ec7c6
--- /dev/null
+++ b/arch/arm/include/asm/clkdev.h
@@ -0,0 +1,30 @@
+/*
+ *  arch/arm/include/asm/clkdev.h
+ *
+ *  Copyright (C) 2008 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Helper for the clk API to assist looking up a struct clk.
+ */
+#ifndef __ASM_CLKDEV_H
+#define __ASM_CLKDEV_H
+
+struct clk;
+
+struct clk_lookup {
+	struct list_head	node;
+	const char		*dev_id;
+	const char		*con_id;
+	struct clk		*clk;
+};
+
+struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
+	const char *dev_fmt, ...);
+
+void clkdev_add(struct clk_lookup *cl);
+void clkdev_drop(struct clk_lookup *cl);
+
+#endif
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 91ad613..6066845 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -515,6 +515,31 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 EXPORT_SYMBOL(vsnprintf);
 
 /**
+ * vscnprintf - Format a string and place it in a buffer
+ * @buf: The buffer to place the result into
+ * @size: The size of the buffer, including the trailing null space
+ * @fmt: The format string to use
+ * @args: Arguments for the format string
+ *
+ * The return value is the number of characters which have been written into
+ * the @buf not including the trailing '\0'. If @size is <= 0 the function
+ * returns 0.
+ *
+ * Call this function if you are already dealing with a va_list.
+ * You probably want scnprintf() instead.
+ *
+ * See the vsnprintf() documentation for format string extensions over C99.
+ */
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
+{
+	int i;
+
+	i=vsnprintf(buf,size,fmt,args);
+	return (i >= size) ? (size - 1) : i;
+}
+EXPORT_SYMBOL(vscnprintf);
+
+/**
  * vsprintf - Format a string and place it in a buffer
  * @buf: The buffer to place the result into
  * @fmt: The format string to use
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
