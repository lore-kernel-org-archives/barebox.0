Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoxF-0000fp-Vo
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:39:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:39:42 +0200
Message-Id: <1335785982-18864-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: fix initrd handling
To: barebox@lists.infradead.org

bootm_initrd tests for data->initrd, but this never becomes true because
the setting of data->initrd is inside a if(bootm_initrd()). Fix this. Also,
do not support the initrd options when initrd is disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 322e74f..0c0e56a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -51,18 +51,6 @@
 
 static LIST_HEAD(handler_list);
 
-#ifdef CONFIG_CMD_BOOTM_INITRD
-static inline int bootm_initrd(struct image_data *data)
-{
-	return data->initrd ? 1 : 0;
-}
-#else
-static inline int bootm_initrd(struct image_data *data)
-{
-	return 0;
-}
-#endif
-
 int register_image_handler(struct image_handler *handler)
 {
 	list_add_tail(&handler->list, &handler_list);
@@ -258,6 +246,14 @@ static void bootm_image_name_and_no(char *name, int *no)
 	*no = simple_strtoul(at, NULL, 10);
 }
 
+#define BOOTM_OPTS_COMMON "ca:e:vo:f"
+
+#ifdef CONFIG_CMD_BOOTM_INITRD
+#define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
+#else
+#define BOOTM_OPTS BOOTM_OPTS_COMMON
+#endif
+
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
@@ -275,7 +271,7 @@ static int do_bootm(int argc, char *argv[])
 	data.verify = 0;
 	data.verbose = 0;
 
-	while ((opt = getopt(argc, argv, "cL:r:a:e:vo:f")) > 0) {
+	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
 			data.verify = 1;
@@ -336,7 +332,7 @@ static int do_bootm(int argc, char *argv[])
 		}
 	}
 
-	if (bootm_initrd(&data)) {
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data.initrd_file) {
 		bootm_image_name_and_no(data.initrd_file, &data.initrd_num);
 
 		initrd_type = file_name_detect_type(data.initrd_file);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
