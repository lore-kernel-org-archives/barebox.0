Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm775-0007T2-Ax
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:13:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id b5so257117plr.4
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:34 -0800
Message-Id: <20190123011338.32517-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190123011338.32517-1-andrew.smirnov@gmail.com>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] commands: Move /dev/mem driver to drivers/misc
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

With all other code gone from commands/mem.c, move it into
driver/misc, where it fits better. While at it, expose it directly via
a Kconfig options instead of relying on CONFIG_COMPILE_MEMORY

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/Kconfig      | 17 ++++------
 commands/Makefile     |  1 -
 commands/mem.c        | 77 -------------------------------------------
 drivers/misc/Kconfig  |  3 ++
 drivers/misc/Makefile |  1 +
 drivers/misc/mem.c    | 45 +++++++++++++++++++++++++
 6 files changed, 55 insertions(+), 89 deletions(-)
 delete mode 100644 commands/mem.c
 create mode 100644 drivers/misc/mem.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 45592f26c..901036f59 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -14,11 +14,6 @@ config COMPILE_HASH
 	help
 	  Turns on compilation of digest.c
 
-config COMPILE_MEMORY
-	bool
-	help
-	  Turns on compilation of mem.c
-
 menu "Commands"
 
 
@@ -1493,7 +1488,7 @@ config CMD_CRC_CMP
 config CMD_MD
 	tristate
 	default y
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "md"
 	help
 	  Memory display
@@ -1517,7 +1512,7 @@ config CMD_MD
 config CMD_MEMCMP
 	tristate
 	default y
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "memcmp"
 	help
 	  Memory compare
@@ -1539,7 +1534,7 @@ config CMD_MEMCMP
 config CMD_MEMCPY
 	tristate
 	default y
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "memcpy"
 	help
 	  Memory copy
@@ -1558,7 +1553,7 @@ config CMD_MEMCPY
 config CMD_MEMSET
 	tristate
 	default y
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "memset"
 	help
 	  Memory fill
@@ -1591,7 +1586,7 @@ config CMD_MEMTEST
 
 config CMD_MM
 	tristate
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "memory modify (mm)"
 	help
 	  Memory modify with mask
@@ -1609,7 +1604,7 @@ config CMD_MM
 config CMD_MW
 	tristate
 	default y
-	select COMPILE_MEMORY
+	select DEV_MEM
 	prompt "mw"
 	help
 	  Memory write
diff --git a/commands/Makefile b/commands/Makefile
index ecd2c99e1..ce4c4f6eb 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,7 +1,6 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
-obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
diff --git a/commands/mem.c b/commands/mem.c
deleted file mode 100644
index 8a47e1fe1..000000000
--- a/commands/mem.c
+++ /dev/null
@@ -1,77 +0,0 @@
-/*
- * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-/*
- * Memory Functions
- *
- * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
- */
-
-#include <common.h>
-#include <command.h>
-#include <init.h>
-#include <driver.h>
-#include <malloc.h>
-#include <errno.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <getopt.h>
-#include <linux/stat.h>
-#include <xfuncs.h>
-
-#ifdef	CMD_MEM_DEBUG
-#define	PRINTF(fmt,args...)	printf (fmt ,##args)
-#else
-#define PRINTF(fmt,args...)
-#endif
-
-static struct cdev_operations memops = {
-	.read  = mem_read,
-	.write = mem_write,
-	.memmap = generic_memmap_rw,
-	.lseek = dev_lseek_default,
-};
-
-static int mem_probe(struct device_d *dev)
-{
-	struct cdev *cdev;
-
-	cdev = xzalloc(sizeof (*cdev));
-	dev->priv = cdev;
-
-	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
-			   S64_MAX);
-	cdev->ops = &memops;
-	cdev->dev = dev;
-
-	devfs_create(cdev);
-
-	return 0;
-}
-
-static struct driver_d mem_drv = {
-	.name  = "mem",
-	.probe = mem_probe,
-};
-
-static int mem_init(void)
-{
-	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
-	return platform_driver_register(&mem_drv);
-}
-device_initcall(mem_init);
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index df74cca97..f547024bd 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -24,4 +24,7 @@ config BLINK_ENCODER
         tristate "Blinking LED encoder"
 	depends on LED && LED_TRIGGERS
 
+config DEV_MEM
+        bool "Generic memory I/O device (/dev/mem)"
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 2e80f1a63..8b5140536 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_BLINK_ENCODER)	+= blink-encoder.o
+obj-$(CONFIG_DEV_MEM)		+= mem.o
diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
new file mode 100644
index 000000000..d829af724
--- /dev/null
+++ b/drivers/misc/mem.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+static struct cdev_operations memops = {
+	.read  = mem_read,
+	.write = mem_write,
+	.memmap = generic_memmap_rw,
+	.lseek = dev_lseek_default,
+};
+
+static int mem_probe(struct device_d *dev)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof (*cdev));
+	dev->priv = cdev;
+
+	cdev->name = (char*)dev->resource[0].name;
+	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
+			   S64_MAX);
+	cdev->ops = &memops;
+	cdev->dev = dev;
+
+	devfs_create(cdev);
+
+	return 0;
+}
+
+static struct driver_d mem_drv = {
+	.name  = "mem",
+	.probe = mem_probe,
+};
+
+static int mem_init(void)
+{
+	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
+	return platform_driver_register(&mem_drv);
+}
+device_initcall(mem_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
