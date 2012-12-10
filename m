Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThyVJ-0004cI-LL
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 08:14:24 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Dec 2012 09:14:06 +0100
Message-Id: <1355127255-24797-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 01/10] mtd: move is_power_of_2() to a public place
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Will need this later for ubiformat.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/ubi/ubi-barebox.h |    5 +----
 include/mtd/utils.h           |   25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+), 4 deletions(-)
 create mode 100644 include/mtd/utils.h

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 72f29a6..919dc50 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -25,6 +25,7 @@
 #include <linux/string.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/ubi.h>
+#include <mtd/utils.h>
 
 #define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char const *)data, length)
 
@@ -53,10 +54,6 @@ do {									\
 #define put_device(...)
 #define ubi_sysfs_init(...)		0
 #define ubi_sysfs_close(...)		do { } while (0)
-static inline int is_power_of_2(unsigned long n)
-{
-	return (n != 0 && ((n & (n - 1)) == 0));
-}
 
 /* FIXME */
 #define MKDEV(...)			0
diff --git a/include/mtd/utils.h b/include/mtd/utils.h
new file mode 100644
index 0000000..229fb34
--- /dev/null
+++ b/include/mtd/utils.h
@@ -0,0 +1,25 @@
+/*
+ * mtd/utils.h - helper functions for various MTD utilities
+ *
+ * Copyright (C) 2012 by Wolfram Sang <w.sang@pengutronix.de>
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
+ */
+
+#ifndef INCLUDE_MTD_UTILS_H
+# define INCLUDE_MTD_UTILS_H
+
+static inline int is_power_of_2(unsigned long n)
+{
+	return (n != 0 && ((n & (n - 1)) == 0));
+}
+
+#endif /* INCLUDE_MTD_UTILS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
