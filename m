Delivery-date: Sun, 03 May 2026 10:45:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-000U9k-2Y
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS6-0004ba-MW
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OdAFM5mxTUq2tIqYX2XZldstgGMatPsi3UXyhAJrZaw=; b=qM2VdANLVt8pw/ZaY5FO1YS+ce
	GP1A0hY1wnjVkN2GAATeCTK1XjdGjQQqC75CXoVKW91UasfXlE3IY2xHqC/I2pavc2r+1mZlr/vu/
	OinS4ciRq6vOic5kEP9uvmRq0ob4n3xgfNJocT7E8zveTm+6bF8vCzxRziNzllrryeFGAplhrcwzG
	NSStDEY+NvxBjebk1WZ6kPCHNZqqYmg1n7h3FrUY7duVLJSUqqap/7A8Bf6WsWDF+9U9VWOofjMwf
	7eEEfHMvyLItDY9XiXp83RN2yLc1jNMqT+P4SAE3hPzoKXtv/L1rDfTrLgE6dMuj5bHP8PUnzF74P
	71lQ9g/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRR-0000000Af3v-1K8W;
	Sun, 03 May 2026 08:44:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRL-0000000AeqO-1OEU
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRJ-0003oP-NK; Sun, 03 May 2026 10:44:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:15 +0200
Message-ID: <20260503084430.2765761-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014439_416154_E9190BED 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/20] fbconsole: add new clear_chars helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fbc_parse_csi() implements partial line clearing by printing spaces as
that's an easy way to do background-color aware clearing.

Wrap that idiom in a new clear_chars helper that can be used to clear
between everything between two cells in the future as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index fb6a7d3e5809..f586aabdae43 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -285,6 +285,18 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	fb_blit_area(priv, x, y);
 }
 
+static void clear_chars(struct fbc_priv *priv,
+			int start_x, int start_y, int end_x, int end_y)
+{
+	for (int y = start_y; y <= end_y; y++) {
+		int xs = (y == start_y) ? start_x : 0;
+		int xe = (y == end_y) ? end_x : (int)priv->cols - 1;
+
+		for (int x = xs; x <= xe; x++)
+			drawchar(priv, x, y, ' ');
+	}
+}
+
 static void video_invertchar(struct fbc_priv *priv, int x, int y)
 {
 	int startx, starty, width, height, fw, fh;
@@ -592,7 +604,7 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 {
 	char *end;
 	unsigned char last;
-	int pos, i;
+	int pos;
 
 	last = priv->csi[priv->csipos - 1];
 
@@ -670,12 +682,12 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		toggle_cursor_visibility(priv);
 		switch (pos) {
 		case 0:
-			for (i = priv->cur.x; i < priv->cols; i++)
-				drawchar(priv, i, priv->cur.y, ' ');
+			clear_chars(priv, priv->cur.x, priv->cur.y,
+				    priv->cols - 1, priv->cur.y);
 			break;
 		case 1:
-			for (i = 0; i <= priv->cur.x; i++)
-				drawchar(priv, i, priv->cur.y, ' ');
+			clear_chars(priv, 0, priv->cur.y,
+				    priv->cur.x, priv->cur.y);
 			break;
 		}
 		toggle_cursor_visibility(priv);
-- 
2.47.3



