Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4b-0006Pp-3Q
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:44 +0100
Message-Id: <1332080804-13132-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] partition command: optionally do not automatically
 prepend the device name
To: barebox@lists.infradead.org

We used to automatically prepend the device name before the partition
name. So when we added a partition named 'barebox' to a device named
'nor0' the partition was named 'nor0.barebox'.

The Kernel can mount its rootfs based on the mtd name, for example with
root=mtd:root. If for example we have multiple mtd devices (nor and nand)
'root' is a bad name for the partition, it should better be 'nor0.root'

This patch adds an additional commandline switch to addpart to optionally
skip the automatic device name adding. This makes it possible to define
our mtd partitions like this:

nor_parts="512k(nor0.barebox)ro,128k(nor0.bareboxenv),2M(nor0.kernel),-(nor0.root)"

This way the barebox partition names stay the same, but we can now
pass the exact name to the kernel (root=mtd:nor0.root).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c |   33 +++++++++++++++++++++++++--------
 1 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index acd1609..17e3678 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -40,16 +40,19 @@
 #include <fs.h>
 #include <linux/stat.h>
 #include <libgen.h>
+#include <getopt.h>
 
 #define SIZE_REMAINING ((ulong)-1)
 
+#define PART_ADD_DEVNAME (1 << 0)
+
 static int mtd_part_do_parse_one(char *devname, const char *partstr,
 				 char **endp, unsigned long *offset,
-				 off_t devsize, size_t *retsize)
+				 off_t devsize, size_t *retsize, unsigned int pflags)
 {
 	ulong size;
 	char *end;
-	char buf[PATH_MAX];
+	char buf[PATH_MAX] = {};
 	unsigned long flags = 0;
 	int ret;
 
@@ -78,7 +81,8 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 			return -EINVAL;
 		}
 
-		sprintf(buf, "%s.", devname);
+		if (pflags & PART_ADD_DEVNAME)
+			sprintf(buf, "%s.", devname);
 		memcpy(buf + strlen(buf), partstr, end - partstr);
 
 		end++;
@@ -114,24 +118,35 @@ static int do_addpart(int argc, char *argv[])
 	unsigned long offset = 0;
 	off_t devsize;
 	struct stat s;
+	int opt;
+	unsigned int flags = PART_ADD_DEVNAME;
+
+	while ((opt = getopt(argc, argv, "n")) > 0) {
+		switch (opt) {
+		case 'n':
+			flags &= ~PART_ADD_DEVNAME;
+			break;
+		}
+	}
 
-	if (argc != 3)
+	if (argc != optind + 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (stat(argv[1], &s)) {
+	if (stat(argv[optind], &s)) {
 		perror("addpart");
 		return 1;
 	}
 	devsize = s.st_size;
 
-	devname = basename(argv[1]);
+	devname = basename(argv[optind]);
 
-	endp = argv[2];
+	endp = argv[optind + 1];
 
 	while (1) {
 		size_t size = 0;
 
-		if (mtd_part_do_parse_one(devname, endp, &endp, &offset, devsize, &size))
+		if (mtd_part_do_parse_one(devname, endp, &endp, &offset,
+					devsize, &size, flags))
 			return 1;
 
 		offset += size;
@@ -152,6 +167,8 @@ static int do_addpart(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(addpart)
 BAREBOX_CMD_HELP_USAGE("addpart <device> <part_desc>\n")
 BAREBOX_CMD_HELP_SHORT("Add a partition description to a device.\n")
+BAREBOX_CMD_HELP_OPT  ("-n", "no prefix. Do not prepend the device name as prefix before the partition name\n")
+BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
 BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
 BAREBOX_CMD_HELP_OPT  ("<part_desc>", "size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n")
 BAREBOX_CMD_HELP_END
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
