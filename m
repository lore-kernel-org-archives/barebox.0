Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFq7Q-0008GD-7a
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 18:09:41 +0000
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 82669FF9D05
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 19:26:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Mar 2013 19:05:21 +0100
Message-Id: <1363197922-19851-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1363197922-19851-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130313180100.GJ1568@game.jcrosoft.org>
 <1363197922-19851-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] bootm: switch globalvar to it's own device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 4d3f022..b70cd05 100644
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
@@ -265,10 +271,10 @@ static int do_bootm(int argc, char *argv[])
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
@@ -443,11 +449,11 @@ err_out:
 
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
