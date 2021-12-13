Delivery-date: Mon, 13 Dec 2021 22:13:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsdJ-005gHA-LU
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:13:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsdH-0004Pw-Qv
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:13:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEVl+TdTq+TPFqDEEMCLchbuFbbIFbJ94daC4AqUPSk=; b=gJstFcr3lz+YrZ
	i/nRldSCI5E3ZuDXy3POGJzbmj0bUFB56ok1SX1+381bcm//Beeruk53BvT+feNP7hrYy4k0b6rNi
	zVO2zusc7BA2datBaWsVMD3MWBGJwNAyo7FY7M+QON7l5Z9/23p1ojE9Cev7n7di+R9SvfSEIHE2n
	q59KvlNjThymFkC2jCUdlmvvChkvVQKe3V6vKIV97KjsnZV8/cpAvdCAtOVmDS2f/Twqd7/b5T4ok
	MWfTA95HnxjEmAZ7JAhx2TYGloD5FlLKhKKC18o8mIGVgvKkFIgEj7F4ElXDw0x/RlOCVppEZN/0i
	AGu6HBKG2JBBtS31dTAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsbt-00BQ9R-N2; Mon, 13 Dec 2021 21:11:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZU-00BOum-Ex
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002T6-2N; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpO-BQ; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:58 +0100
Message-Id: <20211213210905.3399551-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130920_585326_BBA6813C 
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
Subject: [PATCH 18/25] efi-stdio: Implement setting cursor visibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sequence "\b[?25h" makes the cursor visible and "\b[?25l" makes it
invisible. Implement support for this sequence.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 5364d02034..3f99ef5d97 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -210,7 +210,7 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 	int arg0 = -1, arg1 = -1, arg2 = -1;
 	char *buf;
 
-	endp = strpbrk(inp, "ABCDEFGHJKmrn");
+	endp = strpbrk(inp, "ABCDEFGHJKmrnhl");
 	if (!endp)
 		return 0;
 
@@ -226,6 +226,8 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 			if (*e == ';')
 				arg2 = simple_strtoul(e + 1, &e, 10);
 		}
+	} else if (*inp == '?') {
+		arg0 = simple_strtoul(inp + 1, NULL, 10);
 	}
 
 	switch (*endp) {
@@ -283,6 +285,15 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 			free(buf);
 			break;
 		}
+		break;
+	case 'h':
+		if (*inp == '?' && arg0 == 25)
+			priv->out->enable_cursor(priv->out, true);
+		break;
+	case 'l':
+		if (*inp == '?' && arg0 == 25)
+			priv->out->enable_cursor(priv->out, false);
+		break;
 	}
 
 	return retlen;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

