Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ve42e-0001QX-Ju
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 14:25:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ve42H-0008LK-8w
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 15:24:45 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Ve42H-0002It-7B
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 15:24:45 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  6 Nov 2013 15:24:39 +0100
Message-Id: <1383747881-15698-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/3] FPGA: add a simple programming handler framework
To: barebox@lists.infradead.org

This framework handles a list of registered FPGA programming handlers
to unify a firmware programming interface by hiding the details how
to program a specific FPGA in its handler.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/Kconfig    |   3 ++
 common/Makefile   |   1 +
 common/fpgamgr.c  | 122 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fpgamgr.h |  58 ++++++++++++++++++++++++++
 4 files changed, 184 insertions(+)
 create mode 100644 common/fpgamgr.c
 create mode 100644 include/fpgamgr.h

diff --git a/common/Kconfig b/common/Kconfig
index ccfbc80..d87e59b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -297,6 +297,9 @@ config MAXARGS
 	prompt "max. Number of arguments accepted for monitor commands"
 	default 16
 
+config FPGAMANAGER
+	bool
+
 choice
 	prompt "Select your shell"
 
diff --git a/common/Makefile b/common/Makefile
index 6f6e360..537dea4 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -48,6 +48,7 @@ obj-y += bootsource.o
 obj-$(CONFIG_BOOTM) += bootm.o
 extra-$(CONFIG_MODULES) += module.lds
 extra-y += barebox_default_env barebox_default_env.h
+obj-$(CONFIG_FPGAMANAGER) += fpgamgr.o
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: $(obj)/barebox_default_env.h
diff --git a/common/fpgamgr.c b/common/fpgamgr.c
new file mode 100644
index 0000000..4e36330
--- /dev/null
+++ b/common/fpgamgr.c
@@ -0,0 +1,122 @@
+/*
+ * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <fpgamgr.h>
+#include <linux/list.h>
+#include <xfuncs.h>
+#include <malloc.h>
+
+struct fpga_mgr {
+	struct list_head list;
+	struct fpga_handler *handler; /* the program handler */
+	unsigned index;
+	unsigned flags;
+};
+
+static LIST_HEAD(fpgamgr_prog_handlers);
+
+static struct fpga_mgr *fpgamgr_init(void)
+{
+	struct fpga_mgr *handler;
+
+	handler = xzalloc(sizeof(struct fpga_mgr));
+	return handler;
+}
+
+struct fpga_mgr *fpgamgr_find_handler(const char *name, int index)
+{
+	struct fpga_mgr *mgr;
+
+	if (!name)
+		return -EINVAL;
+
+	list_for_each_entry(mgr, &fpgamgr_prog_handlers, list) {
+		if (!strcmp(mgr->handler->name, name)) {
+			if (index == -1 || index == mgr->index)
+				return mgr;
+		}
+	}
+
+	return NULL;
+}
+
+void fpgamgr_handlers_list(void)
+{
+	struct fpga_mgr *mgr;
+
+	if (list_empty(&fpgamgr_prog_handlers))
+		printf("(none)\n");
+
+	list_for_each_entry(mgr, &fpgamgr_prog_handlers, list)
+		printf("%s%-11s idx %u\n",
+				mgr->flags & FPGAMGR_HANDLER_FLAG_DEFAULT ?
+				"* " : "  ", mgr->handler->name, mgr->index);
+}
+
+/* make the device accessible to the public via its handler */
+int fpgamgr_register_handler(struct fpga_handler *h)
+{
+	struct fpga_mgr *mgr;
+	int index = 0;
+
+	if (fpgamgr_find_handler(h->name, -1) != 0) {
+		/* find the next free index for this name */
+		do
+			index++;
+		while (fpgamgr_find_handler(h->name, index) != NULL);
+	}
+
+	mgr = fpgamgr_init();
+	mgr->handler = h;
+	mgr->index = index;
+
+	list_add_tail(&mgr->list, &fpgamgr_prog_handlers);
+
+	return 0;
+}
+
+int fpgamgr_open_fpga(struct fpga_mgr *m)
+{
+	struct fpga_handler *h = m->handler;
+
+	if (h->open)
+		return h->open(h);
+
+	return -ENOSYS;
+}
+
+/*
+ * Expectation is 'cnt' in bytes and it *must* be a multiple of 8 bytes.
+ * Only the last call prior calling fpgamgr_close_fpga() can violate
+ * this rule.
+ */
+int fpgamgr_prog_fpga(struct fpga_mgr *m, const void *data, size_t cnt)
+{
+	struct fpga_handler *h = m->handler;
+
+	if (h->write)
+		return h->write(h, data, cnt);
+
+	return -ENOSYS;
+}
+
+int fpgamgr_close_fpga(struct fpga_mgr *m)
+{
+	struct fpga_handler *h = m->handler;
+
+	if (h->close)
+		return h->close(h);
+
+	return -ENOSYS;
+}
diff --git a/include/fpgamgr.h b/include/fpgamgr.h
new file mode 100644
index 0000000..8f94998
--- /dev/null
+++ b/include/fpgamgr.h
@@ -0,0 +1,58 @@
+/*
+ * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <types.h>
+
+struct fpga_handler {
+	const char *name; /* the name of the FPGA */
+	void *private_data; /* handler's private data */
+	/* called once to prepare the FPGA's programming cycle */
+	int (*open)(struct fpga_handler*);
+	/* called multiple times to program the FPGA with the given data */
+	int (*write)(struct fpga_handler*, const void*, size_t);
+	/* called once to finish programming cycle */
+	int (*close)(struct fpga_handler*);
+};
+
+struct fpga_mgr;
+
+int fpgamgr_register_handler(struct fpga_handler *);
+
+/* second argument can be -1 to be ignored */
+struct fpga_mgr *fpgamgr_find_handler(const char *, int);
+
+/*
+ * returns:
+ * 0 success
+ * -EIO preparing the FPGA for programming has failed
+ * -ENOSYS no such function available
+ */
+int fpgamgr_open_fpga(struct fpga_mgr *);
+
+/*
+ * returns:
+ * 0 success
+ * -EIO programming the FPGA has failed
+ * -ENOSYS no such function available
+ */
+int fpgamgr_prog_fpga(struct fpga_mgr *, const void *, size_t);
+
+/*
+ * returns:
+ * 0 success
+ * -EIO program cycle hasn't finished successfully
+ * -ENOSYS no such function available
+ */
+int fpgamgr_close_fpga(struct fpga_mgr *);
+
+void fpgamgr_handlers_list(void);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
