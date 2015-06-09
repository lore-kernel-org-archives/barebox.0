Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cut-0004rp-5f
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:15 +0200
Message-Id: <1433830875-31119-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] loadb: ignore -c option
To: Barebox List <barebox@lists.infradead.org>

And always create the file if necessary. No need to have an extra flag for
this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index acc3cd4..be5830d 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -606,7 +606,6 @@ static int do_load_serial_bin(int argc, char *argv[])
 	int load_baudrate = 0, current_baudrate;
 	int rcode = 0, ret;
 	int opt;
-	int open_mode = O_WRONLY;
 	char *output_file = NULL;
 	struct console_device *cdev = NULL;
 
@@ -621,9 +620,6 @@ static int do_load_serial_bin(int argc, char *argv[])
 		case 'o':
 			offset = (int)simple_strtoul(optarg, NULL, 10);
 			break;
-		case 'c':
-			open_mode |= O_CREAT;
-			break;
 		default:
 			perror(argv[0]);
 			return 1;
@@ -644,7 +640,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 		output_file = DEF_FILE;
 
 	/* File should exist */
-	ofd = open(output_file, open_mode);
+	ofd = open(output_file, O_WRONLY | O_CREAT);
 	if (ofd < 0) {
 		perror(argv[0]);
 		return 3;
@@ -688,7 +684,6 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
-BAREBOX_CMD_HELP_OPT("-c",      "create file if not present")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loadb)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
