Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZTt-0003dk-5r
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:39:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A9418FF953C
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:45:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Sep 2012 07:36:42 +0200
Message-Id: <1348119406-17464-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120920053418.GB26553@game.jcrosoft.org>
 <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] sandbox: do not register device before barebox is started
To: barebox@lists.infradead.org

This will crash when use registered bus with device registered to it.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/board/Makefile                    |    1 +
 arch/sandbox/board/console.c                   |    2 +-
 arch/sandbox/board/devices.c                   |   33 ++++++++++++++++++++++++
 arch/sandbox/board/hostfile.c                  |   19 ++++++++++++--
 arch/sandbox/mach-sandbox/include/mach/linux.h |    3 +++
 5 files changed, 55 insertions(+), 3 deletions(-)
 create mode 100644 arch/sandbox/board/devices.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 266c3a3..5104f5c 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -2,5 +2,6 @@ obj-y += board.o
 obj-y += clock.o
 obj-y += hostfile.o
 obj-y += console.o
+obj-y += devices.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index 18b63e1..b0afa54 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -44,6 +44,6 @@ int barebox_register_console(char *name, int stdinfd, int stdoutfd)
 	data->stdoutfd = stdoutfd;
 	data->stdinfd  = stdinfd;
 
-	return register_device(dev);
+	return sandbox_add_device(dev);
 }
 
diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
new file mode 100644
index 0000000..dba0d5d
--- /dev/null
+++ b/arch/sandbox/board/devices.c
@@ -0,0 +1,33 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+static LIST_HEAD(sandbox_device_list);
+
+int sandbox_add_device(struct device_d *dev)
+{
+	list_add(&dev->list, &sandbox_device_list);
+
+	return 0;
+}
+
+static int sandbox_device_init(void)
+{
+	struct device_d *dev, *tmp;
+
+	list_for_each_entry_safe(dev, tmp, &sandbox_device_list, list) {
+		/* reset the list_head before registering for real */
+		dev->list.prev = NULL;
+		dev->list.next = NULL;
+		register_device(dev);
+	}
+
+	return 0;
+}
+postcore_initcall(sandbox_device_init);
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index f5acc78..2cc7c1f 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -99,7 +99,22 @@ device_initcall(hf_init);
 
 int barebox_register_filedev(struct hf_platform_data *hf)
 {
-	return !add_generic_device("hostfile", DEVICE_ID_DYNAMIC, NULL, hf->base, hf->size,
-			   IORESOURCE_MEM, hf);
+	struct device_d *dev;
+	struct resource *res;
+
+	dev = xzalloc(sizeof(*dev));
+	strcpy(dev->name, "hostfile");
+	dev->id = DEVICE_ID_DYNAMIC;
+	dev->platform_data = hf;
+
+	res = xzalloc(sizeof(struct resource));
+	res[0].start = hf->base;
+	res[0].end = hf->base + hf->size - 1;
+	res[0].flags = IORESOURCE_MEM;
+
+	dev->resource = res;
+	dev->num_resources = 1;
+
+	return sandbox_add_device(dev);
 }
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 5917fe9..259f2d8 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -1,6 +1,9 @@
 #ifndef __ASM_ARCH_LINUX_H
 #define __ASM_ARCH_LINUX_H
 
+struct device_d;
+
+int sandbox_add_device(struct device_d *dev);
 int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(char *dev);
 uint64_t linux_get_time(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
