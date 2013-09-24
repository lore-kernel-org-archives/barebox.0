Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050h-Mi
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:42 +0200
Message-Id: <1380006527-2599-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] bootm: move globalvars from command to common
To: barebox@lists.infradead.org

The globalvars should be available even if the bootm command
is not directly present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 14 --------------
 common/bootm.c   | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index c1d2ec4..005d582 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -158,20 +158,6 @@ err_out:
 	return 1;
 }
 
-static int bootm_init(void)
-{
-	globalvar_add_simple("bootm.image", NULL);
-	globalvar_add_simple("bootm.image.loadaddr", NULL);
-	globalvar_add_simple("bootm.oftree", NULL);
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
-		globalvar_add_simple("bootm.initrd", NULL);
-		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
-	}
-
-	return 0;
-}
-late_initcall(bootm_init);
-
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
diff --git a/common/bootm.c b/common/bootm.c
index 6b2c2a6..259feac 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -16,6 +16,8 @@
 #include <fs.h>
 #include <malloc.h>
 #include <memory.h>
+#include <globalvar.h>
+#include <init.h>
 
 static LIST_HEAD(handler_list);
 
@@ -322,3 +324,17 @@ err_out:
 
 	return ret;
 }
+
+static int bootm_init(void)
+{
+	globalvar_add_simple("bootm.image", NULL);
+	globalvar_add_simple("bootm.image.loadaddr", NULL);
+	globalvar_add_simple("bootm.oftree", NULL);
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
+		globalvar_add_simple("bootm.initrd", NULL);
+		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
+	}
+
+	return 0;
+}
+late_initcall(bootm_init);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
