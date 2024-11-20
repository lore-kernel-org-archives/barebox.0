Delivery-date: Wed, 20 Nov 2024 14:07:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQv-004EoU-29
	for lore@lore.pengutronix.de;
	Wed, 20 Nov 2024 14:07:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQv-0001fW-3f
	for lore@pengutronix.de; Wed, 20 Nov 2024 14:07:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JvtzV1KuFKrtPYk5G2L9bIiEnC86xOD/QvOpL/6ortA=; b=Y0d4+2aQdQjOxZN+IReBV3h9lO
	dLv6I3umipZqx1Dl1s7yhmZDUBypo6Ae6YCA8PjV9iG2fE4yu6aAIwkmehrSDfbYI9pQ8Ew/wclCT
	xX8RvMDVSLJkwgH4KMNXlz6E2sOJyQKuNd6fxpEbBayAyUQfA9ozzxxD5kgHJiC0H4GHbgUpbbr4g
	TTDr4I15MUHntF3iVD/yVW1d/FwUOUvtHl50sK6hdhNCOd+SBRaTLI/ejOyuHxdHSACskQfYabOVK
	9KCd4bD0jqrWoMLvAgFebbT2K3gOaKOm22hZorIbUl9CH4ytcADyMoiXV1iGVvmtMT+j8EJzVZ5t9
	d0uyHX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkQV-0000000FNa9-2x2r;
	Wed, 20 Nov 2024 13:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkQT-0000000FNZ7-1ncy
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 13:07:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkQR-0001QS-Qr; Wed, 20 Nov 2024 14:07:19 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkQR-001kPM-26;
	Wed, 20 Nov 2024 14:07:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkQR-00GDzw-1p;
	Wed, 20 Nov 2024 14:07:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Nov 2024 14:07:19 +0100
Message-Id: <20241120130719.3867040-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_050721_467278_A44E6440 
X-CRM114-Status: GOOD (  11.14  )
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
Subject: [PATCH] mfd: pca9450: add support for PCA9450B variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PCA9450B is the PMIC used on the i.MX8M Nano EVKs and as far as the
Linux driver is concerned is handled identically to the PCA9450C that we
already support. Match the B-compatible as well, so we can read the
reset source off that PMIC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/pca9450.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 89eca9f890e3..744d529faf93 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -114,6 +114,7 @@ static int __init pca9450_probe(struct device *dev)
 
 static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
 	{ .compatible = "nxp,pca9450a" },
+	{ .compatible = "nxp,pca9450b" },
 	{ .compatible = "nxp,pca9450c" },
 	{ .compatible = "nxp,pca9451a" },
 	{ /* sentinel */ }
-- 
2.39.5



