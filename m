Delivery-date: Thu, 05 Jun 2025 13:39:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w5-003zpE-39
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w2-0002T3-Tg
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l+4GitLWGRJVnY2LudLP8DsP84UT3JrCb0xNrGCXwTs=; b=R+/eexny9A/PMVZzjGfPMYXBG1
	sLhUfX7asrlj4b3Pb0R/NMw0Cbi0I8/aACXnwM4Uzs1ZMov8NLodR9lMIoHk7TKOaoQl9iDPZFrFt
	Rd9wahfbsqRI0CuXfpjAh72dMboz+JiMp6iiYSkszMxkai5h/p0e9pI227e40P9K9e5D+jIc/+FdI
	FvOOOzFhRQMtvM+/WmfVGbyroPiwpDeF+WaRiNh7aNkapBLzCkCEPm2AX5qygEpo7h9wY6jmdosEg
	fiiG4Xkcl/GJ34svm8/wD4Mrcu+jrzW5/PADs/3uxkQkB/nLTznAgrT8SdvB+iHyCRTCLt/ZEBATJ
	z1kOA16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vY-0000000FOUQ-287g;
	Thu, 05 Jun 2025 11:38:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOW-2a2N
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001j2-D9; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0i-0S;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-13;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:28 +0200
Message-Id: <20250605113530.2076990-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_651975_106559B9 
X-CRM114-Status: GOOD (  16.17  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/21] fit: add fuzz test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We require FIT images on non-EFI systems to implement verified boot
chains. Unfortunately, FIT is a relatively complex format for that use
case, so a fuzz test exercising the parser is pretty much in order.

Co-developed-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Co-developed-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c      | 76 +++++++++++++++++++++++++++++++++++++++--
 images/Makefile.sandbox |  1 +
 2 files changed, 75 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0cc0425284c5..5006394eb7bb 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -23,6 +23,7 @@
 #include <crypto/public_key.h>
 #include <uncompress.h>
 #include <image-fit.h>
+#include <fuzz.h>
 
 #define FDT_MAX_DEPTH 32
 #define FDT_MAX_PATH_LEN 200
@@ -825,6 +826,26 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 	return -ENOENT;
 }
 
+static int fit_find_last_unit(struct fit_handle *handle,
+			      const char **out_unit)
+{
+	struct device_node *conf_node = handle->configurations;
+	struct device_node *child;
+	const char *unit = NULL;
+
+	if (!conf_node)
+		return 0;
+
+	for_each_child_of_node(conf_node, child)
+		unit = child->name;
+
+	if (!unit)
+		return -ENOENT;
+
+	*out_unit = unit;
+	return 0;
+}
+
 /**
  * fit_open_configuration - open a FIT configuration
  * @handle: The FIT image handle
@@ -970,12 +991,16 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	return handle;
 }
 
-void fit_close(struct fit_handle *handle)
+static void __fit_close(struct fit_handle *handle)
 {
 	if (handle->root)
 		of_delete_node(handle->root);
-
 	free(handle->fit_alloc);
+}
+
+void fit_close(struct fit_handle *handle)
+{
+	__fit_close(handle);
 	free(handle);
 }
 
@@ -997,3 +1022,50 @@ static int bootm_fit_register(void)
 	return register_image_handler(&fit_handler);
 }
 late_initcall(bootm_fit_register);
+
+static int fuzz_fit(const u8 *data, size_t size)
+{
+	const char *unit, *imgname = "kernel";
+	struct fit_handle handle = {};
+	const void *outdata;
+	unsigned long outsize, addr;
+	int ret;
+	void *config;
+
+	handle.verbose = false;
+	handle.verify = BOOTM_VERIFY_AVAILABLE;
+
+	handle.size = size;
+	handle.fit = data;
+	handle.fit_alloc = NULL;
+
+	ret = fit_do_open(&handle);
+	if (ret)
+		goto out;
+
+	config = fit_open_configuration(&handle, NULL);
+	if (IS_ERR(config)) {
+		ret = fit_find_last_unit(&handle, &unit);
+		if (ret)
+			goto out;
+		config = fit_open_configuration(&handle, unit);
+	}
+	if (IS_ERR(config)) {
+		ret = PTR_ERR(config);
+		goto out;
+	}
+
+	ret = fit_open_image(&handle, config, imgname, &outdata, &outsize);
+	if (ret)
+		goto out;
+
+	fit_get_image_address(&handle, config, imgname, "load", &addr);
+	fit_get_image_address(&handle, config, imgname, "entry", &addr);
+
+	ret = fit_open_image(&handle, NULL, imgname, &outdata, &outsize);
+out:
+	__fit_close(&handle);
+
+	return 0;
+}
+fuzz_test("fit", fuzz_fit);
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index 87963e2f432f..b235a1195a7f 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -4,6 +4,7 @@ SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
 fuzzer-$(CONFIG_FILETYPE)	+= filetype
+fuzzer-$(CONFIG_FITIMAGE)	+= fit
 fuzzer-$(CONFIG_OFTREE)		+= dtb
 fuzzer-$(CONFIG_OFTREE)		+= fdt-compatible
 fuzzer-$(CONFIG_PARTITION)	+= partitions
-- 
2.39.5



