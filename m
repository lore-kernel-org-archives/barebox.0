Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdTkk-0006b7-U8
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 21:31:12 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed, 21 Dec 2011 22:30:42 +0100
Message-Id: <1324503044-6085-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V4 5/7] drivers/mtd: add mtd core hooks
To: barebox@lists.infradead.org

Add hooks for spinoff MTD drivers (mtdoob, mtdraw, ...).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/core.c |   17 +++++++++++++++++
 drivers/mtd/mtd.h  |   39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mtd/mtd.h

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 0eb91c5..fc36c1d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -26,6 +26,10 @@
 #include <nand.h>
 #include <errno.h>
 
+#include "mtd.h"
+
+static LIST_HEAD(mtd_register_hooks);
+
 static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 			  ulong offset, ulong flags)
 {
@@ -246,6 +250,7 @@ static void mtd_exit_oob_cdev(struct mtd_info *mtd)
 int add_mtd_device(struct mtd_info *mtd, char *devname)
 {
 	char str[16];
+	struct mtddev_hook *hook;
 
 	if (!devname)
 		devname = "mtd";
@@ -272,12 +277,20 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	devfs_create(&mtd->cdev);
 
 	mtd_init_oob_cdev(mtd, devname);
+	list_for_each_entry(hook, &mtd_register_hooks, hook)
+		if (hook->add_mtd_device)
+			hook->add_mtd_device(mtd, devname);
 
 	return 0;
 }
 
 int del_mtd_device (struct mtd_info *mtd)
 {
+	struct mtddev_hook *hook;
+
+	list_for_each_entry(hook, &mtd_register_hooks, hook)
+		if (hook->del_mtd_device)
+			hook->del_mtd_device(mtd);
 	unregister_device(&mtd->class_dev);
 	mtd_exit_oob_cdev(mtd);
 	free(mtd->param_size.value);
@@ -285,3 +298,7 @@ int del_mtd_device (struct mtd_info *mtd)
 	return 0;
 }
 
+void mtdcore_add_hook(struct mtddev_hook *hook)
+{
+	list_add(&hook->hook, &mtd_register_hooks);
+}
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
new file mode 100644
index 0000000..261cd2b
--- /dev/null
+++ b/drivers/mtd/mtd.h
@@ -0,0 +1,39 @@
+/*
+ * MTD devices registration
+ *
+ * Copyright (C) 2011 Robert Jarzmik
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/**
+ * mtddev_hook - hook to register additional mtd devices
+ * @add_mtd_device: called when a MTD driver calls add_mtd_device()
+ * @del_mtd_device: called when a MTD driver calls del_mtd_device()
+ *
+ * Provide a hook to be called whenether a add_mtd_device() is called.
+ * Additionnal devices like mtdoob and mtdraw subscribe to the service.
+ */
+struct mtddev_hook {
+	struct list_head hook;
+	int (*add_mtd_device)(struct mtd_info *mtd, char *devname);
+	int (*del_mtd_device)(struct mtd_info *mtd);
+};
+
+/**
+ * mtdcore_add_hook - add a hook to MTD registration/unregistration
+ * @hook: the hook
+ *
+ * Normally called in a coredevice_initcall() to add another MTD layout (such as
+ * mtdraw, ...)
+ */
+void mtdcore_add_hook(struct mtddev_hook *hook);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
