Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rl-Fa
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:11 +0200
Message-Id: <1433830875-31119-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] loadx: ignore -c option
To: Barebox List <barebox@lists.infradead.org>

And always create the file if necessary. No need to have an extra flag for
this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadxy.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index b475edf..d5cc588 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -144,7 +144,6 @@ static int do_loadx(int argc, char *argv[])
 {
 	ulong offset = 0;
 	int load_baudrate = 0, current_baudrate, ofd, opt, rcode = 0;
-	int open_mode = O_WRONLY;
 	char *output_file = NULL, *cname = NULL;
 	struct console_device *cdev = NULL;
 
@@ -159,9 +158,6 @@ static int do_loadx(int argc, char *argv[])
 		case 'o':
 			offset = (int)simple_strtoul(optarg, NULL, 10);
 			break;
-		case 'c':
-			open_mode |= O_CREAT;
-			break;
 		case 't':
 			cname = optarg;
 			break;
@@ -186,7 +182,7 @@ static int do_loadx(int argc, char *argv[])
 		output_file = DEF_FILE;
 
 	/* File should exist */
-	ofd = open(output_file, open_mode);
+	ofd = open(output_file, O_WRONLY | O_CREAT);
 	if (ofd < 0) {
 		perror(argv[0]);
 		return 3;
@@ -222,7 +218,6 @@ BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
 BAREBOX_CMD_HELP_OPT("-t NAME", "console name to use (default: current)")
-BAREBOX_CMD_HELP_OPT("-c",      "create file if not present")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loadx)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
