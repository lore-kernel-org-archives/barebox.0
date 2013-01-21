Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxEcU-0003Nt-P7
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 10:28:58 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E0D3FFFA8C1
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 11:38:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 11:27:18 +0100
Message-Id: <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/10] introduce common bootstrap code
To: barebox@lists.infradead.org

This will allow to have a generic code to create different bootstrap

As example
Barebox as TI Xloader
Barebox as AT91 Bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/bootstrap.h    |   34 ++++++++++++++
 lib/Kconfig            |    2 +
 lib/Makefile           |    1 +
 lib/bootstrap/Kconfig  |   13 ++++++
 lib/bootstrap/Makefile |    3 ++
 lib/bootstrap/common.c |   21 +++++++++
 lib/bootstrap/devfs.c  |  118 ++++++++++++++++++++++++++++++++++++++++++++++++
 lib/bootstrap/disk.c   |   37 +++++++++++++++
 8 files changed, 229 insertions(+)
 create mode 100644 include/bootstrap.h
 create mode 100644 lib/bootstrap/Kconfig
 create mode 100644 lib/bootstrap/Makefile
 create mode 100644 lib/bootstrap/common.c
 create mode 100644 lib/bootstrap/devfs.c
 create mode 100644 lib/bootstrap/disk.c

diff --git a/include/bootstrap.h b/include/bootstrap.h
new file mode 100644
index 0000000..26e9dbc
--- /dev/null
+++ b/include/bootstrap.h
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __BOOSTRAP_H__
+#define __BOOSTRAP_H__
+
+#define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
+
+void bootstrap_boot(int (*func)(void), bool barebox);
+
+#ifdef CONFIG_BOOTSTRAP_DEVFS
+void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+			   int default_size, int max_size);
+#else
+static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+			   int default_size, int max_size)
+{
+	return NULL;
+}
+#endif
+
+#ifdef CONFIG_BOOTSTRAP_DISK
+void* bootstrap_read_disk(char *devname);
+#else
+static inline void* bootstrap_read_disk(char *devname)
+{
+	return NULL;
+}
+#endif
+
+#endif /* __BOOSTRAP_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index db8a6ad..4578353 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -52,4 +52,6 @@ config LIBMTD
 
 source lib/gui/Kconfig
 
+source lib/bootstrap/Kconfig
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 85f4ec9..43f6ea3 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-y			+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig
new file mode 100644
index 0000000..558da00
--- /dev/null
+++ b/lib/bootstrap/Kconfig
@@ -0,0 +1,13 @@
+menuconfig BOOTSTRAP
+	bool "Library bootstrap routines           "
+	depends on SHELL_NONE
+
+if BOOTSTRAP
+
+config BOOTSTRAP_DEVFS
+	bool "devfs support"
+
+config BOOTSTRAP_DISK
+	bool "disk support"
+
+endif
diff --git a/lib/bootstrap/Makefile b/lib/bootstrap/Makefile
new file mode 100644
index 0000000..cbaa49f
--- /dev/null
+++ b/lib/bootstrap/Makefile
@@ -0,0 +1,3 @@
+obj-y				+= common.o
+obj-$(CONFIG_BOOTSTRAP_DEVFS)	+= devfs.o
+obj-$(CONFIG_BOOTSTRAP_DISK)	+= disk.o
diff --git a/lib/bootstrap/common.c b/lib/bootstrap/common.c
new file mode 100644
index 0000000..3652698
--- /dev/null
+++ b/lib/bootstrap/common.c
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <bootstrap.h>
+#include <filetype.h>
+
+void bootstrap_boot(int (*func)(void), bool barebox)
+{
+	if (barebox && !is_barebox_head((void*)func))
+		return;
+
+	shutdown_barebox();
+	func();
+
+	while (1);
+}
diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
new file mode 100644
index 0000000..25d07c7
--- /dev/null
+++ b/lib/bootstrap/devfs.c
@@ -0,0 +1,118 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <partition.h>
+#include <nand.h>
+#include <driver.h>
+#include <linux/mtd/mtd.h>
+#include <fcntl.h>
+#include <filetype.h>
+#include <sizes.h>
+#include <errno.h>
+#include <malloc.h>
+#include <bootstrap.h>
+
+#if defined(CONFIG_ARM) || defined(CONFIG_MIPS)
+#if defined(CONFIG_ARM)
+#define BAREBOX_HEAD_SIZE		ARM_HEAD_SIZE
+#define BAREBOX_HEAD_SIZE_OFFSET	ARM_HEAD_SIZE_OFFSET
+#elif defined(CONFIG_MIPS)
+#define BAREBOX_HEAD_SIZE		MIPS_HEAD_SIZE
+#define BAREBOX_HEAD_SIZE_OFFSET	MIPS_HEAD_SIZE_OFFSET
+#endif
+
+static void *read_image_head(const char *name)
+{
+	void *header = xmalloc(BAREBOX_HEAD_SIZE);
+	struct cdev *cdev;
+	int ret;
+
+	cdev = cdev_open(name, O_RDONLY);
+	if (!cdev) {
+		bootstrap_err("failed to open partition\n");
+		return NULL;
+	}
+
+	ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
+	cdev_close(cdev);
+
+	if (ret != BAREBOX_HEAD_SIZE) {
+		bootstrap_err("failed to read from partition\n");
+		return NULL;
+	}
+
+	return header;
+}
+
+static unsigned int get_image_size(void *head)
+{
+	unsigned int ret = 0;
+	unsigned int *psize = head + BAREBOX_HEAD_SIZE_OFFSET;
+
+	if (is_barebox_head(head))
+		ret = *psize;
+	debug("Detected barebox image size %u\n", ret);
+
+	return ret;
+}
+#else
+static void *read_image_head(const char *name)
+{
+	return NULL;
+}
+
+static unsigned int get_image_size(void *head)
+{
+	return 0;
+}
+#endif
+
+void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+			   int default_size, int max_size)
+{
+	int ret;
+	int size = 0;
+	void *to, *header;
+	struct cdev *cdev;
+	char *partname = "x";
+
+	devfs_add_partition(devname, offset, max_size, DEVFS_PARTITION_FIXED, partname);
+	if (use_bb) {
+		dev_add_bb_dev(partname, "bbx");
+		partname = "bbx";
+	}
+
+	header = read_image_head(partname);
+	if (header) {
+		size = get_image_size(header);
+		if (!size)
+			bootstrap_err("%s: failed to get image size\n", devname);
+	}
+
+	if (!size) {
+		size = default_size;
+		bootstrap_err("%s: failed to detect barebox and it's image size so use %d\n",
+			 devname, size);
+	}
+
+	to = xmalloc(size);
+
+	cdev = cdev_open(partname, O_RDONLY);
+	if (!cdev) {
+		bootstrap_err("%s: failed to open %s\n", devname, partname);
+		return NULL;
+	}
+
+	ret = cdev_read(cdev, to, size, 0, 0);
+	if (ret != size) {
+		bootstrap_err("%s: failed to read from %s\n", devname, partname);
+		return NULL;
+	}
+
+	return to;
+}
diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
new file mode 100644
index 0000000..fad8990
--- /dev/null
+++ b/lib/bootstrap/disk.c
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <sizes.h>
+#include <errno.h>
+#include <malloc.h>
+#include <bootstrap.h>
+
+void* bootstrap_read_disk(char *dev)
+{
+	int ret;
+	void *buf;
+	int len;
+	char *path = "/";
+
+	ret = mount(dev, "fat", path);
+	if (ret) {
+		bootstrap_err("mounting %s failed with %d\n", dev, ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf) {
+		bootstrap_err("could not read barebox.bin from %s\n", dev);
+		umount(path);
+		return NULL;
+	}
+
+	return buf;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
