Delivery-date: Sun, 01 Jun 2025 23:00:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpna-002jTT-34
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:00:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpna-0000q7-Ak
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:00:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7aRHfZnjtMrt8MdPOAe/wTP2qIzg04RzMCfCb+bq7uo=; b=DkE4VvUhKlcbXuBLwgwDlPCr0B
	xuEZ17UYJTlD4lklCPd03b+ctHKCwWHGG6q7kTAZhJwNjmnvyxsp1dgIaVS7JeTb994xCra0LsPSA
	0KtFSR/X5ng6j+2Ku8cDx6OqoxKiUmXj+rRkDs3VIFUm2JG+ctj4iRkvTQ4JTk+PlQV/wDceRrltl
	+8JRQUShVf4bEE0+50wCP9kanPTgTQYbVTSGK6kJeNXW7JVZLkDJPujFGEmNlRkSzQ3eqPFdxWzur
	6FDAyeHweZmQURVGp8IuDdybOXbgwEI4YiuaNWvPAGYob8CG8bg1eV3eXrfeldKdKpSf0NqCncXud
	pt+bw+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmw-00000005xOI-0P8f;
	Sun, 01 Jun 2025 21:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmq-00000005xJh-05cs
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:00:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLpmo-0000FO-OZ; Sun, 01 Jun 2025 23:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 23:00:01 +0200
Message-Id: <20250601210002.562733-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601210002.562733-1-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140008_064664_69502BCD 
X-CRM114-Status: GOOD (  11.22  )
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
Subject: [PATCH 4/5] fbconsole: use only one default color
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default framebuffer color is (dark) white, which we also revert to
when resetting the default color and keeping style intact.

We also support the ANSI "reset all colors/styles" sequence and include
it in the default barebox prompt, but that one doesn't currently default
to white, but bright black (gray) instead.

Given that we have a pitch black background by default, dark white is
easier on the eyes than gray, so let's make that the singular default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b399c044be94..167569abd5c1 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -37,6 +37,8 @@ enum ansi_color {
 	BRIGHT
 };
 
+#define DEFAULT_COLOR	WHITE
+
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
@@ -495,7 +497,7 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		switch (code) {
 		case 0:
 			priv->flags = 0;
-			priv->color = BRIGHT + BLACK;
+			priv->color = DEFAULT_COLOR;
 			priv->bgcolor = BLACK;
 			break;
 		case 1:
@@ -508,7 +510,7 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 			priv->color = code - 30;
 			break;
 		case 39:
-			priv->color = WHITE;
+			priv->color = DEFAULT_COLOR;
 			break;
 		case 40 ... 47:
 			priv->bgcolor = code - 40;
-- 
2.39.5



