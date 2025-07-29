Delivery-date: Tue, 29 Jul 2025 17:35:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmME-004y4x-0n
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 17:35:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMA-0008Sz-N3
	for lore@pengutronix.de; Tue, 29 Jul 2025 17:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Rg7YYWCEkYjpMILRCiSr790PTbU2RoS6rPdhJ7wm0U=; b=ou6AvzL5pJu6K/sxuJBb8p5NvU
	ZSlPBcZncKEbSpjSCz1xoR31Ul23WYW856HSKdGpf2sbBSFV3F2FIAzAlLr7DXpOdt1ZDjcmNdDgD
	CpKoH1zDckwZgdwYEANX9pdcc4rrUyCit4eeau3cMPUrdcHtg9kZU7glr3SvSiOkmIMuEvFnAo04u
	itwOKHfyt6JxrXtfiBoBCQL6d3unLr3VU4mAl8F+iUeVP9RXozcFldG47QteHdyibZgbJIWrw9f13
	KAty432mqRi2pi6KuCY4B0A84I3rfjUkBywFP7YNf/LExA3z/5lfjaOMVXTRyFT5yDKaNTJUXlLZt
	6/X3w7QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLd-0000000H93H-2aUW;
	Tue, 29 Jul 2025 15:34:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLW-0000000H8vn-0zya
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 15:34:33 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ugmLT-0007q6-If; Tue, 29 Jul 2025 17:34:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 29 Jul 2025 17:34:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-v2024-05-0-topic-fit-overlay-v4-2-af3ad99acde2@pengutronix.de>
References: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
In-Reply-To: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_083430_341605_694C2741 
X-CRM114-Status: GOOD (  16.65  )
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
Subject: [PATCH v4 02/11] FIT: fit_open_configuration: add match function
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FIT spec is not very specific and was growing over the past years,
e.g. according U-Boot (doc/usage/fit/source_file_format.rst) either a
"kernel" or "firmware" property is mandatory whereas the fit-overlay
example (doc/usage/fit/overlay-fdt-boot.rst) doesn't fulfil this
requirement. Instead it allows nodes which contain only a "fdt"
property.

This inconsistency makes it hard to detect the purpose of a
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
interessting, e.g. the bootm code is only interested in config nodes
which do provide a "kernel" image.

This new match function gets called if no explicit configuration node
name was specified.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c      | 13 ++++++++++++-
 common/image-fit.c  | 22 ++++++++++++++++------
 include/image-fit.h |  4 +++-
 3 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 95211011fe8bf5f52ce3155de419bc9b09ff2228..7f37c74eb41e5c7a89aa4038bae46cee5f056f5f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -609,6 +609,16 @@ static int bootm_open_os_uimage(struct image_data *data)
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
@@ -634,7 +644,8 @@ static int bootm_open_fit(struct image_data *data)
 	data->os_fit = fit;
 
 	data->fit_config = fit_open_configuration(data->os_fit,
-						  data->os_part);
+						  data->os_part,
+						  bootm_fit_config_valid);
 	if (IS_ERR(data->fit_config)) {
 		pr_err("Cannot open FIT image configuration '%s'\n",
 		       data->os_part ? data->os_part : "default");
diff --git a/common/image-fit.c b/common/image-fit.c
index 4d5c5bfe12472af85b26cd1ee93e7c99316b283c..0fc3b2e4aa7217a47710ef613426456420e81324 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -782,7 +782,9 @@ static int fit_fdt_is_compatible(struct fit_handle *handle,
 
 static int fit_find_compatible_unit(struct fit_handle *handle,
 				    struct device_node *conf_node,
-				    const char **unit)
+				    const char **unit,
+				    bool (*config_node_valid)(struct fit_handle *handle,
+							      struct device_node *config))
 {
 	struct device_node *child = NULL;
 	struct device_node *barebox_root;
@@ -799,7 +801,12 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 		return -ENOENT;
 
 	for_each_child_of_node(conf_node, child) {
-		int score = of_device_is_compatible(child, machine);
+		int score;
+
+		if (config_node_valid && !config_node_valid(handle, child))
+			continue;
+
+		score = of_device_is_compatible(child, machine);
 
 		if (!score)
 			score = fit_fdt_is_compatible(handle, child, machine);
@@ -857,7 +864,9 @@ static int fit_find_last_unit(struct fit_handle *handle,
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
@@ -869,7 +878,8 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
 	if (name) {
 		unit = name;
 	} else {
-		ret = fit_find_compatible_unit(handle, conf_node, &unit);
+		ret = fit_find_compatible_unit(handle, conf_node, &unit,
+					       match_valid);
 		if (ret) {
 			pr_info("Couldn't get a valid configuration. Aborting.\n");
 			return ERR_PTR(ret);
@@ -1044,12 +1054,12 @@ static int fuzz_fit(const u8 *data, size_t size)
 	if (ret)
 		goto out;
 
-	config = fit_open_configuration(&handle, NULL);
+	config = fit_open_configuration(&handle, NULL, NULL);
 	if (IS_ERR(config)) {
 		ret = fit_find_last_unit(&handle, &unit);
 		if (ret)
 			goto out;
-		config = fit_open_configuration(&handle, unit);
+		config = fit_open_configuration(&handle, unit, NULL);
 	}
 	if (IS_ERR(config)) {
 		ret = PTR_ERR(config);
diff --git a/include/image-fit.h b/include/image-fit.h
index 0b8e94bf46357a1fe01ef90cd8b0fca0c41641c3..416f1f2c1896949d2bcb7ab1a31f1aa6b5682edf 100644
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
2.39.5



