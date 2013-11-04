Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKmG-0004Rz-Qv
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:30 +0100
Message-Id: <1383573870-11325-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] boot command: Add timeout support for menu
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index 1bec406..91766e0 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -21,6 +21,7 @@
 #include <blspec.h>
 #include <libgen.h>
 #include <malloc.h>
+#include <clock.h>
 #include <boot.h>
 #include <menu.h>
 #include <fs.h>
@@ -30,6 +31,7 @@
 
 static int verbose;
 static int dryrun;
+static int timeout;
 
 /*
  * Start a single boot script. 'path' is a full path to a boot script.
@@ -255,6 +257,9 @@ static void bootsources_menu(char *entries[], int num_entries)
 	back_entry->non_re_ent = 1;
 	menu_add_entry(blspec->menu, back_entry);
 
+	if (timeout >= 0)
+		blspec->menu->auto_select = timeout;
+
 	menu_show(blspec->menu);
 
 	free(back_entry);
@@ -332,8 +337,9 @@ static int do_boot(int argc, char *argv[])
 
 	verbose = 0;
 	dryrun = 0;
+	timeout = -1;
 
-	while ((opt = getopt(argc, argv, "vldm")) > 0) {
+	while ((opt = getopt(argc, argv, "vldmt:")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -347,6 +353,9 @@ static int do_boot(int argc, char *argv[])
 		case 'm':
 			do_menu = 1;
 			break;
+		case 't':
+			timeout = simple_strtoul(optarg, NULL, 0);
+			break;
 		}
 	}
 
@@ -415,6 +424,7 @@ BAREBOX_CMD_HELP_OPT  ("-v","Increase verbosity\n")
 BAREBOX_CMD_HELP_OPT  ("-d","Dryrun. See what happens but do no actually boot\n")
 BAREBOX_CMD_HELP_OPT  ("-l","List available boot sources\n")
 BAREBOX_CMD_HELP_OPT  ("-m","Show a menu with boot options\n")
+BAREBOX_CMD_HELP_OPT  ("-t <timeout>","specify timeout for the menu\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(boot)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
