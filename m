Delivery-date: Wed, 31 Jul 2024 09:14:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xz-004j1k-1i
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xx-0006gW-JH
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OROoJi/4akH4CjV4OICirT8+jyoEeiIFTUuhUZSg6DE=; b=AHhN7zWrP3dfDmFSrsZL94RLTt
	22vPLWu49+6kCPupDZBg8C2VlkGem4wM40Azq3MOU4+Wo39MuHIDMiQ2I72ZAuFnno9B+C9uEq1TN
	SuWHeUyhw/J/PsNwU5/cmO2NUN0hIiXCWZ3MapnrtNgTIygR6nAsIcC2e6OkUb+2id/XxSh0n1UPb
	8b/mRU544Vb0DodfWVa6uEZLJpuBx8tZJe/hJhZ958Wdl+8aGVOjVmZHjq1EzoxqLM3Ht08OPjiTU
	l4q+KMqxDwCxVhy/Z3oykph9yD+DEhuej7LWxpokuaCdzHP3JuO7Vq47jeCXDYZcGwiQa1Y0Tj+TW
	tI0r/mkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XW-000000004yT-3IcJ;
	Wed, 31 Jul 2024 07:14:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XP-000000004uQ-23XD
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XO-0006Lh-3D; Wed, 31 Jul 2024 09:14:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-003T7B-MJ; Wed, 31 Jul 2024 09:14:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-00AjVP-1u;
	Wed, 31 Jul 2024 09:14:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 09:14:12 +0200
Message-Id: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001419_561554_8473A6E9 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] console: provide veprintf and eputchar helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For easy printing to stderr, provide helpers that can be used instead of
vprintf and eputchar, respectively. To make them generally usable, also
provide stubs for PBL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 19 ++++++++++++++-----
 include/stdio.h         | 10 +++++++++-
 2 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 0113a6413850..a8527eee1e5a 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -361,23 +361,32 @@ EXPORT_SYMBOL(of_console_get_by_alias);
 
 #endif /* !CONFIG_CONSOLE_NONE */
 
-int dprintf(int file, const char *fmt, ...)
+int vdprintf(int file, const char *fmt, va_list args)
 {
-	va_list args;
 	char printbuffer[CFG_PBSIZE];
 
-	va_start(args, fmt);
-
 	/*
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
 	vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
-	va_end(args);
 
 	/* Print the string */
 	return dputs(file, printbuffer);
 }
+EXPORT_SYMBOL(vdprintf);
+
+int dprintf(int file, const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = vdprintf(file, fmt, args);
+	va_end(args);
+
+	return i;
+}
 EXPORT_SYMBOL(dprintf);
 
 int dputs(int fd, const char *s)
diff --git a/include/stdio.h b/include/stdio.h
index d53f29039376..095e9b0a1d42 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -95,14 +95,22 @@ static inline void putchar(char c)
  * FILE based functions
  */
 
-/* stderr */
+#ifdef __PBL__
+#define eprintf			printf
+#define veprintf		vprintf
+#define eputchar		putchar
+#else
 #define eprintf(fmt,args...)	dprintf(STDERR_FILENO, fmt ,##args)
+#define veprintf(fmt,args)	vdprintf(STDERR_FILENO, fmt, args)
+#define eputchar(ch)		dputc(STDERR_FILENO, ch)
+#endif
 
 #define STDIN_FILENO		0
 #define STDOUT_FILENO		1
 #define STDERR_FILENO		2
 #define MAX_FILES	128
 
+int vdprintf(int fd, const char *fmt, va_list args) ;
 int dprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int dputs(int file, const char *s);
 int dputc(int file, const char c);
-- 
2.39.2



