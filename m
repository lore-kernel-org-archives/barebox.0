Delivery-date: Sun, 01 Jun 2025 23:00:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnc-002jU3-1X
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:00:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnb-0000t6-QB
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:00:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OjnpG67gfpP2oqf998f+IfkcMrEFxnQJTZy/+jDIVxk=; b=Rs7pWDfDdMgxwQr/HS02ryNyQB
	fp3QPBryT1rD37jgJfVK8IS2Acs4jbmIzGopLzdbN2gUAMXTNeFfJXjU7SmmYrP7Gtex3O2wxx/kK
	80y30JQ4J8z608e8Q6SpWk7Wgc0Bu7yQSXkblQ48XMzY0TmSSwI+ts6NH8t/pKVcejxgvPQaqr5qs
	sk7t+Vh94UwPaHYEXTCNiIvqkHgFwtUHNfnGQbF+3cFwuiD9D12UH3eSA8oxCJg3LqkQHdfxETOZy
	fCIhCtoJD88DrcwSWOCf40zmoOEHDESyxoMCCfuRiad5Wl9vwaS2+/jlxx79BKhG6svk2vYl3fbpz
	vkXc9Qkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmt-00000005xMT-2Q6m;
	Sun, 01 Jun 2025 21:00:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmp-00000005xIV-39EB
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:00:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLpmo-0000FO-2O; Sun, 01 Jun 2025 23:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 22:59:58 +0200
Message-Id: <20250601210002.562733-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140007_796649_E1A9F757 
X-CRM114-Status: GOOD (  12.60  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] fbconsole: use symbolic names for ANSI colors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of hardcoding color indices, let's define symbolic names and use
them throughout. This makes it clear that we are using different default
colors, which will be fixed in the follow-up commit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 51 +++++++++++++++++++++------------------
 1 file changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 401b36c4de73..55df524a96a3 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -32,6 +32,11 @@ static const char * const rotation_names[] = {
 	[FBCONSOLE_ROTATE_270] = "270",
 };
 
+enum ansi_color {
+	BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE,
+	BRIGHT
+};
+
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
@@ -111,22 +116,22 @@ struct rgb {
 };
 
 static struct rgb colors[] = {
-	{ 0, 0, 0 },
-	{ 205, 0, 0 },
-	{ 0, 205, 0 },
-	{ 205, 205, 0 },
-	{ 0, 0, 238 },
-	{ 205, 0, 205 },
-	{ 0, 205, 205 },
-	{ 229, 229, 229 },
-	{ 127, 127, 127 },
-	{ 255, 0, 0 },
-	{ 0, 255, 0 },
-	{ 255, 255, 0 },
-	{ 92, 92, 255 },
-	{ 255, 0, 255 },
-	{ 0, 255, 255 },
-	{ 255, 255, 255 },
+	[BLACK]			= { 0, 0, 0 },
+	[RED]			= { 205, 0, 0 },
+	[GREEN]			= { 0, 205, 0 },
+	[YELLOW]		= { 205, 205, 0 },
+	[BLUE]			= { 0, 0, 238 },
+	[MAGENTA]		= { 205, 0, 205 },
+	[CYAN]			= { 0, 205, 205 },
+	[WHITE]			= { 229, 229, 229 },
+	[BRIGHT + BLACK]	= { 127, 127, 127 },
+	[BRIGHT + RED]		= { 255, 0, 0 },
+	[BRIGHT + GREEN]	= { 0, 255, 0 },
+	[BRIGHT + YELLOW]	= { 255, 255, 0 },
+	[BRIGHT + BLUE]		= { 92, 92, 255 },
+	[BRIGHT + MAGENTA]	= { 255, 0, 255 },
+	[BRIGHT + CYAN]		= { 0, 255, 255 },
+	[BRIGHT + WHITE]	= { 255, 255, 255 },
 };
 
 static void drawchar(struct fbc_priv *priv, int x, int y, int c)
@@ -155,7 +160,7 @@ static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 	bgcolor = priv->flags & ANSI_FLAG_INVERT ? priv->color : priv->bgcolor;
 
 	if (priv->flags & ANSI_FLAG_BRIGHT)
-		color += 8;
+		color += BRIGHT;
 
 	rgb = &colors[color];
 	color = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
@@ -490,8 +495,8 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		switch (code) {
 		case 0:
 			priv->flags = 0;
-			priv->color = 8;
-			priv->bgcolor = 0;
+			priv->color = BRIGHT + BLACK;
+			priv->bgcolor = BLACK;
 			break;
 		case 1:
 			priv->flags |= ANSI_FLAG_BRIGHT;
@@ -503,13 +508,13 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 			priv->color = code - 30;
 			break;
 		case 39:
-			priv->color = 7;
+			priv->color = WHITE;
 			break;
 		case 40 ... 47:
 			priv->bgcolor = code - 40;
 			break;
 		case 49:
-			priv->bgcolor = 0;
+			priv->bgcolor = BLACK;
 			break;
 		}
 
@@ -814,8 +819,8 @@ int register_fbconsole(struct fb_info *fb)
 	priv->fb = fb;
 	priv->x = 0;
 	priv->y = 0;
-	priv->color = 7;
-	priv->bgcolor = 0;
+	priv->color = WHITE;
+	priv->bgcolor = BLACK;
 
 	cdev = &priv->cdev;
 	cdev->dev = &fb->dev;
-- 
2.39.5



