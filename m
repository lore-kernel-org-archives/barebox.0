Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJf8y-0005Jy-PW
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 09:24:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Feb 2015 10:23:45 +0100
Message-Id: <1423214625-32507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: put blspec bootargs into a .dyn bootargs variable
To: Barebox List <barebox@lists.infradead.org>

So that they get deleted later when something else is booted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index b9342d5..3506388 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -648,7 +648,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	if (initrd)
 		data.initrd_file = asprintf("%s/%s", abspath, initrd);
 
-	globalvar_add_simple("linux.bootargs.blspec", options);
+	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
 
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
