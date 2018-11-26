Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRDmt-0003DN-UT
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 10:06:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Nov 2018 11:06:29 +0100
Message-Id: <20181126100629.10856-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubimkvol: add support for `volume_id` parameter
To: Barebox List <barebox@lists.infradead.org>
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>, Leif Middelschulte <leif.middelschulte@gmail.com>

From: Leif Middelschulte <leif.middelschulte@klsmartin.com>

The volume id can be used to refer to a specific volume.
This adds support to choose a corresponding argument when creating
a UBI volume.

Signed-off-by: Leif Middelschulte <leif.middelschulte@gmail.com>
---
 commands/ubi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index de5633c458..f37684102d 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -108,8 +108,9 @@ static int do_ubimkvol(int argc, char *argv[])
 	uint32_t ubinum;
 
 	req.vol_type = UBI_DYNAMIC_VOLUME;
+	req.vol_id = UBI_VOL_NUM_AUTO;
 
-	while ((opt = getopt(argc, argv, "t:")) > 0) {
+	while ((opt = getopt(argc, argv, "t:n:")) > 0) {
 		switch (opt) {
 		case 't':
 			if (!strcmp(optarg, "dynamic"))
@@ -119,6 +120,9 @@ static int do_ubimkvol(int argc, char *argv[])
 			else
 				return COMMAND_ERROR_USAGE;
 			break;
+		case 'n':
+			req.vol_id = simple_strtoul(optarg, NULL, 0);
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -133,7 +137,6 @@ static int do_ubimkvol(int argc, char *argv[])
 	req.name[req.name_len] = 0;
 
 	req.bytes = size;
-	req.vol_id = UBI_VOL_NUM_AUTO;
 	req.alignment = 1;
 
 	fd = open(argv[optind], O_WRONLY);
@@ -160,12 +163,13 @@ BAREBOX_CMD_HELP_START(ubimkvol)
 BAREBOX_CMD_HELP_TEXT("Create an UBI volume on UBIDEV with NAME and SIZE.")
 BAREBOX_CMD_HELP_TEXT("If SIZE is 0 all available space is used for the volume.")
 BAREBOX_CMD_HELP_OPT("-t <static|dynamic>",  "volume type, default is dynamic")
+BAREBOX_CMD_HELP_OPT("-n <vol_id>",  "volume ID, default is dynamically assigned")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
 	BAREBOX_CMD_DESC("create an UBI volume")
-	BAREBOX_CMD_OPTS("[-t] UBIDEV NAME SIZE")
+	BAREBOX_CMD_OPTS("[-tn] UBIDEV NAME SIZE")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubimkvol_help)
 BAREBOX_CMD_END
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
