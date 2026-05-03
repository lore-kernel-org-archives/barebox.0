Delivery-date: Sun, 03 May 2026 10:45:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSC-000UB3-10
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-0004ex-ML
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jxBHubIxspHaDcngrlgIHKstqM2Rchc/0u8V+BOVJ2Q=; b=wlAcjyLq4Ua2MqmHtMQnGVhPPD
	IkK8uKD9fTBb3YQC915lmNex3pEAebHG1rkgCiEbxrRCzp1TRhrHHZVqD1iIcLKK7eqzEztx1fSV4
	fRZK1Ca96vlZKsLYOB3sWt9IKwQmANx32qCZV6tXaMRzQkJ10XkdQwqoeU3sGwa8JUouTbA6ckhEz
	qpXPt1qvBgLjhMD5R+x9WfAkJ70pMvC9Km61dYgwJASxW5D0WAgEUxpfwlwu4PQVDo9jFFhKfV4vV
	/UnJqGGqH4gTODVL8OGlE2YF/EMs9bpr25tkzqg6dbECRjDb4I+lrzJ3qD6jWuaK2kbd4ZvQIryDI
	Hg2LwmoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRS-0000000Af62-1PbY;
	Sun, 03 May 2026 08:44:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRM-0000000AesF-2XIk
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRK-0003oP-Vl; Sun, 03 May 2026 10:44:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:18 +0200
Message-ID: <20260503084430.2765761-17-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014440_678189_4D43F194 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: [PATCH 16/20] fbconsole: implement DEC save/restore cursor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have all cursor state collected into a common struct, it's
trivial to implement \e7 and \e8.

Implement it, so the resize command and other potential users can operate
correctly.

Link: https://terminalguide.namepad.de/seq/a_esc_a7/
Link: https://terminalguide.namepad.de/seq/a_esc_a8/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 6cca3faa9615..71e0778368ed 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -77,6 +77,7 @@ struct fbc_priv {
 	unsigned int cols, rows;
 
 	struct fbc_screen_state cur;
+	struct fbc_screen_state saved; /* DEC cursor save (\e7) */
 
 	unsigned int rotation;
 	enum state_t state;
@@ -759,6 +760,17 @@ static void fbc_putc(struct console_device *cdev, char c)
 			priv->csipos = 0;
 			memset(priv->csi, 0, 6);
 			break;
+		case '7':	/* DEC save cursor position */
+			priv->saved = priv->cur;
+			priv->state = LIT;
+			break;
+		case '8':	/* DEC restore cursor position */
+			toggle_cursor_visibility(priv);
+			priv->cur = priv->saved;
+			toggle_cursor_visibility(priv);
+			priv->state = LIT;
+			queue_flush = true;
+			break;
 		default:
 			priv->state = LIT;
 			break;
@@ -837,6 +849,7 @@ static int setup_font(struct fbc_priv *priv)
 		priv->rows = newrows;
 		priv->cols = newcols;
 		priv->cur.x = priv->cur.y = 0;
+		priv->saved.x = priv->saved.y = 0;
 	}
 
 	return 0;
@@ -931,8 +944,8 @@ static int set_rotation(struct param_d *p, void *vpriv)
 	struct fbc_priv *priv = vpriv;
 
 	cls(priv);
-	priv->cur.x = 0;
-	priv->cur.y = 0;
+	priv->cur.x = priv->cur.y = 0;
+	priv->saved.x = priv->saved.y = 0;
 	setup_font(priv);
 
 	return 0;
-- 
2.47.3



