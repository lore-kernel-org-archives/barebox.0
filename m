Delivery-date: Sun, 03 May 2026 10:45:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS5-000U8G-25
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS2-0004WD-3R
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9xb02ColJcnFbpZhx5pPwzlu9hhYQqUWXZM6rNetysg=; b=BPF4A8sRkun8aTgVMn3J/7Y0fJ
	OHoOHvMgleMgRXjLltwNrzPv2ZnJ16zBRbItVJJenMtvKgPUdoJyM4PSNlVYtInofWVwnaVeoiocP
	TkbA0sJYyFjc87wNXuusyBgsrOo8j30w0pt4mUnCrs+8WBt2kgLIan19omBq/hUuR+VdxbRtTuPLa
	6L8YEcCTF1l6b7C7yu/IzsYkqsfqkW/JWmmNjAmr6AGWauVF/jZL3AXv9ZwJz6/rLM12VPVSKSpb5
	gXtkag/MgKMZxPS1y2MSwVPg85oBoh8HUEwlVSUoNsn1m+PgbUjQ+ydZPJBUu0saVUcbuPK9SW/Qw
	AOMIZ16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRL-0000000AerM-0t5z;
	Sun, 03 May 2026 08:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRH-0000000Aem7-26ep
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRF-0003oP-V1; Sun, 03 May 2026 10:44:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:06 +0200
Message-ID: <20260503084430.2765761-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014435_556445_DE97FD71 
X-CRM114-Status: UNSURE (   8.70  )
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
Subject: [PATCH 04/20] fbconsole: do not reset cursor visibility alongside attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In fbc_parse_colors, resetting attributes sets priv->flags = 0,
which clears all flags including HIDE_CURSOR.

This is incorrect, the reset should only clear SGR attributes,
not cursor visibility state that just happens to share the
same member, so account for that.

Link: https://terminalguide.namepad.de/seq/csi_sm/
Link: https://terminalguide.namepad.de/mode/p25/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 547db00208ff..5b7c1a13a8bc 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -68,6 +68,7 @@ struct fbc_priv {
 
 #define ANSI_FLAG_INVERT	(1 << 0)
 #define ANSI_FLAG_BRIGHT	(1 << 1)
+#define SGR_ATTRIBUTES		(ANSI_FLAG_INVERT | ANSI_FLAG_BRIGHT)
 #define HIDE_CURSOR		(1 << 2)
 	unsigned flags;
 
@@ -508,7 +509,7 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		code = simple_strtoul(str, &str, 10);
 		switch (code) {
 		case 0:
-			priv->flags = 0;
+			priv->flags &= ~SGR_ATTRIBUTES;
 			priv->color = DEFAULT_COLOR;
 			priv->bgcolor = BLACK;
 			break;
-- 
2.47.3



