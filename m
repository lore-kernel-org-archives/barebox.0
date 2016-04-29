Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw564-0002GC-GN
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:05 +0200
Message-Id: <1461923525-6356-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
References: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] blspec: push appendroot handling to bootm
To: Barebox List <barebox@lists.infradead.org>

The bootm code now can handle the adding of the root= option itself,
so drop the code and let bootm do it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 39 +++++++++++++--------------------------
 1 file changed, 13 insertions(+), 26 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 1800556..ac8f512 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -637,29 +637,6 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 	return blspec_scan_device(blspec, dev);
 }
 
-static int blspec_append_root(struct blspec_entry *entry)
-{
-	const char *appendroot;
-	char *rootarg;
-
-	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
-	if (!appendroot || strcmp(appendroot, "true"))
-		return 0;
-
-	rootarg = path_get_linux_rootarg(entry->rootpath);
-	if (IS_ERR(rootarg)) {
-		pr_err("Getting root argument for %s failed with: %s\n",
-				entry->rootpath, strerrorp(rootarg));
-		return PTR_ERR(rootarg);
-	}
-
-	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootarg);
-
-	free(rootarg);
-
-	return 0;
-}
-
 /*
  * blspec_boot - boot an entry
  *
@@ -671,6 +648,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 {
 	int ret;
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
+	const char *appendroot;
 	struct bootm_data data = {
 		.initrd_address = UIMAGE_INVALID_ADDRESS,
 		.os_address = UIMAGE_SOME_ADDRESS,
@@ -709,9 +687,18 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 
 	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
 
-	ret = blspec_append_root(entry);
-	if (ret)
-		goto err_out;
+	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
+	if (appendroot) {
+		int val;
+
+		ret = strtobool(appendroot, &val);
+		if (ret) {
+			pr_err("Invalid value \"%s\" for appendroot option\n",
+			       appendroot);
+			goto err_out;
+		}
+		data.appendroot = val;
+	}
 
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
