Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k6-0007eB-1m
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:29 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:20 +0200
Message-Id: <20190404145320.11465-8-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
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
Subject: [RFC PATCH 7/7] blspec: add support for devicetree overlays
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Read the devicetree-overlay property from the blspec entry, set the
firmware search-path based on the blspec root and register a devicetree
overlay when booting the blspec entry.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  4 ++++
 common/blspec.c                      | 10 ++++++++
 common/bootm.c                       | 35 ++++++++++++++++++++++++++++
 include/bootm.h                      |  1 +
 4 files changed, 50 insertions(+)

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
index 41f2a4c534..d0f2f3b228 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -54,6 +54,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 	int ret;
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
+	const char *devicetree_overlay;
 	const char *appendroot;
 	struct bootm_data data = {
 		.initrd_address = UIMAGE_INVALID_ADDRESS,
@@ -69,6 +70,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	initrd = blspec_entry_var_get(entry, "initrd");
 	options = blspec_entry_var_get(entry, "options");
 	linuximage = blspec_entry_var_get(entry, "linux");
+	devicetree_overlay = blspec_entry_var_get(entry, "devicetree-overlay");
 
 	if (entry->rootpath)
 		abspath = entry->rootpath;
@@ -88,6 +90,13 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
+	if (devicetree_overlay) {
+		data.oftree_overlay_file = basprintf("%s/%s", abspath,
+						     devicetree_overlay);
+		setenv("global.firmware.path",
+		       basprintf("%s/%s", abspath, "lib/firmware/"));
+	}
+
 	if (initrd)
 		data.initrd_file = basprintf("%s/%s", abspath, initrd);
 
@@ -114,6 +123,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	if (ret)
 		pr_err("Booting failed\n");
 err_out:
+	free((char *)data.oftree_overlay_file);
 	free((char *)data.oftree_file);
 	free((char *)data.initrd_file);
 	free((char *)data.os_file);
diff --git a/common/bootm.c b/common/bootm.c
index 36f6c41bbd..a796e89857 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -499,6 +499,32 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
+static int bootm_apply_oftree_overlay(const char *path)
+{
+	int ret;
+	struct fdt_header *fdt;
+	struct device_node *root;
+
+	fdt = read_file(path, NULL);
+	if (!fdt) {
+		printf("Unable to read \"%s\"\n", path);
+		return -EINVAL;
+	}
+
+	root = of_unflatten_dtb(fdt);
+	if (IS_ERR(root)) {
+		printf("\"%s\" is not a valid devicetree\n", path);
+		return -EINVAL;
+	}
+
+	ret = of_register_overlay(root);
+	if (ret)
+		pr_warn("Failed to register devicetree overlay \"%s\"\n",
+			path);
+
+	return 0;
+}
+
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -631,6 +657,15 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (bootm_data->oftree_overlay_file) {
+		ret = bootm_apply_oftree_overlay(bootm_data->oftree_overlay_file);
+		if (ret) {
+			printf("Applying device tree overlay failed with: %s\n",
+					strerror(-ret));
+			ret = 0;
+		}
+	}
+
 	if (bootm_data->appendroot) {
 		char *rootarg;
 
diff --git a/include/bootm.h b/include/bootm.h
index fdc73f711a..d5afd3f018 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -16,6 +16,7 @@ struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
 	const char *oftree_file;
+	const char *oftree_overlay_file;
 	int verbose;
 	enum bootm_verify verify;
 	bool force;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
