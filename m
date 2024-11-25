Delivery-date: Mon, 25 Nov 2024 16:17:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaqb-000Fiw-34
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:17:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaqb-0001Ai-Oq
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:17:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQBmVWc0BfRMiKMslN0X6VdBIdS34EALbuQ1fK43Znw=; b=WVAzE8JbTLtpCCE51zOfHQSwOZ
	OQn0045epT2pCnLbhrnFxKQj3S/B/M60K7clOPC+RqKDqIBdY+TFby8mDzDDEh11eElppXMuVqtmz
	SP3g1dQjmuQkepAgC2TxCrJWK90+dmh3+rkRoGYxHMTwptRQQz0LXluIyOxBtjheQA93+QiCKVnmY
	xZQaOHWdQlNX8AbQPHOgCNEL37bmRusMTUxGjJC23HDxnXcWkfem1ew+0IpKxDalNNSyh0seYgr99
	/Ktz4XxBdHid1kPJprusGDWiR+BC2H6GKhI+wMZv5QeA06bj8AXYHYh9/zhUCwzVdpNydWXMZ2RGj
	Ro6+Sogg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaq8-00000008RMK-1wLJ;
	Mon, 25 Nov 2024 15:17:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaq2-00000008RHe-3O3D
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:17:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaq1-0000kd-J2; Mon, 25 Nov 2024 16:17:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaq0-0006OC-20;
	Mon, 25 Nov 2024 16:17:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-2G;
	Mon, 25 Nov 2024 16:12:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:28 +0100
Message-Id: <20241125151228.341441-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071722_843536_96526537 
X-CRM114-Status: GOOD (  10.28  )
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
Subject: [PATCH v2 16/16] malloc: add PBL stubs
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
index 3b8775c9a57d..5d5824b61bf0 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -161,7 +161,14 @@ static inline const char *kbasename(const char *path)
 }
 #endif
 
+#if IN_PROPER
 void *memdup(const void *, size_t);
+#else
+static inline void *memdup(const void *buf, size_t size)
+{
+	return NULL;
+}
+#endif
 
 #define memdup_array(arr, count) memdup(arr, array_size(count, sizeof(*arr)));
 
diff --git a/include/malloc.h b/include/malloc.h
index fc0c94855e05..a823ce8c8462 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -5,6 +5,7 @@
 #include <linux/compiler.h>
 #include <types.h>
 
+#if IN_PROPER
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



