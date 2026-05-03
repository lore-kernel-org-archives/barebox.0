Delivery-date: Sun, 03 May 2026 10:45:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS7-000U8o-28
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS4-0004YN-IF
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TCj3T5XOHeWOwo0nfCIV4v/KANa9bmH+6YiPHvNytsQ=; b=tNOVWygKiKw2Ya2QlgYS/IR94j
	guDnGcNbhbkgKhD8aeVn62A3QwXsrrnq1z38PFuHvRNOxxbPGXHb5LWV0eyhfhAMJRswZG1M+xccM
	bL+cwqe8/XHcW8NM2xLt3fmqhbi/RieZgTuMjsNATR+L2Ew/qxfisc6XZG//b0nJzVRYU2i4z4eGT
	LnWWHMW6X4LiU2LKM93BFfxlJowM38xvCLAhFEQ0asACrUTatMhBgne8pmqM2JyjmsukdOnoBZZUs
	5WezTqGZ5L5YEPIk2Sx9w0mT4l6JLktqnPtvV4xoiwv/Cngnp/92G1uQV4Xvkj20+tre8mcCRMvRB
	kitnrlZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRS-0000000Af6v-2tQQ;
	Sun, 03 May 2026 08:44:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRM-0000000Aere-0gls
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRK-0003oP-HV; Sun, 03 May 2026 10:44:38 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:17 +0200
Message-ID: <20260503084430.2765761-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014440_274033_8C790091 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 15/20] fbconsole: support ESC[0J and ESC[1J partial screen clear
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ESC[J handler always called cls() which clears the entire screen,
regardless of the parameter. Per ECMA-48, the parameter selects the
region to clear:

  - 0 (or omitted): from cursor to end of screen
  - 1: from start of screen to cursor
  - 2: entire screen

Add a clear_chars() helper that clears a partial specified region by
drawing spaces (respecting the current background color), and parse
the ESC[J parameter to dispatch to the appropriate clearing mode.

Link: https://terminalguide.namepad.de/seq/csi_cj-0/
Link: https://terminalguide.namepad.de/seq/csi_cj-1/
Link: https://terminalguide.namepad.de/seq/csi_cj-2/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index c67e3817ca13..6cca3faa9615 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -641,7 +641,20 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		}
 		break;
 	case 'J':
-		cls(priv);
+		pos = simple_strtoul(priv->csi, &end, 10);
+		toggle_cursor_visibility(priv);
+		switch (pos) {
+		case 0: /* clear from cursor to end of screen */
+			clear_chars(priv, priv->cur.x, priv->cur.y,
+				    priv->cols - 1, priv->rows - 1);
+			break;
+		case 1: /* clear from start of screen to cursor */
+			clear_chars(priv, 0, 0, priv->cur.x, priv->cur.y);
+			break;
+		case 2: /* clear entire screen */
+			cls(priv);
+			break;
+		}
 		toggle_cursor_visibility(priv);
 		return true;
 	case 'H':
-- 
2.47.3



