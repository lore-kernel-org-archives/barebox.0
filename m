Delivery-date: Thu, 23 Apr 2026 08:58:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1V-00FOxD-0d
	for lore@lore.pengutronix.de;
	Thu, 23 Apr 2026 08:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1U-00043Y-L6
	for lore@pengutronix.de; Thu, 23 Apr 2026 08:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+e8gd/NnxYWqVtPCaw22Wr+dw7+F3yoAL570W4yGqI=; b=D0b2Ly7YwUgbLVRrxeQkBuBImn
	xAGDQaKSy9PJ7+BWKhoPAeB5vKGd1qmHPOehlkFOEbdbkX8X7erZG3UdiuhZqbi8Dyh8Js3h0EulV
	QMtswEVAjWpZ4PMotrWFlrp2oW8RmuKYJHhd00B5224+wBtIAG66CgPBHUlLywiEJaG/zXL//o/0s
	XJlEvSRy3vdFlAQOl/nyrP+eDyr+4DKYqPG2L/KgdywGYw1Z+DzgZr3rWYthcm9ObugDX50KKQavu
	YJUSPE89MGvKIAY/38DbFpwiW5FeIcBAZ2n9pPW8BxJPgkDAIDT/O6RlOSQEpQu8VMfvo1qu5BDXR
	OzJVisXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0v-0000000B84E-2DMN;
	Thu, 23 Apr 2026 06:58:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0s-0000000B83N-1TTG
	for barebox@lists.infradead.org;
	Thu, 23 Apr 2026 06:58:16 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wFo0q-0003qQ-9S; Thu, 23 Apr 2026 08:58:12 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 23 Apr 2026 08:58:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-socfpga-agilex5-dwmac-binding-v1-1-19b4b0cddbee@pengutronix.de>
References: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
In-Reply-To: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_235814_572529_E8DC611F 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: xgmac: switch to upstream compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The "intel,socfpga-dwxgmac" binding is not defined, but the correct
binding is "altr,socfpga-stmmac-agilex5".

Switch to the correct upstream compatible for the driver.

This breaks backwards compatibility with older and downstream device
trees. Since the binding was never officially defined, implementing the
necessary compatibility isn't worth it.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/designware_xgmac_socfpga.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/designware_xgmac_socfpga.c b/drivers/net/designware_xgmac_socfpga.c
index 21373c50d962..7598798c5de6 100644
--- a/drivers/net/designware_xgmac_socfpga.c
+++ b/drivers/net/designware_xgmac_socfpga.c
@@ -83,9 +83,9 @@ static int xgmac_probe_resources_socfpga(struct device *dev)
 		dev_err(dev, "Invalid reset line 'stmmaceth'.\n");
 		return PTR_ERR(xgmac->rst);
 	}
-	xgmac->rst_ocp = reset_control_get(dev, "stmmaceth-ocp");
+	xgmac->rst_ocp = reset_control_get(dev, "ahb");
 	if (IS_ERR(xgmac->rst_ocp)) {
-		dev_err(dev, "Invalid reset line 'stmmaceth-ocp'.\n");
+		dev_err(dev, "Invalid reset line 'ahb'.\n");
 		return PTR_ERR(xgmac->rst_ocp);
 	}
 
@@ -139,7 +139,7 @@ struct xgmac_config __maybe_unused xgmac_socfpga_config = {
 
 static __maybe_unused struct of_device_id xgmac_socfpga_compatible[] = {
 	{
-		.compatible = "intel,socfpga-dwxgmac",
+		.compatible = "altr,socfpga-stmmac-agilex5",
 		.data = &xgmac_socfpga_config
 	}, {
 		/* sentinel */

-- 
2.47.3



