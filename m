Delivery-date: Sun, 03 May 2026 10:45:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS5-000U7l-0v
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS1-0004Ur-5C
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VcmQZbVXierE4bj6047YINvdLcLyjZ35eTrSV02AW5c=; b=zmYAIf6tvbQ+ISprn9jEGUdV4E
	/rczu0WBma8FXmzjSbNmMJe/vCo5YLNBX/TydvTUL8z/Gj+hrwmTvErmojdRyBnuEIh9P8gP34FcK
	8MThIJhc3O/ntxyJWbXtMTEAFEkdzVNYNYQqSHE2k2P6vlsK3sEA+WR4ugeOV1CDPruFsZSxdJHlO
	UvQO3/k/jUIncZYl7KdQqUoVPAybw4kbZU1lYtZQbwGylnJSbcyXEhIWPioyqLlztFOFI1RE8wPVG
	wqibff73JwuhI1bh5fYXVMdNfkdCzIukS/HcnvUdP19yesGnDIFOIJiAWBn1yCcyaucXBzIkAeOLR
	vCFDwp+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRP-0000000Af13-3ZRf;
	Sun, 03 May 2026 08:44:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRK-0000000AepQ-1tbh
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRI-0003oP-SE; Sun, 03 May 2026 10:44:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:13 +0200
Message-ID: <20260503084430.2765761-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014438_532704_27391F93 
X-CRM114-Status: UNSURE (   8.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,GAPPY_SUBJECT,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/20] fbconsole: implement CSI A/B/C/D cursor movement sequences
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The framebuffer console should be able to display everything that
existing barebox commands can output to it.

The 2048 command makes use of the cursor movement sequences, so
implement them.

Link: https://terminalguide.namepad.de/seq/csi_ca/
Link: https://terminalguide.namepad.de/seq/csi_cb/
Link: https://terminalguide.namepad.de/seq/csi_cc/
Link: https://terminalguide.namepad.de/seq/csi_cd/

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 1c4418757b43..ad3c66b75737 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -638,6 +638,28 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 
 		toggle_cursor_visibility(priv);
 		return true;
+	case 'A' ... 'D': {
+		pos = simple_strtoul(priv->csi, &end, 10) ?: 1;
+		toggle_cursor_visibility(priv);
+
+		switch (last) {
+		case 'A': /* cursor up */
+			fbc_set_cursor_row(priv, priv->cur.y - pos);
+			break;
+		case 'B': /* cursor down */
+			fbc_set_cursor_row(priv, priv->cur.y + pos);
+			break;
+		case 'C': /* cursor forward */
+			fbc_set_cursor_col(priv, priv->cur.x + pos);
+			break;
+		case 'D': /* cursor back */
+			fbc_set_cursor_col(priv, priv->cur.x - pos);
+			break;
+		}
+
+		toggle_cursor_visibility(priv);
+		return true;
+	}
 	case 'K':
 		pos = simple_strtoul(priv->csi, &end, 10);
 		toggle_cursor_visibility(priv);
-- 
2.47.3



