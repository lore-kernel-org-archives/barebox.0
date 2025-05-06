Delivery-date: Tue, 06 May 2025 08:36:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-002hzm-1K
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBub-000120-JD
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CLJeu4LEzF5ZW+Nd8dKZERopY0ztlxepr9l3tWKtMx0=; b=l7GTK0kcX3nkxx5XYSvZrjndtz
	y1GkNzB4B5j/EMVJI0btSoShYHpGuV4pym7TE0NLK01xWKpuveq2CM3cRcUEZF4LruoVcbcyC6eFg
	lI+rtWHOx6HeqaHbSuY8fcO4dAGHrQqmmbke/ZkQeOWBnlSMyFohQwHQR8MrjN2xg92Z3qr8ou+hw
	sTjNC2BENb+IR5b25k4dTzyPBaiJmIT0wQ6kP4Iy1q+fdO+Su1aMMeZjxV2Vv1QAx9eMp2hlZhrMR
	eRTeTaKzyj+xx6kJrakRWjWaZbkPlxODGTfiCMRSKnqfUl13/Bc53nTJfZ4NwASGB9XPAE2aDRNHM
	C006x9yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuD-0000000Aic0-3KnZ;
	Tue, 06 May 2025 06:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBgn-0000000AeZ7-3jMD
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:22:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgm-000652-LH; Tue, 06 May 2025 08:22:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgm-001LjS-1X;
	Tue, 06 May 2025 08:22:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgm-00CyB1-2k;
	Tue, 06 May 2025 08:22:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:21:59 +0200
Message-Id: <20250506062159.3091243-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232201_927457_80CFD8FA 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] resource: replace wrong NULL check for dev_get_resource_by_name with IS_ERR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On error, dev_get_resource_by_name returns an error pointer, but a NULL
pointer was assumed instead erroneously.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-generic.c                | 2 +-
 drivers/video/rockchip/rockchip_drm_vop2.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 1902c8396094..6164e87073bd 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -538,7 +538,7 @@ static int bgpio_dev_probe(struct device *dev)
 		return PTR_ERR(pdata);
 
 	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
-	if (!r)
+	if (IS_ERR(r))
 		return -EINVAL;
 
 	sz = resource_size(r);
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 0d6d31a86804..b49053c6e915 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -1958,7 +1958,7 @@ int vop2_bind(struct device *dev)
 	vop2->data = vop2_data;
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "vop");
-	if (!res)
+	if (IS_ERR(res))
 		return dev_err_probe(vop2->dev, -EINVAL, "failed to get vop2 register byname\n");
 
 	vop2->regs = IOMEM(res->start);
-- 
2.39.5



