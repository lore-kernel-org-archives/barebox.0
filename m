Delivery-date: Mon, 13 Dec 2021 22:12:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwscM-005gEe-Dv
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:12:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwscK-0003wB-FV
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfsG0ftcic6Omwbyj6WRUwnrp7UMZnPQE00Yb+2oTlY=; b=LUE88ibJNC86Sa
	gGpoQJbcWF5O3LmK+YprNfE9GF7nNwY+sUNnL/bcpm1QywFVOquFaWeQpIzp6qhtBljXoi9dX6j7l
	qSR/hUr6ll0qauaHJUhcsR2PAfVZ/RLEMjOpdB67DozUkZbFSVPz2pUWYa2men8s/7sbOdDpR1XwZ
	E5JJB5TWvSHHt+fcgz4AtdJf6Ip8ZES/aL7TYakbN+FuI/q2pCSzFzam1vi+usjTHts7VApWjWrdo
	d60VybNusVTrti/DwlIjGkDqDM9s6khRPI2HHVC6BCgd1AghWAXLZEGVEA2nb+K5+ve90yoNwyCc3
	BSjLLfaNhEWL154Iwr+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsak-00BPfV-Sb; Mon, 13 Dec 2021 21:10:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZU-00BOui-AL
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002T0-Ro; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGp6-8q; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:52 +0100
Message-Id: <20211213210905.3399551-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130920_394681_66BB6ECA 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH 12/25] efi-stdio: Fix tab printing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tabs are silently ignored by at least some UEFI instances. Replace them
with spaces in the output.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 9cc2ca4196..d99eca9d5e 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -320,7 +320,7 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
 			    size_t nbytes)
 {
 	struct efi_console_priv *priv = to_efi(cdev);
-	int pos = 0;
+	int n, pos = 0;
 
 	while (pos < nbytes) {
 		switch (s[pos]) {
@@ -333,6 +333,13 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
 			efi_console_add_char(priv, '\n');
 			pos++;
 			break;
+		case '\t':
+			efi_console_flush(priv);
+			n = 8 - priv->out->mode->cursor_column % 8;
+			while (n--)
+				efi_console_add_char(priv, ' ');
+			pos++;
+			break;
 		default:
 			efi_console_add_char(priv, s[pos]);
 			pos++;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

