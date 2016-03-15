Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0l-000105-DF
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:04 +0100
Message-Id: <1458040754-32240-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] bbu: Allow to refresh/repair images
To: Barebox List <barebox@lists.infradead.org>

Some SoCs allow to store multiple boot images on a device in order to
improve robustness. This adds a -r option to barebox_update to indicate
we do not want to make an update but instead repair/refresh an existing
image. Handlers which want to support this feature must set the
BBU_HANDLER_CAN_REFRESH flag during registration.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/updating.rst |  8 ++++++++
 commands/barebox-update.c       | 26 ++++++++++++++++----------
 common/bbu.c                    | 12 +++++++++++-
 include/bbu.h                   |  1 +
 4 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/Documentation/user/updating.rst b/Documentation/user/updating.rst
index 6a1a733..7aac0a9 100644
--- a/Documentation/user/updating.rst
+++ b/Documentation/user/updating.rst
@@ -30,3 +30,11 @@ commands. The exact commands are board specific.
 
 **NOTE** barebox images can be enriched with metadata which can be used to check
 if a given image is suitable for updating barebox, see :ref:`imd`.
+
+Repairing existing boot images
+------------------------------
+
+Some SoCs allow to store multiple boot images on a device in order to
+improve robustness. When an update handler supports it the handler can
+repair and/or refresh an image from this redundant information. This is
+done with the '-r' option to :ref:`command_barebox_update`.
diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 92e0efa..c2f2b68 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -26,10 +26,10 @@
 
 static int do_barebox_update(int argc, char *argv[])
 {
-	int opt, ret;
+	int opt, ret, repair = 0;
 	struct bbu_data data = {};
 
-	while ((opt = getopt(argc, argv, "t:yf:ld:")) > 0) {
+	while ((opt = getopt(argc, argv, "t:yf:ld:r")) > 0) {
 		switch (opt) {
 		case 'd':
 			data.devicefile = optarg;
@@ -48,19 +48,24 @@ static int do_barebox_update(int argc, char *argv[])
 			printf("registered update handlers:\n");
 			bbu_handlers_list();
 			return 0;
+		case 'r':
+			repair = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	if (!(argc - optind))
-		return COMMAND_ERROR_USAGE;
-
-	data.imagefile = argv[optind];
+	if (argc - optind > 0) {
+		data.imagefile = argv[optind];
 
-	data.image = read_file(data.imagefile, &data.len);
-	if (!data.image)
-		return -errno;
+		data.image = read_file(data.imagefile, &data.len);
+		if (!data.image)
+			return -errno;
+	} else {
+		if (!repair)
+			return COMMAND_ERROR_USAGE;
+	}
 
 	ret = barebox_update(&data);
 
@@ -74,6 +79,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-l\t", "list registered targets")
 BAREBOX_CMD_HELP_OPT("-t TARGET", "specify data target handler name")
 BAREBOX_CMD_HELP_OPT("-d DEVICE", "write image to DEVICE")
+BAREBOX_CMD_HELP_OPT("-r\t", "refresh or repair. Do not update, but repair an existing image")
 BAREBOX_CMD_HELP_OPT("-y\t", "autom. use 'yes' when asking confirmations")
 BAREBOX_CMD_HELP_OPT("-f LEVEL", "set force level")
 BAREBOX_CMD_HELP_END
@@ -81,7 +87,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(barebox_update)
 	.cmd		= do_barebox_update,
 	BAREBOX_CMD_DESC("update barebox to persistent media")
-	BAREBOX_CMD_OPTS("[-ltdyf] [IMAGE]")
+	BAREBOX_CMD_OPTS("[-ltdyfr] [IMAGE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_barebox_update_help)
 BAREBOX_CMD_END
diff --git a/common/bbu.c b/common/bbu.c
index 68812a7..09c96bb 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -65,9 +65,13 @@ int bbu_confirm(struct bbu_data *data)
 	if (data->flags & BBU_FLAG_YES)
 		return 0;
 
-	printf("update barebox from %s using handler %s to %s (y/n)?\n",
+	if (data->imagefile)
+		printf("update barebox from %s using handler %s to %s (y/n)?\n",
 			data->imagefile, data->handler_name,
 			data->devicefile);
+	else
+		printf("Refresh barebox on %s using handler %s (y/n)?\n",
+			data->devicefile, data->handler_name);
 
 	key = read_key();
 
@@ -141,6 +145,12 @@ int barebox_update(struct bbu_data *data)
 	if (!handler)
 		return -ENODEV;
 
+	if (!data->image && !data->imagefile &&
+	    !(handler->flags & BBU_HANDLER_CAN_REFRESH)) {
+		pr_err("No Image file given\n");
+		return -EINVAL;
+	}
+
 	if (!data->handler_name)
 		data->handler_name = handler->name;
 
diff --git a/include/bbu.h b/include/bbu.h
index 0fe7a1a..971fc14 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -23,6 +23,7 @@ struct bbu_handler {
 	const char *name;
 	struct list_head list;
 #define BBU_HANDLER_FLAG_DEFAULT	(1 << 0)
+#define BBU_HANDLER_CAN_REFRESH		(1 << 1)
 	unsigned long flags;
 
 	/* default device file, can be overwritten on the command line */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
