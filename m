Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7ay-00015x-KN
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 12:48:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ic7av-0006ot-Ik
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 13:47:57 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ic7aq-0002z8-V9
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 13:47:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  3 Dec 2019 13:47:48 +0100
Message-Id: <20191203124748.11400-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20191203124748.11400-1-s.trumtrar@pengutronix.de>
References: <20191203124748.11400-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] commands: bbu: add support for imd checksum
To: Barebox List <barebox@lists.infradead.org>

Add support for verifying an image by use of the imd checksum.
If the checksum that is saved in the image and the one that is
calculated over the image differ, barebox_update aborts.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/barebox-update.c | 9 +++++++--
 common/bbu.c              | 6 ++++++
 include/bbu.h             | 1 +
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 53af2a851137..10ea4dd915cc 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -23,6 +23,7 @@
 #include <errno.h>
 #include <bbu.h>
 #include <fs.h>
+#include <image-metadata.h>
 
 static void print_handlers_list(void)
 {
@@ -39,7 +40,7 @@ static int do_barebox_update(int argc, char *argv[])
 	const char *name;
 	const char *fmt;
 
-	while ((opt = getopt(argc, argv, "t:yf:ld:r")) > 0) {
+	while ((opt = getopt(argc, argv, "t:yf:ld:rV")) > 0) {
 		switch (opt) {
 		case 'd':
 			data.devicefile = optarg;
@@ -60,6 +61,9 @@ static int do_barebox_update(int argc, char *argv[])
 		case 'r':
 			repair = 1;
 			break;
+		case 'V':
+			data.flags |= BBU_FLAG_VERIFY;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -119,12 +123,13 @@ BAREBOX_CMD_HELP_OPT("-d DEVICE", "write image to DEVICE")
 BAREBOX_CMD_HELP_OPT("-r\t", "refresh or repair. Do not update, but repair an existing image")
 BAREBOX_CMD_HELP_OPT("-y\t", "autom. use 'yes' when asking confirmations")
 BAREBOX_CMD_HELP_OPT("-f LEVEL", "set force level")
+BAREBOX_CMD_HELP_OPT("-V\t", "Validate checksum of image")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(barebox_update)
 	.cmd		= do_barebox_update,
 	BAREBOX_CMD_DESC("update barebox to persistent media")
-	BAREBOX_CMD_OPTS("[-ltdyfr] [IMAGE]")
+	BAREBOX_CMD_OPTS("[-ltdyfrV] [IMAGE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_barebox_update_help)
 BAREBOX_CMD_END
diff --git a/common/bbu.c b/common/bbu.c
index 00bec32a860a..4bca4b598c4c 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -206,6 +206,12 @@ static int bbu_check_metadata(struct bbu_data *data)
 	if (ret)
 		return ret;
 
+	if (data->flags & BBU_FLAG_VERIFY) {
+		ret = imd_verify_crc32((void *)data->image, data->len);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
diff --git a/include/bbu.h b/include/bbu.h
index 9da6785d2e67..56c61093bba2 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -9,6 +9,7 @@
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
 #define BBU_FLAG_YES	(1 << 1)
+#define BBU_FLAG_VERIFY	(1 << 2)
 	unsigned long flags;
 	int force;
 	const void *image;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
