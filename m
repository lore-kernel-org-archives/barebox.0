Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp6-0002hv-6a
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:24 +0200
Message-Id: <1469191472-14491-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/18] blspec: Make blspec_boot static
To: Barebox List <barebox@lists.infradead.org>

Since blspec_boot is now only used locally we can make it static. Move
it up to avoid a static declaration.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c  | 156 +++++++++++++++++++++++++++----------------------------
 include/blspec.h |   2 -
 2 files changed, 78 insertions(+), 80 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index aa70685..6c963df 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -43,6 +43,84 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 }
 
 /*
+ * blspec_boot - boot an entry
+ *
+ * This boots an entry. On success this function does not return.
+ * In case of an error the error code is returned. This function may
+ * return 0 in case of a succesful dry run.
+ */
+static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
+{
+	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
+	int ret;
+	const char *abspath, *devicetree, *options, *initrd, *linuximage;
+	const char *appendroot;
+	struct bootm_data data = {
+		.initrd_address = UIMAGE_INVALID_ADDRESS,
+		.os_address = UIMAGE_SOME_ADDRESS,
+		.verbose = verbose,
+		.dryrun = dryrun,
+	};
+
+	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_set_match("bootm.", "");
+
+	devicetree = blspec_entry_var_get(entry, "devicetree");
+	initrd = blspec_entry_var_get(entry, "initrd");
+	options = blspec_entry_var_get(entry, "options");
+	linuximage = blspec_entry_var_get(entry, "linux");
+
+	if (entry->rootpath)
+		abspath = entry->rootpath;
+	else
+		abspath = "";
+
+	data.os_file = basprintf("%s/%s", abspath, linuximage);
+
+	if (devicetree) {
+		if (!strcmp(devicetree, "none")) {
+			struct device_node *node = of_get_root_node();
+			if (node)
+				of_delete_node(node);
+		} else {
+			data.oftree_file = basprintf("%s/%s", abspath,
+						       devicetree);
+		}
+	}
+
+	if (initrd)
+		data.initrd_file = basprintf("%s/%s", abspath, initrd);
+
+	globalvar_add_simple("linux.bootargs.dyn.bootentries", options);
+
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
+
+	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
+			entry->cdev ? dev_name(entry->cdev->dev) : "none");
+
+	ret = bootm_boot(&data);
+	if (ret)
+		pr_err("Booting failed\n");
+err_out:
+	free((char *)data.oftree_file);
+	free((char *)data.initrd_file);
+	free((char *)data.os_file);
+
+	return ret;
+}
+
+/*
  * blspec_entry_var_get - get the value of a variable
  */
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name)
@@ -653,81 +731,3 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 
 	return blspec_scan_device(bootentries, dev);
 }
-
-/*
- * blspec_boot - boot an entry
- *
- * This boots an entry. On success this function does not return.
- * In case of an error the error code is returned. This function may
- * return 0 in case of a succesful dry run.
- */
-int blspec_boot(struct bootentry *be, int verbose, int dryrun)
-{
-	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
-	int ret;
-	const char *abspath, *devicetree, *options, *initrd, *linuximage;
-	const char *appendroot;
-	struct bootm_data data = {
-		.initrd_address = UIMAGE_INVALID_ADDRESS,
-		.os_address = UIMAGE_SOME_ADDRESS,
-		.verbose = verbose,
-		.dryrun = dryrun,
-	};
-
-	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.", "");
-
-	devicetree = blspec_entry_var_get(entry, "devicetree");
-	initrd = blspec_entry_var_get(entry, "initrd");
-	options = blspec_entry_var_get(entry, "options");
-	linuximage = blspec_entry_var_get(entry, "linux");
-
-	if (entry->rootpath)
-		abspath = entry->rootpath;
-	else
-		abspath = "";
-
-	data.os_file = basprintf("%s/%s", abspath, linuximage);
-
-	if (devicetree) {
-		if (!strcmp(devicetree, "none")) {
-			struct device_node *node = of_get_root_node();
-			if (node)
-				of_delete_node(node);
-		} else {
-			data.oftree_file = basprintf("%s/%s", abspath,
-						       devicetree);
-		}
-	}
-
-	if (initrd)
-		data.initrd_file = basprintf("%s/%s", abspath, initrd);
-
-	globalvar_add_simple("linux.bootargs.dyn.bootentries", options);
-
-	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
-	if (appendroot) {
-		int val;
-
-		ret = strtobool(appendroot, &val);
-		if (ret) {
-			pr_err("Invalid value \"%s\" for appendroot option\n",
-			       appendroot);
-			goto err_out;
-		}
-		data.appendroot = val;
-	}
-
-	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
-			entry->cdev ? dev_name(entry->cdev->dev) : "none");
-
-	ret = bootm_boot(&data);
-	if (ret)
-		pr_err("Booting failed\n");
-err_out:
-	free((char *)data.oftree_file);
-	free((char *)data.initrd_file);
-	free((char *)data.os_file);
-
-	return ret;
-}
diff --git a/include/blspec.h b/include/blspec.h
index 7a16ae7..8a79df5 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -31,8 +31,6 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 		const char *val);
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
 
-int blspec_boot(struct bootentry *entry, int verbose, int dryrun);
-
 int blspec_scan_devices(struct bootentries *bootentries);
 
 int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
