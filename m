Delivery-date: Tue, 29 Jul 2025 17:35:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMF-004y5M-0Y
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 17:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMC-0008V5-Ok
	for lore@pengutronix.de; Tue, 29 Jul 2025 17:35:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CR/qUEYkk1ANwAUqXlWpMhF7vW7xhIeuCE1gcOLWjrw=; b=MQDoWaaZpwfYheYsE2NjeCw1qU
	X6AXj8nWvzAh3iNp6UOcIkE0RbQTxd8roEjbVcs+bLjivHdg3DZTW39K+Ryu7+9wX9vsHcH8cVMJK
	CsmJqtsZkBFQVQQycx7YGR1qkVIWQju4yyZRmVet00xb9GVHw+9aY2ux8X7NpfG9ns4TUoNACn8y4
	NVS2M1zZY+oIghE5AFar3/dM0lcD9h9iI6XylYbljSd7iBuryiAziBWXbyZMJSuF/0Zb1kdoaSwhZ
	3vusYNdpXo3CJGd0YMOqv+EMc1BJyLzu2OyWaaZqLWit/seOGE1Fl/nLedYWizq1Zqw/K1ovepY9P
	ktvmZ1kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLf-0000000H95G-1VwQ;
	Tue, 29 Jul 2025 15:34:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLW-0000000H8vt-1DQN
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 15:34:34 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ugmLT-0007q6-OO; Tue, 29 Jul 2025 17:34:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 29 Jul 2025 17:34:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-v2024-05-0-topic-fit-overlay-v4-7-af3ad99acde2@pengutronix.de>
References: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
In-Reply-To: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_083430_495736_FEEA5C5B 
X-CRM114-Status: GOOD (  25.00  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 07/11] of: overlay: add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the support to load devicetree overlays from a FIT image.
There are a few options to handle FIT overlays since the FIT overlay
spec is not very strict.

This implements the most configurable case where each overlay does have
its own config node (including the optional signature).

- The "pattern" filter matches the config-node names (the node names
  below the configurations node), not the overlay image names (the node
  names below the images node).

- The "compatible" filter check doesn't differ from the file based overlay
  handling.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/user/devicetree.rst |  19 +++---
 drivers/of/overlay.c              | 132 +++++++++++++++++++++++++++++++++++---
 2 files changed, 134 insertions(+), 17 deletions(-)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 30a15a8865c154f8afe23d641da10d0afa84423b..4431ae26bd0f13f3b703881ccb1ed134c844cbf6 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -109,20 +109,23 @@ Overlays can be applied to the kernel device tree before it is handed over to
 the kernel. The behaviour is controlled by different variables:
 
 ``global.of.overlay.path``
-  Overlays are read from this directory. barebox will try to apply all overlays
-  found here if not limited by one of the other variables below. When the path
-  given here is an absolute path it is used as is. A relative path is relative
-  to ``/`` or relative to the rootfs when using bootloader spec.
+  Overlays are read from this path. The path can either be a directory which
+  contains the overlays or an absolute path to a FIT-image. barebox will try to
+  apply all found overlays found if not limited by one of the other variables
+  below. When the path given here is an absolute path it is used as is. A
+  relative path is relative to ``/`` or relative to the rootfs when using
+  bootloader spec.
 ``global.of.overlay.compatible``
   This is a space separated list of compatibles. Only overlays matching one of
   these compatibles will be applied. When this list is empty then all overlays
   will be applied. Overlays that don't have a compatible are considered being
   always compatible.
 ``global.of.overlay.pattern``
-  This is a space separated list of file patterns. An overlay is only applied
-  when its filename matches one of the patterns. The patterns can contain
-  ``*`` and ``?`` as wildcards. The default is ``*`` which means all files are
-  applied.
+  This is a space separated list of file patterns or FIT-image config-node name
+  patterns. An overlay is only applied when its filename or FIT-image
+  config-node name matches one of the patterns. The patterns can contain ``*``
+  and ``?`` as wildcards. The default is ``*`` which means all files or FIT-Image
+  config-nodes are applied.
 ``global.of.overlay.filter``
   This is a space separated list of filters to apply. There are two generic filters:
   ``pattern`` matches ``global.of.overlay.pattern`` above, ``compatible`` matches
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index f02a12d44f0d53db3fb7bb065461c0ef193d0ab3..604ce0998cd8044cca59c40e65f4e9b95bec6112 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -8,10 +8,13 @@
  */
 #define pr_fmt(fmt) "of_overlay: " fmt
 
+#include <bootm.h>
 #include <common.h>
 #include <of.h>
 #include <errno.h>
+#include <filetype.h>
 #include <globalvar.h>
+#include <image-fit.h>
 #include <magicvar.h>
 #include <string.h>
 #include <libfile.h>
@@ -463,8 +466,99 @@ static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
 	return ret;
 }
 
+static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit,
+				struct device_node *config)
+{
+	const char *name = config->name;
+	struct device_node *overlay;
+	unsigned long ovl_sz;
+	const void *ovl;
+	int ret;
+
+	if (!of_overlay_matches_filter(name, NULL))
+		return 0;
+
+	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
+	if (ret)
+		return ret;
+
+	overlay = of_unflatten_dtb(ovl, ovl_sz);
+
+	if (!of_overlay_matches_filter(NULL, overlay)) {
+		ret = 0;
+		goto out;
+	}
+
+	ret = of_overlay_apply_tree(root, overlay);
+	if (ret == -ENODEV)
+		pr_debug("Not applied %s (not compatible)\n", name);
+	else if (ret)
+		pr_err("Cannot apply %s: %s\n", name, strerror(-ret));
+	else
+		pr_info("Applied %s\n", name);
+
+out:
+	of_delete_node(overlay);
+
+	return ret;
+}
+
+static bool of_overlay_valid_config(struct fit_handle *fit,
+				    struct device_node *config)
+{
+	/*
+	 * Either kernel or firmware is marked as mandatory by U-Boot
+	 * (doc/usage/fit/source_file_format.rst) except for overlays
+	 * (doc/usage/fit/overlay-fdt-boot.rst). Therefore we need to ensure
+	 * that only "fdt" config nodes are recognized as overlay config node.
+	 */
+	if (!fit_has_image(fit, config, "fdt") ||
+	    fit_has_image(fit, config, "kernel") ||
+	    fit_has_image(fit, config, "firmware"))
+		return false;
+
+	return true;
+}
+
+static int of_overlay_global_fixup_fit(struct device_node *root,
+				       const char *fit_path, loff_t fit_size)
+{
+	enum bootm_verify verify = bootm_get_verify_mode();
+	struct device_node *conf_node;
+	struct fit_handle *fit;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FITIMAGE))
+		return 0;
+
+	fit = fit_open(fit_path, 0, verify, fit_size);
+	if (IS_ERR(fit)) {
+		pr_err("Loading FIT image %s failed with: %pe\n", fit_path, fit);
+		return PTR_ERR(fit);
+	}
+
+	for_each_child_of_node(fit->configurations, conf_node) {
+		if (!of_overlay_valid_config(fit, conf_node))
+			continue;
+
+		ret = fit_config_verify_signature(fit, conf_node);
+		if (ret)
+			goto out;
+
+		ret = of_overlay_apply_fit(root, fit, conf_node);
+		if (ret)
+			goto out;
+	}
+
+out:
+	fit_close(fit);
+	return ret;
+}
+
 static int of_overlay_global_fixup(struct device_node *root, void *data)
 {
+	enum filetype type;
+	struct stat s;
 	char *dir;
 	int ret;
 
@@ -476,10 +570,30 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	else
 		dir = concat_path_file(of_overlay_basedir, of_overlay_path);
 
-	ret = of_overlay_apply_dir(root, dir, true);
+	if (stat(dir, &s)) {
+		pr_err("Failed to detect file status\n");
+		ret = -errno;
+		goto out;
+	}
 
-	free(dir);
+	if (S_ISDIR(s.st_mode)) {
+		ret = of_overlay_apply_dir(root, dir, true);
+		goto out;
+	}
 
+	ret = file_name_detect_type(dir, &type);
+	if (ret)
+		goto out;
+
+	if (type == filetype_oftree) {
+		ret = of_overlay_global_fixup_fit(root, dir, s.st_size);
+		goto out;
+	}
+
+	pr_err("No suitable overlay provider found!\n");
+	ret = -EINVAL;
+out:
+	free(dir);
 	return ret;
 }
 
@@ -505,13 +619,13 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
 
 /**
  * of_overlay_filter_pattern - A filter that matches on the filename or
- *                                an overlay
+ *			       FIT config-node name of an overlay
  * @f: The filter
- * @pattern: The filename of the overlay
+ * @pattern: The filename or FIT config-node name of the overlay
  *
- * This filter matches when the filename matches one of the patterns given
- * in global.of.overlay.filepattern. global.of.overlay.filepattern shall
- * contain a space separated list of wildcard patterns.
+ * This filter matches when the filename or FIT config-node name matches one of
+ * the patterns given in global.of.overlay.pattern. global.of.overlay.pattern
+ * shall contain a space separated list of wildcard patterns.
  *
  * @return: True when the overlay shall be applied, false otherwise.
  */
@@ -632,6 +746,6 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filename or fit config-node name patterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays or a path to a FIT image");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");

-- 
2.39.5



