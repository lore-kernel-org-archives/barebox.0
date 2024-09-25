Delivery-date: Wed, 25 Sep 2024 16:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8B-002d6c-02
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:36:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8B-0000t7-F5
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3rS8dEnvhANjfRI6wieJTKvwaSMNq5KS5+KCCb7Hiwo=; b=RanwU6lWcs6pLQ4RhEgYi0KbkQ
	K4AanbWKsM9cihbH/B8ftg7brxCZTYPW4z8dOhPC7HSBdpFlw3fnsWyekI5h8IAZBj8jJA6gKoN29
	W+YEOJheG/H+pIBRM3emngsGSeGHIAACITTiAgOaPZ/S5z2QdVsCm75m0wQi7r5Hnxqp9Rf0tRAaa
	EYHPHSCIOlePvhYrgBZ9Xh5hvP6V4SB4HFoDWtPbPVHljbQcAL8El4rjReeQArFwkHVfbjtuk32kU
	pdBfr++K9zqZ2zw/MMBn3GT/87A368Owbtf/8r+yP9MLDd6l1sGLqvC3r/smwcfKPNPthA68ztYkR
	Wg3Vi2Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stT7i-00000005eyu-0t6Q;
	Wed, 25 Sep 2024 14:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stT6a-00000005ef5-39iJ
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-0000Ih-Di; Wed, 25 Sep 2024 16:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6Q-001TDV-UW; Wed, 25 Sep 2024 16:34:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-00DPQo-11;
	Wed, 25 Sep 2024 16:34:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:34:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-graphics-v1-3-f1fe5d2cceec@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727274890; l=1703;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=aHISCQ/q/y2fimu248iFWT902UH6pCJGMDzNj9n+LVQ=;
 b=I++WLXHKxRqnWQhiV84PSWi1JaMP0ksHlrIyTk/UAJA5X16+O6fplkj9y/qOVewyOTD9g465+
 FObjP6TnJ+NAdrB5+Jrbc6lj/zlVRd6SKYBsEgcBsB5i23ZojrBuTZa
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_073500_938743_2CEF36E7 
X-CRM114-Status: GOOD (  12.79  )
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
Subject: [PATCH 3/5] gui: fix alpha blend
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gu_set_rgba_pixel() can work in two modes. When the plane does have an
alpha channel then it just sets the RGBA values. When the plane doesn't
have an alpha channel then it does pseudo alpha blending of the previous
pixel value.

At least this was the intention. The function sets the alpha value
correctly only when it's not fully opaque. Fix this by always setting
the alpha channel when it exists.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/graphic_utils.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 93ef1214f9..d9f90f3d2e 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -187,24 +187,22 @@ void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 	if (!a)
 		return;
 
-	if (a != 0xff) {
-		if (info->transp.length) {
-			px |= (a >> (8 - info->transp.length)) << info->transp.offset;
-		} else {
-			u8 sr = 0;
-			u8 sg = 0;
-			u8 sb = 0;
+	if (info->transp.length) {
+		px |= (a >> (8 - info->transp.length)) << info->transp.offset;
+	} else if (a != 0xff) {
+		u8 sr = 0;
+		u8 sg = 0;
+		u8 sb = 0;
 
-			get_rgb_pixel(info, adr, &sr, &sg, &sb);
+		get_rgb_pixel(info, adr, &sr, &sg, &sb);
 
-			r = alpha_mux(sr, r, a);
-			g = alpha_mux(sg, g, a);
-			b = alpha_mux(sb, b, a);
+		r = alpha_mux(sr, r, a);
+		g = alpha_mux(sg, g, a);
+		b = alpha_mux(sb, b, a);
 
-			gu_set_rgb_pixel(info, adr, r, g, b);
+		gu_set_rgb_pixel(info, adr, r, g, b);
 
-			return;
-		}
+		return;
 	}
 
 	px |= (r >> (8 - info->red.length)) << info->red.offset |

-- 
2.39.5



