Delivery-date: Sun, 03 May 2026 10:45:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRy-000U5Z-2j
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRs-0004L9-Ra
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bjp7zd45j8St9kgbSpFn5WXfX1d6GpwAQoAogt0QCrc=; b=CQF9m2JOydi1Rftr1DaQLMUnr6
	YTsFut+WKZ92uWaUVhcrCQlSNex8rj6SkDOcX6qLvixtP0AZRU4ZVKk/p7M9Y/nRDdUwrSkuP1bpb
	WjD1tfwyjiP0K3dH+0zxtOiL7JBNj+4LAtleIPdfKGbYF5wcCfAZpInW/siDWDe6CzkQEsW+zjplm
	FaNjaew/4O1E4wt0SluzhVnZB5v0PD6PEHbQrfcXdLoKK3ij6FfAjrNQQMtyEhH8XCdcsolKzEytq
	bo+0wTJRrus0eLrIEMMBJXSMGGGjEb6YbIMV+yjwoDFh1b3CDDJi7jFRPzUnmaVDNoCraINQ4n4sV
	s7+ZJZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRK-0000000AeqF-17h1;
	Sun, 03 May 2026 08:44:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRG-0000000Aely-2taB
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRF-0003oP-5c; Sun, 03 May 2026 10:44:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:04 +0200
Message-ID: <20260503084430.2765761-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014434_726955_AFCAB60F 
X-CRM114-Status: GOOD (  12.40  )
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
Subject: [PATCH 02/20] fbconsole: improve handling of unexpected escape sequences
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

enum state_t describes the state the parser is in: literal input,
escape or CSI.

The way we currently parse it has expectations on the input that does
not match standard terminal behavior and may lead the state machine
getting stuck in a mode when getting control characters in an unexpected
order.

Improve this by supporting following corner cases:

- In ESC mode, if a non-'[' character is received, reset to LIT.

- In CSI mode, if ESC is received, transition to ESC.

- In CSI mode, always reset the DEC private mode when transitioning out.
  So far this happened only in the successful cases.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 60e9783266b6..2461ab2fb849 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -558,7 +558,6 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		/* suffix for vt100 "[?25h" */
 		switch (priv->csi_cmd) {
 		case '?': /* cursor visible */
-			priv->csi_cmd = -1;
 			if (!(priv->flags & HIDE_CURSOR))
 				break;
 
@@ -572,8 +571,6 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		/* suffix for vt100 "[?25l" */
 		switch (priv->csi_cmd) {
 		case '?': /* cursor invisible */
-			priv->csi_cmd = -1;
-
 			/* hide cursor now */
 			video_invertchar(priv, priv->x, priv->y);
 			priv->flags |= HIDE_CURSOR;
@@ -658,13 +655,23 @@ static void fbc_putc(struct console_device *cdev, char c)
 			priv->csipos = 0;
 			memset(priv->csi, 0, 6);
 			break;
+		default:
+			priv->state = LIT;
+			break;
 		}
 		break;
 	case CSI:
+		if (c == '\033') {
+			priv->state = ESC;
+			priv->csi_cmd = -1;
+			break;
+		}
+
 		priv->csi[priv->csipos++] = c;
 		if (priv->csipos == 255) {
 			priv->csipos = 0;
 			priv->state = LIT;
+			priv->csi_cmd = -1;
 			return;
 		}
 
@@ -683,6 +690,7 @@ static void fbc_putc(struct console_device *cdev, char c)
 		default:
 			fbc_parse_csi(priv);
 			priv->state = LIT;
+			priv->csi_cmd = -1;
 		}
 		break;
 	}
-- 
2.47.3



