Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt8g-0006Sa-OW
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:56:57 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 14485FFA770
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:06:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 00:55:32 +0100
Message-Id: <1359158132-8023-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125235326.GG26329@game.jcrosoft.org>
 <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] bootargs: switch globalvar to it's own device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/bootargs.c |   14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index 6624f72..d82d853 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -22,9 +22,11 @@
 #include <magicvar.h>
 #include <globalvar.h>
 #include <environment.h>
+#include <init.h>
 
 static char *linux_bootargs;
 static int linux_bootargs_overwritten;
+static char *global_linux_dev;
 
 /*
  * This returns the Linux bootargs
@@ -45,11 +47,11 @@ const char *linux_bootargs_get(void)
 
 	free(linux_bootargs);
 
-	bootargs = globalvar_get_match("linux.bootargs.", " ");
+	bootargs = global_get_match(global_linux_dev, "bootargs.", " ");
 	if (!strlen(bootargs))
 		return getenv("bootargs");
 
-	mtdparts = globalvar_get_match("linux.mtdparts.", ";");
+	mtdparts = global_get_match(global_linux_dev, "mtdparts.", ";");
 
 	if (strlen(mtdparts)) {
 		linux_bootargs = asprintf("%s mtdparts=%s", bootargs, mtdparts);
@@ -76,5 +78,13 @@ int linux_bootargs_overwrite(const char *bootargs)
 	return 0;
 }
 
+static int bootargs_init(void)
+{
+	global_linux_dev = global_add_device("linux");
+
+	return 0;
+}
+late_initcall(bootargs_init);
+
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_, global.linux.bootargs.*, "Linux bootargs variables");
 BAREBOX_MAGICVAR_NAMED(global_linux_mtdparts_, global.linux.mtdparts.*, "Linux mtdparts variables");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
