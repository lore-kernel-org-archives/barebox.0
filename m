Delivery-date: Mon, 13 Dec 2021 22:11:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbx-005gDQ-7I
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbu-0003fw-Hy
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vhrsvPost60Fb2jo2lU4q7VD9sMC+B8ZbmNsHwCkP8=; b=kKof7YiUXVjIXo
	mJndncu2xC2fvXmtRrNBSKRnY899Zdoc2QB7a68DMExNLCJ6+n5Xj67d1C/VdWCBE1972P41SgxsO
	lMyk9Cm4FyOCDS2hEp4YwSi3KsPeyhiixfMp3gMnZ2THRLAfdW2V8QcpNkJ9vqXmFrLkDYKKoj2E6
	hYROAmonSrKyc6ERQu7h1azWM7KwcaUfVgS/aPP6V3g/zzeumK9nsaESZqCbO/nW8oifDXVOmylrA
	X3Kv9S63GCLq3vqf5HvMx0p4r+YHtS9oIhJqPViPo8/pzux2C1/chs/iLIUtsk1l9MXYOF4jM78WA
	wtNUobbULNaCnuiBzM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsaS-00BPTd-IY; Mon, 13 Dec 2021 21:10:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOod-HN
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002Sy-VV; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGp0-7v; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:50 +0100
Message-Id: <20211213210905.3399551-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_685744_F7DB06BE 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/25] efi-stdio: improve escape sequence parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of dispatching the escape sequences character by character,
parse the number arguments upfront and use them later. Also parse
background and foreground colours and also the inverse status
correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 155 +++++++++++++++++++++----------------
 1 file changed, 89 insertions(+), 66 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index c00c05b843..b3a49eeec8 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -68,7 +68,9 @@ struct efi_console_priv {
 
 	unsigned long columns, rows;
 
-	int current_color;
+	int fg;
+	int bg;
+	bool inverse;
 	s16 *blank_line;
 };
 
@@ -175,11 +177,45 @@ static void clear_to_eol(struct efi_console_priv *priv)
 	priv->out->output_string(priv->out, priv->blank_line + pos);
 }
 
+static int ansi_to_efi_color(int ansi)
+{
+	switch (ansi) {
+	case 30:
+		return EFI_BLACK;
+	case 31:
+		return EFI_RED;
+	case 32:
+		return EFI_GREEN;
+	case 33:
+		return EFI_YELLOW;
+	case 34:
+		return EFI_BLUE;
+	case 35:
+		return EFI_MAGENTA;
+	case 36:
+		return EFI_CYAN;
+	case 37:
+		return EFI_WHITE;
+	case 39:
+		return EFI_LIGHTGRAY;
+	}
+
+	return -1;
+}
+
+static void set_fg_bg_colors(struct efi_console_priv *priv)
+{
+	int fg = priv->inverse ? priv->bg : priv->fg;
+	int bg = priv->inverse ? priv->fg : priv->bg;
+
+	priv->out->set_attribute(priv->out, EFI_TEXT_ATTR(fg , bg));
+}
+
 static int efi_process_square_bracket(struct efi_console_priv *priv, const char *inp)
 {
-	int x, y;
 	char *endp;
 	int retlen;
+	int arg0 = -1, arg1 = -1, arg2 = -1;
 
 	endp = strpbrk(inp, "ABCDEFGHJKmr");
 	if (!endp)
@@ -189,73 +225,59 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 
 	inp++;
 
-	switch (*endp) {
-	case 'A':
-		/* Cursor up */
-	case 'B':
-		/* Cursor down */
-	case 'C':
-		/* Cursor right */
-	case 'D':
-		/* Cursor left */
-	case 'H':
-		/* home */
-	case 'F':
-		/* end */
-		return retlen;
-	case 'K':
-		clear_to_eol(priv);
-		return retlen;
-	}
-
-	if (*inp == '2' && *(inp + 1) == 'J') {
-		priv->out->clear_screen(priv->out);
-		return retlen;
-	}
-
-	if (*inp == '0' && *(inp + 1) == 'm') {
-		priv->out->set_attribute(priv->out,
-				EFI_TEXT_ATTR(EFI_WHITE, EFI_BLACK));
-		return retlen;
-	}
-
-	if (*inp == '7' && *(inp + 1) == 'm') {
-		priv->out->set_attribute(priv->out,
-				EFI_TEXT_ATTR(EFI_BLACK, priv->current_color));
-		return retlen;
-	}
-
-	if (*inp == '1' &&
-			*(inp + 1) == ';' &&
-			*(inp + 2) == '3' &&
-			*(inp + 3) &&
-			*(inp + 4) == 'm') {
-		int color;
-		switch (*(inp + 3)) {
-		case '1': color = EFI_RED; break;
-		case '4': color = EFI_BLUE; break;
-		case '2': color = EFI_GREEN; break;
-		case '6': color = EFI_CYAN; break;
-		case '3': color = EFI_YELLOW; break;
-		case '5': color = EFI_MAGENTA; break;
-		case '7': color = EFI_WHITE; break;
-		default: color = EFI_WHITE; break;
+	if (isdigit(*inp)) {
+		char *e;
+		arg0 = simple_strtoul(inp, &e, 10);
+		if (*e == ';') {
+			arg1 = simple_strtoul(e + 1, &e, 10);
+			if (*e == ';')
+				arg2 = simple_strtoul(e + 1, &e, 10);
 		}
-
-		priv->current_color = color;
-
-		priv->out->set_attribute(priv->out,
-				EFI_TEXT_ATTR(color, EFI_BLACK));
-		return retlen;
 	}
 
-	y = simple_strtoul(inp, &endp, 10);
-	if (*endp == ';') {
-		x = simple_strtoul(endp + 1, &endp, 10);
-		if (*endp == 'H') {
-			priv->out->set_cursor_position(priv->out, x - 1, y - 1);
-			return retlen;
+	switch (*endp) {
+	case 'K':
+		switch (arg0) {
+		case 0:
+		case -1:
+			clear_to_eol(priv);
+			break;
+		}
+		break;
+	case 'J':
+		switch (arg0) {
+		case 2:
+			priv->out->clear_screen(priv->out);
+			break;
+		}
+		break;
+	case 'H':
+		if (arg0 >= 0 && arg1 >= 0)
+			priv->out->set_cursor_position(priv->out, arg1 - 1, arg0 - 1);
+		break;
+	case 'm':
+		switch (arg0) {
+		case 0:
+			priv->inverse = false;
+			priv->fg = EFI_LIGHTGRAY;
+			priv->bg = EFI_BLACK;
+			set_fg_bg_colors(priv);
+			break;
+		case 7:
+			priv->inverse = true;
+			set_fg_bg_colors(priv);
+			break;
+		case 1:
+			priv->fg = ansi_to_efi_color(arg1);
+			if (priv->fg < 0)
+				priv->fg = EFI_LIGHTGRAY;
+			priv->bg = ansi_to_efi_color(arg2);
+			if (priv->bg < 0)
+				priv->bg = EFI_BLACK;
+			set_fg_bg_colors(priv);
+			break;
 		}
+		break;
 	}
 
 	return retlen;
@@ -388,7 +410,8 @@ static int efi_console_probe(struct device_d *dev)
 		dev_dbg(dev, "Using simple_text_input_ex_protocol\n");
 	}
 
-	priv->current_color = EFI_WHITE;
+	priv->fg = EFI_LIGHTGRAY;
+	priv->bg = EFI_BLACK;
 
 	efi_set_mode(priv);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

