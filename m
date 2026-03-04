Delivery-date: Wed, 04 Mar 2026 12:01:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyq-007xQw-1l
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyp-0005pw-PK
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCBYzJyoShmk1rvY6iZnzn+odgO7YbNUfSfD7U+yjcg=; b=Of+4z7MBfMC70C
	kTJReAMJkJJnv1fxD1MA5+e/6Vj/6mZKd+vi+V7pLK4xABTLA1lJS4OGsdf2xBRAbjW19rhK6Rqjp
	kOoQW8XY0QYLgaqiZnU4mfqwQcVVya5YsvDwL41Gga+rSvE7Iy87uE22bt66MQ95gzlSfpGy4tgUq
	AzT3kfwOeS351lZawWVNzgeE9gP6jMffiSWxNLJHuqfdHvURWbNZnEbBa+3Mi3VXt0sBHZSFSBEri
	EyocSI5bOFObYpHVF4/KzgRBRtNmNOy7b8z6sFgEHMNK3h0QDW46aCGTnB3CIxQkPMW7qr++OIKzQ
	v4tAEBInMtQ5ZxKxXdjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyL-0000000H240-25ix;
	Wed, 04 Mar 2026 11:00:57 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyI-0000000H204-2C3K
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=JCBYzJyoShmk1rvY6iZnzn+odgO7YbNUfSfD7U+yjcg=;
	b=A6Y57QVesDU6W5HvAsh3KnOkdYriPeF79/0BjpJumJFTFPX9euUPV1TF4IQE4g4LFU6jXQD5IGkse
	 r3Myf3gUaV5SiVbIdq0MPZ1hKc1tu8pcMEcvFDHKaMi0lIepHNvV47Z/sHBOXANX9nw1u2bHgX0f7e
	 hAD+EDaAfagaOcCPylSOK8Ly6VKUk/DcPtFB7/ba5a+2roEX9ZekbXGpbZ9ldRc717EtrbCxIxC4z9
	 z5qdiW5YeUTWU4Uqa+jixgaUK4v2lDPJjK/OiWCMNe6+puJ33PzNZTf0VZA7TngdxObVZLcpM9U1rG
	 9BC5Inm9xUx1NOyp+ghWIXttRT/6BQQ==
X-MSG-ID: 657ddcc6-17b9-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:09 +0100
Message-ID: <20260304110013.495725-6-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030054_698839_FED8B4E3 
X-CRM114-Status: GOOD (  13.45  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] ARM: boards: protonic-rk356x: Move mecsbc code to model init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a means for registering a model specific late initcall function.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 34 ++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 1aff5ddbc8..d36f2477fd 100644
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
@@ -112,6 +115,30 @@ static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
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
@@ -124,10 +151,6 @@ static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 	barebox_set_of_machine_compatible(buf);
 
 	free(buf);
-
-	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
-		of_register_fixup(mecsbc_sd_of_fixup, dev);
-
 	return 0;
 }
 
@@ -160,6 +183,8 @@ static int prt_rk356x_probe(struct device *dev)
 	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
 
+	prt_priv.dev = dev;
+	prt_priv.model = model;
 	return 0;
 }
 
@@ -167,6 +192,7 @@ static const struct prt_rk356x_model mecsbc = {
 	.name = "Protonic MECSBC board",
 	.shortname = "mecsbc",
 	.adc_channels = {0, 1, 3},
+	.init = prt_rk356x_mecsbc_init,
 };
 
 static const struct of_device_id prt_rk356x_of_match[] = {
-- 
2.43.0



