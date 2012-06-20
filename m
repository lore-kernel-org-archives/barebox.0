Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShLx8-0000fT-KU
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 14:32:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShLx7-0003Ym-2J
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 16:32:13 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShLx7-0000AM-0w
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 16:32:13 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 16:32:10 +0200
Message-Id: <1340202731-30831-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Many architectures support a way to detect why the bootloader is running.
This patch adds a global variable to be able to use the cause in some kind of
shell code to do special things on demand. For example to do an emergency boot,
when the last boot fails and the watchdog reactivate the hanging system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/Makefile        |    2 +-
 common/reset_source.c  |   62 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/reset_source.h |   26 ++++++++++++++++++++
 3 files changed, 89 insertions(+), 1 deletion(-)
 create mode 100644 common/reset_source.c
 create mode 100644 include/reset_source.h

diff --git a/common/Makefile b/common/Makefile
index a1926d3..61eeb6b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -29,7 +29,7 @@ obj-$(CONFIG_CMD_BOOTM) += uimage.o
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
index 0000000..19015b2
--- /dev/null
+++ b/common/reset_source.c
@@ -0,0 +1,62 @@
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
+static const char name[] = "global.system.reset";
+static const char unknown_reset[] = "unknown";
+static const char power_on_reset[] = "POR";
+static const char manual_reset[] = "RST";
+static const char watchdog[] = "WDG";
+static const char wake[] = "WKE";
+static const char jtag[] = "JTAG";
+
+void set_reset_source(unsigned source)
+{
+	switch (source) {
+	case RESET_UKWN:
+		setenv(name, unknown_reset);
+		break;
+	case RESET_POR:
+		setenv(name, power_on_reset);
+		break;
+	case RESET_RST:
+		setenv(name, manual_reset);
+		break;
+	case RESET_WDG:
+		setenv(name, watchdog);
+		break;
+	case RESET_WKE:
+		setenv(name, wake);
+		break;
+	case RESET_JTAG:
+		setenv(name, jtag);
+		break;
+	}
+}
+EXPORT_SYMBOL(set_reset_source);
+
+/* ensure this runs after the 'global' device is already registerd */
+static int init_reset_source(void)
+{
+	globalvar_add_simple(&name[7]);
+	set_reset_source(RESET_UKWN);
+	return 0;
+}
+
+coredevice_initcall(init_reset_source);
diff --git a/include/reset_source.h b/include/reset_source.h
new file mode 100644
index 0000000..bc7e736
--- /dev/null
+++ b/include/reset_source.h
@@ -0,0 +1,26 @@
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
+/* possible parameters to set_reset_source() */
+#define RESET_UKWN 0
+#define RESET_POR 1	/* Power On Reset */
+#define RESET_RST 2	/* generic ReST */
+#define RESET_WDG 3	/* watchdog */
+#define RESET_WKE 4	/* wake */
+#define RESET_JTAG 5
+
+extern void set_reset_source(unsigned);
+
+#endif /* __INCLUDE_RESET_SOURCE_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
