Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xZ-P1
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:18 +0200
Message-Id: <1460702958-4012-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] include: Move ide platform_data to include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx27/pcm970.c   |  2 +-
 arch/x86/boards/x86_generic/intf_platform_ide.c |  2 +-
 drivers/ata/intf_platform_ide.c                 |  2 +-
 drivers/ata/pata-imx.c                          |  2 +-
 include/platform_data/ide.h                     | 32 +++++++++++++++++++++++++
 include/platform_ide.h                          | 32 -------------------------
 6 files changed, 36 insertions(+), 36 deletions(-)
 create mode 100644 include/platform_data/ide.h
 delete mode 100644 include/platform_ide.h

diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index 73df2ad..13bb7c1 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -15,7 +15,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <io.h>
-#include <platform_ide.h>
+#include <platform_data/ide.h>
 #include <linux/sizes.h>
 #include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
diff --git a/arch/x86/boards/x86_generic/intf_platform_ide.c b/arch/x86/boards/x86_generic/intf_platform_ide.c
index 18a2620..528e721 100644
--- a/arch/x86/boards/x86_generic/intf_platform_ide.c
+++ b/arch/x86/boards/x86_generic/intf_platform_ide.c
@@ -24,7 +24,7 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/err.h>
-#include <platform_ide.h>
+#include <platform_data/ide.h>
 #include "envsector.h"
 
 static struct ide_port_info ide_plat = {
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 6e74bfb..c3af083 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -27,7 +27,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <ata_drive.h>
-#include <platform_ide.h>
+#include <platform_data/ide.h>
 #include <linux/err.h>
 #include <of.h>
 
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 8429573..c8098a5 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -28,7 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <ata_drive.h>
-#include <platform_ide.h>
+#include <platform_data/ide.h>
 #include <io.h>
 #include <of.h>
 #include <linux/err.h>
diff --git a/include/platform_data/ide.h b/include/platform_data/ide.h
new file mode 100644
index 0000000..f71fbfb
--- /dev/null
+++ b/include/platform_data/ide.h
@@ -0,0 +1,32 @@
+/*
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#ifndef __PLATFORM_IDE_H
+#define __PLATFORM_IDE_H
+
+struct ide_port_info {
+	/*
+	 * I/O port shift, for platforms with ports that are
+	 * constantly spaced and need larger than the 1-byte
+	 * spacing
+	 */
+	unsigned ioport_shift;
+	int dataif_be;	/* true if 16 bit data register is big endian */
+
+	/* handle hard reset of this port */
+	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
+};
+
+#endif /* __PLATFORM_IDE_H */
diff --git a/include/platform_ide.h b/include/platform_ide.h
deleted file mode 100644
index f71fbfb..0000000
--- a/include/platform_ide.h
+++ /dev/null
@@ -1,32 +0,0 @@
-/*
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef __PLATFORM_IDE_H
-#define __PLATFORM_IDE_H
-
-struct ide_port_info {
-	/*
-	 * I/O port shift, for platforms with ports that are
-	 * constantly spaced and need larger than the 1-byte
-	 * spacing
-	 */
-	unsigned ioport_shift;
-	int dataif_be;	/* true if 16 bit data register is big endian */
-
-	/* handle hard reset of this port */
-	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
-};
-
-#endif /* __PLATFORM_IDE_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
