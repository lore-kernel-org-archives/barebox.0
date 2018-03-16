Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosh-0006XF-2b
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:48 +0100
Message-Id: <20180316125354.23462-73-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 72/78] ARM: aarch64: Add support to start kernel and barebox
To: Barebox List <barebox@lists.infradead.org>

aarch64 has its own image format. Add a bootm handler to handle this
format. Also add a barebox handler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib64/armlinux.c | 120 +++++++++++++++++++++++++++++++++++++---------
 1 file changed, 98 insertions(+), 22 deletions(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 54ce6ca046..238e8b67a4 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -1,51 +1,127 @@
 /*
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Marius Groeger <mgroeger@sysgo.de>
+ * Copyright (C) 2018 Sascha Hauer <s.hauer@pengutronix.de>
  *
- * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
  */
 
 #include <boot.h>
 #include <common.h>
-#include <command.h>
-#include <driver.h>
 #include <environment.h>
 #include <image.h>
-#include <init.h>
 #include <fs.h>
-#include <linux/list.h>
 #include <xfuncs.h>
 #include <malloc.h>
 #include <fcntl.h>
 #include <errno.h>
 #include <memory.h>
 #include <of.h>
-#include <magicvar.h>
-
+#include <init.h>
+#include <bootm.h>
+#include <linux/list.h>
 #include <asm/byteorder.h>
 #include <asm/setup.h>
 #include <asm/barebox-arm.h>
 #include <asm/armlinux.h>
 #include <asm/system.h>
 
-void start_linux(void *adr, int swap, unsigned long initrd_address,
-		 unsigned long initrd_size, void *oftree,
-		 enum arm_security_state bootm_secure_state)
+static int do_bootm_linux(struct image_data *data)
 {
-	void (*kernel)(void *dtb) = adr;
+	void (*fn)(unsigned long dtb, unsigned long x1, unsigned long x2,
+		       unsigned long x3);
+	resource_size_t start, end;
+	unsigned long text_offset, image_size, devicetree, kernel;
+	int ret;
+
+	text_offset = le64_to_cpup(data->os_header + 8);
+	image_size = le64_to_cpup(data->os_header + 16);
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		goto out;
+
+	kernel = ALIGN(start, SZ_2M) + text_offset;
+
+	ret = bootm_load_os(data, kernel);
+	if (ret)
+		goto out;
+
+	devicetree = ALIGN(kernel + image_size, PAGE_SIZE);
+
+	ret = bootm_load_devicetree(data, devicetree);
+	if (ret)
+		goto out;
+
+	printf("Loaded kernel to 0x%08lx, devicetree at 0x%08lx\n",
+	       kernel, devicetree);
 
 	shutdown_barebox();
 
-	kernel(oftree);
+	fn = (void *)kernel;
+
+	fn(devicetree, 0, 0, 0);
+
+	ret = -EINVAL;
+
+out:
+	return ret;
+}
+
+static struct image_handler aarch64_linux_handler = {
+        .name = "ARM aarch64 Linux image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_arm64_linux_image,
+};
+
+static int do_bootm_barebox(struct image_data *data)
+{
+	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
+		       unsigned long x3);
+	resource_size_t start, end;
+	unsigned long barebox;
+	int ret;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		goto out;
+
+	barebox = start;
+
+	ret = bootm_load_os(data, barebox);
+	if (ret)
+		goto out;
+
+	printf("Loaded barebox image to 0x%08lx\n", barebox);
+
+	shutdown_barebox();
+
+	fn = (void *)barebox;
+
+	fn(0, 0, 0, 0);
+
+	ret = -EINVAL;
+
+out:
+	return ret;
+}
+
+static struct image_handler aarch64_barebox_handler = {
+        .name = "ARM aarch64 barebox image",
+        .bootm = do_bootm_barebox,
+        .filetype = filetype_arm_barebox,
+};
+
+static int aarch64_register_image_handler(void)
+{
+	register_image_handler(&aarch64_linux_handler);
+	register_image_handler(&aarch64_barebox_handler);
+
+	return 0;
 }
+late_initcall(aarch64_register_image_handler);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
