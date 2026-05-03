Delivery-date: Sun, 03 May 2026 10:45:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSC-000UAz-0P
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-0004er-CF
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M1/8FvDlxo4rQ8lRB0RLAGdrRJftu41a0+bwQpXqG+0=; b=L6FK5X6n8dUN91grc9k3PEG0aN
	2q2RDCv9Mm/lqoDQGJOZ+OQ5ZZf3sscB1nC2zVy2/LxOWXjHqtH6HpBJbr1bGnAAVgDED1mLmmDNx
	1kKHBmUfjaS5/VDgUnLD/d7/KRj/9SzKE5zoR+6miaOOw5Nwzd3igatEwLIa7hA2zAKtKHi3Fu1lA
	FebdZt3yD8qFDmRZjgfwLlQOe9oAtLJecuqUrTHWhlauwtDqHDq9T8JwGIlnvDmEN8HyTQCVAqwgG
	YcRQyxH7neodb7lJaLTjjTrC1TqSiI5nOP20JDPag7l0+CD/xELFe9x+pFsDzLEZoJOdMI5GNKu0p
	pKxpJRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRT-0000000Af8X-1VUK;
	Sun, 03 May 2026 08:44:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRN-0000000AetM-0mFv
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRL-0003oP-Dj; Sun, 03 May 2026 10:44:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:19 +0200
Message-ID: <20260503084430.2765761-18-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014441_259828_0EC1B7CD 
X-CRM114-Status: GOOD (  18.59  )
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
Subject: [PATCH 17/20] fbconsole: implement VT100 deferred wrap (last column flag)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Quoting Mattias Engdegård's wraptest project[1]:

  DEC VT terminals use a mechanism sometimes called "soft-wrap",
  "deferred wrap" or the "VT100 glitch", mainly to permit full-length
  newline-terminated text lines to be written without being followed
  by unsightly blank lines. This is what complicates matters.

  The auto-wrap mode flag, DECAWM, controls whether text will wrap around
  the edges at all. It can be set and cleared using the DECSET and DECRST
  control sequences; terminal emulators usually get this bit right.
  In the following text, we assume that auto-wrap is enabled (DECAWM set).

  When the terminal receives a printing character and the cursor is in the
  rightmost column, what happens depends on the hidden Last Column Flag:

  - If the LCF is 0, then the character is drawn at the cursor position
    as usual, but instead of advancing the cursor afterwards, the LCF is
    set to 1.

  - If the LCF is 1, then the cursor is moved to the first column of the
    next line, scrolling if necessary. Then LCF is set to 0, the character
    is drawn, and the cursor advanced as usual.

  The Last Column flag starts out as 0 when the terminal is powered on.

Implement this into barebox, so full screen TUIs do not immediately roll
off their first line off the framebuffer console.

[1]: https://github.com/mattiase/wraptest

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 71e0778368ed..bed55de7571e 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -55,6 +55,8 @@ struct fbc_screen_state {
 #define SGR_ATTRIBUTES		(ANSI_FLAG_INVERT | ANSI_FLAG_BRIGHT)
 #define HIDE_CURSOR		(1 << 2)
 	unsigned flags;
+
+	bool pending_wrap;	/* deferred wrap: cursor at last column */
 };
 
 struct fbc_priv {
@@ -471,6 +473,7 @@ static void printchar(struct fbc_priv *priv, int c)
 	case '\007': /* bell: ignore */
 		break;
 	case '\b':
+		cur->pending_wrap = false;
 		if (cur->x > 0) {
 			cur->x--;
 		} else if (cur->y > 0) {
@@ -480,25 +483,47 @@ static void printchar(struct fbc_priv *priv, int c)
 		break;
 	case '\n':
 	case '\013': /* Vertical tab is the same as Line Feed */
+		cur->pending_wrap = false;
 		cur->y++;
 		break;
 
 	case '\r':
+		cur->pending_wrap = false;
 		cur->x = 0;
 		break;
 
 	case '\t':
+		cur->pending_wrap = false;
 		cur->x = (cur->x + 8) & ~0x3;
 		break;
 
 	default:
-		drawchar(priv, priv->cur.x, priv->cur.y, c);
+		/*
+		 * VT100 deferred wrap: if the previous character landed at
+		 * the last column, perform the wrap NOW before drawing the
+		 * next character.  This prevents a scroll from occurring
+		 * merely by writing to the bottom-right corner cell.
+		 */
+		if (cur->pending_wrap) {
+			cur->pending_wrap = false;
+			cur->x = 0;
+			cur->y++;
+
+			if (cur->y >= priv->rows) {
+				fb_scroll_up(priv);
+				cur->y = priv->rows - 1;
+			}
+		}
+
+		drawchar(priv, cur->x, cur->y, c);
 
 		cur->x++;
 		if (cur->x >= priv->cols) {
-			cur->y++;
-			cur->x = 0;
+			/* Defer the wrap to the next printable character */
+			cur->x = priv->cols - 1;
+			cur->pending_wrap = true;
 		}
+		break;
 	}
 
 	if (cur->y >= priv->rows) {
@@ -660,6 +685,7 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 		return true;
 	case 'H':
 		toggle_cursor_visibility(priv);
+		priv->cur.pending_wrap = false;
 
 		pos = simple_strtoul(priv->csi, &end, 10);
 		fbc_set_cursor_row(priv, pos - 1);
@@ -672,6 +698,7 @@ static bool fbc_parse_csi(struct fbc_priv *priv)
 	case 'A' ... 'D': {
 		pos = simple_strtoul(priv->csi, &end, 10) ?: 1;
 		toggle_cursor_visibility(priv);
+		priv->cur.pending_wrap = false;
 
 		switch (last) {
 		case 'A': /* cursor up */
-- 
2.47.3



