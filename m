Delivery-date: Wed, 16 Oct 2024 11:09:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1020-0050Ln-0J
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:09:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t101z-00074f-DM
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:09:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jl8hN6Cq+MeHEtzcDtabD5x652PLuHwgeJr880pBdGU=; b=PbTxoKbM7QNVR9fsEy0D6HNmtH
	TChlYNBL4SNszfy2s4Qcf9MH7wGcUYHUlGHeHLwUJNzuNTWWl/LZTxX4hXPEu8Nu4mkeGue8acL65
	mEgdRe/z5QvwS4JU6BQWvS3xtJCFCX49UdYIZu9Xt8MVa0dr5iEGDr5eOUUbPe83azLN3BoReP37n
	5WuN0+0gBldQp0ZWEEwqOiiu9pxeuzjNGEceFU4VDzcOodDxGKg93rF7TbOjyVG/UU2sAT/sf4+/b
	ApimojrUmS65QiKF21t0Lz9alE5B9F3RJP4KrBv+V7VOFYgLnui6IR/TXY8ooTiteqSI3FWVzdq98
	SdjaJa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t101Y-0000000BAku-3xH3;
	Wed, 16 Oct 2024 09:08:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t101T-0000000BAiG-1PnC
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:08:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-0006qA-Qw; Wed, 16 Oct 2024 11:08:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-002EQ0-E7; Wed, 16 Oct 2024 11:08:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-00GdhR-0f;
	Wed, 16 Oct 2024 11:01:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:50 +0200
Message-Id: <20241016090150.3963002-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020851_527276_37B219D2 
X-CRM114-Status: GOOD (  10.00  )
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
Subject: [PATCH 13/13] malloc: add PBL stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h |  7 +++++++
 include/malloc.h       | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 3b8775c9a57d..38077da95d13 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -161,7 +161,14 @@ static inline const char *kbasename(const char *path)
 }
 #endif
 
+#ifndef __PBL__
 void *memdup(const void *, size_t);
+#else
+static inline void *memdup(const void *buf, size_t size)
+{
+	return NULL;
+}
+#endif
 
 #define memdup_array(arr, count) memdup(arr, array_size(count, sizeof(*arr)));
 
diff --git a/include/malloc.h b/include/malloc.h
index fc0c94855e05..682f724fb4fa 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -5,6 +5,7 @@
 #include <linux/compiler.h>
 #include <types.h>
 
+#ifndef __PBL__
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);
 void free(void *);
@@ -16,5 +17,41 @@ void malloc_stats(void);
 void *sbrk(ptrdiff_t increment);
 
 int mem_malloc_is_initialized(void);
+#else
+static inline void *malloc(size_t nbytes)
+{
+	return NULL;
+}
+static inline void free(void *buf)
+{
+}
+static inline void free_sensitive(void *buf)
+{
+}
+static inline void *realloc(void *orig, size_t nbytes)
+{
+	return NULL;
+}
+static inline void *memalign(size_t align, size_t size)
+{
+	return NULL;
+}
+static inline void *calloc(size_t num, size_t size)
+{
+	return NULL;
+}
+static inline void malloc_stats(void)
+{
+}
+static inline void *sbrk(ptrdiff_t increment)
+{
+	return NULL;
+}
+
+static inline int mem_malloc_is_initialized(void)
+{
+	return 0;
+}
+#endif
 
 #endif /* __MALLOC_H */
-- 
2.39.5



