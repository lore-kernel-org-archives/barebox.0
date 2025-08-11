Delivery-date: Mon, 11 Aug 2025 08:44:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGh-009FfP-0q
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGg-0002Um-Nh
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HtO97yWe9sskTijyBGacK7VAKL8wNjdG67ZigsQLjQ=; b=hd8WPzxRIrOrs8
	Y0o4AaCdpT0/fFUHBIQb2EDcd+KHpnAopnGWymQu6+suHsiHa4inGHyk9JRYe5mZEaztXwpCVDdGH
	DFZ802b6ciyMRkzKbvjYgmNdhAEIAZJgO2a4wG2+rO3u2Q0ezsT/Ki83N5iwVzjp+tfI2qdbITCcr
	MzDkUDGKvl8MVvlyuHLL/6U0P+qbVv8oXHCeLEdopn2DaTO12FRp/L/sb0NCLz7B0NI29uMYQiu0V
	FgIyv7G2m/nDrBLM4Fc5AuvpwFu9TcvytZOzDe+9y8QZoa59/oIUeZqE/SQmbYtm6vIsZ+ywsvT5L
	6IeU7EL0G8f7Jtk8Ww5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG1-00000006cjO-3Z3g;
	Mon, 11 Aug 2025 06:43:45 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD9-00000006cTG-38Ut
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=/HtO97yWe9sskTijyBGacK7VAKL8wNjdG67ZigsQLjQ=;
	b=ETQ1rgWYNnvD2nJKrX4ffviom0Fryymv8TFuyK8YVIx9qblsE6JK0lYX+tA7/nZHl0VEcSJAy/JTH
	 E+hzgWGcL2xFPmL73fYPGYNnKLVNs6icXYpKOGsXz7JM+Vkcq6nk17yHpLSx7OwEgWEyA4gD95NL/+
	 ZrudHq8o4oymv5urO+Olv0Ti5G5mTsIGVqrBaSWWWVXsKyIB+3HFjjzRVohcanlshgFRE3HR5CwSWP
	 aP5YfADaST71ocxOD/KgOjZMUtlzs4N817BHQwGeNG5Scmm/F+mphuZWeNBRKFJF/5PEstBKdAzDLy
	 CrEvrXqWsZxmnZtABvWKEOE1ixFNkWg==
X-MSG-ID: 19c69ef6-767e-11f0-855f-005056817704
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:26 +0200
Message-ID: <20250811064026.753776-9-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234047_922233_830516E5 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

in rockchip_usb2phy_clk480m_register() rphy->clk is checked for NULL, but
clk_get() will return an error instead of NULL if the clk isn't found.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 1ed3fb0bf1..9805537c34 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -471,6 +471,8 @@ static int rockchip_usb2phy_probe(struct device *dev)
 	dev->priv = rphy;
 
 	rphy->clk = clk_get(dev, "phyclk");
+	if (IS_ERR(rphy->clk))
+		rphy->clk = NULL;
 	rockchip_usb2phy_clk480m_register(rphy);
 
 	rphy->provider = of_phy_provider_register(dev, rockchip_usb2phy_of_xlate);
-- 
2.47.2



