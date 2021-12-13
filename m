Delivery-date: Mon, 13 Dec 2021 22:11:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbc-005gBD-9t
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbZ-0003SJ-6y
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICvp0sxcOaRr7vf2O/SzxnfUCLYB+nntaijMkWhy/8Y=; b=h/w1leHikhuD+p
	A+N0I1aBBHy9IAi9/ebWo4PDN9JG0zfoeLdQr6V2l+PmsQzKMpdwzaz/LolqTkCIcDfs+T3IpRKy4
	UMxx1yUh/4ueYKU5pex1mA1antXG5Hx4wfsNSKg+FaR34WMbDz9dqScborVL4NAeHvxascCwDZwKs
	T5HyBPeLbYcM//euGCQi97ugU+PCsGgFjx/NuqhDL3x4Ukf+7xPpHi8oAcHiL5vTowXQqoJ6st/8O
	q9pnJEkmpbw8/uu3/HtRTkKEppEjMe7ve/yHtn+HdGuB6E23Ul7RhOn7qX8JtgfALHgED+xWlpUkS
	/3zt7oAVA+YHEAB/aB6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsaB-00BPIc-3P; Mon, 13 Dec 2021 21:10:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoc-Hx
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002T5-TZ; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpL-B6; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:57 +0100
Message-Id: <20211213210905.3399551-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_700950_E1CF8E89 
X-CRM114-Status: GOOD (  11.88  )
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
Subject: [PATCH 17/25] efi-stdio: implement getting the cursor position
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

the 'sedit' command uses "\e[6n" to retrieve the screen size. Implement
this in the efi-stdio driver to make this work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 0ba8d3f6c0..5364d02034 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -206,10 +206,11 @@ static void set_fg_bg_colors(struct efi_console_priv *priv)
 static int efi_process_square_bracket(struct efi_console_priv *priv, const char *inp)
 {
 	char *endp;
-	int retlen;
+	int n, retlen;
 	int arg0 = -1, arg1 = -1, arg2 = -1;
+	char *buf;
 
-	endp = strpbrk(inp, "ABCDEFGHJKmr");
+	endp = strpbrk(inp, "ABCDEFGHJKmrn");
 	if (!endp)
 		return 0;
 
@@ -273,6 +274,15 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 			break;
 		}
 		break;
+	case 'n':
+		switch (arg0) {
+		case 6:
+			n = asprintf(&buf, "\033[%d;%dR", priv->out->mode->cursor_row + 1,
+				priv->out->mode->cursor_column + 1);
+			kfifo_put(priv->inputbuffer, buf, n);
+			free(buf);
+			break;
+		}
 	}
 
 	return retlen;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

