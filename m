Delivery-date: Fri, 14 Feb 2025 11:49:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGV-002EiC-1q
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGU-00052f-An
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEedNTjSj9+CMDTvyX66alkFmmFS3OEzVeo7W9bhaKc=; b=aHbiT5B3pxuMYuULXASD7SMnI6
	4b34z2Ce4vMmLDh0Dx1xEwqWaq/zh1p5OiScgr939qdxhPbRtYg1xhW90NwSZdvO8Y9KuTxXVZ6eF
	kPkG8ivUlkPBQYBXMDoe56LG4hA/o0NPcyFicLSeXXuIWyGBZpgPkbNPVV9eTrgj9eiqF5JeMIZ8M
	WS5Rke4/BmdyMagg1kW20Vzt8abu8tU9z9cEav1/hRJ6+d7YMTRL+oA9UVfHEiUrgEq5sAxUOWZr2
	WAl2gnCjgLHu4Be0Z5PIZWxpIaBxjlwnxtMZj9tueRbRaCcY9EhELIoS31bQdldudTaxX8r4Qa6KM
	QY4mRW2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titG3-0000000EYNx-0tSg;
	Fri, 14 Feb 2025 10:49:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titFD-0000000EYGk-0J7O
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 10:48:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XEedNTjSj9+CMDTvyX66alkFmmFS3OEzVeo7W9bhaKc=; b=bGAxPRWsML+6rerxeVmUlUblKN
	hF6qv5KugkwH6GUUCXdaP/0uxaeYwQif8KloA0Z+vdklgoRefCnVxaBPfmtHOwAAwvMN4JGMcBIur
	bOD3nHdkj9Mo3LnBC6s9AFkbAn9fWjMOWZ4Ps5dxKrAa89cgVXRPXiV8Kqw06Bcv8LN7/2HaE/DsZ
	j7Es9wLZ+sNUI7TKjq/nzIT9qEC/TJpu8V0dCb7j812Q6hx3rtfROTkFChR8yF8aneG1SbD9lfo+v
	JcsEv59nEm8LYgtirUL61mSM1fYFRgof+aiEKo5jWpT7mzh4SE1+gF/wSIijXsGsOUgXVjt+XJvRY
	BF7lvyxA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-00000001EXK-13Ju
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-0004Uj-Qu; Fri, 14 Feb 2025 11:48:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3T-21;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-1j;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:11 +0100
Message-Id: <20250214104817.2975052-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_104822_514228_8A9394C6 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] bootm: add helper functions for checking if FIT image is used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but improves code readability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 2c7d3691407b..d1dbf6890f6f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -188,19 +188,20 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	return -EINVAL;
 }
 
+static bool fitconfig_has_ramdisk(struct image_data *data)
+{
+	if (!IS_ENABLED(CONFIG_FITIMAGE) || !data->os_fit)
+		return false;
+
+	return fit_has_image(data->os_fit, data->fit_config, "ramdisk");
+}
+
 bool bootm_has_initrd(struct image_data *data)
 {
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return false;
 
-	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, data->fit_config, "ramdisk"))
-		return true;
-
-	if (data->initrd_file)
-		return true;
-
-	return false;
+	return fitconfig_has_ramdisk(data) || data->initrd_file;
 }
 
 static int bootm_open_initrd_uimage(struct image_data *data)
@@ -258,8 +259,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	if (data->initrd_res)
 		return 0;
 
-	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, data->fit_config, "ramdisk")) {
+	if (fitconfig_has_ramdisk(data)) {
 		const void *initrd;
 		unsigned long initrd_size;
 
@@ -371,6 +371,14 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 	return 0;
 }
 
+static bool fitconfig_has_fdt(struct image_data *data)
+{
+	if (!IS_ENABLED(CONFIG_FITIMAGE) || !data->os_fit)
+		return false;
+
+	return fit_has_image(data->os_fit, data->fit_config, "fdt");
+}
+
 /*
  * bootm_get_devicetree() - get devicetree
  *
@@ -391,8 +399,7 @@ void *bootm_get_devicetree(struct image_data *data)
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return ERR_PTR(-ENOSYS);
 
-	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, data->fit_config, "fdt")) {
+	if (fitconfig_has_fdt(data)) {
 		const void *of_tree;
 		unsigned long of_size;
 
-- 
2.39.5



