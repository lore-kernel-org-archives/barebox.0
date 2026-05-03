Delivery-date: Sun, 03 May 2026 10:45:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRz-000U5u-1H
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRt-0004MC-I2
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xhdlUZM08f4aKVEMOlu2V03UPDSuNYu08zxuXaXt71E=; b=I9r0X3az3RsPaH50bV9Bo4oKeA
	WgTk7IJerwPO+2nDdRYjeV0n3oV+OgaK6pu86FidSF/vRfEQmMYPpx1VjHo7YsWbHb3gUNN62Dw+m
	kASI6oKmec9lGU4ZkGGATVcx0Qcc6hq/Vx0zBuQZcHsAzIfVLM7oY7QoacaWQhTaFmbMkYWYR5Hnz
	NS8paxxpQww0voSCm3WZBa71BRylrlZ11VtfNm/LBqueGqxcqm23pHc8IKYBbxUAVIEEeRS3gpYPT
	4ItHol5GLwUp8/j/BTgJfpdSlgzjbhbtW9Gyl81FaN8PGEW5bnkrN7L0zuo2DkG6gheCOjiwM+Owi
	vtoZfDMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRL-0000000AesL-2ngX;
	Sun, 03 May 2026 08:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRH-0000000Aemm-3y5n
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRG-0003oP-CB; Sun, 03 May 2026 10:44:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:07 +0200
Message-ID: <20260503084430.2765761-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014436_002303_78DDE6E0 
X-CRM114-Status: GOOD (  11.60  )
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
Subject: [PATCH 05/20] fbconsole: respect hidden cursor everywhere
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

video_invertchar() unconditionally inverts the cell's color to represent
a cursor. show_cursor() does so only when HIDE_CURSOR has not been set
for the frame buffer console.

Rename show_cursor() to reflect what it really does (toggle the cursor's
visibility state) and replace all outside uses of video_invertchar()
with the new toggle_cursor_visibility() to ensure that an explicitly
hidden cursor is not unintentionally unhidden.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 5b7c1a13a8bc..2833d4200aa1 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -331,10 +331,10 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 	fb_blit_area(priv, x, y);
 }
 
-static void show_cursor(struct fbc_priv *priv, int x, int y)
+static void toggle_cursor_visibility(struct fbc_priv *priv)
 {
 	if (!(priv->flags & HIDE_CURSOR))
-		video_invertchar(priv, x, y);
+		video_invertchar(priv, priv->x, priv->y);
 }
 
 static void fb_scroll_up_0(struct fbc_priv *priv, void *adr, int width, int height)
@@ -451,7 +451,7 @@ static void fb_scroll_up(struct fbc_priv *priv)
 
 static void printchar(struct fbc_priv *priv, int c)
 {
-	video_invertchar(priv, priv->x, priv->y);
+	toggle_cursor_visibility(priv);
 
 	switch (c) {
 	case '\007': /* bell: ignore */
@@ -493,9 +493,7 @@ static void printchar(struct fbc_priv *priv, int c)
 		priv->y = priv->rows - 1;
 	}
 
-	show_cursor(priv, priv->x, priv->y);
-
-	return;
+	toggle_cursor_visibility(priv);
 }
 
 static void fbc_parse_colors(struct fbc_priv *priv)
@@ -564,7 +562,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 
 			priv->flags &= ~HIDE_CURSOR;
 			/* show cursor now */
-			show_cursor(priv, priv->x, priv->y);
+			toggle_cursor_visibility(priv);
 			break;
 		}
 		break;
@@ -573,7 +571,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		switch (priv->csi_cmd) {
 		case '?': /* cursor invisible */
 			/* hide cursor now */
-			video_invertchar(priv, priv->x, priv->y);
+			toggle_cursor_visibility(priv);
 			priv->flags |= HIDE_CURSOR;
 
 			break;
@@ -581,10 +579,10 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		break;
 	case 'J':
 		cls(priv);
-		show_cursor(priv, priv->x, priv->y);
+		toggle_cursor_visibility(priv);
 		return;
 	case 'H':
-		show_cursor(priv, priv->x, priv->y);
+		toggle_cursor_visibility(priv);
 
 		pos = simple_strtoul(priv->csi, &end, 10);
 		priv->y = clamp(pos - 1, 0, (int) priv->rows - 1);
@@ -592,11 +590,11 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		pos = simple_strtoul(end + 1, NULL, 10);
 		priv->x = clamp(pos - 1, 0, (int) priv->cols - 1);
 
-		show_cursor(priv, priv->x, priv->y);
+		toggle_cursor_visibility(priv);
 		break;
 	case 'K':
 		pos = simple_strtoul(priv->csi, &end, 10);
-		video_invertchar(priv, priv->x, priv->y);
+		toggle_cursor_visibility(priv);
 		switch (pos) {
 		case 0:
 			for (i = priv->x; i < priv->cols; i++)
@@ -607,7 +605,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 				drawchar(priv, i, priv->y, ' ');
 			break;
 		}
-		video_invertchar(priv, priv->x, priv->y);
+		toggle_cursor_visibility(priv);
 
 		break;
 	}
-- 
2.47.3



