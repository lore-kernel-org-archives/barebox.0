Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrAVK-00082L-VF
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 14:11:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 16:10:19 +0200
Message-Id: <1283436624-29567-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
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
Subject: [PATCH 4/9] arm: move clkdev to drivers/clk
To: barebox@lists.infradead.org

as refer in this patch "arm & sh: factorised duplicated clkdev.c"

factorise some generic infrastructure to assist looking up struct clks
for the ARM & SH architecture.

as the code is identical at 99% in linux

move it also as preparing for the SH adding

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                   |    1 -
 arch/arm/Makefile                  |    2 +-
 arch/arm/common/Kconfig            |    2 -
 arch/arm/common/Makefile           |    5 -
 arch/arm/common/clkdev.c           |  160 ----------------------------------
 arch/arm/configs/nhk8815_defconfig |    2 +-
 arch/arm/include/asm/clkdev.h      |   15 +---
 arch/arm/mach-nomadik/Kconfig      |    2 +-
 arch/arm/mach-nomadik/clock.c      |    7 +--
 drivers/Kconfig                    |    1 +
 drivers/Makefile                   |    1 +
 drivers/clk/Kconfig                |    4 +
 drivers/clk/Makefile               |    2 +
 drivers/clk/clkdev.c               |  168 ++++++++++++++++++++++++++++++++++++
 include/linux/clkdev.h             |   36 ++++++++
 15 files changed, 217 insertions(+), 191 deletions(-)
 delete mode 100644 arch/arm/common/Kconfig
 delete mode 100644 arch/arm/common/Makefile
 delete mode 100644 arch/arm/common/clkdev.c
 create mode 100644 drivers/clk/Kconfig
 create mode 100644 drivers/clk/Makefile
 create mode 100644 drivers/clk/clkdev.c
 create mode 100644 include/linux/clkdev.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 945528c..fa37036 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -58,7 +58,6 @@ config ARCH_S3C24xx
 
 endchoice
 
-source arch/arm/common/Kconfig
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e542c03..388dcc9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -131,7 +131,7 @@ MACH :=
 endif
 
 common-y += $(BOARD) $(MACH)
-common-y += arch/arm/lib/ arch/arm/cpu/ arch/arm/common/
+common-y += arch/arm/lib/ arch/arm/cpu/
 
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)	:= arch/arm/lib/barebox.lds
 lds-$(CONFIG_BOARD_LINKER_SCRIPT)	:= $(BOARD)/barebox.lds
diff --git a/arch/arm/common/Kconfig b/arch/arm/common/Kconfig
deleted file mode 100644
index e749e45..0000000
--- a/arch/arm/common/Kconfig
+++ /dev/null
@@ -1,2 +0,0 @@
-config COMMON_CLKDEV
-	bool
diff --git a/arch/arm/common/Makefile b/arch/arm/common/Makefile
deleted file mode 100644
index 9cc8834..0000000
--- a/arch/arm/common/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-#
-# Makefile for the linux kernel.
-#
-
-obj-$(CONFIG_COMMON_CLKDEV)	+= clkdev.o
diff --git a/arch/arm/common/clkdev.c b/arch/arm/common/clkdev.c
deleted file mode 100644
index 4d25356..0000000
--- a/arch/arm/common/clkdev.c
+++ /dev/null
@@ -1,160 +0,0 @@
-/*
- *  arch/arm/common/clkdev.c
- *
- *  Copyright (C) 2008 Russell King.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * Helper for the clk API to assist looking up a struct clk.
- */
-
-#include <common.h>
-#include <linux/list.h>
-#include <errno.h>
-#include <linux/err.h>
-#include <linux/clk.h>
-#include <init.h>
-#include <malloc.h>
-#include <stdio.h>
-
-#include <asm/clkdev.h>
-#include <mach/clkdev.h>
-
-static LIST_HEAD(clocks);
-
-/*
- * Find the correct struct clk for the device and connection ID.
- * We do slightly fuzzy matching here:
- *  An entry with a NULL ID is assumed to be a wildcard.
- *  If an entry has a device ID, it must match
- *  If an entry has a connection ID, it must match
- * Then we take the most specific entry - with the following
- * order of precidence: dev+con > dev only > con only.
- */
-static struct clk *clk_find(const char *dev_id, const char *con_id)
-{
-	struct clk_lookup *p;
-	struct clk *clk = NULL;
-	int match, best = 0;
-
-	list_for_each_entry(p, &clocks, node) {
-		match = 0;
-		if (p->dev_id) {
-			if (!dev_id || strcmp(p->dev_id, dev_id))
-				continue;
-			match += 2;
-		}
-		if (p->con_id) {
-			if (!con_id || strcmp(p->con_id, con_id))
-				continue;
-			match += 1;
-		}
-		if (match == 0)
-			continue;
-
-		if (match > best) {
-			clk = p->clk;
-			best = match;
-		}
-	}
-	return clk;
-}
-
-struct clk *clk_get_sys(const char *dev_id, const char *con_id)
-{
-	struct clk *clk;
-
-	clk = clk_find(dev_id, con_id);
-	if (clk && !__clk_get(clk))
-		clk = NULL;
-
-	return clk ? clk : ERR_PTR(-ENOENT);
-}
-EXPORT_SYMBOL(clk_get_sys);
-
-struct clk *clk_get(struct device_d *dev, const char *con_id)
-{
-	const char *dev_id = dev ? dev_name(dev) : NULL;
-
-	return clk_get_sys(dev_id, con_id);
-}
-EXPORT_SYMBOL(clk_get);
-
-void clk_put(struct clk *clk)
-{
-	__clk_put(clk);
-}
-EXPORT_SYMBOL(clk_put);
-
-void clkdev_add(struct clk_lookup *cl)
-{
-	list_add_tail(&cl->node, &clocks);
-}
-EXPORT_SYMBOL(clkdev_add);
-
-#define MAX_DEV_ID	20
-#define MAX_CON_ID	16
-
-struct clk_lookup_alloc {
-	struct clk_lookup cl;
-	char	dev_id[MAX_DEV_ID];
-	char	con_id[MAX_CON_ID];
-};
-
-struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
-	const char *dev_fmt, ...)
-{
-	struct clk_lookup_alloc *cla;
-
-	cla = kzalloc(sizeof(*cla), GFP_KERNEL);
-	if (!cla)
-		return NULL;
-
-	cla->cl.clk = clk;
-	if (con_id) {
-		strlcpy(cla->con_id, con_id, sizeof(cla->con_id));
-		cla->cl.con_id = cla->con_id;
-	}
-
-	if (dev_fmt) {
-		va_list ap;
-
-		va_start(ap, dev_fmt);
-		vscnprintf(cla->dev_id, sizeof(cla->dev_id), dev_fmt, ap);
-		cla->cl.dev_id = cla->dev_id;
-		va_end(ap);
-	}
-
-	return &cla->cl;
-}
-EXPORT_SYMBOL(clkdev_alloc);
-
-int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
-	struct device_d *dev)
-{
-	struct clk *r = clk_get(dev, id);
-	struct clk_lookup *l;
-
-	if (IS_ERR(r))
-		return PTR_ERR(r);
-
-	l = clkdev_alloc(r, alias, alias_dev_name);
-	clk_put(r);
-	if (!l)
-		return -ENODEV;
-	clkdev_add(l);
-	return 0;
-}
-EXPORT_SYMBOL(clk_add_alias);
-
-/*
- * clkdev_drop - remove a clock dynamically allocated
- */
-void clkdev_drop(struct clk_lookup *cl)
-{
-	list_del(&cl->node);
-	kfree(cl);
-}
-EXPORT_SYMBOL(clkdev_drop);
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 21d596f..6e28ef2 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -19,7 +19,7 @@ CONFIG_ARM_AMBA=y
 CONFIG_ARCH_NOMADIK=y
 # CONFIG_ARCH_OMAP is not set
 # CONFIG_ARCH_S3C24xx is not set
-CONFIG_COMMON_CLKDEV=y
+CONFIG_CLKDEV_LOOKUP=y
 
 #
 # Processor Type
diff --git a/arch/arm/include/asm/clkdev.h b/arch/arm/include/asm/clkdev.h
index b6ec7c6..ad33945 100644
--- a/arch/arm/include/asm/clkdev.h
+++ b/arch/arm/include/asm/clkdev.h
@@ -12,19 +12,6 @@
 #ifndef __ASM_CLKDEV_H
 #define __ASM_CLKDEV_H
 
-struct clk;
-
-struct clk_lookup {
-	struct list_head	node;
-	const char		*dev_id;
-	const char		*con_id;
-	struct clk		*clk;
-};
-
-struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
-	const char *dev_fmt, ...);
-
-void clkdev_add(struct clk_lookup *cl);
-void clkdev_drop(struct clk_lookup *cl);
+#include <mach/clkdev.h>
 
 #endif
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
index 64894c8..3d6eab6 100644
--- a/arch/arm/mach-nomadik/Kconfig
+++ b/arch/arm/mach-nomadik/Kconfig
@@ -13,7 +13,7 @@ choice
 config MACH_NOMADIK_8815NHK
 	bool "ST 8815 Nomadik Hardware Kit (evaluation board)"
 	select NOMADIK_8815
-	select COMMON_CLKDEV
+	select CLKDEV_LOOKUP
 
 endchoice
 
diff --git a/arch/arm/mach-nomadik/clock.c b/arch/arm/mach-nomadik/clock.c
index c74e0c1..5f34a2c 100644
--- a/arch/arm/mach-nomadik/clock.c
+++ b/arch/arm/mach-nomadik/clock.c
@@ -8,7 +8,7 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <init.h>
-#include <asm/clkdev.h>
+#include <linux/clkdev.h>
 
 #include "clock.h"
 
@@ -34,11 +34,6 @@ void clk_disable(struct clk *clk)
 }
 EXPORT_SYMBOL(clk_disable);
 
-int __clk_get(struct clk *clk)
-{
-	return 1;
-}
-
 /* Create a clock structure with the given name */
 int nmdk_clk_create(struct clk *clk, const char *dev_id)
 {
diff --git a/drivers/Kconfig b/drivers/Kconfig
index ae9efce..f7154c6 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -9,5 +9,6 @@ source "drivers/mtd/Kconfig"
 source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
+source "drivers/clk/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index bce68bc..706e1c8 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_ATA) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
 obj-$(CONFIG_VIDEO) += video/
+obj-y	+= clk/
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
new file mode 100644
index 0000000..4168c88
--- /dev/null
+++ b/drivers/clk/Kconfig
@@ -0,0 +1,4 @@
+
+config CLKDEV_LOOKUP
+	bool
+	select HAVE_CLK
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
new file mode 100644
index 0000000..07613fa
--- /dev/null
+++ b/drivers/clk/Makefile
@@ -0,0 +1,2 @@
+
+obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
new file mode 100644
index 0000000..717fea5
--- /dev/null
+++ b/drivers/clk/clkdev.c
@@ -0,0 +1,168 @@
+/*
+ * drivers/clk/lookup_clkdev.c
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
+#include <linux/string.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <init.h>
+#include <malloc.h>
+#include <stdio.h>
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
+ * order of precedence: dev+con > dev only > con only.
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
+
+		if (match > best) {
+			clk = p->clk;
+			if (match != 3)
+				best = match;
+			else
+				break;
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
+void __init clkdev_add_table(struct clk_lookup *cl, size_t num)
+{
+	while (num--) {
+		list_add_tail(&cl->node, &clocks);
+		cl++;
+	}
+}
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
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
new file mode 100644
index 0000000..ae38e1a
--- /dev/null
+++ b/include/linux/clkdev.h
@@ -0,0 +1,36 @@
+/*
+ *  include/linux/clkdev.h
+ *
+ *  Copyright (C) 2008 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Helper for the clk API to assist looking up a struct clk.
+ */
+#ifndef __CLKDEV_H
+#define __CLKDEV_H
+
+#include <asm/clkdev.h>
+
+struct clk;
+struct device_d;
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
+void clkdev_add_table(struct clk_lookup *, size_t);
+int clk_add_alias(const char *, const char *, char *, struct device_d *);
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
