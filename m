Delivery-date: Mon, 13 Dec 2021 22:11:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbM-005g8v-Ty
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbK-0003JH-Rn
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmP9EwFs8qmC8kaUHbSbxHPawiVG4UlDV6x4X6dAd6c=; b=JynUCLWpgfKtPv
	4OXRqIh81DMfcm8rgRPiaJpcB/1VQZYbVD55ghetB0TzYuLvKw9TAmtzHK7S5L0khSU8jPmkiBNYs
	JoioSzfPLcdnV7UOlBPQyY+6/aKtsiB+eBUYQ9aca+TxQY+uNvSSmfv/xbdNVAHixJ+V2FPgq5Hsy
	k0gVWXN4wZ09WYFfbuW55xFy0xg88J31hTJTj8DBVCJ/we42OR7+UQYy7NbM15IU+4AeGJ/uXg8j6
	hiE11NlccNaC3Q/xURjstWgm/PsoFudD02XPAQ/bk49JHZu2g/fIYBYNegrGsCK5W1uFuSagfL2N8
	HQksuEkKKhlzesR+horg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZb-00BOxD-6R; Mon, 13 Dec 2021 21:09:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoW-7I
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002Sx-PE; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGox-7T; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:49 +0100
Message-Id: <20211213210905.3399551-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_297486_E6B1DD9A 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: [PATCH 09/25] efi-stdio: fix escape sequence end detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we only correctly parse the escape sequence we know. Detect the
possible end characters of the escape sequence upfront so that we
at least consume the correct number of character, eventhough the escape
sequence might be unknown and ignored.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 0c804a5d97..c00c05b843 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -179,10 +179,17 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 {
 	int x, y;
 	char *endp;
+	int retlen;
+
+	endp = strpbrk(inp, "ABCDEFGHJKmr");
+	if (!endp)
+		return 0;
+
+	retlen = endp - inp + 1;
 
 	inp++;
 
-	switch (*inp) {
+	switch (*endp) {
 	case 'A':
 		/* Cursor up */
 	case 'B':
@@ -195,27 +202,27 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 		/* home */
 	case 'F':
 		/* end */
-		return 2;
+		return retlen;
 	case 'K':
 		clear_to_eol(priv);
-		return 2;
+		return retlen;
 	}
 
 	if (*inp == '2' && *(inp + 1) == 'J') {
 		priv->out->clear_screen(priv->out);
-		return 3;
+		return retlen;
 	}
 
 	if (*inp == '0' && *(inp + 1) == 'm') {
 		priv->out->set_attribute(priv->out,
 				EFI_TEXT_ATTR(EFI_WHITE, EFI_BLACK));
-		return 3;
+		return retlen;
 	}
 
 	if (*inp == '7' && *(inp + 1) == 'm') {
 		priv->out->set_attribute(priv->out,
 				EFI_TEXT_ATTR(EFI_BLACK, priv->current_color));
-		return 3;
+		return retlen;
 	}
 
 	if (*inp == '1' &&
@@ -239,7 +246,7 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 
 		priv->out->set_attribute(priv->out,
 				EFI_TEXT_ATTR(color, EFI_BLACK));
-		return 6;
+		return retlen;
 	}
 
 	y = simple_strtoul(inp, &endp, 10);
@@ -247,11 +254,11 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 		x = simple_strtoul(endp + 1, &endp, 10);
 		if (*endp == 'H') {
 			priv->out->set_cursor_position(priv->out, x - 1, y - 1);
-			return endp - inp + 2;
+			return retlen;
 		}
 	}
 
-	return 7;
+	return retlen;
 }
 
 static int efi_process_escape(struct efi_console_priv *priv, const char *inp)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

