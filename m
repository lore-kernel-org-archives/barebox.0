Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f212.google.com ([209.85.218.212])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVmCW-00076b-Pz
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 13:27:01 +0000
Received: by bwz4 with SMTP id 4so302737bwz.2
	for <barebox@lists.infradead.org>; Fri, 15 Jan 2010 05:26:55 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Fri, 15 Jan 2010 14:26:51 +0100
Message-Id: <1263562011-20130-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] addpart: support @<offset>
To: barebox@lists.infradead.org

We claim to be compatible with the kernel's cmdlinepart parser, so
support <size>@<offset> like the kernel does.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 commands/partition.c |   18 +++++++++++++-----
 1 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 3cb7b61..b7e2031 100755
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -41,8 +41,10 @@
 #include <linux/stat.h>
 #include <libgen.h>
 
+#define SIZE_REMAINING ((ulong)-1)
+
 static int mtd_part_do_parse_one(char *devname, const char *partstr,
-				 char **endp, unsigned long offset,
+				 char **endp, unsigned long *offset,
 				 off_t devsize, size_t *retsize)
 {
 	ulong size;
@@ -54,12 +56,18 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	memset(buf, 0, PATH_MAX);
 
 	if (*partstr == '-') {
-		size = devsize - offset;
+		size = SIZE_REMAINING;
 		end = (char *)partstr + 1;
 	} else {
 		size = strtoul_suffix(partstr, &end, 0);
 	}
 
+	if (*end == '@')
+		*offset = strtoul_suffix(end+1, &end, 0);
+
+	if (size == SIZE_REMAINING)
+		size = devsize - *offset;
+
 	partstr = end;
 
 	if (*partstr == '(') {
@@ -76,7 +84,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 		end++;
 	}
 
-	if (size + offset > devsize) {
+	if (size + *offset > devsize) {
 		printf("%s: partition end is beyond device\n", buf);
 		return -EINVAL;
 	}
@@ -93,7 +101,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 
 	*retsize = size;
 
-	ret = devfs_add_partition(devname, offset, size, flags, buf);
+	ret = devfs_add_partition(devname, *offset, size, flags, buf);
 	if (ret)
 		printf("cannot create %s: %s\n", buf, strerror(-ret));
 	return ret;
@@ -123,7 +131,7 @@ static int do_addpart(cmd_tbl_t * cmdtp, int argc, char *argv[])
 	while (1) {
 		size_t size = 0;
 
-		if (mtd_part_do_parse_one(devname, endp, &endp, offset, devsize, &size))
+		if (mtd_part_do_parse_one(devname, endp, &endp, &offset, devsize, &size))
 			return 1;
 
 		offset += size;
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
