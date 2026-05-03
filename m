Delivery-date: Sun, 03 May 2026 10:45:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS0-000U6G-0d
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRv-0004O6-5P
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TMPXXF1OoEbKgG2xnqjQOE7Yvsjptk8GQSw5BEfctoY=; b=kGwttSvPrV1BZKJvRdd/CiZ6y7
	HCjx+KWeE94j7/cSdh3LbkIXCuH4+Dx8HOUisKjxWaUHQ6XGbjS10QqsiWt2zLqydphJ7HLKGA0bb
	8QCuDfxy9Yc893zU1Mugk7QyCmQ+Bq1O4amEzHl9IZyKVO5zS/cWK/bvHTcrQe0KVCtbY0AX3GCQB
	B2E1CgPbzFiJyjSXlYKpSlMdTVPgLzi76Xvq+TPh7i7H6Y9P4JrR4UegD+QisjgmFMgZycCV9R/cO
	1RBGAuJTvgS47o8NYsZfyl0RvSuO8wHKYGYauOSfJxxTkqaCLz3IsA8rOovyBXWJB99ABKnjm0URH
	ag7wZcKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRM-0000000AeuZ-3FVE;
	Sun, 03 May 2026 08:44:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRI-0000000Aen1-1PQz
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRG-0003oP-Q3; Sun, 03 May 2026 10:44:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:08 +0200
Message-ID: <20260503084430.2765761-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014436_373537_A8563A36 
X-CRM114-Status: GOOD (  11.36  )
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
Subject: [PATCH 06/20] fbconsole: call fb_blit_area for every drawchar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Every glyph draw, whether cursor, character or empty space should be
followed by fb_blit_area().

This was missed for the drawchar() used for the empty space however
(erase in line). Fix this by moving fb_blit_area() into drawchar() like
it's already the case for video_invertchar().

fb_blit_area() is moved, so it's defined before being referenced, but
nothing changes in its body.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 87 ++++++++++++++++++++-------------------
 1 file changed, 44 insertions(+), 43 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 2833d4200aa1..c7314bb8cf0d 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -149,6 +149,49 @@ static struct rgb colors[] = {
 	[BRIGHT + WHITE]	= { 255, 255, 255 },
 };
 
+static void fb_blit_area(struct fbc_priv *priv, int x, int y)
+{
+	int startx, starty, width, height, fw, fh;
+	int mx, my;
+
+	mx = priv->margin.left;
+	my = priv->margin.top;
+
+	fw = priv->font->width;
+	fh = priv->font->height;
+
+	switch (priv->rotation) {
+	case FBCONSOLE_ROTATE_0:
+		startx = mx + x * fw;
+		starty = my + y * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_90:
+		startx = mx + (priv->rows - y - 1) * fh;
+		starty = my + x * fw;
+		width = fh;
+		height = fw;
+		break;
+	case FBCONSOLE_ROTATE_180:
+		startx = mx + (priv->cols - x - 1) * fw;
+		starty = my + (priv->rows - y - 1) * fh;
+		width = fw;
+		height = fh;
+		break;
+	case FBCONSOLE_ROTATE_270:
+		startx = mx + y * fh;
+		starty = my + (priv->cols - x - 1) * fw;
+		width = fh;
+		height = fw;
+		break;
+	default:
+		return;
+	}
+
+	gu_screen_blit_area(priv->sc, startx, starty, width, height);
+}
+
 static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 {
 	void *buf;
@@ -241,49 +284,8 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 		inbuf++;
 		mask = 0x80;
 	}
-}
 
-static void fb_blit_area(struct fbc_priv *priv, int x, int y)
-{
-	int startx, starty, width, height, fw, fh;
-	int mx, my;
-
-	mx = priv->margin.left;
-	my = priv->margin.top;
-
-	fw = priv->font->width;
-	fh = priv->font->height;
-
-	switch (priv->rotation) {
-	case FBCONSOLE_ROTATE_0:
-		startx = mx + x * fw;
-		starty = my + y * fh;
-		width = fw;
-		height = fh;
-		break;
-	case FBCONSOLE_ROTATE_90:
-		startx = mx + (priv->rows - y - 1) * fh;
-		starty = my + x * fw;
-		width = fh;
-		height = fw;
-		break;
-	case FBCONSOLE_ROTATE_180:
-		startx = mx + (priv->cols - x - 1) * fw;
-		starty = my + (priv->rows - y - 1) * fh;
-		width = fw;
-		height = fh;
-		break;
-	case FBCONSOLE_ROTATE_270:
-		startx = mx + y * fh;
-		starty = my + (priv->cols - x - 1) * fw;
-		width = fh;
-		height = fw;
-		break;
-	default:
-		return;
-	}
-
-	gu_screen_blit_area(priv->sc, startx, starty, width, height);
+	fb_blit_area(priv, x, y);
 }
 
 static void video_invertchar(struct fbc_priv *priv, int x, int y)
@@ -479,7 +481,6 @@ static void printchar(struct fbc_priv *priv, int c)
 
 	default:
 		drawchar(priv, priv->x, priv->y, c);
-		fb_blit_area(priv, priv->x, priv->y);
 
 		priv->x++;
 		if (priv->x >= priv->cols) {
-- 
2.47.3



