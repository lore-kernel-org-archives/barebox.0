Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQukC-0004Ab-Qk
 for barebox@lists.infradead.org; Fri, 21 Mar 2014 08:24:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Mar 2014 09:23:35 +0100
Message-Id: <1395390215-4219-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: Check if an entry is compatible with the current
 machine
To: barebox@lists.infradead.org

When a bootspec entry has the 'devicetree' property specified, check
if the tree is compatible with the currently running machine, otherwise
ignore the entry. This makes it possible to have entries for multiple
machines on an SD card and pick a suitable one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 79 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 9b4b096..f165b77 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -235,6 +235,78 @@ out:
 }
 
 /*
+ * entry_is_of_compatible - check if a bootspec entry is compatible with
+ *                          the current machine.
+ *
+ * returns true is the entry is compatible, false otherwise
+ */
+static bool entry_is_of_compatible(struct blspec_entry *entry)
+{
+	const char *devicetree;
+	const char *abspath;
+	size_t size;
+	void *fdt = NULL;
+	int ret;
+	struct device_node *root = NULL, *barebox_root;
+	const char *compat;
+	char *filename;
+
+	/* If we don't have a root node every entry is compatible */
+	barebox_root = of_get_root_node();
+	if (!barebox_root)
+		return true;
+
+	ret = of_property_read_string(barebox_root, "compatible", &compat);
+	if (ret)
+		return false;
+
+	if (entry->rootpath)
+		abspath = entry->rootpath;
+	else
+		abspath = "";
+
+	/* If the entry doesn't specifiy a devicetree we are compatible */
+	devicetree = blspec_entry_var_get(entry, "devicetree");
+	if (!devicetree)
+		return true;
+
+	if (!strcmp(devicetree, "none"))
+		return true;
+
+	filename = asprintf("%s/%s", abspath, devicetree);
+
+	fdt = read_file(filename, &size);
+	if (!fdt) {
+		ret = false;
+		goto out;
+	}
+
+	root = of_unflatten_dtb(NULL, fdt);
+	if (IS_ERR(root)) {
+		ret = PTR_ERR(root);
+		goto out;
+	}
+
+	if (of_device_is_compatible(root, compat)) {
+		ret = true;
+		goto out;
+	}
+
+	pr_info("ignoring entry with incompatible devicetree \"%s\"\n",
+			(char *)of_get_property(root, "compatible", &size));
+
+	ret = false;
+
+out:
+	if (root)
+		of_delete_node(root);
+	free(filename);
+	free(fdt);
+
+	return ret;
+}
+
+/*
  * blspec_scan_directory - scan over a directory
  *
  * Given a root path collects all blspec entries found under /blspec/entries/.
@@ -313,12 +385,17 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 			continue;
 		}
 
-		found++;
-
 		entry->rootpath = xstrdup(root);
 		entry->configpath = configname;
 		entry->cdev = get_cdev_by_mountpath(root);
 
+		if (!entry_is_of_compatible(entry)) {
+			blspec_entry_free(entry);
+			continue;
+		}
+
+		found++;
+
 		name = asprintf("%s/%s", dirname, d->d_name);
 		if (entry_default && !strcmp(name, entry_default))
 			entry->boot_default = true;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
