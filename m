Delivery-date: Thu, 13 Mar 2025 07:42:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscHC-00DSKq-1q
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:42:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscHB-00062y-CW
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:42:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hdCAwXAoGIdsoiTb7hDB6PPJ4XRcsXgUHgHFxCsCrpk=; b=D8tSNedfrAPmCgdHegFwwtDTy2
	3imF+m/jLbbii3sH+zOWJfnvLwJHl1Gi2ud7tcOU7126KRTal60kPw3GLyqAgr2IkCCE8n82vXdTp
	KGHjy01kZ3uzaG8FgCRbh9K1JgYtU3cFe0fYX/xj0QWG+IS3HaU7WrtX/RgShS6PTy5S1SI4U9Q65
	UfDJgka6ZduacejM7LSWJFuRx7842RTSX0pBzHgeBPYMSoX/7U6TOYac8EcLoaVFxGmIEMBLnodrN
	jhrjAtHaeuQTfwcUNubI/1Lqd30fclQbzwqbmBEcp8ljrV5nv1/p7CHswXm443pSq8EqnqSw4sytr
	L5SzFeKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscGl-0000000AF9K-1VUX;
	Thu, 13 Mar 2025 06:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscGi-0000000AF8f-35dk
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:42:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGh-0005ui-7K; Thu, 13 Mar 2025 07:42:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGh-005UIX-07;
	Thu, 13 Mar 2025 07:42:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGg-000JH4-2t;
	Thu, 13 Mar 2025 07:42:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:42:09 +0100
Message-Id: <20250313064210.74011-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234212_799931_807B8314 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] vsprintf: make basprintf an alias of xasprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Less than 12% of all our basprintf callsites actually bother to check
for allocation failure. It's highly unlikely that barebox will be able
to function when the heap is so full that the usually small basprintf
requests fail.

Therefore, make basprintf an alias for xasprintf, so barebox panics on
OOM instead of possibly triggering undefined behavior.

Users doing big allocations with basprintf and wishing to handle their
failure should switch over to asprintf instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdio.h |  8 +++-----
 lib/vsprintf.c  | 17 -----------------
 2 files changed, 3 insertions(+), 22 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index c02d383d6bad..0e01a0e63a46 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -5,6 +5,7 @@
 #include <stdarg.h>
 #include <console.h>
 #include <printf.h>
+#include <xfuncs.h>
 
 /*
  * STDIO based functions (can always be used)
@@ -21,15 +22,10 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
 #if IN_PROPER || defined(CONFIG_PBL_CONSOLE)
-char *basprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
 #else
-static inline char *basprintf(const char *fmt, ...)
-{
-	return NULL;
-}
 static inline int asprintf(char **strp, const char *fmt, ...)
 {
 	return -1;
@@ -44,6 +40,8 @@ static inline int vasprintf(char **strp, const char *fmt, va_list ap)
 }
 #endif
 
+#define basprintf xasprintf
+
 #ifdef CONFIG_ARCH_HAS_CTRLC
 int arch_ctrlc(void);
 #endif
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index cb42caebca16..9d3c7e09f08a 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -978,20 +978,3 @@ int asprintf(char **strp, const char *fmt, ...)
 	return len;
 }
 EXPORT_SYMBOL(asprintf);
-
-char *basprintf(const char *fmt, ...)
-{
-	va_list ap;
-	char *p;
-	int len;
-
-	va_start(ap, fmt);
-	len = vasprintf(&p, fmt, ap);
-	va_end(ap);
-
-	if (len < 0)
-		return NULL;
-
-	return p;
-}
-EXPORT_SYMBOL(basprintf);
-- 
2.39.5



