Delivery-date: Fri, 30 Sep 2022 17:47:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIEA-001Xjs-VJ
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIE9-0001Eq-PC
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hPra9rnJxcpR7D7VVsN/e1u5ok8u2CLq+PvFfU/0wok=; b=HGq00THvTUq6YR7ZkIbMd+ISnd
	XrvAqRUcD9tHkVn6a+UbZsdxX44PslHMjwvLDTDw8Ogz92I0KLL/0IAd8cBP6fo15HyDA0TVefKNN
	IRa7cQmGMH2+vqlrYM1gKN1zbSGqg7E3Qy/Kx/lkAuFNy/74WZlbStilQBOfFzNXjxVWsxSHJ39X7
	xa4GpRQi8OeApmCOHOeuT7hipDm5WVhCZ5SF7m7OvoEgTMPpZ2dJ3ahDhbzbh+yrwneRFHtW80r4T
	X0MpqlkH4pCfo99siKFJTCfixmSSps8gYhK4wNl8kBJygYI26Qc5UAd4ky7J07TOQ5z219mVMfNxI
	8hXT/miw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeICk-00ALOP-VE; Fri, 30 Sep 2022 15:45:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI96-00AJ3t-Vn
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:41:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI95-0008N3-Mc; Fri, 30 Sep 2022 17:41:47 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI96-003pNp-GT; Fri, 30 Sep 2022 17:41:47 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI94-003AEj-FU; Fri, 30 Sep 2022 17:41:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:41:45 +0200
Message-Id: <20220930154145.754181-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_084149_063111_BFD71BE8 
X-CRM114-Status: GOOD (  13.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: console_common: output log messages to CONSOLE_STDERR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like U-Boot, barebox has two standard output streams:
CONSOLE_STDOUT and CONSOLE_STDERR in addition to the input stream
CONSOLE_STDIN.

>From a consumer view, the console.active device parameter allows
restricting which of these streams interact with a given console.

>From a provider view, only CONSOLE_STDOUT is ever used. dputs
dputc allow passing in CONSOLE_STDERR instead, but nothing in-tree
does so.

Change this by having all log messages (e.g. pr_debug or dev_err)
go to CONSOLE_STDERR. For nearly all systems that just use the default
of console.active="ioe" or "oe", there is no difference. But now
systems that use either "o" or "e" can use different console
devices for barebox log messages and for standard output by commands.
This is especially useful to debug interactive applications like edit
or for monitoring barebox debug messages during execution of payloads
when barebox acts as EFI loader.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 10 +++++-----
 pbl/console.c           |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 7bef74c54391..ca1dad0f159f 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -68,7 +68,7 @@ void log_clean(unsigned int limit)
 	}
 }
 
-static void print_colored_log_level(const int level)
+static void print_colored_log_level(unsigned int ch, const int level)
 {
 	if (!console_allow_color())
 		return;
@@ -77,7 +77,7 @@ static void print_colored_log_level(const int level)
 	if (!colored_log_level[level])
 		return;
 
-	puts(colored_log_level[level]);
+	console_puts(ch, colored_log_level[level]);
 }
 
 static void pr_puts(int level, const char *str)
@@ -112,8 +112,8 @@ nolog:
 	if (level > barebox_loglevel)
 		return;
 
-	print_colored_log_level(level);
-	puts(str);
+	print_colored_log_level(CONSOLE_STDERR, level);
+	console_puts(CONSOLE_STDERR, str);
 }
 
 int pr_print(int level, const char *fmt, ...)
@@ -217,7 +217,7 @@ void log_print(unsigned flags, unsigned levels)
 
 		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
 			       | BAREBOX_LOG_DIFF_TIME)))
-			print_colored_log_level(log->level);
+			print_colored_log_level(CONSOLE_STDOUT, log->level);
 
 		if (flags & BAREBOX_LOG_PRINT_RAW)
 			printf("<%i>", log->level);
diff --git a/pbl/console.c b/pbl/console.c
index fc8e8cdf1383..a147e2a19e49 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -39,9 +39,9 @@ int console_puts(unsigned int ch, const char *str)
 
 	while (*str) {
 		if (*str == '\n')
-			console_putc(CONSOLE_STDOUT, '\r');
+			console_putc(ch, '\r');
 
-		console_putc(CONSOLE_STDOUT, *str);
+		console_putc(ch, *str);
 		str++;
 		n++;
 	}
@@ -74,7 +74,7 @@ int pr_print(int level, const char *fmt, ...)
 	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 	va_end(args);
 
-	console_puts(CONSOLE_STDOUT, printbuffer);
+	console_puts(CONSOLE_STDERR, printbuffer);
 
 	return i;
 }
-- 
2.30.2



