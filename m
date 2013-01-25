Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt8g-0006SZ-OK
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:56:57 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 66662FFA76B
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:06:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 00:55:31 +0100
Message-Id: <1359158132-8023-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] bootm: switch globalvar to it's own device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 483e6a1..830def4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -48,6 +48,12 @@
 #include <asm-generic/memory_layout.h>
 
 static LIST_HEAD(handler_list);
+static struct device_d *bootm_dev;
+
+static const char* bootm_get_global(const char * var)
+{
+	return dev_get_param(bootm_dev, var);
+}
 
 /*
  * Additional oftree size for the fixed tree
@@ -286,10 +292,10 @@ static int do_bootm(int argc, char *argv[])
 	data.verify = 0;
 	data.verbose = 0;
 
-	oftree = getenv("global.bootm.oftree");
-	os_file = getenv("global.bootm.image");
+	oftree = bootm_get_global("oftree");
+	os_file = bootm_get_global("image");
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		initrd_file = getenv("global.bootm.initrd");
+		initrd_file = bootm_get_global("initrd");
 
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
@@ -459,11 +465,11 @@ err_out:
 
 static int bootm_init(void)
 {
-
-	globalvar_add_simple("bootm.image");
-	globalvar_add_simple("bootm.oftree");
+	bootm_dev = global_add_device("bootm");
+	global_add_simple(bootm_dev, "image");
+	global_add_simple(bootm_dev, "oftree");
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		globalvar_add_simple("bootm.initrd");
+		global_add_simple(bootm_dev, "initrd");
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
