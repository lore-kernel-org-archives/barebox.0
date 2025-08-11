Delivery-date: Mon, 11 Aug 2025 14:30:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfY-009KlC-01
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfE-0006IV-1C
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XqcUiPI8Us5MZC/k8Xft9pjwNG16s1Bf7bzhocEEeqA=; b=leAAUlirEo7BD+14W/L9T8dTgw
	XKZ9r+oRdr7pVq+rSYGLvkhZemFpnZNwAbL57E86Cl3i6s4mNgUsefro/CH5ve/uh+rUG4xY0f9Sb
	IUs2o6tSnOduVlfMIb4cZlpGsSKjlYcQ8hoSRAxU2d2LzrttOsx4trqfPa1S6UFVZsKevqIJZxGWJ
	1lzy8GVdSjwlBLMhct0Rmz5KqB26RmNehbLI0v572U8lMAqOVz3i3CNX74tGOURwpeVs073snFqV1
	kJxWBbZJnGvJhJ0mr/u0aJCm/KbwSceEuZP6ScWp6N5VGHtG7r94ErGNDI/NltrOh2oku50D0nxzE
	eLShoRqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe0-00000007e14-0JKg;
	Mon, 11 Aug 2025 12:28:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdm-00000007dgR-01Zb
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XqcUiPI8Us5MZC/k8Xft9pjwNG16s1Bf7bzhocEEeqA=; b=oUyoZCB95aX7fsjGZmc/8b0YsU
	O0aj5Utn6cH/VbkDdvHQSlR/0bv8dA2AgSIKunqvC1jRdNkm6xvzuX9xsfm6lXbhuSniUSRF0f5QU
	xMkrF93Og0z6H0/Nb8tHJSc7RL4pWtZWeiYtLqxicuBax8r7idzJ+nXKVKV82vpJM5tI/iWYQNa5j
	5uHAedtNZ4bb8kbboH5zwsMmo2q82V0Dxc2u0mqygqjCmgI75o//KTXGpHZPMf9MY53D94NeeuHIa
	KftulIDR2JoF03OvFfuuBDtFKUzgKMYHahlQPezNVRarhwaObgE78KSP2N592lgmM/xAQ23dPBIDv
	zGvRsAcQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-0000000FPTf-3Jis
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdf-0004WP-Ao; Mon, 11 Aug 2025 14:28:31 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:00 +0200
Message-Id: <20250811122824.1667791-21-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_038589_49F4D941 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/44] ARM: psci: client: add PSCI version/method parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Populate device parameters with this information, so the bfetch command
can make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/psci-client.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 4c26beacb9bb..1284a408d118 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -117,6 +117,7 @@ static int of_psci_do_fixup(struct device_node *root, void *method)
 
 static int __init psci_probe(struct device *dev)
 {
+	struct param_d *param;
 	const char *method;
 	ulong of_version, actual_version;
 	int ret;
@@ -154,8 +155,12 @@ static int __init psci_probe(struct device *dev)
 	psci_invoke(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, &actual_version);
 	version = actual_version;
 
-	dev_info(dev, "detected version %u.%u\n",
-		 version >> 16, version & 0xffff);
+	param = dev_add_param_fixed(dev, "version", "%u.%u",
+				    version >> 16, version & 0xffff);
+	if (!IS_ERR(param))
+		dev_info(dev, "detected version %s\n", param->get(dev, param));
+
+	dev_add_param_fixed(dev, "method", "%s", method);
 
 	if (actual_version != of_version)
 		of_register_fixup(of_psci_do_fixup, (void *)method);
@@ -170,11 +175,15 @@ static int __init psci_probe(struct device *dev)
 	restart.priority = 400;
 
 	ret = restart_handler_register(&restart);
-	if (ret)
+	if (ret) {
 		dev_warn(dev, "error registering restart handler: %pe\n",
 			 ERR_PTR(ret));
+		return ret;
+	}
 
-	return ret;
+	dev_add_alias(dev, "psci");
+
+	return 0;
 }
 
 static __maybe_unused struct of_device_id psci_dt_ids[] = {
-- 
2.39.5



