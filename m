Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N9-Pz
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:58 +0200
Message-Id: <1340740503-7003-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] make parse_area_spec arguments loff_t
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/crc.c    |    4 ++--
 commands/digest.c |    4 ++--
 commands/flash.c  |    4 ++--
 commands/mem.c    |    4 ++--
 include/common.h  |    2 +-
 lib/misc.c        |   10 +++++-----
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index df22941..09af6aa 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -84,8 +84,8 @@ out:
 
 static int do_crc(int argc, char *argv[])
 {
-	ulong start = 0, size = ~0, total = 0;
-	ulong crc = 0, vcrc = 0;
+	loff_t start = 0, size = ~0;
+	ulong crc = 0, vcrc = 0, total = 0;
 	char *filename = "/dev/mem";
 #ifdef CONFIG_CMD_CRC_CMP
 	char *vfilename = NULL;
diff --git a/commands/digest.c b/commands/digest.c
index 8432914..07cbec9 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -51,7 +51,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	argv++;
 	while (*argv) {
 		char *filename = "/dev/mem";
-		ulong start = 0, size = ~0;
+		loff_t start = 0, size = ~0;
 
 		/* arguments are either file, file+area or area */
 		if (parse_area_spec(*argv, &start, &size)) {
@@ -66,7 +66,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		for (i = 0; i < d->length; i++)
 			printf("%02x", hash[i]);
 
-		printf("  %s\t0x%08lx ... 0x%08lx\n", filename, start, start + size);
+		printf("  %s\t0x%08llx ... 0x%08llx\n", filename, start, start + size);
 
 		argv++;
 	}
diff --git a/commands/flash.c b/commands/flash.c
index 1fcb1cf..d71349a 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -41,7 +41,7 @@ static int do_flerase(int argc, char *argv[])
 	int fd;
 	char *filename = NULL;
 	struct stat s;
-	unsigned long start = 0, size = ~0;
+	loff_t start = 0, size = ~0;
 	int ret = 0;
 
 	if (argc == 1)
@@ -109,7 +109,7 @@ static int do_protect(int argc, char *argv[])
 	char *filename = NULL;
 	struct stat s;
 	int prot = 1;
-	unsigned long start = 0, size = ~0;
+	loff_t start = 0, size = ~0;
 	int ret = 0, err;
 
 	if (argc == 1)
diff --git a/commands/mem.c b/commands/mem.c
index 649d5bf..0719700 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -163,7 +163,7 @@ static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 
 static int do_mem_md(int argc, char *argv[])
 {
-	ulong	start = 0, size = 0x100;
+	loff_t	start = 0, size = 0x100;
 	int	r, now;
 	int	ret = 0;
 	int fd;
@@ -187,7 +187,7 @@ static int do_mem_md(int argc, char *argv[])
 		return 1;
 
 	do {
-		now = min(size, RW_BUF_SIZE);
+		now = min(size, (loff_t)RW_BUF_SIZE);
 		r = read(fd, rw_buf, now);
 		if (r < 0) {
 			perror("read");
diff --git a/include/common.h b/include/common.h
index 328aa30..08ff0f3 100644
--- a/include/common.h
+++ b/include/common.h
@@ -138,7 +138,7 @@ struct memarea_info {
         unsigned long flags;
 };
 
-int parse_area_spec(const char *str, ulong *start, ulong *size);
+int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
 unsigned long strtoul_suffix(const char *str, char **endp, int base);
diff --git a/lib/misc.c b/lib/misc.c
index cdf0185..8a95396 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -75,15 +75,15 @@ EXPORT_SYMBOL(strtoul_suffix);
  * 0x1000        -> start = 0x1000, size = ~0
  * 1M+1k         -> start = 0x100000, size = 0x400
  */
-int parse_area_spec(const char *str, ulong *start, ulong *size)
+int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 {
 	char *endp;
-	ulong end;
+	loff_t end;
 
 	if (!isdigit(*str))
 		return -1;
 
-	*start = strtoul_suffix(str, &endp, 0);
+	*start = strtoull_suffix(str, &endp, 0);
 
 	str = endp;
 
@@ -95,7 +95,7 @@ int parse_area_spec(const char *str, ulong *start, ulong *size)
 
 	if (*str == '-') {
 		/* beginning and end given */
-		end = strtoul_suffix(str + 1, NULL, 0);
+		end = strtoull_suffix(str + 1, NULL, 0);
 		if (end < *start) {
 			printf("end < start\n");
 			return -1;
@@ -106,7 +106,7 @@ int parse_area_spec(const char *str, ulong *start, ulong *size)
 
 	if (*str == '+') {
 		/* beginning and size given */
-		*size = strtoul_suffix(str + 1, NULL, 0);
+		*size = strtoull_suffix(str + 1, NULL, 0);
 		return 0;
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
