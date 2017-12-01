Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPf-0003nx-9r
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:30 +0100
Message-Id: <20171201112256.20196-2-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/27] detect command: Drop -e option
To: Barebox List <barebox@lists.infradead.org>

The -e option is not that useful. Normally, when a device cannot
be detected, then there should be no reason to not try to detect
other devices. When a user is interested in a particular detect
result, detect can still be called with that (and only that)
device.
We could also argue that the user should not care about the result
of the detect call, but instead check if the desired device is
present afterwards.
Drop handling of the -e option, but still ignore it for compatibility
reasons.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/detect.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/commands/detect.c b/commands/detect.c
index 1586a6fb54..d68d738453 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -26,9 +26,8 @@
 static int do_detect(int argc, char *argv[])
 {
 	struct device_d *dev;
-	int opt, i, ret;
+	int opt, i, ret, err;
 	int option_list = 0;
-	int option_error = 0;
 	int option_all = 0;
 
 	while ((opt = getopt(argc, argv, "ela")) > 0) {
@@ -37,7 +36,6 @@ static int do_detect(int argc, char *argv[])
 			option_list = 1;
 			break;
 		case 'e':
-			option_error = 1;
 			break;
 		case 'a':
 			option_all = 1;
@@ -56,37 +54,36 @@ static int do_detect(int argc, char *argv[])
 	}
 
 	if (option_all) {
-		for_each_device(dev) {
-			ret = device_detect(dev);
-			if (ret && ret != -ENOSYS && option_error)
-				return ret;
-		}
+		for_each_device(dev)
+			device_detect(dev);
+
 		return 0;
 	}
 
 	if (argc == optind)
 		return COMMAND_ERROR_USAGE;
 
+	err = 0;
+
 	for (i = optind; i < argc; i++) {
 		ret = device_detect_by_name(argv[i]);
-		if (ret && option_error)
-			return ret;
+		if (!err && ret)
+			err = ret;
 	}
 
-	return 0;
+	return err;
 }
 
 BAREBOX_CMD_HELP_START(detect)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l",  "list detectable devices")
-BAREBOX_CMD_HELP_OPT ("-e",  "bail out if one device fails to detect")
 BAREBOX_CMD_HELP_OPT ("-a",  "detect all devices")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(detect)
 	.cmd		= do_detect,
 	BAREBOX_CMD_DESC("detect devices")
-	BAREBOX_CMD_OPTS("[-lea] [devices]")
+	BAREBOX_CMD_OPTS("[-la] [devices]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_COMPLETE(device_complete)
 	BAREBOX_CMD_HELP(cmd_detect_help)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
