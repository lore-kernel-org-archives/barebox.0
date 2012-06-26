Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006NB-Qz
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:55:02 +0200
Message-Id: <1340740503-7003-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] memory commands: Make 64bit capable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |   39 +++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 2b85f82..b8e3bc4 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -43,7 +43,7 @@
 #define PRINTF(fmt,args...)
 #endif
 
-#define RW_BUF_SIZE	(ulong)4096
+#define RW_BUF_SIZE	4096
 static char *rw_buf;
 
 static char *DEVMEM = "/dev/mem";
@@ -108,7 +108,7 @@ int memory_display(char *addr, loff_t offs, ulong nbytes, int size)
 	return 0;
 }
 
-static int open_and_lseek(const char *filename, int mode, off_t pos)
+static int open_and_lseek(const char *filename, int mode, loff_t pos)
 {
 	int fd, ret;
 
@@ -240,7 +240,7 @@ static int do_mem_mw(int argc, char *argv[])
 	int fd;
 	char *filename = DEVMEM;
 	int mode = O_RWSIZE_4;
-	ulong adr;
+	loff_t adr;
 
 	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename) < 0)
 		return 1;
@@ -248,7 +248,7 @@ static int do_mem_mw(int argc, char *argv[])
 	if (optind + 1 >= argc)
 		return COMMAND_ERROR_USAGE;
 
-	adr = strtoul_suffix(argv[optind++], NULL, 0);
+	adr = strtoull_suffix(argv[optind++], NULL, 0);
 
 	fd = open_and_lseek(filename, mode | O_WRONLY, adr);
 	if (fd < 0)
@@ -300,7 +300,7 @@ BAREBOX_CMD_END
 
 static int do_mem_cmp(int argc, char *argv[])
 {
-	ulong	addr1, addr2, count = ~0;
+	loff_t	addr1, addr2, count = ~0;
 	int	mode  = O_RWSIZE_1;
 	char   *sourcefile = DEVMEM;
 	char   *destfile = DEVMEM;
@@ -316,8 +316,8 @@ static int do_mem_cmp(int argc, char *argv[])
 	if (optind + 2 > argc)
 		return COMMAND_ERROR_USAGE;
 
-	addr1 = strtoul_suffix(argv[optind], NULL, 0);
-	addr2 = strtoul_suffix(argv[optind + 1], NULL, 0);
+	addr1 = strtoull_suffix(argv[optind], NULL, 0);
+	addr2 = strtoull_suffix(argv[optind + 1], NULL, 0);
 
 	if (optind + 2 == argc) {
 		if (sourcefile == DEVMEM) {
@@ -330,7 +330,7 @@ static int do_mem_cmp(int argc, char *argv[])
 		}
 		count = statbuf.st_size - addr1;
 	} else {
-		count = strtoul_suffix(argv[optind + 2], NULL, 0);
+		count = strtoull_suffix(argv[optind + 2], NULL, 0);
 	}
 
 	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, addr1);
@@ -348,7 +348,7 @@ static int do_mem_cmp(int argc, char *argv[])
 	while (count > 0) {
 		int now, r1, r2, i;
 
-		now = min(RW_BUF_SIZE, count);
+		now = min((loff_t)RW_BUF_SIZE, count);
 
 		r1 = read(sourcefd, rw_buf,  now);
 		if (r1 < 0) {
@@ -409,8 +409,7 @@ BAREBOX_CMD_END
 
 static int do_mem_cp(int argc, char *argv[])
 {
-	ulong count;
-	ulong	dest, src;
+	loff_t count, dest, src;
 	char *sourcefile = DEVMEM;
 	char *destfile = DEVMEM;
 	int sourcefd, destfd;
@@ -424,8 +423,8 @@ static int do_mem_cp(int argc, char *argv[])
 	if (optind + 2 > argc)
 		return COMMAND_ERROR_USAGE;
 
-	src = strtoul_suffix(argv[optind], NULL, 0);
-	dest = strtoul_suffix(argv[optind + 1], NULL, 0);
+	src = strtoull_suffix(argv[optind], NULL, 0);
+	dest = strtoull_suffix(argv[optind + 1], NULL, 0);
 
 	if (optind + 2 == argc) {
 		if (sourcefile == DEVMEM) {
@@ -438,7 +437,7 @@ static int do_mem_cp(int argc, char *argv[])
 		}
 		count = statbuf.st_size - src;
 	} else {
-		count = strtoul_suffix(argv[optind + 2], NULL, 0);
+		count = strtoull_suffix(argv[optind + 2], NULL, 0);
 	}
 
 	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
@@ -454,7 +453,7 @@ static int do_mem_cp(int argc, char *argv[])
 	while (count > 0) {
 		int now, r, w, tmp;
 
-		now = min(RW_BUF_SIZE, count);
+		now = min((loff_t)RW_BUF_SIZE, count);
 
 		r = read(sourcefd, rw_buf, now);
 		if (r < 0) {
@@ -516,7 +515,7 @@ BAREBOX_CMD_END
 
 static int do_memset(int argc, char *argv[])
 {
-	ulong	s, c, n;
+	loff_t	s, c, n;
 	int     fd;
 	char   *buf;
 	int	mode  = O_RWSIZE_1;
@@ -529,9 +528,9 @@ static int do_memset(int argc, char *argv[])
 	if (optind + 3 > argc)
 		return COMMAND_ERROR_USAGE;
 
-	s = strtoul_suffix(argv[optind], NULL, 0);
-	c = strtoul_suffix(argv[optind + 1], NULL, 0);
-	n = strtoul_suffix(argv[optind + 2], NULL, 0);
+	s = strtoull_suffix(argv[optind], NULL, 0);
+	c = strtoull_suffix(argv[optind + 1], NULL, 0);
+	n = strtoull_suffix(argv[optind + 2], NULL, 0);
 
 	fd = open_and_lseek(file, mode | O_WRONLY, s);
 	if (fd < 0)
@@ -543,7 +542,7 @@ static int do_memset(int argc, char *argv[])
 	while (n > 0) {
 		int now;
 
-		now = min(RW_BUF_SIZE, n);
+		now = min((loff_t)RW_BUF_SIZE, n);
 
 		ret = write(fd, buf, now);
 		if (ret < 0) {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
