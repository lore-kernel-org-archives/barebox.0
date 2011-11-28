Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAf-0003sA-1P
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:13 +0100
Message-Id: <1322467340-10596-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] bootm: handle initrds inline
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   78 +++++++++++++++++++----------------------------------
 1 files changed, 28 insertions(+), 50 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 823d387..17139f7 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -141,55 +141,6 @@ static struct image_handle *get_fake_image_handle(struct image_data *data, int n
 	return handle;
 }
 
-static int initrd_handler_parse_options(struct image_data *data, int opt,
-		char *optarg)
-{
-	uint32_t initrd_start;
-
-	switch(opt) {
-	case 'L':
-		if (!data->initrd) {
-			eprintf("Warning -L ingnored. Specify the initrd first\n");
-			break;
-		}
-		initrd_start = simple_strtoul(optarg, NULL, 0);
-		printf("initrd_start=0x%x\n", initrd_start);
-		data->initrd->header.ih_load = cpu_to_uimage(initrd_start);
-		break;
-	case 'r':
-		printf("use initrd %s\n", optarg);
-		/* check for multi image @<num> */
-		if (optarg[0] == '@') {
-			int num = simple_strtol(optarg + 1, NULL, 0);
-
-			data->initrd = get_fake_image_handle(data, num);
-		} else {
-			data->initrd = map_image(optarg, data->verify);
-		}
-		if (!data->initrd)
-			return -1;
-		break;
-	default:
-		return 1;
-	}
-
-	return 0;
-}
-
-static struct image_handler initrd_handler = {
-	.cmdline_options = "r:L:",
-	.cmdline_parse = initrd_handler_parse_options,
-	.help_string = " -r <initrd>    specify an initrd image\n"
-		       " -L <load addr> specify initrd load address",
-};
-
-static int initrd_register_image_handler(void)
-{
-	return register_image_handler(&initrd_handler);
-}
-
-late_initcall(initrd_register_image_handler);
-
 static int handler_parse_options(struct image_data *data, int opt, char *optarg)
 {
 	struct image_handler *handler;
@@ -216,13 +167,14 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	struct image_handle *os_handle, *initrd_handle = NULL;
 	struct image_handler *handler;
 	struct image_data data;
+	u32 initrd_start;
 	char options[53]; /* worst case: whole alphabet with colons */
 
 	memset(&data, 0, sizeof(struct image_data));
 	data.verify = 1;
 
 	/* Collect options from registered handlers */
-	strcpy(options, "nh");
+	strcpy(options, "nhr:L:");
 	list_for_each_entry(handler, &handler_list, list) {
 		if (handler->cmdline_options)
 			strcat(options, handler->cmdline_options);
@@ -242,6 +194,28 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 			}
 
 			return 0;
+		case 'L':
+			if (!data.initrd) {
+				eprintf("Warning -L ingnored. Specify the initrd first\n");
+				break;
+			}
+			initrd_start = simple_strtoul(optarg, NULL, 0);
+			printf("initrd_start=0x%x\n", initrd_start);
+			data.initrd->header.ih_load = cpu_to_uimage(initrd_start);
+			break;
+		case 'r':
+			printf("use initrd %s\n", optarg);
+			/* check for multi image @<num> */
+			if (optarg[0] == '@') {
+				int num = simple_strtol(optarg + 1, NULL, 0);
+
+				data.initrd = get_fake_image_handle(&data, num);
+			} else {
+				data.initrd = map_image(optarg, data.verify);
+			}
+			if (!data.initrd)
+				return -1;
+			break;
 		default:
 			break;
 		}
@@ -269,6 +243,8 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		switch(opt) {
 		case 'h':
 		case 'n':
+		case 'L':
+		case 'r':
 			break;
 		default:
 			if (!handler_parse_options(&data, opt, optarg))
@@ -310,6 +286,8 @@ BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_USAGE("bootm [-n] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
 BAREBOX_CMD_HELP_OPT  ("-n",  "Do not verify the image (speeds up boot process)\n")
+BAREBOX_CMD_HELP_OPT  ("-r <initrd>","specify an initrd image\n")
+BAREBOX_CMD_HELP_OPT  ("-L <load addr>","specify initrd load address")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bootm)
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
