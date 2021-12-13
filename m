Delivery-date: Mon, 13 Dec 2021 22:14:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwseA-005gJI-Ds
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:14:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwse8-0004YV-EA
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:14:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ae1cIvnSxTxtPBpBdZH0QBqkHPzsBOxlccNhHYr4U4=; b=Jd3AiQXQmnPfER
	EbPdOj03AF18dV2c8aERPdsNQudG5uHf0hbZgwy6XMhtqu1QMxoAliqDbO+27ObmHikqtX+rcPJID
	3x6i2aoZq5+rdo6tooRFSpOiKe6gEeLjAXLJF2ClS6dPq4Wn60hPgE/bYBHzSC5MaFsg/IdyrakwH
	j0XjP1VoRV36ezH8weoccV3F2SocUphIXF64AXLPFCqzCT3zQytZAPTGl3pOAByA3FCh0ntQbsiuE
	uYA0cCwDvE1fpbn8gbFdonbDWi3jx7DNgdJhnFTsQj5HJsf6W2zh81m+G8H4Dzgn741fcsbmSMIPB
	pSKIuocZmdtKm81FI7GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwscZ-00BQsI-Hv; Mon, 13 Dec 2021 21:12:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZa-00BOxX-Ur
 for barebox@bombadil.infradead.org; Mon, 13 Dec 2021 21:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mcGpFK+s3mePmpOHWlVctgwf3OwTxvbkmfZuah4j1Ow=; b=Xl44KBs5OQDA1E7zt7R6wDjWqV
 aKI8F8I5jVyvtdVeChEmbD9zu+RJiRXCTrY6+zLdqymqa3HIfFbMqO529aFDnJs2W1/7GVuRfaz7T
 WjpKjz5cnR7B0D/fKZX2EoyeElbiGGYLgOio3rSwV7jrK19bCYtIWVCIZw9/aCNn8L0b0nYNDJisH
 2rQMSvC2BRHqnN+BrZDNt6JQ5Frqw2meUmCdqTE8ZyJbynPgpo1mKVD58cOuoii1LwRlaVJ/oKS3U
 Xf8FVJY0o/R6oTtd3Nb+fW1uhvPl/PFGPOhn3jZgOfDwdpfiXh0huB8GOxFNsKk6QLM3J30vjoTxO
 IN0GnTCg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZW-001BcV-2m
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002T7-3m; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpR-Bx; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:59 +0100
Message-Id: <20211213210905.3399551-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_210922_324537_46D6A82F 
X-CRM114-Status: GOOD (  18.53  )
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
Subject: [PATCH 19/25] efi-stdio: Support different text modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

the EFI simple text output protocol supports different text modes. This
patch adds support for these modes using a device parameter attached to
the console device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 64 ++++++++++++++++++++++++++------------
 1 file changed, 44 insertions(+), 20 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 3f99ef5d97..7f348f82af 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -75,6 +75,11 @@ struct efi_console_priv {
 	int bg;
 	bool inverse;
 	s16 *blank_line;
+
+	struct param_d *param_mode;
+	const char **mode_names;
+	int *mode_num;
+	unsigned int var_mode;
 };
 
 static inline struct efi_console_priv *to_efi(struct console_device *cdev)
@@ -407,29 +412,45 @@ static int efi_console_getc(struct console_device *cdev)
 	return efi_read_key(priv, 1);
 }
 
+static int efi_console_set_mode(struct param_d *param, void *p)
+{
+	struct efi_console_priv *priv = p;
+
+	priv->out->set_mode(priv->out, priv->mode_num[priv->var_mode]);
+
+	priv->out->query_mode(priv->out, priv->out->mode->mode,
+			      &priv->columns, &priv->rows);
+	return 0;
+}
+
 static void efi_set_mode(struct efi_console_priv *priv)
 {
-#if 0
 	int i;
-	unsigned long rows, columns, best = 0, mode = 0;
+	unsigned long rows, columns;
+	int n = 0;
 	efi_status_t efiret;
 
+	priv->mode_names = xzalloc(priv->out->mode->max_mode * sizeof(*priv->mode_names));
+	priv->mode_num = xzalloc(priv->out->mode->max_mode * sizeof(*priv->mode_num));
+
+	priv->out->query_mode(priv->out, priv->out->mode->mode, &priv->columns, &priv->rows);
+
 	for (i = 0; i < priv->out->mode->max_mode; i++) {
-		priv->out->query_mode(priv->out, i, &columns, &rows);
-		printf("%d: %ld %ld\n", i, columns, rows);
-		if (rows * columns > best) {
-			best = rows * columns;
-			mode = i;
-		}
+		efiret = priv->out->query_mode(priv->out, i, &columns, &rows);
+		if (EFI_ERROR(efiret))
+			continue;
+
+		if (columns == priv->columns && rows == priv->rows)
+			priv->var_mode = n;
+
+		priv->mode_names[n] = basprintf("%ldx%ld", columns, rows);
+		priv->mode_num[n] = i;
+		n++;
 	}
 
-	/*
-	 * Setting the mode doesn't work as expected. set_mode succeeds, but
-	 * the graphics resolution is not changed.
-	 */
-	priv->out->set_mode(priv->out, mode);
-#endif
-	priv->out->query_mode(priv->out, priv->out->mode->mode, &priv->columns, &priv->rows);
+	priv->param_mode = dev_add_param_enum(&priv->cdev.class_dev, "mode",
+					efi_console_set_mode, NULL, &priv->var_mode,
+				       priv->mode_names, n, priv);
 }
 
 static int efi_console_probe(struct device_d *dev)
@@ -439,8 +460,7 @@ static int efi_console_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct efi_console_priv *priv;
 	efi_status_t efiret;
-
-	int i;
+	int i, ret;
 
 	priv = xzalloc(sizeof(*priv));
 
@@ -466,8 +486,6 @@ static int efi_console_probe(struct device_d *dev)
 	priv->fg = EFI_LIGHTGRAY;
 	priv->bg = EFI_BLACK;
 
-	efi_set_mode(priv);
-
 	priv->out->enable_cursor(priv->out, 1);
 
 	priv->blank_line = xzalloc((priv->columns + 1) * sizeof(s16));
@@ -481,7 +499,13 @@ static int efi_console_probe(struct device_d *dev)
 	cdev->putc = efi_console_putc;
 	cdev->puts = efi_console_puts;
 
-	return console_register(cdev);
+	ret = console_register(cdev);
+	if (ret)
+		return ret;
+
+	efi_set_mode(priv);
+
+	return 0;
 }
 
 static struct driver_d efi_console_driver = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

