Delivery-date: Wed, 03 Jul 2024 18:59:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Ko-001EaX-0m
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Km-0005S9-Hm
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wid345Cefd3oH5X7H1DtG7OycEWIllslOAlrogF21xg=; b=sZOwc6/LvFaQXYg/XfSU0AC3SI
	ELOmhAQcDAcFW3z8TrN5FF0dba/+S9wJlAbGiaGxAfPybzqRnNP6RXiNsWLG9Jmd19Fxg4/KQYM2E
	bvc763jIxfpl5MvYpUqcW6J2Yg0qd+rtx3ByK7LNIxS6KebFcZ0Zk4+5WGDXBYXe7twCU34Gz4nw+
	cYnWUX5TFtM/VElvI9WgDi1usFeKgz04/VN5jWJ2m6AOaiszuwIOH4w0C0y86vB0nng8EYIoeMnhC
	LQy3iimxDT5aFbEwsxtYUVm5eWheRvwzDI8DPXjYl62ZB+B15MADp1BQz09SBSv6tQLbeb75KLiEU
	ka+R+d4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K6-0000000Av88-353m;
	Wed, 03 Jul 2024 16:59:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Jv-0000000Av27-0Dg7
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:08 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-EZ; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-6-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_230441_A2B967E1 
X-CRM114-Status: GOOD (  18.57  )
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
Subject: [PATCH v3 06/10] of: overlay: add FIT overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the support to load devicetree overlays from an FIT image.
There are quite a few options to handle FIT overlays since the FIT
overlay spec is not very strict.

This patch implement the most configurable case where each overlay does
have it's own config node (including the optional signature).

- The "name" filter check is performed on the config-node name (the node
  under the configurations) and not the FIT overlay image name (the node
  name under the images node).
- The "content" filter check does not differ from the file based overlay
  handling.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 131 ++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 124 insertions(+), 7 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 5617f322ddca..a980e7aa5e02 100644
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
@@ -470,9 +473,123 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
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
-	return of_overlay_global_fixup_dir(root, of_overlay_path);
+	enum filetype type;
+	struct stat s;
+	int ret;
+
+	if (isempty(of_overlay_path))
+		return 0;
+
+	if (stat(of_overlay_path, &s)) {
+		pr_err("Failed to detect file status\n");
+		return -errno;
+	}
+
+	if (S_ISDIR(s.st_mode))
+		return of_overlay_global_fixup_dir(root, of_overlay_path);
+
+	ret = file_name_detect_type(of_overlay_path, &type);
+	if (ret)
+		return ret;
+
+	if (type == filetype_oftree)
+		return of_overlay_global_fixup_fit(root, of_overlay_path,
+						   s.st_size);
+
+	pr_err("No suitable overlay provider found!\n");
+
+	return -EINVAL;
 }
 
 /**
@@ -497,13 +614,13 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
 
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
@@ -624,6 +741,6 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filename or fit config-node name patterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");

-- 
2.39.2



