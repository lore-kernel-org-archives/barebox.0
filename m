Delivery-date: Mon, 13 Dec 2021 22:11:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbe-005gC2-NX
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbb-0003TW-BS
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nF1VmGsnYvrYBRm2jOcywDkRSe6IGx+8/lgQiqlG40Y=; b=gsucMl6yG+Wodu
	2AvslwVs0K+WaIJ4QZaQ77HnnBharftDrfxZfjog7EChuclJT4HKN8fpe/kybK8WOWeOGnuDZxWfR
	o6VPr4b+27o/EzrP44229Lc1nGXM6UZ2motaxeuc5hCAs7n3hVQI6DKAaQBfAeViDEvLeJbFDRyPh
	f36FJVMBnRt/drGDFy1GXGfLSmat5pzaSHwxhyWUBspOU34OZrOKYO+47ImNyxnE8L8QeY5v7VyHj
	X7DXiZGUBoGlMqP3UcVwKPtzNkqhUlHq3RX1O4TiPTl9LMdS0CCPTUYx+aOFGXMpquHaMK6UVTogx
	tCV127nmI+ObXxtR0AbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsaF-00BPMc-6j; Mon, 13 Dec 2021 21:10:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoe-Gw
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002T3-TY; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpF-AC; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:55 +0100
Message-Id: <20211213210905.3399551-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_692484_A452F43A 
X-CRM114-Status: GOOD (  15.02  )
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
Subject: [PATCH 15/25] efi-stdio: implement input buffering with a kfifo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The efi-stdio tstc() implementation needs buffering an input character
in order to return that character later in getc(). To implement
retrieving the current cursor position later we'll have to buffer more
than only a single character, so re-implement input buffering with a
kfifo.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index beef911a16..dacdb74934 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -14,6 +14,7 @@
 #include <readkey.h>
 #include <linux/ctype.h>
 #include <efi/efi.h>
+#include <kfifo.h>
 #include <efi/efi-device.h>
 #include "efi-stdio.h"
 
@@ -63,10 +64,11 @@ struct efi_console_priv {
 	struct efi_simple_input_interface *in;
 	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device cdev;
-	int lastkey;
 	u16 efi_console_buffer[CONFIG_CBSIZE + 1];
 	int pos;
 
+	struct kfifo *inputbuffer;
+
 	unsigned long columns, rows;
 
 	int fg;
@@ -358,14 +360,14 @@ static int efi_console_tstc(struct console_device *cdev)
 	struct efi_console_priv *priv = to_efi(cdev);
 	int key;
 
-	if (priv->lastkey > 0)
+	if (kfifo_len(priv->inputbuffer))
 		return 1;
 
 	key = efi_read_key(priv, 0);
 	if (key < 0)
 		return 0;
 
-	priv->lastkey = key;
+	kfifo_putc(priv->inputbuffer, key);
 
 	return 1;
 }
@@ -373,13 +375,10 @@ static int efi_console_tstc(struct console_device *cdev)
 static int efi_console_getc(struct console_device *cdev)
 {
 	struct efi_console_priv *priv = to_efi(cdev);
-	int key;
+	unsigned char c;
 
-	if (priv->lastkey > 0) {
-		key = priv->lastkey;
-		priv->lastkey = -1;
-		return key;
-	}
+	if (!kfifo_getc(priv->inputbuffer, &c))
+		return c;
 
 	return efi_read_key(priv, 1);
 }
@@ -424,6 +423,10 @@ static int efi_console_probe(struct device_d *dev)
 	priv->out = efi_sys_table->con_out;
 	priv->in = efi_sys_table->con_in;
 
+	priv->inputbuffer = kfifo_alloc(128);
+	if (!priv->inputbuffer)
+		return -ENOMEM;
+
 	efiret = BS->open_protocol((void *)efi_sys_table->con_in_handle,
 			     &inex_guid,
 			     (void **)&inex,
@@ -454,8 +457,6 @@ static int efi_console_probe(struct device_d *dev)
 	cdev->putc = efi_console_putc;
 	cdev->puts = efi_console_puts;
 
-	priv->lastkey = -1;
-
 	return console_register(cdev);
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

