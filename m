Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxI-0005IK-Tg
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:20 +0100
Message-Id: <1458040534-6171-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/16] mtd: nand: Add option to print bbt in nand command
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c | 51 ++++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 11 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index 1807c92..b065a66 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -33,14 +33,18 @@
 #define NAND_DEL	2
 #define NAND_MARKBAD	3
 #define NAND_MARKGOOD	4
+#define NAND_INFO	5
 
 static int do_nand(int argc, char *argv[])
 {
 	int opt;
 	int command = 0;
 	loff_t badblock = 0;
+	int fd;
+	int ret;
+	struct mtd_info_user mtdinfo;
 
-	while((opt = getopt(argc, argv, "adb:g:")) > 0) {
+	while((opt = getopt(argc, argv, "adb:g:i")) > 0) {
 		if (command) {
 			printf("only one command may be given\n");
 			return 1;
@@ -61,6 +65,9 @@ static int do_nand(int argc, char *argv[])
 			command = NAND_MARKGOOD;
 			badblock = strtoull_suffix(optarg, NULL, 0);
 			break;
+		case 'i':
+			command = NAND_INFO;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -90,8 +97,17 @@ static int do_nand(int argc, char *argv[])
 		}
 	}
 
+	fd = open(argv[optind], O_RDWR);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd, MEMGETINFO, &mtdinfo);
+	if (ret)
+		goto out;
+
 	if (command == NAND_MARKBAD || command == NAND_MARKGOOD) {
-		int ret = 0, fd;
 		const char *str;
 		int ctl;
 
@@ -106,12 +122,6 @@ static int do_nand(int argc, char *argv[])
 		printf("marking block at 0x%08llx on %s as %s\n",
 				badblock, argv[optind], str);
 
-		fd = open(argv[optind], O_RDWR);
-		if (fd < 0) {
-			perror("open");
-			return 1;
-		}
-
 		ret = ioctl(fd, ctl, &badblock);
 		if (ret) {
 			if (ret == -EINVAL)
@@ -121,11 +131,29 @@ static int do_nand(int argc, char *argv[])
 				perror("ioctl");
 		}
 
-		close(fd);
-		return ret;
+		goto out;
 	}
 
-	return 0;
+	if (command == NAND_INFO) {
+		loff_t ofs;
+		int bad = 0;
+
+		for (ofs = 0; ofs < mtdinfo.size; ofs += mtdinfo.erasesize) {
+			if (ioctl(fd, MEMGETBADBLOCK, &ofs)) {
+				printf("Block at 0x%08llx is bad\n", ofs);
+				bad = 1;
+			}
+		}
+
+		if (!bad)
+			printf("No bad blocks\n");
+	}
+
+	ret = 0;
+out:
+	close(fd);
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(nand)
@@ -134,6 +162,7 @@ BAREBOX_CMD_HELP_OPT ("-a",  "register a bad block aware device ontop of a norma
 BAREBOX_CMD_HELP_OPT ("-d",  "deregister a bad block aware device")
 BAREBOX_CMD_HELP_OPT ("-b OFFS",  "mark block at OFFSet as bad")
 BAREBOX_CMD_HELP_OPT ("-g OFFS",  "mark block at OFFSet as good")
+BAREBOX_CMD_HELP_OPT ("-i",  "info. Show information about bad blocks")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nand)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
