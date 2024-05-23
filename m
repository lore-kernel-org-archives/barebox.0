Delivery-date: Thu, 23 May 2024 16:41:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dC-00FH98-1o
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:41:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dB-0006Rd-No
	for lore@pengutronix.de; Thu, 23 May 2024 16:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=riffsNknrBssvadFb9g3rK5xhHQP6TcjJsf542h2bl8=; b=ZcekzqG+A0IcSXt4X2l6Nbjt5n
	akx689Dy+3Q1q8cB5H2pkJDXJyrXEW7RGG8jybZGiduuAEomoxwre2jBqx1fVPYxn0HDVBwYYciY/
	OQbCCTH4HEITz6LeOcaE9hEgEgHEPVtZMFmhNUeUtm5yyhQnk0RSep8imlFavQCgPFdVV8oT4UomE
	1r7ZbwL3uuvsyn3QzP7FqfF7mF//DhzGS2WZkATph+Nhj9D/lNBfG9LHxsDa2+3tU0f8b6/AiNbmR
	NJjuP5Sg1y4fcdoaSP8tRzVogNvlOxlvvY/ydyScww8FKljM/Y0aGJgEvGd9MQi5c0cm/p6NqWSgG
	rxo/Ujag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9cd-00000006WNF-2Mhc;
	Thu, 23 May 2024 14:40:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9ca-00000006WMT-0VMP
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-00065E-TZ; Thu, 23 May 2024 16:40:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-002fq3-Gp; Thu, 23 May 2024 16:40:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-0078ww-1Y;
	Thu, 23 May 2024 16:40:34 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 May 2024 16:40:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240523-feature-dp83867-soft-reset-v1-1-428d15168dfe@pengutronix.de>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074044_265909_92853435 
X-CRM114-Status: GOOD (  15.76  )
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
Subject: [PATCH 1/3] net: phy: allow PHY drivers to implement their own
 software reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of linux commit 9df81dd7583d14862d0cfb673a941b261f3b2112
("net: phy: allow PHY drivers to implement their own software reset")
which implements the ability for phy drivers to implement the own
non-standard software reset sequence.

A side effect is that fixups will now applied always even if
.config_init is undefined. This shouldn't be possible to happen though,
because phy_driver_register will populate the member with
genphy_config_init in that case, so the member should never be NULL.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/phy/phy.c | 16 ++++++++++++++--
 include/linux/phy.h   |  5 +++++
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index abd78b2c80..a83f183302 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -1108,14 +1108,26 @@ int phy_init_hw(struct phy_device *phydev)
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 	int ret;
 
-	if (!phydrv || !phydrv->config_init)
+	if (!phydrv)
 		return 0;
 
+	if (phydrv->soft_reset) {
+		ret = phydrv->soft_reset(phydev);
+		if (ret < 0)
+			return ret;
+	}
+
 	ret = phy_scan_fixups(phydev);
 	if (ret < 0)
 		return ret;
 
-	return phydrv->config_init(phydev);
+	if (phydrv->config_init) {
+		ret = phydrv->config_init(phydev);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
 }
 
 static struct phy_driver genphy_driver = {
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 7da4f94e0e..a6b96a5984 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -275,6 +275,11 @@ struct phy_driver {
 	const void *driver_data;
 	bool is_phy;
 
+	/**
+	 * @soft_reset: Called to issue a PHY software reset
+	 */
+	int (*soft_reset)(struct phy_device *phydev);
+
 	/*
 	 * Called to initialize the PHY,
 	 * including after a reset

-- 
2.39.2



