Delivery-date: Thu, 13 Jun 2024 14:59:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2w-005NOa-1U
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2u-0004Vn-Qk
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/CMXR7R1vZd/c6Tccd3MAR/2Rbd5ymZIcHElGpDl0M=; b=UKGzZhg9FoBsxCu9AKHfa6UFGT
	785r3aCy4dK6/sKGG64wbLn0dqY6YqGGe1jsjgtlYjxtq1m3bkUSxSDzqljvtNxYmRjG+zU0KP6hi
	L+Iov7aBnqMCMReaf54xfVZ9R6x4vs7IgWm23gHGHjJ6Z1HzP3RJMmBhBM69SVct7R7jqGxbR5evo
	j30g7AJtMHK9tm226AZuuSolnw65SlXuiHJo2qO1bwbXU4X2MvLrNZXbyo+pirxvi0zMdDyE9h9HB
	XWhCWbF8dtFrQbUVojtYop43df/LL9oYLzcDM9DXOcICiegMp7J9l2xmO/YKpwNNJhxFxaLaS55HC
	tFgCjbgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2I-0000000GbCI-3aJY;
	Thu, 13 Jun 2024 12:58:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb4y-0YYT
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:31 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-A4
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:14 +0200
Message-Id: <20240613125818.30499-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_307467_43BB121B 
X-CRM114-Status: GOOD (  17.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/11] of: overlay: add FIT overlay support
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
 drivers/of/overlay.c | 117 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 110 insertions(+), 7 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 156f0f07c878..941cd3d51883 100644
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
@@ -471,9 +474,109 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
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
+	if (!fit_has_image(fit, config, "fdt"))
+		return 0;
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
+		if (!fit_config_is_overlay(conf_node))
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
@@ -498,13 +601,13 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
 
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
@@ -627,7 +730,7 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filename or fit config-node name patterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
 BAREBOX_MAGICVAR(global.of.overlay.fitconfigpattern, "FIT config node name pattern to look for dt overlays");
-- 
2.39.2



