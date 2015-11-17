Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyeAN-00043S-0V
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:50 +0100
Message-Id: <1447758651-26575-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
References: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] loadb: Allow to specify device to use
To: Barebox List <barebox@lists.infradead.org>

The port we want to have the console on may not necessarily be the port
we want to transfer files on. Make the port configurable with a
commandline option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 6710665..6223512 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -618,8 +618,9 @@ static int do_load_serial_bin(int argc, char *argv[])
 	int opt;
 	char *output_file = NULL;
 	int current_active;
+	char *console_dev_name = NULL;
 
-	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
+	while ((opt = getopt(argc, argv, "f:b:o:c:")) > 0) {
 		switch (opt) {
 		case 'f':
 			output_file = optarg;
@@ -630,16 +631,27 @@ static int do_load_serial_bin(int argc, char *argv[])
 		case 'o':
 			offset = (int)simple_strtoul(optarg, NULL, 10);
 			break;
+		case 'c':
+			console_dev_name = optarg;
+			break;
 		default:
 			perror(argv[0]);
 			return 1;
 		}
 	}
 
-	cdev = console_get_first_active();
-	if (NULL == cdev) {
-		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
-		return -ENODEV;
+	if (console_dev_name) {
+		cdev = console_get_by_name(console_dev_name);
+		if (!cdev) {
+			printf("Console %s not found\n", console_dev_name);
+			return -ENODEV;
+		}
+	} else {
+		cdev = console_get_first_active();
+		if (!cdev) {
+			printf("No console device with STDIN and STDOUT\n");
+			return -ENODEV;
+		}
 	}
 	current_baudrate = console_get_baudrate(cdev);
 	current_active = console_get_active(cdev);
@@ -699,6 +711,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin)")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate)")
+BAREBOX_CMD_HELP_OPT("-c CONSOLE", "Specify console (default: first active console")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loadb)
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
