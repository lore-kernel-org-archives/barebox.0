Delivery-date: Mon, 18 Mar 2024 10:46:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rm9ZY-00CAe8-2T
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 10:46:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rm9ZY-00046s-6T
	for lore@pengutronix.de; Mon, 18 Mar 2024 10:46:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lcZI5vbveo4BzenrDXQbZ+eVHK2eOzCECkPdv3Me7eo=; b=W3XeXl7AEAucuPy0MCZElr2oad
	2uIPklfEVg9n7KLW4fs9ysYq9AJzqly6vQb/Ex8WRFNWnB8Vi/Bt5JCshUHGBBPBtCVAg3xdK4MVP
	0TKCKvdbOZYvUbdrkV8EjY4g+m7DqqCVpR91IfIwBk1TWV03fK00e2lv2pusHi08XTAs7ZFFNzxL0
	1u9qWs0OnU/55SCRRB1u1/Yv7plMHy8jsmNYaFQ8wmd/3IQ3vEB/VxYI+mSKdNzIt4GIa1hy+ZVry
	wq84aObvLObt5m98dbqoPbuY5jrU3uus14h2eHUJDMUueMo7XTsyeku2la7R0Xg7ujmPYqJbrV9xp
	ycmkoZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9Yt-00000007zTP-36nr;
	Mon, 18 Mar 2024 09:45:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9Yo-00000007zSS-28kF
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 09:45:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Yl-0003Zh-Rn; Mon, 18 Mar 2024 10:45:35 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Yl-00739x-FX; Mon, 18 Mar 2024 10:45:35 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Yl-006WCH-1P;
	Mon, 18 Mar 2024 10:45:35 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Mar 2024 10:45:32 +0100
Message-Id: <20240318094533.1553713-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_024538_572255_33AE1B50 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] ARM: i.MX8MP: skov: add fallback for unsupported HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add fallback support for currently not supported HW. Instead of
completely fail, it is better to use some kind of basic devicetree with
reduced functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 5424c3b9ab..a45fe8517f 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -83,6 +83,12 @@ static const struct board_description imx8mp_variants[] = {
 		.dts_compatible_hdmi = "skov,imx8mp-skov-revb-hdmi",
 		.flags = SKOV_IMX8MP_HAS_HDMI,
 	},
+	/* Keep this entry always on the last place. It will be used
+	 * as fallback variant if not supported variant is detected.
+	 */
+	{
+		.dts_compatible = "skov,imx8mp-skov-basic",
+	},
 };
 
 static int skov_imx8mp_fixup(struct device_node *root, void *data)
@@ -168,13 +174,14 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
 	if (ret)
 		return ret;
 
-	priv->variant_id = v;
 
 	if (v >= ARRAY_SIZE(imx8mp_variants)) {
-		dev_err(dev, "Invalid variant %u\n", v);
-		return -EINVAL;
+		dev_warn(dev, "Unsuported variant %u. Fall back to basic variant\n", v);
+		v = ARRAY_SIZE(imx8mp_variants) - 1;
 	}
 
+	priv->variant_id = v;
+
 	variant = &imx8mp_variants[v];
 
 	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
-- 
2.39.2



