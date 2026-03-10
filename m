Delivery-date: Tue, 10 Mar 2026 16:25:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxH-00A8NL-29
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:25:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxH-0002S5-Jf
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:25:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enIj+IKzJPEO05Ep0DmALpNluvYNehTzK8Jvz2LY5v0=; b=xf4EgaDhzlnBt/
	Kl49ERdmJjiycCWJIRaWXvXDlHLO5ZVB8mNRU0gj5LFnm9UUgJDl71u6D87R8bLkSwUyY52He/wPp
	Khra1AugSkkRRjTiAqzdC6vVG/bb0VANJYjL0nRjZAAYmP8ma4ogi0ISPtO2eSqCiEYWOsF4BkDNX
	y9wuBmiLzJ0KyWTH0UIR/PXg8uIgYSoyE13CcsFZ0qskl/v7q8tt3Bc7WpYsVDslhP7fH2l2laUUs
	8Bk8DLgbGareQi2bcs5ogwPDzajoCtx3e5ckKMVERp21ygOqxJjg6X1Q/48wjNy7dQ6LRBEsa6do0
	JIdugF9e2tl6arpG9K6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywt-00000009naY-1ewW;
	Tue, 10 Mar 2026 15:24:43 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywq-00000009nXI-17Go
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=enIj+IKzJPEO05Ep0DmALpNluvYNehTzK8Jvz2LY5v0=;
	b=VD2UlBj26VSCYtgT+AJRlGZ57QcmK55ZyCqiupSfsHTwgg5/LbQoZ/3Otew6D6mF7LgoB5TFFQ4uW
	 Fd2ufbq+rH2TTzn6912wgpQtlB29eNwCUEoooh6F7FOD5bWjul5yGwjZSKH0hPGFYGUZrOQO6Qeeyj
	 oFArkooag/vfaRKHU0vR4z86KV6Vlz5p2BKYY7dmuHQpuzzQgSKx0i4E0N0X/KpilhcAvpXLJZr9Il
	 K2A2PvPTpFptfwEA4PWO5emuStnTMVQq28QFhGW+P26sCnnW/KFI+IBuyixUiHzI5hNd5UGyqHszEJ
	 8L9WPJm6xIC5LeOZqx26Lb8+wo0/EVQ==
X-MSG-ID: 3fc8f92b-1c95-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Tue, 10 Mar 2026 16:24:30 +0100
Message-ID: <20260310152433.786340-6-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_082440_446492_D69BCFF8 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>, David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/8] ARM: boards: protonic-rk356x: Move mecsbc code to model init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the option to register a model specific late initcall function for
board specific initialization. This allows customization without
interfering with the board code for other Protonic rk356x models.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 37 ++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 1aff5ddbc8..773bb37045 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -24,11 +24,14 @@ struct prt_rk356x_model {
 	const char *name;
 	const char *shortname;
 	const struct prt_rk356x_adc_chs adc_channels;
+	int (*init)(void);
 };
 
 struct prt_rk356x_priv {
 	int hw_id;
 	int hw_rev;
+	struct device *dev;
+	const struct prt_rk356x_model *model;
 };
 
 static struct prt_rk356x_priv prt_priv;
@@ -112,6 +115,33 @@ static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
+static int prt_rk356x_mecsbc_init(void)
+{
+	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
+		of_register_fixup(mecsbc_sd_of_fixup, prt_priv.dev);
+
+	return 0;
+}
+
+static int prt_rk356x_devices_init(void)
+{
+	int ret;
+
+	if (!prt_priv.model)
+		return 0;
+
+	if (prt_priv.model->init) {
+		ret = prt_priv.model->init();
+		if (ret) {
+			pr_warn("Model init failed with %d\n", ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+late_initcall(prt_rk356x_devices_init);
+
 static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 {
 	const char *compat;
@@ -124,10 +154,6 @@ static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 	barebox_set_of_machine_compatible(buf);
 
 	free(buf);
-
-	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
-		of_register_fixup(mecsbc_sd_of_fixup, dev);
-
 	return 0;
 }
 
@@ -160,6 +186,8 @@ static int prt_rk356x_probe(struct device *dev)
 	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
 
+	prt_priv.dev = dev;
+	prt_priv.model = model;
 	return 0;
 }
 
@@ -167,6 +195,7 @@ static const struct prt_rk356x_model mecsbc = {
 	.name = "Protonic MECSBC board",
 	.shortname = "mecsbc",
 	.adc_channels = {0, 1, 3},
+	.init = prt_rk356x_mecsbc_init,
 };
 
 static const struct of_device_id prt_rk356x_of_match[] = {
-- 
2.43.0



