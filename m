Delivery-date: Wed, 16 Oct 2024 11:09:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1021-0050MA-2V
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:09:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1020-00075J-Vb
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:09:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I0SsHhpdf7kXx9DwKmf1EUX2uqK35LWw4vz1XdMLxrs=; b=uSeIURj2sU/6qytbuNvSjgTRPw
	iun82sATisCvgtv5tihEm+t2RahRSMVLneBk3LGpPzL+0xVhXq7mx5JR1EznBcHho4Wx/0ghs7Uwm
	cARZE6+KkZpecZPRN7C7sVTXfbMV/iZlhHB6UE3v7jCJOdUylgFBu6e8wog6d1ETVPOOywEWV0fP9
	1yDrlXM2psfY9xSg4SXHOyEYSbRm8ZDhCRC7yOvqFUztlrKvLzTHrFAuQk6N6knOSKeqbgKs/l1LK
	PjZMjRKKXuzBSagI/B4G5JLvm75EAlxAHTQMZxkUaClK9pJYWN2zKPd+QRmpUXsdPjid+45GJAmdZ
	a1x1pQhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t101Z-0000000BAlL-2w9A;
	Wed, 16 Oct 2024 09:08:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t101T-0000000BAiH-1OfA
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:08:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-0006qC-Sp; Wed, 16 Oct 2024 11:08:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-002EQ2-G2; Wed, 16 Oct 2024 11:08:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-00GdhR-0F;
	Wed, 16 Oct 2024 11:01:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:47 +0200
Message-Id: <20241016090150.3963002-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020851_515882_F1229496 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] xfuncs: stub out API when built for PBL
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
index 9e09b88141a1..e6a781ef708e 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -4,10 +4,12 @@
 
 #include <linux/types.h>
 #include <linux/compiler.h>
+#include <linux/bug.h>
 #include <stdarg.h>
 #include <wchar.h>
 #include <malloc.h>
 
+#ifndef __PBL__
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



