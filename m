Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAe-0003s9-AW
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:14 +0100
Message-Id: <1322467340-10596-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/14] bootm: remove image handler options
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   55 +-----------------------------------------------------
 include/boot.h   |    4 ---
 2 files changed, 1 insertions(+), 58 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 17139f7..316ed1f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -141,25 +141,6 @@ static struct image_handle *get_fake_image_handle(struct image_data *data, int n
 	return handle;
 }
 
-static int handler_parse_options(struct image_data *data, int opt, char *optarg)
-{
-	struct image_handler *handler;
-	int ret;
-
-	list_for_each_entry(handler, &handler_list, list) {
-		if (!handler->cmdline_parse)
-			continue;
-
-		ret = handler->cmdline_parse(data, opt, optarg);
-		if (ret > 0)
-			continue;
-
-		return ret;
-	}
-
-	return -1;
-}
-
 static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 {
 	int	opt;
@@ -168,32 +149,15 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	struct image_handler *handler;
 	struct image_data data;
 	u32 initrd_start;
-	char options[53]; /* worst case: whole alphabet with colons */
 
 	memset(&data, 0, sizeof(struct image_data));
 	data.verify = 1;
 
-	/* Collect options from registered handlers */
-	strcpy(options, "nhr:L:");
-	list_for_each_entry(handler, &handler_list, list) {
-		if (handler->cmdline_options)
-			strcat(options, handler->cmdline_options);
-	}
-
-	while((opt = getopt(argc, argv, options)) > 0) {
+	while ((opt = getopt(argc, argv, "nr:L:")) > 0) {
 		switch(opt) {
 		case 'n':
 			data.verify = 0;
 			break;
-		case 'h':
-			printf("bootm advanced options:\n");
-
-			list_for_each_entry(handler, &handler_list, list) {
-				if (handler->help_string)
-					printf("%s\n", handler->help_string);
-			}
-
-			return 0;
 		case 'L':
 			if (!data.initrd) {
 				eprintf("Warning -L ingnored. Specify the initrd first\n");
@@ -237,23 +201,6 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		goto err_out;
 	}
 
-	optind = 0;
-
-	while((opt = getopt(argc, argv, options)) > 0) {
-		switch(opt) {
-		case 'h':
-		case 'n':
-		case 'L':
-		case 'r':
-			break;
-		default:
-			if (!handler_parse_options(&data, opt, optarg))
-				continue;
-
-			return 1;
-		}
-	}
-
 	/*
 	 * We have reached the point of no return: we are going to
 	 * overwrite all exception vector code, so we cannot easily
diff --git a/include/boot.h b/include/boot.h
index 623f443..4901598 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -14,10 +14,6 @@ struct image_data {
 struct image_handler {
 	struct list_head list;
 
-	char *cmdline_options;
-	int (*cmdline_parse)(struct image_data *data, int opt, char *optarg);
-	char *help_string;
-
 	int image_type;
 	int (*bootm)(struct image_data *data);
 };
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
