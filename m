Delivery-date: Sat, 24 Aug 2024 22:04:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shx02-00D0oL-2G
	for lore@lore.pengutronix.de;
	Sat, 24 Aug 2024 22:04:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shx02-0005vR-1e
	for lore@pengutronix.de; Sat, 24 Aug 2024 22:04:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=87Ab03EWMJ5YPRmHUhaaRCONPQ+XGt6l2UPB2ex6TxM=; b=T4rhjtJzA/DXHFUuW9jUFzWHIh
	4alS/uA1HqD8Hdh3kOQDvG4lgkiaaZGrOYeWtp9YliXV7DLQi4YosNKfb2dXM3Kqiu3tPp6LgSyzI
	Dx56U8PoLHu+LfSVODJ/s32ouRFfFdZEJ7SIJYJWHCOYZRoRtvr/rsEbn7K3pa/rRUDZPD+3wyqUI
	o1FGvtDavL97K6NVS9ySEyNVSmPrQaog0VunRDL6h7DnxnH3mELN55b4ZVHmgYX/cqj8QKKDtP0SB
	U4Ha4BFnW4etupBPCq47+id4qK44xwBlrNiXIVrqzsvwgw8pVURpaYFCRzev4QgCix3xlbK04bNHZ
	V7sHGCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwzc-00000002qYZ-1ea5;
	Sat, 24 Aug 2024 20:04:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwzZ-00000002qY4-1cYn
	for barebox@lists.infradead.org;
	Sat, 24 Aug 2024 20:04:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwzX-0005qf-V2; Sat, 24 Aug 2024 22:04:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwzX-002mre-IA; Sat, 24 Aug 2024 22:04:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwzX-00945w-1W;
	Sat, 24 Aug 2024 22:04:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: spu@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 24 Aug 2024 22:04:05 +0200
Message-Id: <20240824200406.2160679-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_130409_449624_939960F9 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PDS_OTHER_BAD_TLD,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] fbconsole: support fonts wider than 16 pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a nested loop that iterates over all pixels in a font, but it
only looks at the first 8 bits. This worked so far, because our biggest
font was VGA8x16. In the follow-up commit, a 16x32 font will be added,
so we need to prepare the code to consider the whole width of a font.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/fbconsole.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 6c85e8e06a8c..cec1afec56cb 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -117,7 +117,7 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	int bpp = priv->fb->bits_per_pixel >> 3;
 	void *adr;
 	int i;
-	const char *inbuf;
+	const uint8_t *inbuf;
 	int line_length;
 	u32 color, bgcolor;
 	struct rgb *rgb;
@@ -142,21 +142,30 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
 
 	for (i = 0; i < priv->font->height; i++) {
-		uint8_t t = inbuf[i];
+		uint8_t mask = 0x80;
 		int j;
 
 		adr = buf + line_length * (priv->margin.top + y * priv->font->height + i) +
 		      (priv->margin.left + x * priv->font->width) * bpp;
 
 		for (j = 0; j < priv->font->width; j++) {
-			if (t & 0x80)
+			if (!mask) {
+				inbuf++;
+				mask = 0x80;
+			}
+
+			if (*inbuf & mask)
 				gu_set_pixel(priv->fb, adr, color);
 			else
 				gu_set_pixel(priv->fb, adr, bgcolor);
 
 			adr += priv->fb->bits_per_pixel >> 3;
-			t <<= 1;
+			mask >>= 1;
+
 		}
+
+		inbuf++;
+		mask = 0x80;
 	}
 }
 
-- 
2.39.2



