Delivery-date: Wed, 03 Apr 2024 06:35:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsL4-005AwQ-0i
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 06:35:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsL3-0001Kw-LF
	for lore@pengutronix.de; Wed, 03 Apr 2024 06:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4FO/u7b5XBWiA2khHlKwA3xcB7k5OTUEg/B6+LXYh/o=; b=icH1wr+mnwtS2GSY8gUp+K9XVt
	ByjLND5ZYxbVdrtDse+ZiweHais4WMb8SWQES5y2WjDvq5bX46KwB4ixVyIOARlPeY/1DV/BFM7Ao
	xaois0NJhRVSAsbYUPBL/ZDvZHFMgg3hP8Hd1FNLB3Vj7kI17yv0QZ25MfkBIeu5tRikev/wq9Mrt
	JvVtUS8S7vap1kTGmb7oIbWskKISNoPkhrcv8aaem3EOx9DxsGqXikWA8kjp2kuZ1m6cIsfXox8In
	qKpJtaV/FZ2H8algB/QG8i/yAhRBnL9l8t9TK0IJFjXVV0lYA2mp2C8vuGTI9TIjANBy5ChQ2PAJv
	Zy70o90g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsKf-0000000DxlZ-2UI3;
	Wed, 03 Apr 2024 04:34:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsKc-0000000Dxjw-05zx
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 04:34:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-000160-M1; Wed, 03 Apr 2024 06:34:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-00A6sp-8j; Wed, 03 Apr 2024 06:34:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-0082re-0g;
	Wed, 03 Apr 2024 06:34:36 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  3 Apr 2024 06:34:32 +0200
Message-Id: <20240403043433.1917623-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_213438_109659_49A3CD74 
X-CRM114-Status: GOOD (  12.47  )
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
Subject: [PATCH v3 1/2] ARM: i.MX8MP: skov: add fallback for unsupported HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add fallback support for currently not supported HW. Instead of
completely fail, it is better to use some kind of basic devicetree with
reduced functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3b6eb7b080..d4cb9c8279 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -85,6 +85,10 @@ static const struct board_description imx8mp_variants[] = {
 	},
 };
 
+static const struct board_description imx8mp_basic_variant = {
+	.dts_compatible = "skov,imx8mp-skov-basic",
+};
+
 static int skov_imx8mp_fixup(struct device_node *root, void *data)
 {
 	struct device_node *chosen = of_create_node(root, "/chosen");
@@ -171,12 +175,12 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
 	priv->variant_id = v;
 
 	if (v >= ARRAY_SIZE(imx8mp_variants)) {
-		dev_err(dev, "Invalid variant %u\n", v);
-		return -EINVAL;
+		dev_warn(dev, "Unsupported variant %u. Fall back to basic variant\n", v);
+		variant = &imx8mp_basic_variant;
+	} else {
+		variant = &imx8mp_variants[v];
 	}
 
-	variant = &imx8mp_variants[v];
-
 	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
 		ret = skov_imx8mp_get_hdmi(dev);
 		if (ret < 0)
-- 
2.39.2



