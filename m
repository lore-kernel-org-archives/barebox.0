Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyMhy-00012b-Gn
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 10:37:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 22 Sep 2010 12:36:25 +0200
Message-Id: <1285151785-507-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] commands/crc32: add compare 2 files crc
To: barebox@lists.infradead.org

add -F options to compare to file crc

it's usefull to compare what you flash in a partition

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/crc.c |  103 ++++++++++++++++++++++++++++++++++++--------------------
 1 files changed, 66 insertions(+), 37 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index 4842cdc..a2b8e78 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -30,20 +30,76 @@
 #include <malloc.h>
 #include <linux/ctype.h>
 
+static int file_crc(char* filename, ulong start, ulong size, ulong *crc,
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
+		printf("open %s: %s\n", filename, errno_str());
+		return fd;
+	}
+
+	if (start > 0) {
+		ret = lseek(fd, start, SEEK_SET);
+		if (ret == -1) {
+			perror("lseek");
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
+	printf ("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
+			filename, start, start + *total - 1, *crc);
+
+out_free:
+	free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+
 static int do_crc(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong start = 0, size = ~0, total = 0;
 	ulong crc = 0, vcrc = 0;
 	char *filename = "/dev/mem";
-	char *buf;
-	int fd, opt, err = 0, filegiven = 0, verify = 0, now;
+	char *vfilename = NULL;
+	int opt, err = 0, filegiven = 0, verify = 0;
 
-	while((opt = getopt(argc, argv, "f:v:")) > 0) {
+	while((opt = getopt(argc, argv, "f:F:v:")) > 0) {
 		switch(opt) {
 		case 'f':
 			filename = optarg;
 			filegiven = 1;
 			break;
+		case 'F':
+			verify = 1;
+			vfilename = optarg;
+			break;
 		case 'v':
 			verify = 1;
 			vcrc = simple_strtoul(optarg, NULL, 0);
@@ -61,39 +117,16 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 		}
 	}
 
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("open %s: %s\n", filename, errno_str());
+	if (file_crc(filename, start, size, &crc, &total) < 0)
 		return 1;
-	}
 
-	if (start > 0) {
-		if (lseek(fd, start, SEEK_SET) == -1) {
-			perror("lseek");
-			err = 1;
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
-			perror("read");
-			goto out_free;
-		}
-		if (!now)
-			break;
-		crc = crc32(crc, buf, now);
-		size -= now;
-		total += now;
+	if (vfilename) {
+		size = total;
+		puts("\n");
+		if (file_crc(vfilename, start, size, &vcrc, &total) < 0)
+			return 1;
 	}
 
-	printf ("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
-			filename, start, start + total - 1, crc);
-
 	if (verify && crc != vcrc) {
 		printf(" != 0x%08x ** ERROR **", vcrc);
 		err = 1;
@@ -101,11 +134,6 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 
 	printf("\n");
 
-out_free:
-	free(buf);
-out:
-	close(fd);
-
 	return err;
 }
 
@@ -114,6 +142,7 @@ static const __maybe_unused char cmd_crc_help[] =
 "Calculate a crc32 checksum of a memory area\n"
 "Options:\n"
 "  -f <file>   Use file instead of memory\n"
+"  -F <file>   Use file to compare\n"
 "  -v <crc>    Verfify\n";
 
 BAREBOX_CMD_START(crc32)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
