Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUz0-0007GD-Ca
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:49:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id go2so7839691plb.9
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:49:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:49:00 -0700
Message-Id: <20190528054900.26671-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] commands: Introduce memcpy_parse_options()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both memcpy and memcmp have identical options, so in order to share
code between them, introduce memcpy_parse_options() and change both
tools to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memcmp.c | 41 ++-------------------------------------
 commands/memcpy.c | 41 ++-------------------------------------
 include/common.h  |  2 ++
 lib/misc.c        | 49 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 55 insertions(+), 78 deletions(-)

diff --git a/commands/memcmp.c b/commands/memcmp.c
index 48957b450..d1c4f5205 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -34,54 +34,17 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-static char *devmem = "/dev/mem";
-
 static int do_memcmp(int argc, char *argv[])
 {
-	loff_t	addr1, addr2, count = ~0;
-	int	mode  = O_RWSIZE_1;
-	char   *sourcefile = devmem;
-	char   *destfile = devmem;
+	loff_t	count;
 	int     sourcefd, destfd;
 	char   *buf, *source_data, *dest_data;
 	int     ret = 1;
 	int     offset = 0;
-	struct  stat statbuf;
-
-	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
-			&destfile, NULL) < 0)
-		return 1;
-
-	if (optind + 2 > argc)
-		return COMMAND_ERROR_USAGE;
-
-	addr1 = strtoull_suffix(argv[optind], NULL, 0);
-	addr2 = strtoull_suffix(argv[optind + 1], NULL, 0);
-
-	if (optind + 2 == argc) {
-		if (sourcefile == devmem) {
-			printf("source and count not given\n");
-			return 1;
-		}
-		if (stat(sourcefile, &statbuf)) {
-			perror("stat");
-			return 1;
-		}
-		count = statbuf.st_size - addr1;
-	} else {
-		count = strtoull_suffix(argv[optind + 2], NULL, 0);
-	}
 
-	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, addr1);
-	if (sourcefd < 0)
+	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count) < 0)
 		return 1;
 
-	destfd = open_and_lseek(destfile, mode | O_RDONLY, addr2);
-	if (destfd < 0) {
-		close(sourcefd);
-		return 1;
-	}
-
 	buf = xmalloc(RW_BUF_SIZE + RW_BUF_SIZE);
 	source_data = buf;
 	dest_data   = buf + RW_BUF_SIZE;
diff --git a/commands/memcpy.c b/commands/memcpy.c
index ef25fb7b2..5f0047f87 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -34,53 +34,16 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-static char *devmem = "/dev/mem";
-
 static int do_memcpy(int argc, char *argv[])
 {
-	loff_t count, dest, src;
-	char *sourcefile = devmem;
-	char *destfile = devmem;
+	loff_t count;
 	int sourcefd, destfd;
-	int mode = 0;
-	struct stat statbuf;
 	int ret = 0;
 	char *buf;
 
-	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
-			&destfile, NULL) < 0)
-		return 1;
-
-	if (optind + 2 > argc)
-		return COMMAND_ERROR_USAGE;
-
-	src = strtoull_suffix(argv[optind], NULL, 0);
-	dest = strtoull_suffix(argv[optind + 1], NULL, 0);
-
-	if (optind + 2 == argc) {
-		if (sourcefile == devmem) {
-			printf("source and count not given\n");
-			return 1;
-		}
-		if (stat(sourcefile, &statbuf)) {
-			perror("stat");
-			return 1;
-		}
-		count = statbuf.st_size - src;
-	} else {
-		count = strtoull_suffix(argv[optind + 2], NULL, 0);
-	}
-
-	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
-	if (sourcefd < 0)
+	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count) < 0)
 		return 1;
 
-	destfd = open_and_lseek(destfile, O_WRONLY | O_CREAT | mode, dest);
-	if (destfd < 0) {
-		close(sourcefd);
-		return 1;
-	}
-
 	buf = xmalloc(RW_BUF_SIZE);
 
 	while (count > 0) {
diff --git a/include/common.h b/include/common.h
index 723b9c706..b1294978d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -116,6 +116,8 @@ void shutdown_barebox(void);
 
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
+int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
+			 int *destfd, loff_t *count);
 #define RW_BUF_SIZE	(unsigned)4096
 
 extern const char version_string[];
diff --git a/lib/misc.c b/lib/misc.c
index cd420a57d..18153bb4d 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -24,6 +24,7 @@
 #include <string.h>
 #include <linux/ctype.h>
 #include <getopt.h>
+#include <libfile.h>
 
 /*
  * Like simple_strtoull() but handles an optional G, M, K or k
@@ -171,3 +172,51 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 	return 0;
 }
 
+int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
+			 int *destfd, loff_t *count)
+{
+	loff_t dest, src;
+	int mode = 0;
+	char *sourcefile = NULL;
+	char *destfile = NULL;
+	struct  stat statbuf;
+
+	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
+			      &destfile, NULL) < 0)
+		return -EINVAL;
+
+	if (optind + 2 > argc)
+		return -EINVAL;
+
+	src = strtoull_suffix(argv[optind], NULL, 0);
+	dest = strtoull_suffix(argv[optind + 1], NULL, 0);
+
+	if (optind + 2 == argc) {
+		if (!sourcefile) {
+			printf("source and count not given\n");
+			return -EINVAL;
+		}
+		if (stat(sourcefile, &statbuf)) {
+			perror("stat");
+			return -1;
+		}
+		*count = statbuf.st_size - src;
+	} else {
+		*count = strtoull_suffix(argv[optind + 2], NULL, 0);
+	}
+
+	sourcefile = sourcefile ?: "/dev/mem";
+	destfile = destfile ?: "/dev/mem";
+
+	*sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
+	if (*sourcefd < 0)
+		return -1;
+
+	*destfd = open_and_lseek(destfile, O_WRONLY | O_CREAT | mode, dest);
+	if (*destfd < 0) {
+		close(*sourcefd);
+		return -1;
+	}
+
+	return 0;
+}
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
