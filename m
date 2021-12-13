Delivery-date: Mon, 13 Dec 2021 22:11:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbs-005gCs-4O
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbp-0003d4-CW
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6AULTeVmyYg82ChNiEaTXmHLvu7YRtKtnVB53ifEh4=; b=RIXR+9e6xCick6
	BmuNqubHtCULmeVV9CtPtCvWVXjo8YGKTUqTOce6dD3Wtfd2NSHiKpxU1Et1gwO1KUpnuZWDG2wk4
	RaO+We7rOm2V6fxWZR1RNM8RWyJFJi70guUiPicdZyFcXNgV3TOUQw7sXXcsx3boO/6wcTh/2h9dM
	fGEcf9xc1P4V2ndOp2TucHIWeZh8ALA96i6m/UohfnzNEclgktnkD6gozkSs/xRzCYaalQ6bXD2dg
	qekD8zzsKTYkGBuQFFsZ7sUZpKJ/xMGt31mF0a83P/qEqTwzFgC0CnS0WogJ5RZjkUrAYvFPu6Cke
	8vyraBsl+2FhWZCjyVUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsaK-00BPPW-LX; Mon, 13 Dec 2021 21:10:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOog-IS
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002Sz-UT; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGp3-8M; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:51 +0100
Message-Id: <20211213210905.3399551-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_740436_6B091620 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: [PATCH 11/25] efi-stdio: Fix out of bounds error in puts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In efi_console_puts we use 'nbytes' as counter to break out of iterating
over the input string. An escape sequence consumes more than 1 input
character, still nbytes is only decremented by one. This results in
iterating past the end of the input string once an escape sequence is
in the buffer.
This patch introduces efi_console_add_char() to write a character in the
buffer and efi_console_flush() to print out the current buffer. This
fixes the issue and also allows us to prevent writing past the end of
the internal output buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 60 +++++++++++++++++++++++++-------------
 1 file changed, 39 insertions(+), 21 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index b3a49eeec8..9cc2ca4196 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -64,7 +64,8 @@ struct efi_console_priv {
 	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device cdev;
 	int lastkey;
-	u16 efi_console_buffer[CONFIG_CBSIZE];
+	u16 efi_console_buffer[CONFIG_CBSIZE + 1];
+	int pos;
 
 	unsigned long columns, rows;
 
@@ -297,34 +298,51 @@ static int efi_process_escape(struct efi_console_priv *priv, const char *inp)
 	return 1;
 }
 
+static void efi_console_add_char(struct efi_console_priv *priv, int c)
+{
+	if (priv->pos >= CONFIG_CBSIZE)
+		return;
+
+	priv->efi_console_buffer[priv->pos] = c;
+	priv->pos++;
+}
+
+static void efi_console_flush(struct efi_console_priv *priv)
+{
+	priv->efi_console_buffer[priv->pos] = 0;
+
+	priv->out->output_string(priv->out, priv->efi_console_buffer);
+
+	priv->pos = 0;
+}
+
 static int efi_console_puts(struct console_device *cdev, const char *s,
 			    size_t nbytes)
 {
 	struct efi_console_priv *priv = to_efi(cdev);
-	int n = 0;
-
-	while (nbytes--) {
-		if (*s == 27) {
-			priv->efi_console_buffer[n] = 0;
-			priv->out->output_string(priv->out,
-					priv->efi_console_buffer);
-			n = 0;
-			s += efi_process_escape(priv, s);
-			continue;
-		}
+	int pos = 0;
 
-		if (*s == '\n')
-			priv->efi_console_buffer[n++] = '\r';
-		priv->efi_console_buffer[n] = *s;
-		s++;
-		n++;
+	while (pos < nbytes) {
+		switch (s[pos]) {
+		case 27:
+			efi_console_flush(priv);
+			pos += efi_process_escape(priv, s + pos);
+			break;
+		case '\n':
+			efi_console_add_char(priv, '\r');
+			efi_console_add_char(priv, '\n');
+			pos++;
+			break;
+		default:
+			efi_console_add_char(priv, s[pos]);
+			pos++;
+			break;
+		}
 	}
 
-	priv->efi_console_buffer[n] = 0;
-
-	priv->out->output_string(priv->out, priv->efi_console_buffer);
+	efi_console_flush(priv);
 
-	return n;
+	return nbytes;
 }
 
 static int efi_console_tstc(struct console_device *cdev)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

