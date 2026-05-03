Delivery-date: Sun, 03 May 2026 10:45:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRx-000U5B-24
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRs-0004KZ-6A
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VzMO6ttA8rvsbflFkIwSEZuaDu25LsylZKARpztQHT0=; b=Uaa115kbtftD6d57Tv9sZhljYd
	WmA5ETNGmC/ygyTMJA1Og6Nla8TNPW0giQNS/J557sNrTsb0nJ1LQKgG4eUVbBU1aOlnW26ZaLp+u
	NVpmi7x5v9tUoDYugVBYAdDQzytiNTMTeVEQEZXvrnc0RVcyf4VIQF43RWJDcUQe92gpevDuBZkMO
	BYSL9RLgQqLdJ96k/h+9WwzBCsyDaJew12vtVqhYVJ5+tkBwLgMQfLxcZRXZo52q4LR9wO5mcd9Ns
	kkuGasK5mJjs9DwWV8uAh4GbEdC2s92Ou4T69MnK8m3MshRp2mnv9RNwc4Q8Z+i+vBgSIomV304gQ
	RL9SEnLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRJ-0000000Aepq-3eSx;
	Sun, 03 May 2026 08:44:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRG-0000000Aelv-1jO3
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRE-0003oP-Ng; Sun, 03 May 2026 10:44:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:03 +0200
Message-ID: <20260503084430.2765761-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014434_517292_0E97A6A6 
X-CRM114-Status: GOOD (  12.39  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 01/20] fbconsole: remove incomplete CSI_CNT state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DEC private sequences use '?' as a parameter prefix byte (e.g.  ESC[?25h
to show the cursor).

The CSI state machine treats any non-digit, non-separator as a final
byte and dispatches fbc_parse_csi(), but '?' is only a prefix with
the real final byte ('h' or 'l') following later.

fbc_parse_csi() handles this by recording '?' in csi_cmd and
transitioning to CSI_CNT, which resumes CSI parameter accumulation
for the digits and final byte that follow.

This introduces a subtle bug: The character directly after the ? is not
saved into the priv->csi buffer. This didn't matter so far, because we
only handle h and l without regard to the number before it.

By simplifying the code and removing that extra state, we also fix this
bug by not having that incomplete CSI_CNT state in-between.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 30 +++++++++---------------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 7946d013b24d..60e9783266b6 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -17,7 +17,6 @@ enum state_t {
 	LIT,				/* Literal input */
 	ESC,				/* Start of escape sequence */
 	CSI,				/* Reading arguments in "CSI Pn ;...*/
-	CSI_CNT,
 };
 
 enum fbconsole_rotation {
@@ -555,10 +554,6 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 	case 'm':
 		fbc_parse_colors(priv);
 		return;
-	case '?': /* vt100: show/hide cursor */
-		priv->csi_cmd = last;
-		priv->state = CSI_CNT;
-		return;
 	case 'h':
 		/* suffix for vt100 "[?25h" */
 		switch (priv->csi_cmd) {
@@ -674,29 +669,22 @@ static void fbc_putc(struct console_device *cdev, char c)
 		}
 
 		switch (c) {
-		case '0':
-		case '1':
-		case '2':
-		case '3':
-		case '4':
-		case '5':
-		case '6':
-		case '7':
-		case '8':
-		case '9':
+		case '?':
+			/* DEC private sequences use '?' as a parameter prefix byte.
+			 * Record '?' in csi_cmd and continue CSI parameter
+			 * accumulation for digits and the final byte that follows.
+			 */
+			priv->csi_cmd = c;
+			break;
+		case '0' ... '9':
 		case ';':
 		case ':':
 			break;
 		default:
 			fbc_parse_csi(priv);
-			if (priv->state != CSI_CNT)
-				priv->state = LIT;
+			priv->state = LIT;
 		}
 		break;
-	case CSI_CNT:
-		priv->state = CSI;
-		break;
-
 	}
 	priv->in_console = 0;
 
-- 
2.47.3



