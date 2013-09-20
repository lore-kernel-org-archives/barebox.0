Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMsas-0007Vs-NZ
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 04:45:27 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9C398DC877E
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 06:45:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 06:46:15 +0200
Message-Id: <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130920044518.GB1137@ns203013.ovh.net>
References: <20130920044518.GB1137@ns203013.ovh.net>
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
Subject: [PATCH 1/3] misc: add bootcount framework
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/misc/Kconfig     |  3 +++
 drivers/misc/Makefile    |  1 +
 drivers/misc/bootcount.c | 24 ++++++++++++++++++++++++
 include/bootcount.h      | 21 +++++++++++++++++++++
 4 files changed, 49 insertions(+)
 create mode 100644 drivers/misc/bootcount.c
 create mode 100644 include/bootcount.h

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 606490b..a972ba4 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -15,4 +15,7 @@ config JTAG
 	help
 	  Controls JTAG chains connected to I/O pins
 
+config BOOTCOUNT
+	bool
+
 endif # MISC_DEVICES
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index b085577..fa668c1 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -3,3 +3,4 @@
 #
 
 obj-$(CONFIG_JTAG)		+= jtag.o
+obj-$(CONFIG_BOOTCOUNT)		+= bootcount.o
diff --git a/drivers/misc/bootcount.c b/drivers/misc/bootcount.c
new file mode 100644
index 0000000..0205d00
--- /dev/null
+++ b/drivers/misc/bootcount.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+
+#include <common.h>
+#include <init.h>
+#include <bootcount.h>
+
+static struct bootcount_driver *bd;
+
+void bootcount_register(struct bootcount_driver *drv)
+{
+	bd = drv;
+}
+
+static int bootcount_inc(void)
+{
+	if (bd)
+		bd->inc(bd);
+	return 0;
+}
+late_initcall(bootcount_inc);
diff --git a/include/bootcount.h b/include/bootcount.h
new file mode 100644
index 0000000..16e61c5
--- /dev/null
+++ b/include/bootcount.h
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+
+#ifndef __BOOTCOUNT_H__
+#define __BOOTCOUNT_H__
+
+struct bootcount_driver {
+	void (*inc)(struct bootcount_driver *d);
+	void *priv;
+};
+
+#ifdef CONFIG_BOOTCOUNT
+void bootcount_register(struct bootcount_driver *d);
+#else
+static inline void bootcount_register(struct bootcount_driver *d) {}
+#endif
+
+#endif /* __BOOTCOUNT_H__ */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
