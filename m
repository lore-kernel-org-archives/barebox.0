Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLpYK-0003px-Dk
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:24 +0100
Message-Id: <1423731274-9860-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] move cmdline partition parsing code to separate file
To: Barebox List <barebox@lists.infradead.org>

So it's no longer local to the addpart/delpart code and can be used
from other code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c  | 81 +++----------------------------------------
 include/cmdlinepart.h | 11 ++++++
 lib/Makefile          |  1 +
 lib/cmdlinepart.c     | 95 +++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 111 insertions(+), 77 deletions(-)
 create mode 100644 include/cmdlinepart.h
 create mode 100644 lib/cmdlinepart.c

diff --git a/commands/partition.c b/commands/partition.c
index ef6d9c9..c95433f 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -35,82 +35,9 @@
 #include <linux/stat.h>
 #include <libgen.h>
 #include <getopt.h>
+#include <cmdlinepart.h>
 #include <linux/err.h>
 
-#define SIZE_REMAINING ((ulong)-1)
-
-#define PART_ADD_DEVNAME (1 << 0)
-
-static int mtd_part_do_parse_one(char *devname, const char *partstr,
-				 char **endp, loff_t *offset,
-				 loff_t devsize, size_t *retsize,
-				 unsigned int pflags)
-{
-	loff_t size;
-	char *end;
-	char buf[PATH_MAX] = {};
-	unsigned long flags = 0;
-	int ret = 0;
-	struct cdev *cdev;
-
-	memset(buf, 0, PATH_MAX);
-
-	if (*partstr == '-') {
-		size = SIZE_REMAINING;
-		end = (char *)partstr + 1;
-	} else {
-		size = strtoull_suffix(partstr, &end, 0);
-	}
-
-	if (*end == '@')
-		*offset = strtoull_suffix(end+1, &end, 0);
-
-	if (size == SIZE_REMAINING)
-		size = devsize - *offset;
-
-	partstr = end;
-
-	if (*partstr == '(') {
-		partstr++;
-		end = strchr((char *) partstr, ')');
-		if (!end) {
-			printf("could not find matching ')'\n");
-			return -EINVAL;
-		}
-
-		if (pflags & PART_ADD_DEVNAME)
-			sprintf(buf, "%s.", devname);
-		memcpy(buf + strlen(buf), partstr, end - partstr);
-
-		end++;
-	}
-
-	if (size + *offset > devsize) {
-		printf("%s: partition end is beyond device\n", buf);
-		return -EINVAL;
-	}
-
-	partstr = end;
-
-	if (*partstr == 'r' && *(partstr + 1) == 'o') {
-		flags |= DEVFS_PARTITION_READONLY;
-		end = (char *)(partstr + 2);
-	}
-
-	if (endp)
-		*endp = end;
-
-	*retsize = size;
-
-	cdev = devfs_add_partition(devname, *offset, size, flags, buf);
-	if (IS_ERR(cdev)) {
-		ret = PTR_ERR(cdev);
-		printf("cannot create %s: %s\n", buf, strerror(-ret));
-	}
-
-	return ret;
-}
-
 static int do_addpart(int argc, char *argv[])
 {
 	char *devname;
@@ -119,12 +46,12 @@ static int do_addpart(int argc, char *argv[])
 	loff_t devsize;
 	struct stat s;
 	int opt;
-	unsigned int flags = PART_ADD_DEVNAME;
+	unsigned int flags = CMDLINEPART_ADD_DEVNAME;
 
 	while ((opt = getopt(argc, argv, "n")) > 0) {
 		switch (opt) {
 		case 'n':
-			flags &= ~PART_ADD_DEVNAME;
+			flags &= ~CMDLINEPART_ADD_DEVNAME;
 			break;
 		}
 	}
@@ -145,7 +72,7 @@ static int do_addpart(int argc, char *argv[])
 	while (1) {
 		size_t size = 0;
 
-		if (mtd_part_do_parse_one(devname, endp, &endp, &offset,
+		if (cmdlinepart_do_parse_one(devname, endp, &endp, &offset,
 					devsize, &size, flags))
 			return 1;
 
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
new file mode 100644
index 0000000..5ffa3c4
--- /dev/null
+++ b/include/cmdlinepart.h
@@ -0,0 +1,11 @@
+#ifndef __CMD_LINE_PART_H
+#define __CMD_LINE_PART_H
+
+#define CMDLINEPART_ADD_DEVNAME (1 << 0)
+
+int cmdlinepart_do_parse_one(char *devname, const char *partstr,
+				 char **endp, loff_t *offset,
+				 loff_t devsize, size_t *retsize,
+				 unsigned int partition_flags);
+
+#endif /* __CMD_LINE_PART_H */
diff --git a/lib/Makefile b/lib/Makefile
index 226570a..b97e52d 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -18,6 +18,7 @@ obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
 obj-y			+= stringlist.o
+obj-y			+= cmdlinepart.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-y			+= math.o
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
new file mode 100644
index 0000000..0474992
--- /dev/null
+++ b/lib/cmdlinepart.c
@@ -0,0 +1,95 @@
+/*
+ * command line partition parsing code
+ *
+ * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <driver.h>
+#include <fs.h>
+#include <linux/err.h>
+#include <cmdlinepart.h>
+
+#define SIZE_REMAINING ((size_t)-1)
+
+int cmdlinepart_do_parse_one(char *devname, const char *partstr,
+				 char **endp, loff_t *offset,
+				 loff_t devsize, size_t *retsize,
+				 unsigned int partition_flags)
+{
+	loff_t size;
+	char *end;
+	char buf[PATH_MAX] = {};
+	unsigned long flags = 0;
+	int ret = 0;
+	struct cdev *cdev;
+
+	memset(buf, 0, PATH_MAX);
+
+	if (*partstr == '-') {
+		size = SIZE_REMAINING;
+		end = (char *)partstr + 1;
+	} else {
+		size = strtoull_suffix(partstr, &end, 0);
+	}
+
+	if (*end == '@')
+		*offset = strtoull_suffix(end+1, &end, 0);
+
+	if (size == SIZE_REMAINING)
+		size = devsize - *offset;
+
+	partstr = end;
+
+	if (*partstr == '(') {
+		partstr++;
+		end = strchr((char *) partstr, ')');
+		if (!end) {
+			printf("could not find matching ')'\n");
+			return -EINVAL;
+		}
+
+		if (partition_flags & CMDLINEPART_ADD_DEVNAME)
+			sprintf(buf, "%s.", devname);
+		memcpy(buf + strlen(buf), partstr, end - partstr);
+
+		end++;
+	}
+
+	if (size + *offset > devsize) {
+		printf("%s: partition end is beyond device\n", buf);
+		return -EINVAL;
+	}
+
+	partstr = end;
+
+	if (*partstr == 'r' && *(partstr + 1) == 'o') {
+		flags |= DEVFS_PARTITION_READONLY;
+		end = (char *)(partstr + 2);
+	}
+
+	if (endp)
+		*endp = end;
+
+	*retsize = size;
+
+	cdev = devfs_add_partition(devname, *offset, size, flags, buf);
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
+		printf("cannot create %s: %s\n", buf, strerror(-ret));
+	}
+
+	return ret;
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
