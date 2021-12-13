Delivery-date: Mon, 13 Dec 2021 22:11:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbO-005g9p-3u
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbL-0003K3-Sj
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQzeRbVHtOXHZHzhplhQCeuB+4bBPLQEuOy9iJLz7ms=; b=FfuZreCBjR/oaH
	kBJgBpO0WyRRQ521WxLPv9synDuDuE7vTR21nrTSWcVXxPs1+ZHPWCjvvKqJ94Oh6As5ixJ0hISZx
	N2XWTTHLgSl0VjDjCbwXZThW2LV55wvx4KCF0TTjfPE07ghl+psAccQD/sUmGvXVojbl2YghHjR/x
	SnSBoVJb3oLh/WM4XtWScqr3yhk0WA7GF5m9cALt4OnZyNiuBmHu4RSZ+cbfkuCjPIAO4RFdx2sSu
	zXE+RJsVZ1w1qBFYD4t0ifotgjFYs2QfXZ0DtjWfM2BnUmXqFq+kZd2844fA9xUYGJ8+kVNUOu2Sy
	WXp23LDsI29KjStZOclQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZg-00BOyy-P4; Mon, 13 Dec 2021 21:09:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoX-9s
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002T1-Rk; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGp9-9E; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:53 +0100
Message-Id: <20211213210905.3399551-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_423220_8732D256 
X-CRM114-Status: GOOD (  11.75  )
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
Subject: [PATCH 13/25] efi-stdio: Implement efi_console_putc() using
 efi_console_puts()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current efi_console_putc() implementation bypasses the special
character handling. Fix that by using efi_console_puts() for the
implemenation of efi_console_putc().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index d99eca9d5e..d512cc3e01 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -160,17 +160,6 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
 	return xlate_keypress(&kd.key);
 }
 
-static void efi_console_putc(struct console_device *cdev, char c)
-{
-	uint16_t str[2] = {};
-	struct efi_console_priv *priv = to_efi(cdev);
-	struct efi_simple_text_output_protocol *con_out = priv->out;
-
-	str[0] = c;
-
-	con_out->output_string(con_out, str);
-}
-
 static void clear_to_eol(struct efi_console_priv *priv)
 {
 	int pos = priv->out->mode->cursor_column;
@@ -352,6 +341,11 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
 	return nbytes;
 }
 
+static void efi_console_putc(struct console_device *cdev, char c)
+{
+	efi_console_puts(cdev, &c, 1);
+}
+
 static int efi_console_tstc(struct console_device *cdev)
 {
 	struct efi_console_priv *priv = to_efi(cdev);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

