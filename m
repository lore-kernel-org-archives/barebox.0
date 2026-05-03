Delivery-date: Sun, 03 May 2026 10:45:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSE-000UCc-1t
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSB-0004gt-DE
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ziTpzGW2u2PSm8gCr5n0msm3Yk7iWcWvgQ0/wvjhGAk=; b=GpIAQxfTIPbNGMqqC1vKTAs45s
	OBYxO+MaqYRw2qTTokDokX4mjHRG+LVqvVLeIfcCF83kdcyJWAMlxCwTQHEUF8b3I0a5SL/8p8/cB
	THaHbx852J0K1ogZr4X1jl0pJl06Dg5vkzf9kUYtIhl1wQhkaC7H2TV5b2o4fAZjKgc492AAs5cND
	91y161Xy2IGOE5GqcKMi6rIRpQ0/4qqRqWJErsyvoZMkDO6XXFErBGCGF+l/VTI3E6usQQDVX2gew
	+ucTqo/TnozXgLUDm434QvjOhJFLIUiK9YBdoCcZTKJiaigmtEkHgQRxHaMTHyAfjmJFENRg6g26U
	9Eryo+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRR-0000000Af5L-44NT;
	Sun, 03 May 2026 08:44:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRL-0000000Aer4-3A3G
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRK-0003oP-3V; Sun, 03 May 2026 10:44:38 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:16 +0200
Message-ID: <20260503084430.2765761-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014439_822579_C5976B3D 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/20] fbconsole: implement erase entire line CSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already implement CSI 0 K and CSI 1 K to erase from cursor to line
end and from line start to cursor, but were missing erasure of the
entire line, so add that as well.

Link: https://terminalguide.namepad.de/seq/csi_ck-2/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index f586aabdae43..c67e3817ca13 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -689,6 +689,10 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 			clear_chars(priv, 0, priv->cur.y,
 				    priv->cur.x, priv->cur.y);
 			break;
+		case 2:
+			clear_chars(priv, 0, priv->cur.y,
+				    priv->cols - 1, priv->cur.y);
+			break;
 		}
 		toggle_cursor_visibility(priv);
 		return true;
-- 
2.47.3



