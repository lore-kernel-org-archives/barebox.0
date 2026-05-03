Delivery-date: Sun, 03 May 2026 10:45:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSE-000UCG-0V
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSA-0004gQ-UQ
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uKzNCK61u+eLds1PVOW2U7NiDJWwQatRpaInwvbzLl8=; b=f6YbUmAPr7wSNw0jadVTUalfew
	1rBm588hZ+pLdoi0z10wttT8mfnW6gxq24HwRfoN1OgKSdLA2fOxNDAvqLJ1KoMJxm4Rn7wt+poSB
	2x3BelOhcu6+QZ3OA9vVacyjDu8h8f2433HxuKGDZmuGzIfW6TO74uH0r0+dxKyANXvjfspu/J53s
	xsMXaLMgvp+HaMlDzi472jhw0NRWfl1CYFr8NaA3wHG/Vtc/UrgQHQpFmkwlyEQ5HeGyVGFWXKutO
	ov+0jjwQgME/89VCowFk9ooHpKVbVMn2MrJr/zfGNu/k13G4VAIO4HMP7FzGsoZPDqD/k0C1twf/X
	meLIhyIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRR-0000000Af4q-2Xw9;
	Sun, 03 May 2026 08:44:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRK-0000000Aepo-3e0O
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRJ-0003oP-9d; Sun, 03 May 2026 10:44:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:14 +0200
Message-ID: <20260503084430.2765761-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014438_964343_3F9CA2B2 
X-CRM114-Status: GOOD (  10.20  )
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
Subject: [PATCH 12/20] fbconsole: restrict cursor visibility to DEC private mode 25
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

`CSI ? Pm h' is DECSET and `CSI ? Pm l` is DECRST.
The Pm parameter can be 25 for cursor visibility control, but can also
mean many other things, e.g. use of the alternate screen buffer.

We currently assume 25 to be the Pm value without any parsing.
To allow support for further DEC private modes, have the DECSET/DECRST
handling code not ignore the Pm value.

No functional change expected as we have no barebox command that emits
any private mode other than 25.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index ad3c66b75737..fb6a7d3e5809 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -602,11 +602,13 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		break;
 	case 'h':
 		/* suffix for vt100 "[?25h" */
-		switch (priv->csi_cmd) {
-		case '?': /* cursor visible */
+		if (priv->csi_cmd != '?')
+			break;
+		pos = simple_strtoul(priv->csi + 1, NULL, 10);
+		switch (pos) {
+		case 25: /* cursor visible */
 			if (!(priv->cur.flags & HIDE_CURSOR))
 				break;
-
 			priv->cur.flags &= ~HIDE_CURSOR;
 			/* show cursor now */
 			toggle_cursor_visibility(priv);
@@ -615,10 +617,13 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		break;
 	case 'l':
 		/* suffix for vt100 "[?25l" */
-		switch (priv->csi_cmd) {
-		case '?': /* cursor invisible */
-			/* hide cursor now */
+		if (priv->csi_cmd != '?')
+			break;
+		pos = simple_strtoul(priv->csi + 1, NULL, 10);
+		switch (pos) {
+		case 25: /* cursor invisible */
 			toggle_cursor_visibility(priv);
+			/* hide cursor now */
 			priv->cur.flags |= HIDE_CURSOR;
 			return true;
 		}
-- 
2.47.3



