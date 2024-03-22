Delivery-date: Fri, 22 Mar 2024 17:50:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6M-0007Og-2q
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6L-0002Uh-Qk
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i/EVs829VnyH27yFUa3mDpj5Ie7rtOcpulcKLsCI39s=; b=LTlJ9ReEzbVC0aOwbQfpFJgS+i
	d4/te19vBibuVnWECcgpoHOei3C9ud+3ytiKYS9dNFIsYw+BpXbj832V+hwcC3SIB0dkX/dR3eMwa
	9/VUBJWPDrePauKexKI15c9PaLevBKiiXL3hGTEpa4wOGIzLewMPn576RK8w5cDm6qq0P8SG2p5uu
	tqL1r36u+KOEqyb8Nd7DuGhHtiQlGcFDM8UJJgGv6ZIqgQIEvM3aoAnkOffPEpISX2Kl5qAddMDBD
	fawiC/fr197GbFMoxEw3cYlWEK23pzlY8/7rIKPheYc+1aoJHwOIg+35f/aSgeWW2nrW0IDPa9wpb
	iQql0Mpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5s-000000081Ih-3ZGI;
	Fri, 22 Mar 2024 16:50:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5d-00000008170-003X
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:50:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Re
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:51 +0100
Message-Id: <20240322164953.1772129-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_207752_D83F081B 
X-CRM114-Status: GOOD (  17.42  )
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
Subject: [PATCH 6/8] of: overlay: add FIT overlay support
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
 drivers/of/overlay.c | 110 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 103 insertions(+), 7 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index e9fd5c0a1f7d..c8e70ab00091 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -8,10 +8,12 @@
  */
 #define pr_fmt(fmt) "of_overlay: " fmt
 
+#include <bootm.h>
 #include <common.h>
 #include <of.h>
 #include <errno.h>
 #include <globalvar.h>
+#include <image-fit.h>
 #include <magicvar.h>
 #include <string.h>
 #include <libfile.h>
@@ -473,9 +475,103 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
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
+static int of_overlay_global_fixup_fit(struct device_node *root, const char *ovl_dev)
+{
+	enum bootm_verify verify = bootm_get_verify_mode();
+	struct device_node *conf_node;
+	struct fit_handle *fit;
+	struct stat s;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FITIMAGE))
+		return 0;
+
+	if (stat(of_overlay_path, &s))
+		return -errno;
+
+	fit = fit_open(ovl_dev, 0, verify, s.st_size);
+	if (IS_ERR(fit)) {
+		pr_err("Loading FIT image %s failed with: %pe\n", ovl_dev, fit);
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
+	struct stat s;
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
+	else if (S_ISCHR(s.st_mode) || S_ISBLK(s.st_mode))
+		return of_overlay_global_fixup_fit(root, of_overlay_path);
+
+	pr_err("of_overlay_path is invalid!\n");
+	return -EINVAL;
 }
 
 /**
@@ -500,13 +596,13 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
 
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
@@ -629,7 +725,7 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filename or fit config-node name patterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
 BAREBOX_MAGICVAR(global.of.overlay.fitconfigpattern, "FIT config node name pattern to look for dt overlays");
-- 
2.39.2



