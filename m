Delivery-date: Mon, 25 Nov 2024 16:17:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaqW-000FhU-2z
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:17:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaqW-000166-Au
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o49J/qDE1R5JHFmEPXlF9yUMW4xfY2ovfI+i5Qh5oRo=; b=POiu+iwRjTxoIUyrcaylYTEqvD
	PtInPjaSAJt7N2CE1REbXBQKxkLpZYKa/d6XVvgaxyFBhJmbDsGXkXqMPrE8Gmv1Kt1XL4tOvd5kZ
	nX2qDaXF6Y88zkUbdz/j3c+fDED6BasJ7HRDethUmCNA7t1jODvxnuOUWFDuMSeZQtwr5+CGS53LO
	ahRUrUFd+0Qe2YmI7j2cVIaNEfNZ2MppHVkvG2Sbtbb6pnm4JmPKqukfFRn4M7bwmBtlTNL8fP6KG
	uZzYW8NP7VaoSLSlDee8+7tpkLQE2nneupEPYUEGJnx/owqq3hAsVzXK2N645Ey0iY7xiZGyxnIGF
	4xhAjzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaq7-00000008RLZ-3hYp;
	Mon, 25 Nov 2024 15:17:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaq2-00000008RHd-37IB
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:17:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaq1-0000kR-BR; Mon, 25 Nov 2024 16:17:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaq0-0006O3-1H;
	Mon, 25 Nov 2024 16:17:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-1p;
	Mon, 25 Nov 2024 16:12:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:25 +0100
Message-Id: <20241125151228.341441-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071722_773985_2D2B8CC7 
X-CRM114-Status: GOOD (  10.08  )
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
Subject: [PATCH v2 13/16] xfuncs: stub out API when built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/xfuncs.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index 9e09b88141a1..f0aca6de76b3 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -4,10 +4,12 @@
 
 #include <linux/types.h>
 #include <linux/compiler.h>
+#include <linux/bug.h>
 #include <stdarg.h>
 #include <wchar.h>
 #include <malloc.h>
 
+#if IN_PROPER || !defined(__BAREBOX__)
 void *xmalloc(size_t size) __xalloc_size(1);
 void *xrealloc(void *ptr, size_t size) __xrealloc_size(2);
 void *xzalloc(size_t size) __xalloc_size(1);
@@ -22,4 +24,21 @@ wchar_t *xstrdup_wchar(const wchar_t *src);
 wchar_t *xstrdup_char_to_wchar(const char *src);
 char *xstrdup_wchar_to_char(const wchar_t *src);
 
+#else
+
+static inline void *xmalloc(size_t size) { BUG(); }
+static inline void *xrealloc(void *ptr, size_t size) { BUG(); }
+static inline void *xzalloc(size_t size) { BUG(); }
+static inline char *xstrdup(const char *s) { BUG(); }
+static inline char *xstrndup(const char *s, size_t size) { BUG(); }
+static inline void* xmemalign(size_t alignment, size_t bytes) { BUG(); }
+static inline void* xmemdup(const void *orig, size_t size) { BUG(); }
+static inline char *xasprintf(const char *fmt, ...) { BUG(); }
+static inline char *xvasprintf(const char *fmt, va_list ap) { BUG(); }
+
+static inline wchar_t *xstrdup_wchar(const wchar_t *src) { BUG(); }
+static inline wchar_t *xstrdup_char_to_wchar(const char *src) { BUG(); }
+static inline char *xstrdup_wchar_to_char(const wchar_t *src) { BUG(); }
+#endif
+
 #endif /* __XFUNCS_H */
-- 
2.39.5



