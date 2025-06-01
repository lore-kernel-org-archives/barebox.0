Delivery-date: Sun, 01 Jun 2025 23:00:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnc-002jUP-2f
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:00:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnc-0000tM-6Y
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:00:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ffmpog9YrjMWd6F7mKZ2cCywZoFgnWBIr4g6+SapPkg=; b=cMC4NEuDVrbsR+FN4AC2phHDUO
	aVUJM6pwnud3OJVB9iAJacUe5YncsPGB4eXAhIi4lPW2WQ8Bv7yAeGj6ec21J4JH6lOajuzLOCPaQ
	jcvUXQhW6sTiW7kN8C4nkDJ9JgdkKfiisfSxqFXivLxx0xyG2JjPx9GlYiWdB8ySSgkswdhV7ikHG
	uDrDfIoJljEv1rTJx+etCKQBSTdS7ApAHBII7/SjiY1BoZmEzsFN64b02jXqDpsC+yNVkxuR7phYR
	6W1o3DW5c5Jfe61IN7iC+te6jy6mqYcU13p44cz2XeGfBeh0u6XhKb5l3z0vl9ovWknPIHzdnxJ5K
	9DeVOqoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmv-00000005xNi-2U1B;
	Sun, 01 Jun 2025 21:00:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmq-00000005xJi-1SPP
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:00:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLpmo-0000FO-VO; Sun, 01 Jun 2025 23:00:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 23:00:02 +0200
Message-Id: <20250601210002.562733-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601210002.562733-1-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140008_395578_2033EEEE 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PDS_OTHER_BAD_TLD,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] fbconsole: reset cursor to origin when changing fonts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we switch from one font to another, we update priv->rows and
priv->cols, but priv->x and priv->y remain at their old values.

This becomes problematic, when a bigger font is chosen, because the
coordinates may now exceed the maximum number of rows and lines,
triggering an out-of-bounds memory access, when they are scaled
according to the new font.

Fix this by resetting to (0, 0) whenever the number of columns and rows
changes. The end result looks neater anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 167569abd5c1..fd220a6c1e05 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -679,6 +679,7 @@ static int setup_font(struct fbc_priv *priv)
 	const struct font_desc *font;
 	unsigned int height = priv->fb->yres - priv->margin.top - priv->margin.bottom;
 	unsigned int width = priv->fb->xres - priv->margin.left - priv->margin.right;
+	unsigned int newrows, newcols;
 
 	font = find_font_enum(priv->par_font_val);
 	if (!font) {
@@ -690,14 +691,22 @@ static int setup_font(struct fbc_priv *priv)
 	switch (priv->rotation) {
 	case FBCONSOLE_ROTATE_0:
 	case FBCONSOLE_ROTATE_180:
-		priv->rows = height / priv->font->height;
-		priv->cols = width / priv->font->width;
+		newrows = height / priv->font->height;
+		newcols = width / priv->font->width;
 		break;
 	case FBCONSOLE_ROTATE_90:
 	case FBCONSOLE_ROTATE_270:
-		priv->rows = width / priv->font->height;
-		priv->cols = height / priv->font->width;
+		newrows = width / priv->font->height;
+		newcols = height / priv->font->width;
 		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (priv->rows != newrows || priv->cols != newcols) {
+		priv->rows = newrows;
+		priv->cols = newcols;
+		priv->x = priv->y = 0;
 	}
 
 	return 0;
-- 
2.39.5



