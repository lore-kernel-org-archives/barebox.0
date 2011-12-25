Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqa-0006C8-5q
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:13 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hD-DW
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001LW-B9
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:28 +0100
Message-Id: <1324845517-4601-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/14] MACH SAMSUNG/S3C: Parts of the SDHC driver can be
 shared in the S3C CPU family
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/mini2440/mini2440.c          |    2 +-
 arch/arm/mach-samsung/include/mach/mci.h     |   46 --------------------------
 arch/arm/mach-samsung/include/mach/s3c-mci.h |   46 ++++++++++++++++++++++++++
 drivers/mci/s3c.c                            |    2 +-
 4 files changed, 48 insertions(+), 48 deletions(-)
 delete mode 100644 arch/arm/mach-samsung/include/mach/mci.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-mci.h

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index dca9083..233f337 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -41,7 +41,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
-#include <mach/mci.h>
+#include <mach/s3c-mci.h>
 #include <mach/fb.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
diff --git a/arch/arm/mach-samsung/include/mach/mci.h b/arch/arm/mach-samsung/include/mach/mci.h
deleted file mode 100644
index 6ba8961..0000000
--- a/arch/arm/mach-samsung/include/mach/mci.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert, Pengutronix
- *
- * This code is partially based on u-boot code:
- *
- * Copyright 2008, Freescale Semiconductor, Inc
- * Andy Fleming
- *
- * Based (loosely) on the Linux code
- *
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
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __MACH_MMC_H_
-#define __MACH_MMC_H_
-
-struct s3c_mci_platform_data {
-	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
-	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
-	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
-	unsigned f_max;	/**< max operating frequency in Hz (0 -> no limit) */
-	/* TODO */
-	/* function to modify the voltage */
-	/* function to switch the voltage */
-	/* function to detect the presence of a SD card in the socket */
-	unsigned gpio_detect;
-	unsigned detect_invert;
-};
-
-#endif /* __MACH_MMC_H_ */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-mci.h b/arch/arm/mach-samsung/include/mach/s3c-mci.h
new file mode 100644
index 0000000..6ba8961
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-mci.h
@@ -0,0 +1,46 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert, Pengutronix
+ *
+ * This code is partially based on u-boot code:
+ *
+ * Copyright 2008, Freescale Semiconductor, Inc
+ * Andy Fleming
+ *
+ * Based (loosely) on the Linux code
+ *
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __MACH_MMC_H_
+#define __MACH_MMC_H_
+
+struct s3c_mci_platform_data {
+	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
+	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
+	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
+	unsigned f_max;	/**< max operating frequency in Hz (0 -> no limit) */
+	/* TODO */
+	/* function to modify the voltage */
+	/* function to switch the voltage */
+	/* function to detect the presence of a SD card in the socket */
+	unsigned gpio_detect;
+	unsigned detect_invert;
+};
+
+#endif /* __MACH_MMC_H_ */
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index c877e09..12d2c03 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -40,7 +40,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
-#include <mach/mci.h>
+#include <mach/s3c-mci.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
