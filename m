Delivery-date: Sun, 03 May 2026 10:45:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSA-000U9y-05
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS6-0004bI-J4
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S0+tc2x4BIGsSpYEYg9JMJLF6+zGMQl74ryJissB0Xo=; b=Mx43czb0gCHK8e/oP8Y7o8Zqy9
	LEi6X6i1alCFUMECU4jLrCCDxLkraE+EtL7v+5NoqQc7HYOylroVhvY325ZGlNtHmpzDYRRqkhy87
	sik0alG/6CyqGJOR0urgqR//uGSWsBfUMkPUveC/Ka0IGMdlMopo02k26MqnCskokmr8h0MnHdwP8
	y7+85eRDNddyLKzngtUCEnYzcWbXrflbHeodkzUC2vwckjjix7q0E0V3IUSQlooBgJB0gb5GEchYX
	HC56Uwp0RE3PIGsl2sC7MQqE9kdMXWLzhoG92l8wR8YjvJpva91DUdE6tlUg+T00/eNIqq63BPImB
	6T0Fom9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRT-0000000Af7d-01Wr;
	Sun, 03 May 2026 08:44:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRN-0000000AeuM-2Nfs
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRL-0003oP-Sl; Sun, 03 May 2026 10:44:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:20 +0200
Message-ID: <20260503084430.2765761-19-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014441_656369_10EF7694 
X-CRM114-Status: GOOD (  12.35  )
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
Subject: [PATCH 18/20] fbconsole: implement alternate screen buffer (ESC[?1049h/l)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The alternate screen buffer is distinct from the scrollback-enabled
primary buffer and meant for full screen applications.

The ?1049 mode in particular is a superset of it that includes saving
the cursor and clearing the buffer when entering.

Implement it via taking a snapshot of the framebuffer's pixels.

Link: https://terminalguide.namepad.de/mode/p1049/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 46 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index bed55de7571e..3a2a680fc719 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -81,6 +81,10 @@ struct fbc_priv {
 	struct fbc_screen_state cur;
 	struct fbc_screen_state saved; /* DEC cursor save (\e7) */
 
+	struct fbc_screen_state altscreen_saved;
+	void *altscreen_buf;	/* pixel snapshot while in alternate screen */
+	size_t altscreen_size;
+
 	unsigned int rotation;
 	enum state_t state;
 
@@ -651,6 +655,21 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 			/* show cursor now */
 			toggle_cursor_visibility(priv);
 			return true;
+		case 1049: /* alternate screen: save pixel buffer and state */
+			if (!priv->altscreen_buf) {
+				void *src = gui_screen_render_buffer(priv->sc);
+				size_t sz = priv->fb->line_length * priv->fb->yres;
+
+				priv->altscreen_buf = memdup(src, sz);
+				if (priv->altscreen_buf) {
+					priv->altscreen_size  = sz;
+					priv->altscreen_saved = priv->cur;
+				}
+				priv->cur = (struct fbc_screen_state){};
+				fbc_reset_colors(priv);
+				cls(priv);
+			}
+			return true;
 		}
 		break;
 	case 'l':
@@ -664,6 +683,27 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 			/* hide cursor now */
 			priv->cur.flags |= HIDE_CURSOR;
 			return true;
+		case 1049: /* alternate screen: restore pixel buffer and state */
+			if (priv->altscreen_buf) {
+				void *dst = gui_screen_render_buffer(priv->sc);
+				size_t sz = priv->fb->line_length * priv->fb->yres;
+
+				if (sz == priv->altscreen_size) {
+					memcpy(dst, priv->altscreen_buf, sz);
+					gu_screen_blit(priv->sc);
+				} else {
+					cls(priv);
+				}
+				free(priv->altscreen_buf);
+				priv->altscreen_buf  = NULL;
+				priv->altscreen_size = 0;
+				priv->cur = priv->altscreen_saved;
+			} else {
+				priv->cur = (struct fbc_screen_state){};
+				fbc_reset_colors(priv);
+				cls(priv);
+			}
+			return true;
 		}
 		break;
 	case 'J':
@@ -914,6 +954,12 @@ static int fbc_close(struct console_device *cdev)
 	struct fbc_priv *priv = container_of(cdev,
 					struct fbc_priv, cdev);
 
+	if (priv->altscreen_buf) {
+		free(priv->altscreen_buf);
+		priv->altscreen_buf  = NULL;
+		priv->altscreen_size = 0;
+	}
+
 	if (priv->active) {
 		fb_close(priv->sc);
 		priv->active = false;
-- 
2.47.3



