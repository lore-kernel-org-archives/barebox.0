Delivery-date: Thu, 26 Feb 2026 12:08:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvZEP-005rSu-1f
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 12:08:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvZEP-0000Ws-SS
	for lore@pengutronix.de; Thu, 26 Feb 2026 12:08:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PgExKjVSogSU48wJL4smLF21t0TtJA7gbe/Pbc4bst4=; b=OTnye6RDUJiVYS9/GEnV3IzyFJ
	3Wh6jUtQFe70BRj2j44T3Wp9R6rVDyApa524CPSJ8Gd/2OzyHk5IMKH09fHxE/t+KH6WjjEx/UM77
	KK1XOAei9zCgXGvsgXZcK6Bd3l2CqOE+v73I+9dF59IYr5cRGAhUVFmW+NuTEYGukTJlTRBjJnu4G
	ogf/qemtwrxcIKM/c9AliDaSRlOQSftv+SPTWMGa+1HH7Hx9eEEcE36VJbFtzn8Kez27KUnt95Pjk
	Ew0rAFdG9glbtCHww6DJSO1d+fFefM6BoCxkmEOSL5c/xMw0CoDV/QmMIN8sv8y/IP8nl+ref4kHz
	KlbR9BnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvZDw-00000005zrh-1XjM;
	Thu, 26 Feb 2026 11:08:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvZDt-00000005zrG-1qkL
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 11:08:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDr-0000J7-Sn; Thu, 26 Feb 2026 12:07:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDq-002iXs-17;
	Thu, 26 Feb 2026 12:07:59 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvZDr-000000027Un-2VG0;
	Thu, 26 Feb 2026 12:07:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Feb 2026 12:07:57 +0100
Message-ID: <20260226110758.505072-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_030801_480011_C1F9DCFB 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] pbl: console: implement vprintf()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

vprintf() can be used to implement printf() which is done in this patch,
but will also be usable for panic() in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/console.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/pbl/console.c b/pbl/console.c
index 6665232014..f2e7b3a20e 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -56,18 +56,32 @@ int console_puts(unsigned int ch, const char *str)
 	return n;
 }
 
+int vprintf(const char *fmt, va_list args)
+{
+	int i;
+	char printbuffer[CFG_PBSIZE];
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
+
+	/* Print the string */
+	console_puts(CONSOLE_STDOUT, printbuffer);
+
+	return i;
+}
+
 int printf(const char *fmt, ...)
 {
 	va_list args;
 	uint i;
-	char printbuffer[CFG_PBSIZE];
 
 	va_start(args, fmt);
-	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
+	i = vprintf(fmt, args);
 	va_end(args);
 
-	console_puts(CONSOLE_STDOUT, printbuffer);
-
 	return i;
 }
 
-- 
2.47.3



