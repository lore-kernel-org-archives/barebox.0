Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHUy5-00005u-6e
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 11:44:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BED50A0031A
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 13:45:30 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 27 Jun 2016 13:42:17 +0200
Message-Id: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 1/4] commands: ubimkvol: Add option for static volumes
To: barebox@lists.infradead.org

Creating static volumes in barebox already works,
only the option was missing.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
	- fix check for amount of cmd line parameters

 commands/ubi.c | 32 +++++++++++++++++++++++++-------
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 844d75d..dc2b4b5 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -13,24 +13,41 @@
 
 static int do_ubimkvol(int argc, char *argv[])
 {
+	int opt;
 	struct ubi_mkvol_req req;
 	int fd, ret;
 	uint64_t size;
 
-	if (argc != 4)
+	req.vol_type = UBI_DYNAMIC_VOLUME;
+
+	while ((opt = getopt(argc, argv, "t:")) > 0) {
+		switch (opt) {
+		case 't':
+			if (!strcmp(optarg, "dynamic"))
+				req.vol_type = UBI_DYNAMIC_VOLUME;
+			else if (!strcmp(optarg, "static"))
+				req.vol_type = UBI_STATIC_VOLUME;
+			else
+				return COMMAND_ERROR_USAGE;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc - optind != 3)
 		return COMMAND_ERROR_USAGE;
 
-	size = strtoull_suffix(argv[3], NULL, 0);
-	req.name_len = min_t(int, strlen(argv[2]), UBI_VOL_NAME_MAX);
-	strncpy(req.name, argv[2], req.name_len);
+	size = strtoull_suffix(argv[optind+2], NULL, 0);
+	req.name_len = min_t(int, strlen(argv[optind+1]), UBI_VOL_NAME_MAX);
+	strncpy(req.name, argv[optind+1], req.name_len);
 	req.name[req.name_len] = 0;
 
-	req.vol_type = UBI_DYNAMIC_VOLUME;
 	req.bytes = size;
 	req.vol_id = UBI_VOL_NUM_AUTO;
 	req.alignment = 1;
 
-	fd = open(argv[1], O_WRONLY);
+	fd = open(argv[optind], O_WRONLY);
 	if (fd < 0) {
 		perror("open");
 		return 1;
@@ -48,12 +65,13 @@ static int do_ubimkvol(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(ubimkvol)
 BAREBOX_CMD_HELP_TEXT("Create an UBI volume on UBIDEV with NAME and SIZE.")
 BAREBOX_CMD_HELP_TEXT("If SIZE is 0 all available space is used for the volume.")
+BAREBOX_CMD_HELP_OPT("-t <static|dynamic>",  "volume type, default is dynamic")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
 	BAREBOX_CMD_DESC("create an UBI volume")
-	BAREBOX_CMD_OPTS("UBIDEV NAME SIZE")
+	BAREBOX_CMD_OPTS("[-t] UBIDEV NAME SIZE")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubimkvol_help)
 BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
