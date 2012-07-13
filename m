Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpYzp-00030H-R2
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 06:04:59 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SpYzi-00073d-AX
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 08:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SpYzi-0000PT-8s
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 08:04:50 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 08:04:46 +0200
Message-Id: <1342159489-1474-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342159489-1474-1-git-send-email-jbe@pengutronix.de>
References: <1342159489-1474-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/4] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Many architectures support a way to detect why the bootloader is running.
This patch adds a global variable to be able to use the cause in some kind of
shell code to do special things on demand. For example to do an emergency boot,
when the last boot fails and the watchdog reactivate the hanging system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/Makefile        |    2 +-
 common/reset_source.c  |   44 ++++++++++++++++++++++++++++++++++++++++++++
 include/reset_source.h |   27 +++++++++++++++++++++++++++
 3 files changed, 72 insertions(+), 1 deletion(-)
 create mode 100644 common/reset_source.c
 create mode 100644 include/reset_source.h

diff --git a/common/Makefile b/common/Makefile
index d99dfa2..baf4539 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -29,7 +29,7 @@ obj-$(CONFIG_UIMAGE) += uimage.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
-obj-$(CONFIG_GLOBALVAR) += globalvar.o
+obj-$(CONFIG_GLOBALVAR) += globalvar.o reset_source.o
 obj-$(CONFIG_FILETYPE) += filetype.o
 obj-y += resource.o
 obj-$(CONFIG_MENU) += menu.o
diff --git a/common/reset_source.c b/common/reset_source.c
new file mode 100644
index 0000000..2a7f9ff
--- /dev/null
+++ b/common/reset_source.c
@@ -0,0 +1,44 @@
+/*
+ * (C) Copyright 2012 Juergen Beisert - <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <reset_source.h>
+
+static const char * const reset_src_names[] = {
+	[RESET_UKWN] = "unknown",
+	[RESET_POR] = "POR",
+	[RESET_RST] = "RST",
+	[RESET_WDG] = "WDG",
+	[RESET_WKE] = "WKE",
+	[RESET_JTAG] = "JTAG",
+};
+
+void set_reset_source(enum reset_src_type st)
+{
+	setenv("global.system.reset", reset_src_names[st]);
+}
+EXPORT_SYMBOL(set_reset_source);
+
+/* ensure this runs after the 'global' device is already registerd */
+static int init_reset_source(void)
+{
+	globalvar_add_simple("system.reset");
+	set_reset_source(RESET_UKWN);
+	return 0;
+}
+
+coredevice_initcall(init_reset_source);
diff --git a/include/reset_source.h b/include/reset_source.h
new file mode 100644
index 0000000..8bb366c
--- /dev/null
+++ b/include/reset_source.h
@@ -0,0 +1,27 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __INCLUDE_RESET_SOURCE_H
+# define __INCLUDE_RESET_SOURCE_H
+
+enum reset_src_type {
+	RESET_UKWN,	/* maybe the SoC cannot detect the reset source */
+	RESET_POR,	/* Power On Reset (cold start) */
+	RESET_RST,	/* generic ReSeT (warm start) */
+	RESET_WDG,	/* watchdog */
+	RESET_WKE,	/* wake-up (some SoCs can handle this) */
+	RESET_JTAG,	/* JTAG reset */
+};
+
+extern void set_reset_source(enum reset_src_type);
+
+#endif /* __INCLUDE_RESET_SOURCE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
