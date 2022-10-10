Delivery-date: Mon, 10 Oct 2022 08:13:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2L-0033fY-PN
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2J-0001BA-EM
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ow0xn15eX1xGhicrXiGFeha43nJ+IBvIc/rL3AJhhiQ=; b=MliTONiBkXDyxIna3/wNeibYWh
	HLsOJM3U02d50oazOxALH7VUByBXCkpUpkOCWRzQXqHUsoyYGBhIv+BxO4tuZDAjZKPjieUmMl9iK
	D3fyfvJsSCw9CZ52/oM2meaa1Ed3k9h8zPNUZp3uEIFuEBffHdQFhDCXSospbLeLm8yKhkhaZ7hQE
	2VEDvLncQ9deNEU8Iy8hXf84TbdMm9uQM8ObAPS2bHQEBzHICli82m0VJdTCI/gL2TE9b5NKC3jMS
	Am6NtxnsSx/pgh5X9VqRhIfFSklfp91MLWLAtD3Tg2kUyFQuBfJH1Sx0Qcvl6QYPUVxzXTYHYAKC4
	IvcQRqpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0t-00HAep-Uq; Mon, 10 Oct 2022 06:11:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWf-Tv
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000YK-Mi; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-000dA1-14; Mon, 10 Oct 2022 08:11:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kB5-6t; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:21 +0200
Message-Id: <20221010061122.2084009-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231127_983559_8632EC18 
X-CRM114-Status: GOOD (  13.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] common: bootm: factor out FIT parsing code into bootm_open_bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have counterpart functions for ELF and uimage. Add one for
FIT as well in preparation for moving to a more readable switch statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 107 +++++++++++++++++++++++++++----------------------
 1 file changed, 59 insertions(+), 48 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 2f02c156e56f..f507aece8c18 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -519,6 +519,62 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
+static int bootm_open_fit(struct image_data *data)
+{
+	struct fit_handle *fit;
+	static const char *kernel_img = "kernel";
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FITIMAGE))
+		return 0;
+
+	fit = fit_open(data->os_file, data->verbose, data->verify);
+	if (IS_ERR(fit)) {
+		pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
+		return PTR_ERR(fit);
+	}
+
+	data->os_fit = fit;
+
+	data->fit_config = fit_open_configuration(data->os_fit,
+						  data->os_part);
+	if (IS_ERR(data->fit_config)) {
+		pr_err("Cannot open FIT image configuration '%s'\n",
+		       data->os_part ? data->os_part : "default");
+		return PTR_ERR(data->fit_config);
+	}
+
+	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
+			     &data->fit_kernel, &data->fit_kernel_size);
+	if (ret)
+		return ret;
+	if (data->os_address == UIMAGE_SOME_ADDRESS) {
+		ret = fit_get_image_address(data->os_fit,
+					    data->fit_config,
+					    kernel_img,
+					    "load", &data->os_address);
+		if (!ret)
+			pr_info("Load address from FIT '%s': 0x%lx\n",
+				kernel_img, data->os_address);
+		/* Note: Error case uses default value. */
+	}
+	if (data->os_entry == UIMAGE_SOME_ADDRESS) {
+		unsigned long entry;
+		ret = fit_get_image_address(data->os_fit,
+					    data->fit_config,
+					    kernel_img,
+					    "entry", &entry);
+		if (!ret) {
+			data->os_entry = entry - data->os_address;
+			pr_info("Entry address from FIT '%s': 0x%lx\n",
+				kernel_img, entry);
+		}
+		/* Note: Error case uses default value. */
+	}
+
+	return 0;
+}
+
 static int bootm_open_elf(struct image_data *data)
 {
 	if (!IS_ENABLED(CONFIG_ELF))
@@ -633,55 +689,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
-	if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
-		struct fit_handle *fit;
-		static const char *kernel_img = "kernel";
-
-		fit = fit_open(data->os_file, data->verbose, data->verify);
-		if (IS_ERR(fit)) {
-			pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
-			ret = PTR_ERR(fit);
-			goto err_out;
-		}
-
-		data->os_fit = fit;
-
-		data->fit_config = fit_open_configuration(data->os_fit,
-							  data->os_part);
-		if (IS_ERR(data->fit_config)) {
-			pr_err("Cannot open FIT image configuration '%s'\n",
-			       data->os_part ? data->os_part : "default");
-			ret = PTR_ERR(data->fit_config);
-			goto err_out;
-		}
-
-		ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
-				     &data->fit_kernel, &data->fit_kernel_size);
+	if (os_type == filetype_oftree) {
+		ret = bootm_open_fit(data);
 		if (ret)
-			goto err_out;
-		if (data->os_address == UIMAGE_SOME_ADDRESS) {
-			ret = fit_get_image_address(data->os_fit,
-						    data->fit_config,
-						    kernel_img,
-						    "load", &data->os_address);
-			if (!ret)
-				pr_info("Load address from FIT '%s': 0x%lx\n",
-					kernel_img, data->os_address);
-			/* Note: Error case uses default value. */
-		}
-		if (data->os_entry == UIMAGE_SOME_ADDRESS) {
-			unsigned long entry;
-			ret = fit_get_image_address(data->os_fit,
-						    data->fit_config,
-						    kernel_img,
-						    "entry", &entry);
-			if (!ret) {
-				data->os_entry = entry - data->os_address;
-				pr_info("Entry address from FIT '%s': 0x%lx\n",
-					kernel_img, entry);
-			}
-			/* Note: Error case uses default value. */
-		}
+			return ret;
 	}
 
 	if (os_type == filetype_uimage) {
-- 
2.30.2



