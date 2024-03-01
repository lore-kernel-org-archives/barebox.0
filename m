Delivery-date: Fri, 01 Mar 2024 14:36:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33l-0026VJ-04
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 14:36:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33k-0004fc-73
	for lore@pengutronix.de; Fri, 01 Mar 2024 14:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+TYDXC+MspLYKjoGlaPUJXjuhSGr7XjQihokVckYkyc=; b=y0V9kcuFk2XnTi24STKUTKwTV5
	jFtFpX9s3AXIkv+CXGGMbvDCkAGBfaWjZ7SLQkUqbYiDnquxjOzt9NvTh4xBa9kvCrVySp9+94KtE
	qSnzQh/c0H0kwZo0pIzatjZ6qnbvjmiYaGUVC7I2Lkii3kzx5ldEbfB36HY3a15HEaWelRX038N5L
	RucUrXcwVMOO7yxAA/skJFXryGQjWVPHP2OMbLAmPlgWzs7/5Y3Y5yZrrvBWOjlXUl8SC7FAu/YR8
	qIdh8reEGZRZmEO4pCgIcnwjpH9H8TLGfRG3MU2eLfUM5jq2ydgnzCM+78zlbAA6N0XCo8h/2fJ3L
	PXF8cKAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg339-00000000VjE-2JMu;
	Fri, 01 Mar 2024 13:35:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2ZE-00000000Hn9-3303
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 13:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZD-0000Zp-3S; Fri, 01 Mar 2024 14:04:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-003mfy-Ms; Fri, 01 Mar 2024 14:04:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-000jfC-0M;
	Fri, 01 Mar 2024 14:04:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Mar 2024 14:04:45 +0100
Message-Id: <20240301130445.171385-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301130445.171385-1-a.fatoum@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_050448_813138_CAD2FC1F 
X-CRM114-Status: GOOD (  14.86  )
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
Subject: [PATCH 4/4] FIT: support finding compatible configuration by FDT compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we only supported finding compatible configurations that have
a compatible property inside the configuration's device tree node.

According to spec, this is optional however, and e.g. Yocto's
kernel-fitimage.bbclass don't generate it.

Instead, the bootloader is expected to lookup the compatible inside the
referenced FDT. With fdt_machine_is_compatible, this is much less of a
performance hit than with of_machine_is_compatible, so let's implement
support for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 39 +++++++++++++++++++++++++++++++++++++--
 include/of.h       |  5 +++++
 2 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index b16752de05bc..251fda97b3fc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -715,7 +715,8 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	return ret;
 }
 
-static int fit_find_compatible_unit(struct device_node *conf_node,
+static int fit_find_compatible_unit(struct fit_handle *handle,
+				    struct device_node *conf_node,
 				    const char **unit)
 {
 	struct device_node *child = NULL;
@@ -734,6 +735,40 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
 
 	for_each_child_of_node(conf_node, child) {
 		int score = of_device_is_compatible(child, machine);
+
+		if (!score && !of_property_present(child, "compatible") &&
+		    of_property_present(child, "fdt")) {
+			struct device_node *image;
+			const char *unit = "fdt";
+			int data_len;
+			const void *data;
+			int ret;
+
+			ret = fit_get_image(handle, child, &unit, &image);
+			if (ret)
+				goto next;
+
+			data = of_get_property(image, "data", &data_len);
+			if (!data) {
+				ret = -EINVAL;
+				goto next;
+			}
+
+			ret = fit_handle_decompression(image, "fdt", &data, &data_len);
+			if (ret) {
+				ret = -EILSEQ;
+				goto next;
+			}
+
+			score = fdt_machine_is_compatible(data, data_len, machine);
+
+			of_delete_property_by_name(image, "uncompressed-data");
+next:
+			if (ret)
+				pr_warn("skipping malformed configuration: %pOF (%pe)\n",
+					child, ERR_PTR(ret));
+		}
+
 		if (score > best_score) {
 			best_score = score;
 			*unit = child->name;
@@ -779,7 +814,7 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
 	if (name) {
 		unit = name;
 	} else {
-		ret = fit_find_compatible_unit(conf_node, &unit);
+		ret = fit_find_compatible_unit(handle, conf_node, &unit);
 		if (ret) {
 			pr_info("Couldn't get a valid configuration. Aborting.\n");
 			return ERR_PTR(ret);
diff --git a/include/of.h b/include/of.h
index b00940c8532e..f0214fb13c49 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1226,6 +1226,11 @@ static inline int of_property_write_u64(struct device_node *np,
 	return of_property_write_u64_array(np, propname, &value, 1);
 }
 
+static inline void of_delete_property_by_name(struct device_node *np, const char *name)
+{
+	of_delete_property(of_find_property(np, name, NULL));
+}
+
 extern const struct of_device_id of_default_bus_match_table[];
 
 int of_device_enable(struct device_node *node);
-- 
2.39.2



