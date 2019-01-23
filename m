Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm774-0007SS-3o
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:13:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn14so243336plb.10
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:33 -0800
Message-Id: <20190123011338.32517-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190123011338.32517-1-andrew.smirnov@gmail.com>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/7] commands: Get rid of mem_rw_buf
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There doesn't seem to be any good reason for all of the memory
commands (md, mw, etc.) to rely on a shared pre-allocated buffer
anymore. So, to simplify things, drop the shared buffer and adjust all
of the utilites to allocate needed memory.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/md.c     | 12 +++++++-----
 commands/mem.c    |  6 ------
 commands/memcmp.c | 16 ++++++++--------
 commands/memcpy.c | 10 ++++++----
 commands/memset.c |  2 --
 common/ratp/md.c  |  9 +++++----
 6 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/commands/md.c b/commands/md.c
index a495fc8b4..2389c12d1 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -34,8 +34,6 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-extern char *mem_rw_buf;
-
 static int do_mem_md(int argc, char *argv[])
 {
 	loff_t	start = 0, size = 0x100;
@@ -46,6 +44,7 @@ static int do_mem_md(int argc, char *argv[])
 	int mode = O_RWSIZE_4;
 	int swab = 0;
 	void *map;
+	void *buf = NULL;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -74,9 +73,11 @@ static int do_mem_md(int argc, char *argv[])
 		goto out;
 	}
 
+	buf = xmalloc(RW_BUF_SIZE);
+
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
-		r = read(fd, mem_rw_buf, now);
+		r = read(fd, buf, now);
 		if (r < 0) {
 			perror("read");
 			goto out;
@@ -84,8 +85,8 @@ static int do_mem_md(int argc, char *argv[])
 		if (!r)
 			goto out;
 
-		if ((ret = memory_display(mem_rw_buf, start, r,
-				mode >> O_RWSIZE_SHIFT, swab)))
+		if ((ret = memory_display(buf, start, r,
+					  mode >> O_RWSIZE_SHIFT, swab)))
 			goto out;
 
 		start += r;
@@ -93,6 +94,7 @@ static int do_mem_md(int argc, char *argv[])
 	} while (size);
 
 out:
+	free(buf);
 	close(fd);
 
 	return ret ? 1 : 0;
diff --git a/commands/mem.c b/commands/mem.c
index 62488bf52..8a47e1fe1 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -39,8 +39,6 @@
 #define PRINTF(fmt,args...)
 #endif
 
-char *mem_rw_buf;
-
 static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
@@ -73,10 +71,6 @@ static struct driver_d mem_drv = {
 
 static int mem_init(void)
 {
-	mem_rw_buf = malloc(RW_BUF_SIZE);
-	if(!mem_rw_buf)
-		return -ENOMEM;
-
 	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
 	return platform_driver_register(&mem_drv);
 }
diff --git a/commands/memcmp.c b/commands/memcmp.c
index 981c8cb38..48957b450 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -34,8 +34,6 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-extern char *mem_rw_buf;
-
 static char *devmem = "/dev/mem";
 
 static int do_memcmp(int argc, char *argv[])
@@ -45,7 +43,7 @@ static int do_memcmp(int argc, char *argv[])
 	char   *sourcefile = devmem;
 	char   *destfile = devmem;
 	int     sourcefd, destfd;
-	char   *rw_buf1;
+	char   *buf, *source_data, *dest_data;
 	int     ret = 1;
 	int     offset = 0;
 	struct  stat statbuf;
@@ -84,20 +82,22 @@ static int do_memcmp(int argc, char *argv[])
 		return 1;
 	}
 
-	rw_buf1 = xmalloc(RW_BUF_SIZE);
+	buf = xmalloc(RW_BUF_SIZE + RW_BUF_SIZE);
+	source_data = buf;
+	dest_data   = buf + RW_BUF_SIZE;
 
 	while (count > 0) {
 		int now, r1, r2, i;
 
 		now = min((loff_t)RW_BUF_SIZE, count);
 
-		r1 = read_full(sourcefd, mem_rw_buf, now);
+		r1 = read_full(sourcefd, source_data, now);
 		if (r1 < 0) {
 			perror("read");
 			goto out;
 		}
 
-		r2 = read_full(destfd, rw_buf1, now);
+		r2 = read_full(destfd, dest_data, now);
 		if (r2 < 0) {
 			perror("read");
 			goto out;
@@ -109,7 +109,7 @@ static int do_memcmp(int argc, char *argv[])
 		}
 
 		for (i = 0; i < now; i++) {
-			if (mem_rw_buf[i] != rw_buf1[i]) {
+			if (source_data[i] != dest_data[i]) {
 				printf("files differ at offset %d\n", offset);
 				goto out;
 			}
@@ -124,7 +124,7 @@ static int do_memcmp(int argc, char *argv[])
 out:
 	close(sourcefd);
 	close(destfd);
-	free(rw_buf1);
+	free(buf);
 
 	return ret;
 }
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 168ef3b4f..ddaf767ea 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -34,8 +34,6 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-extern char *mem_rw_buf;
-
 static char *devmem = "/dev/mem";
 
 static int do_memcpy(int argc, char *argv[])
@@ -47,6 +45,7 @@ static int do_memcpy(int argc, char *argv[])
 	int mode = 0;
 	struct stat statbuf;
 	int ret = 0;
+	char *buf;
 
 	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
 			&destfile, NULL) < 0)
@@ -82,12 +81,14 @@ static int do_memcpy(int argc, char *argv[])
 		return 1;
 	}
 
+	buf = xmalloc(RW_BUF_SIZE);
+
 	while (count > 0) {
 		int now, r, w, tmp;
 
 		now = min((loff_t)RW_BUF_SIZE, count);
 
-		r = read(sourcefd, mem_rw_buf, now);
+		r = read(sourcefd, buf, now);
 		if (r < 0) {
 			perror("read");
 			goto out;
@@ -99,7 +100,7 @@ static int do_memcpy(int argc, char *argv[])
 		tmp = 0;
 		now = r;
 		while (now) {
-			w = write(destfd, mem_rw_buf + tmp, now);
+			w = write(destfd, buf + tmp, now);
 			if (w < 0) {
 				perror("write");
 				goto out;
@@ -123,6 +124,7 @@ static int do_memcpy(int argc, char *argv[])
 	}
 
 out:
+	free(buf);
 	close(sourcefd);
 	close(destfd);
 
diff --git a/commands/memset.c b/commands/memset.c
index f99bf86c0..b0770159f 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -34,8 +34,6 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 
-extern char *mem_rw_buf;
-
 static int do_memset(int argc, char *argv[])
 {
 	loff_t	s, c, n;
diff --git a/common/ratp/md.c b/common/ratp/md.c
index ce343d7c7..a25cbf112 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -59,8 +59,6 @@ struct ratp_bb_md_response {
 	uint8_t  buffer[];
 } __packed;
 
-extern char *mem_rw_buf;
-
 static int do_ratp_mem_md(const char *filename,
 			  loff_t start,
 			  loff_t size,
@@ -70,6 +68,7 @@ static int do_ratp_mem_md(const char *filename,
 	int ret = 0;
 	int fd;
 	void *map;
+	char *buf = NULL;
 
 	fd = open_and_lseek(filename, O_RWSIZE_1 | O_RDONLY, start);
 	if (fd < 0)
@@ -81,10 +80,11 @@ static int do_ratp_mem_md(const char *filename,
 		goto out;
 	}
 
+	buf = xmalloc(RW_BUF_SIZE);
 	t = 0;
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
-		r = read(fd, mem_rw_buf, now);
+		r = read(fd, buf, now);
 		if (r < 0) {
 			ret = -errno;
 			perror("read");
@@ -93,13 +93,14 @@ static int do_ratp_mem_md(const char *filename,
 		if (!r)
 			goto out;
 
-		memcpy(output + t, (uint8_t *)(mem_rw_buf), r);
+		memcpy(output + t, buf, r);
 
 		size  -= r;
 		t     += r;
 	} while (size);
 
 out:
+	free(buf);
 	close(fd);
 
 	return ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
