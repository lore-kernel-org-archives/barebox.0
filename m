Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pMg-00074f-KL
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 10:51:49 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 12:51:38 +0200
Message-Id: <20190905105142.13681-4-m.tretter@pengutronix.de>
In-Reply-To: <20190905105142.13681-1-m.tretter@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] blspec: add support for devicetree overlays
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Read the devicetree-overlay property from the blspec entry and register
the overlays when booting the blspec entry.

Do not fail the boot if an overlay cannot be loaded, because if Linux
fails to boot without an overlay, the base device tree is broken.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  4 ++
 common/blspec.c                      | 59 ++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 437f4e80ca..12cd505e71 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -232,6 +232,10 @@ device where the entry is found on. This makes it possible to use the same rootf
 image on different devices without having to specify a different root= option each
 time.
 
+Additionally to the options defined in the original spec, Barebox has the
+``devicetree-overlay`` option. This is a string value that refer to overlays
+that will be applied to the device tree before passing it to Linux.
+
 Network boot
 ------------
 
diff --git a/common/blspec.c b/common/blspec.c
index 66e5033e35..6b15d36d67 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -42,6 +42,60 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 			val ? strlen(val) + 1 : 0, 1);
 }
 
+static int blspec_apply_oftree_overlay(char *file, const char *abspath,
+				       int dryrun)
+{
+	int ret;
+	struct fdt_header *fdt;
+	struct device_node *overlay;
+	char *path;
+
+	path = basprintf("%s/%s", abspath, file);
+
+	fdt = read_file(path, NULL);
+	if (!fdt) {
+		pr_warn("unable to read \"%s\"\n", path);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	overlay = of_unflatten_dtb(fdt);
+	if (IS_ERR(overlay)) {
+		printf("\"%s\" is not a valid devicetree\n", path);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (dryrun) {
+		pr_info("dry run: skip overlay %s\n", path);
+		of_delete_node(overlay);
+		goto out;
+	}
+
+	ret = of_register_overlay(overlay);
+	if (ret)
+		pr_warn("cannot register devicetree overlay \"%s\"\n", path);
+
+out:
+	free(path);
+
+	return ret;
+}
+
+static void blspec_apply_oftree_overlays(const char *overlays,
+					 const char *abspath, int dryrun)
+{
+	char *overlay;
+	char *sep, *freep;
+
+	sep = freep = xstrdup(overlays);
+
+	while ((overlay = strsep(&sep, " ")))
+		blspec_apply_oftree_overlay(overlay, abspath, dryrun);
+
+	free(freep);
+}
+
 /*
  * blspec_boot - boot an entry
  *
@@ -54,6 +108,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 	int ret;
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
+	const char *overlays;
 	const char *appendroot;
 	struct bootm_data data = {
 		.initrd_address = UIMAGE_INVALID_ADDRESS,
@@ -73,6 +128,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	initrd = blspec_entry_var_get(entry, "initrd");
 	options = blspec_entry_var_get(entry, "options");
 	linuximage = blspec_entry_var_get(entry, "linux");
+	overlays = blspec_entry_var_get(entry, "devicetree-overlay");
 
 	if (entry->rootpath)
 		abspath = entry->rootpath;
@@ -92,6 +148,9 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
+	if (overlays)
+		blspec_apply_oftree_overlays(overlays, abspath, dryrun);
+
 	if (initrd)
 		data.initrd_file = basprintf("%s/%s", abspath, initrd);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
