Delivery-date: Sun, 03 May 2026 10:45:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS2-000U6k-2k
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRx-0004RF-SK
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YVeg/+TPsWkN0MP/5aUackMlJtdUDfIRPc5bwuuWQ+0=; b=C606oNBmB4U3w3dqRhi5OpzNO3
	VixAIDgnS5P0+wYC4gqtMCKciQLu9t3o4ZFnjUq0n6rvwGOIYnRaZDrb201eRbAWQuTVmbzswW7tx
	OfgcVM5Z6Mf5xCh1/LxS3IDj8zTdsIJfTU8ZM0umRszUehgmSmKvvLFV2ljhlobdwVa4ayWCVAmG2
	ygIhd2T3YRhYUJPdsEdnONoq36PtusBB6dxd8iM5VrIwQRlQfdbDEk38yN265qxbsjrU0WE5YrO4g
	3enRbf08f4k6e7uhiN8YSjxFlfOsdZolMNY+ekEVWY3KYkvjpeJQPmqzAFCSUFg9EY2Uh/IEmksiS
	i46HbSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRN-0000000Aewl-3xgn;
	Sun, 03 May 2026 08:44:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRJ-0000000Aenh-0R93
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRH-0003oP-IN; Sun, 03 May 2026 10:44:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:10 +0200
Message-ID: <20260503084430.2765761-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014437_145675_CA777BED 
X-CRM114-Status: UNSURE (   9.09  )
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
Subject: [PATCH 08/20] fbconsole: factor out helpers for clamped cursor row/col setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding more escape sequences that need to move
the cursor without exceeding the fbconsole's size, add two helpers
for setting the cursor within the limits.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 6e8b4e66630d..285f22901573 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -542,6 +542,16 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 	}
 }
 
+static void fbc_set_cursor_row(struct fbc_priv *priv, int y)
+{
+	priv->y = clamp_t(int, y, 0, priv->rows - 1);
+}
+
+static void fbc_set_cursor_col(struct fbc_priv *priv, unsigned int x)
+{
+	priv->x = clamp_t(int, x, 0, priv->cols - 1);
+}
+
 static bool fbc_parse_csi(struct fbc_priv *priv)
 {
 	char *end;
@@ -585,10 +595,10 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		toggle_cursor_visibility(priv);
 
 		pos = simple_strtoul(priv->csi, &end, 10);
-		priv->y = clamp(pos - 1, 0, (int) priv->rows - 1);
+		fbc_set_cursor_row(priv, pos - 1);
 
 		pos = simple_strtoul(end + 1, NULL, 10);
-		priv->x = clamp(pos - 1, 0, (int) priv->cols - 1);
+		fbc_set_cursor_col(priv, pos - 1);
 
 		toggle_cursor_visibility(priv);
 		return true;
-- 
2.47.3



