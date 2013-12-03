Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnz3a-00044w-Bl
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 23:07:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1Vnz3D-0002Af-Fr
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 00:06:43 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mgr@pengutronix.de>) id 1Vnz3D-00044w-Eb
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 00:06:43 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Dec 2013 00:06:38 +0100
Message-Id: <1386111998-15579-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] scripts: bareboxcrc32 as host and target userspacetool
To: barebox@lists.infradead.org

This patch adds the crc32 command to be build
as host and optionally as target tool.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 commands/crc.c         | 63 ++++----------------------------------------------
 common/Kconfig         |  7 ++++++
 crypto/crc32.c         | 60 +++++++++++++++++++++++++++++++++++++++++++++++
 include/common.h       |  2 ++
 scripts/Makefile       |  2 ++
 scripts/bareboxcrc32.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++
 scripts/bareboxenv.c   | 19 ---------------
 scripts/compiler.h     | 25 ++++++++++++++++++++
 8 files changed, 160 insertions(+), 78 deletions(-)
 create mode 100644 scripts/bareboxcrc32.c

diff --git a/commands/crc.c b/commands/crc.c
index ee8dacf..824dda4 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -21,66 +21,8 @@
 #include <command.h>
 #include <fs.h>
 #include <getopt.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <xfuncs.h>
 #include <malloc.h>
-#include <linux/ctype.h>
-
-static int file_crc(char* filename, ulong start, ulong size, ulong *crc,
-		    ulong *total)
-{
-	int fd, now;
-	int ret = 0;
-	char *buf;
-
-	*total = 0;
-	*crc = 0;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("open %s: %s\n", filename, errno_str());
-		return fd;
-	}
-
-	if (start > 0) {
-		off_t lseek_ret;
-		errno = 0;
-		lseek_ret = lseek(fd, start, SEEK_SET);
-		if (lseek_ret == (off_t)-1 && errno) {
-			perror("lseek");
-			ret = -1;
-			goto out;
-		}
-	}
-
-	buf = xmalloc(4096);
-
-	while (size) {
-		now = min((ulong)4096, size);
-		now = read(fd, buf, now);
-		if (now < 0) {
-			ret = now;
-			perror("read");
-			goto out_free;
-		}
-		if (!now)
-			break;
-		*crc = crc32(*crc, buf, now);
-		size -= now;
-		*total += now;
-	}
-
-	printf ("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
-			filename, start, start + *total - 1, *crc);
-
-out_free:
-	free(buf);
-out:
-	close(fd);
-
-	return ret;
-}
+#include <environment.h>
 
 static int crc_from_file(const char* file, ulong *crc)
 {
@@ -143,6 +85,9 @@ static int do_crc(int argc, char *argv[])
 	if (file_crc(filename, start, size, &crc, &total) < 0)
 		return 1;
 
+	printf("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
+			filename, (ulong)start, (ulong)start + total - 1, crc);
+
 #ifdef CONFIG_CMD_CRC_CMP
 	if (vfilename) {
 		size = total;
diff --git a/common/Kconfig b/common/Kconfig
index 4e46005..ce426f2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -620,6 +620,13 @@ config BAREBOXENV_TARGET
 	  'bareboxenv' is a tool to access the barebox environment from a running Linux
 	  system. Say yes here to build it for the target.
 
+config BAREBOXCRC32_TARGET
+	bool
+	prompt "build bareboxcrc32 tool for target"
+	help
+	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
+	  barebox does. Say yes here to build it for the target.
+
 config POLLER
 	bool "generic polling infrastructure"
 
diff --git a/crypto/crc32.c b/crypto/crc32.c
index 275edb4..2821c9c 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -10,6 +10,12 @@
 
 #ifdef __BAREBOX__	/* Shut down "ANSI does not permit..." warnings */
 #include <common.h>
+#include <xfuncs.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <linux/ctype.h>
+#include <errno.h>
 #endif
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
@@ -178,3 +184,57 @@ uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
     return crc;
 }
 
+int file_crc(char *filename, ulong start, ulong size, ulong *crc,
+		    ulong *total)
+{
+	int fd, now;
+	int ret = 0;
+	char *buf;
+
+	*total = 0;
+	*crc = 0;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		printf("open %s: %d\n", filename, errno);
+		return fd;
+	}
+
+	if (start > 0) {
+		off_t lseek_ret;
+		errno = 0;
+		lseek_ret = lseek(fd, start, SEEK_SET);
+		if (lseek_ret == (off_t)-1 && errno) {
+			perror("lseek");
+			ret = -1;
+			goto out;
+		}
+	}
+
+	buf = xmalloc(4096);
+
+	while (size) {
+		now = min((ulong)4096, size);
+		now = read(fd, buf, now);
+		if (now < 0) {
+			ret = now;
+			perror("read");
+			goto out_free;
+		}
+		if (!now)
+			break;
+		*crc = crc32(*crc, buf, now);
+		size -= now;
+		*total += now;
+	}
+
+out_free:
+	free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+#ifdef __BAREBOX__
+EXPORT_SYMBOL(file_crc);
+#endif
diff --git a/include/common.h b/include/common.h
index 00f1642..293f504 100644
--- a/include/common.h
+++ b/include/common.h
@@ -115,6 +115,8 @@ long	simple_strtol(const char *cp,char **endp,unsigned int base);
 /* lib_generic/crc32.c */
 uint32_t crc32(uint32_t, const void*, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
+int file_crc(char *filename, ulong start, ulong size, ulong *crc,
+		    ulong *total);
 
 /* common/console.c */
 int	ctrlc (void);
diff --git a/scripts/Makefile b/scripts/Makefile
index 2f78c4b..55190f6 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -8,6 +8,7 @@ hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
 hostprogs-y                      += fix_size
 hostprogs-y                      += bareboxenv
+hostprogs-y                      += bareboxcrc32
 hostprogs-y                      += kernel-install
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
@@ -25,6 +26,7 @@ subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
 
 targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
+targetprogs-$(CONFIG_BAREBOXCRC32_TARGET) += bareboxcrc32-target
 targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
 
 # Let clean descend into subdirs
diff --git a/scripts/bareboxcrc32.c b/scripts/bareboxcrc32.c
new file mode 100644
index 0000000..e00ffaf
--- /dev/null
+++ b/scripts/bareboxcrc32.c
@@ -0,0 +1,60 @@
+/*
+ * bareboxcrc32.c - generate crc32 checksum in little endian
+ *
+ * Copyright (c) 2013 Michael Grzeschik <mgr@pengutronix.de>
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
+
+#include <stdio.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <limits.h>
+#include <errno.h>
+#include <dirent.h>
+#include <stdlib.h>
+#include <string.h>
+#include <getopt.h>
+#include <libgen.h>
+
+#include "compiler.h"
+
+#define debug(...)
+
+#include "../crypto/crc32.c"
+
+int main(int argc, char *argv[])
+{
+	loff_t start = 0, size = ~0;
+	ulong crc = 0, total = 0;
+	char *filename = NULL;
+	int i;
+
+	if (!filename && argc < 2) {
+		printf("usage: %s filename\n", argv[0]);
+		exit(1);
+	}
+
+	for (i = 1; i < argc; i++) {
+		filename = argv[i];
+		if (file_crc(filename, start, size, &crc, &total) < 0)
+			exit(1);
+		printf("%08lx\t%s\n", crc, filename);
+	}
+
+	exit(0);
+
+}
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index f372685..da420db 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -35,25 +35,6 @@
 
 #define debug(...)
 
-static void *xmalloc(size_t size)
-{
-	void *p = NULL;
-
-	if (!(p = malloc(size))) {
-		printf("ERROR: out of memory\n");
-		exit(1);
-	}
-
-	return p;
-}
-
-static void *xzalloc(size_t size)
-{
-	void *p = xmalloc(size);
-	memset(p, 0, size);
-	return p;
-}
-
 /* Find out if the last character of a string matches the one given.
  * Don't underrun the buffer if the string length is 0.
  */
diff --git a/scripts/compiler.h b/scripts/compiler.h
index 53f84b6..0891c3b 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -107,4 +107,29 @@ typedef uint32_t __u32;
 # define be64_to_cpu(x)		(x)
 #endif
 
+#define min(x, y) ({                            \
+	typeof(x) _min1 = (x);                  \
+	typeof(y) _min2 = (y);                  \
+	(void) (&_min1 == &_min2);              \
+	_min1 < _min2 ? _min1 : _min2; })
+
+inline void *xmalloc(size_t size)
+{
+	void *p = NULL;
+
+	if (!(p = malloc(size))) {
+		printf("ERROR: out of memory\n");
+		exit(1);
+	}
+
+	return p;
+}
+
+inline void *xzalloc(size_t size)
+{
+	void *p = xmalloc(size);
+	memset(p, 0, size);
+	return p;
+}
+
 #endif
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
