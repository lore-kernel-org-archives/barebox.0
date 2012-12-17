Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcvk-0003zY-UP
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:48:39 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:48:29 +0100
Message-Id: <1355759313-23329-8-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
References: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V3 07/11] mtd: utils: apply macros for message printouts
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

mtd-utils have a few macros for printouts. Provide the wrappers to make
it easier to import them.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/mtd/utils.h |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 include/mtd/utils.h

diff --git a/include/mtd/utils.h b/include/mtd/utils.h
new file mode 100644
index 0000000..fca64ab
--- /dev/null
+++ b/include/mtd/utils.h
@@ -0,0 +1,47 @@
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
+/* Messages as used in mtd-utils */
+
+#define bareverbose(verbose, fmt, ...) do {                        \
+	if (verbose)                                               \
+		printf(fmt, ##__VA_ARGS__);                        \
+} while(0)
+#define verbose(verbose, fmt, ...) \
+	bareverbose(verbose, "%s: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__)
+
+#define normsg_cont(fmt, ...) do {                                 \
+	printf("%s: " fmt, PROGRAM_NAME, ##__VA_ARGS__);           \
+} while(0)
+
+#define normsg(fmt, ...) do {                                      \
+	normsg_cont(fmt "\n", ##__VA_ARGS__);                      \
+} while(0)
+
+#define errmsg(fmt, ...)  ({                                                \
+	printf("%s: error!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
+	-1;                                                                 \
+})
+#define sys_errmsg errmsg
+
+#define warnmsg(fmt, ...) do {                                                \
+	fprintf(stderr, "%s: warning!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
+} while(0)
+
+#endif /* INCLUDE_MTD_UTILS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
