Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP7-0002ZN-W6
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:13:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:48 +0100
Message-Id: <1362392034-1908-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] nand command: use loff_t for block offset
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index f000142..d00845f 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -36,7 +36,8 @@
 static int do_nand(int argc, char *argv[])
 {
 	int opt;
-	int command = 0, badblock = 0;
+	int command = 0;
+	loff_t badblock = 0;
 
 	while((opt = getopt(argc, argv, "adb:")) > 0) {
 		if (command) {
@@ -53,7 +54,7 @@ static int do_nand(int argc, char *argv[])
 			break;
 		case 'b':
 			command = NAND_MARKBAD;
-			badblock = simple_strtoul(optarg, NULL, 0);
+			badblock = strtoull_suffix(optarg, NULL, 0);
 		}
 	}
 
@@ -76,9 +77,9 @@ static int do_nand(int argc, char *argv[])
 	if (command & NAND_MARKBAD) {
 		if (optind < argc) {
 			int ret = 0, fd;
-			loff_t __badblock = badblock;
 
-			printf("marking block at 0x%08x on %s as bad\n", badblock, argv[optind]);
+			printf("marking block at 0x%08llx on %s as bad\n",
+					badblock, argv[optind]);
 
 			fd = open(argv[optind], O_RDWR);
 			if (fd < 0) {
@@ -86,7 +87,7 @@ static int do_nand(int argc, char *argv[])
 				return 1;
 			}
 
-			ret = ioctl(fd, MEMSETBADBLOCK, &__badblock);
+			ret = ioctl(fd, MEMSETBADBLOCK, &badblock);
 			if (ret)
 				perror("ioctl");
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
