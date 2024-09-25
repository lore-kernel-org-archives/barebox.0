Delivery-date: Wed, 25 Sep 2024 16:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8A-002d6V-2o
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:36:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8B-0000sx-9O
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SjkX9+mzq4EsjFKZAwDaPEPGS4lG8rWAOjivNzBsUs4=; b=xncuTxE2qS5jr0iNmlQ1nCBoXP
	PdgpnlRvTZ3mVteU3O6+JwgCLV6IM3MJQULatxkyuSsI0KIVl4lIVRSi9HxyAN0M5Yeee59xwe45e
	azN5aJZtLQgdnB5kU9i9cAvZUAWF26wD1E9kmvRVCJslPCpbzXFc1OnwcehIyL33ojRmeFvEy8SNK
	qsKO5oGJj5v7il+ehlCQmLG/LkTFdkw/6BZVYm3601Wv6L3gF0JstxgUYnCEseGW9SDXd4W/u8WNk
	/RwYphbDCKmLG7njtxuG5/jFWZN3Q+pocyN4GdYrIjZX0BdXwLOgzjWVV4YpBTwDohxPZHoxFJBzc
	9HEwa0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stT7g-00000005eyD-3r2A;
	Wed, 25 Sep 2024 14:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stT6S-00000005ea8-2gHR
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-0000Ii-Cf; Wed, 25 Sep 2024 16:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6Q-001TDW-Uj; Wed, 25 Sep 2024 16:34:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-00DPQo-12;
	Wed, 25 Sep 2024 16:34:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:34:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-graphics-v1-4-f1fe5d2cceec@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727274890; l=886;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nrQcpJLY6rweVbfi4KAf9IzG4A5gtsmg0NrnuA21040=;
 b=dlUH8bMX4gtH04qi2n9WT2oxAaNiO9jJJIIxODvu30t23buQTPmqlkk9TiMPNoBsBw+BPWcji
 aZd8wUY2DIEDioXSK55w4hG4l65KxyOAK7UiGt1Z/ZyF6UeS1VW11ST
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_073452_732461_D71ED107 
X-CRM114-Status: GOOD (  12.42  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] fbconsole: make background pixels transparent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we have a background image we want the background to actually shine
through, so set the alpha value of the background to transparent and not
opaque.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index cec1afec56..d3615bc07f 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -139,7 +139,7 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	color = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
 
 	rgb = &colors[bgcolor];
-	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
+	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0x0);
 
 	for (i = 0; i < priv->font->height; i++) {
 		uint8_t mask = 0x80;

-- 
2.39.5



