Delivery-date: Wed, 03 Jul 2024 18:59:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Km-001EZT-1q
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kj-0005PQ-T3
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IPOxeyzJiBkq24Lr5FU7Pvdr6O6UiT3wdtlCtMVBETw=; b=1l1qLQqERHec4T69nahee4xFqS
	xOQuIIWsdYCeX679L1LKYUvSpYvTm0WBT6igF/9rKhnR9IfZEa+58WKaYUaNRVoSie+npT6HGH+wJ
	jg3WCjYQRT6Z4l6atHZbSOwaLSUr5jEGgYepQXQ0tAZSCAYyqeW8RJ/R3kK+lYDAAI+PkQh/gi1X5
	SVqwaBus1y+cy926fNTBRQSYuStV2anb/JERNrQvo5PA4X4QwUTei9ybWBwlqn52XZnD+/H8SDrRZ
	3lnZSKwjLETWyuVwOpsiCJ49s/qHqehiN7UPVpgw0YnTRnYjlWTuDben/4kqul9WkEYC5mriJH3dV
	bxdBUVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K1-0000000Av5h-0aWx;
	Wed, 03 Jul 2024 16:59:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Ju-0000000Av23-3rpg
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:05 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-AV; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-2-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_006113_19042353 
X-CRM114-Status: GOOD (  17.64  )
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
Subject: [PATCH v3 02/10] FIT: fit_open_configuration: add match function
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FIT spec is not very specific and was growing over the past years.
E.g. according U-Boot (doc/usage/fit/source_file_format.rst) either a
"kernel" or "firmware" property is mandatory whereas the fit-overlay
example (doc/usage/fit/overlay-fdt-boot.rst) doesn't fulfil this and
instead allows nodes which do contain only a "fdt" property.

This inconsistency makes it hard to detect the purpose of an
configuration node. So far we have three different configuration nodes

- bootable nodes (the usual use-case):

|	config-0 {
|		compatible = "machine-compatible";
|		kernel = "kernel-img-name";
|		fdt = "fdt-img-name";
|	}

- firmware only nodes like (doc/usage/fit/sec_firmware_ppa.rst):

|	config-1 {
|		description = "PPA Secure firmware";
|		firmware = "firmware@1";
|		loadables = "trustedOS@1", "fuse_scr";
|	};

- overlay only nodes:

|	config-2 {
|		fdt = "fdt-overlay-img-name";
|	}

This commit adds an optional match function which can be passed to the
fit_open_configuration() to sort out config nodes which are not
interessting. E.g. the bootm code is only interested in config nodes
which do provide an "kernel" image. The new match function is only
called if no explicit configuration node name was specified.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c |  2 +-
 common/bootm.c                 | 13 ++++++++++++-
 common/image-fit.c             | 20 +++++++++++++++-----
 include/image-fit.h            |  4 +++-
 4 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 21efaae3ab32..96877712e737 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -69,7 +69,7 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 		return PTR_ERR(fit);
 	}
 
-	conf = fit_open_configuration(fit, NULL);
+	conf = fit_open_configuration(fit, NULL, NULL);
 	if (IS_ERR(conf)) {
 		pr_err("Cannot open default config in ppa FIT image: %pe\n", conf);
 		ret = PTR_ERR(conf);
diff --git a/common/bootm.c b/common/bootm.c
index c851ab0456b8..2f1aabc3388c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -554,6 +554,16 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
+static bool bootm_fit_config_valid(struct fit_handle *fit,
+				   struct device_node *config)
+{
+	/*
+	 * Consider only FIT configurations which do provide a loadable kernel
+	 * image.
+	 */
+	return !!fit_has_image(fit, config, "kernel");
+}
+
 static int bootm_open_fit(struct image_data *data)
 {
 	struct fit_handle *fit;
@@ -579,7 +589,8 @@ static int bootm_open_fit(struct image_data *data)
 	data->os_fit = fit;
 
 	data->fit_config = fit_open_configuration(data->os_fit,
-						  data->os_part);
+						  data->os_part,
+						  bootm_fit_config_valid);
 	if (IS_ERR(data->fit_config)) {
 		pr_err("Cannot open FIT image configuration '%s'\n",
 		       data->os_part ? data->os_part : "default");
diff --git a/common/image-fit.c b/common/image-fit.c
index 008804e6a6c3..24a733cd6b6e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -717,7 +717,9 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 
 static int fit_find_compatible_unit(struct fit_handle *handle,
 				    struct device_node *conf_node,
-				    const char **unit)
+				    const char **unit,
+				    bool (*config_node_valid)(struct fit_handle *handle,
+							      struct device_node *config))
 {
 	struct device_node *child = NULL;
 	struct device_node *barebox_root;
@@ -734,7 +736,12 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 		return -ENOENT;
 
 	for_each_child_of_node(conf_node, child) {
-		int score = of_device_is_compatible(child, machine);
+		int score;
+
+		if (config_node_valid && !config_node_valid(handle, child))
+			continue;
+
+		score = of_device_is_compatible(child, machine);
 
 		if (!score && !of_property_present(child, "compatible") &&
 		    of_property_present(child, "fdt")) {
@@ -802,7 +809,9 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
  * Return: If successful a pointer to a valid configuration node,
  *         otherwise a ERR_PTR()
  */
-void *fit_open_configuration(struct fit_handle *handle, const char *name)
+void *fit_open_configuration(struct fit_handle *handle, const char *name,
+			     bool (*match_valid)(struct fit_handle *handle,
+						 struct device_node *config))
 {
 	struct device_node *conf_node = handle->configurations;
 	const char *unit, *desc = "(no description)";
@@ -814,7 +823,8 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
 	if (name) {
 		unit = name;
 	} else {
-		ret = fit_find_compatible_unit(handle, conf_node, &unit);
+		ret = fit_find_compatible_unit(handle, conf_node, &unit,
+					       match_valid);
 		if (ret) {
 			pr_info("Couldn't get a valid configuration. Aborting.\n");
 			return ERR_PTR(ret);
@@ -958,7 +968,7 @@ static int do_bootm_sandbox_fit(struct image_data *data)
 	if (IS_ERR(handle))
 		return PTR_ERR(handle);
 
-	ret = fit_open_configuration(handle, data->os_part);
+	ret = fit_open_configuration(handle, data->os_part, NULL);
 	if (ret)
 		goto out;
 
diff --git a/include/image-fit.h b/include/image-fit.h
index 0b8e94bf4635..416f1f2c1896 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -26,7 +26,9 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify, loff_t max_size);
 struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
 				enum bootm_verify verify);
-void *fit_open_configuration(struct fit_handle *handle, const char *name);
+void *fit_open_configuration(struct fit_handle *handle, const char *name,
+			     bool (*match_valid)(struct fit_handle *handle,
+						 struct device_node *config));
 int fit_has_image(struct fit_handle *handle, void *configuration,
 		  const char *name);
 int fit_open_image(struct fit_handle *handle, void *configuration,

-- 
2.39.2



