Delivery-date: Tue, 21 Oct 2025 16:54:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDlE-00AHjK-0f
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 16:54:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDlD-0002KD-Jl
	for lore@pengutronix.de; Tue, 21 Oct 2025 16:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mHtn2cWkBSdKvPsf4uoCeDKZ6QFEriqQN1cgJYIIy74=; b=ty/5ArZMY1IisWZXES2GoG+y+l
	LMNwc5jnn8h04gaCO+WEF+seWuzHbqksqEovM5AcXZq/64UM2vcydn0NQAl8LjhY5ZVgetn9JyUcf
	MaeY22kaTlDitGXnNJskJ7+VlZoDMB/d8Sq9JfInv2LTZYYwwSN6671NNLGXuDcpHCtHsrOmIjszE
	qwZhmI5GilMzUHz+ByEepmSdqF/BHjQZxvAsZp+nLIU51Ts7YYKiCse25Ze2jsXC9prnU25K7cn1R
	tJDX1vpdKnljJHv3XYvCr1JgNUEbYQ0IOHi8JtKUiweB9cOUTdfyCJuIsTWXcSxsrVfA2WHrzxXYo
	/b2vyR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDko-0000000HOi6-0RfK;
	Tue, 21 Oct 2025 14:54:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDkl-0000000HOgk-19jh
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 14:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-00028P-Gz; Tue, 21 Oct 2025 16:54:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-004k0d-14;
	Tue, 21 Oct 2025 16:54:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDkj-00000005LeR-10hC;
	Tue, 21 Oct 2025 16:54:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Oct 2025 16:54:14 +0200
Message-ID: <20251021145420.1274668-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251021145420.1274668-1-a.fatoum@pengutronix.de>
References: <20251021145420.1274668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_075423_313918_07951B17 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] test: self: malloc: fix false positive when malloc store is registered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If malloc_register_store has been called, a malloc of the total size of
the current malloc area may still succeed, because it requests a buffer
from the external store.

Adapt the test to account for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf_malloc.c |  5 +++++
 include/malloc.h     |  3 +++
 test/self/malloc.c   | 16 ++++++++++++----
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 9d55014117f0..7de39ebeef09 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -147,3 +147,8 @@ void malloc_register_store(void (*cb)(size_t bytes))
 	malloc_request_store = cb;
 	tlsf_register_store(tlsf_mem_pool, tlsf_request_store);
 }
+
+bool malloc_store_is_registered(void)
+{
+	return malloc_request_store;
+}
diff --git a/include/malloc.h b/include/malloc.h
index 69ff23b4a058..81ab0f457b01 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -24,6 +24,9 @@
 #ifdef CONFIG_MALLOC_TLSF
 void *malloc_add_pool(void *mem, size_t bytes);
 void malloc_register_store(void (*cb)(size_t bytes));
+bool malloc_store_is_registered(void);
+#else
+static inline bool malloc_store_is_registered(void) { return false; }
 #endif
 
 #if IN_PROPER
diff --git a/test/self/malloc.c b/test/self/malloc.c
index a60e95b2233f..cf307158fb7e 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -67,6 +67,7 @@ static void *__expect(void *ptr, bool expect,
 static void test_malloc(void)
 {
 	size_t mem_malloc_size = mem_malloc_end() - mem_malloc_start();
+	bool have_overcommit = false;
 	u8 *p, *tmp;
 
 	pr_debug("mem_malloc_size = %zu\n", mem_malloc_size);
@@ -78,7 +79,7 @@ static void test_malloc(void)
 	 */
 	if (IS_ENABLED(CONFIG_MALLOC_LIBC)) {
 		pr_info("built with host libc allocator: Skipping tests that may trigger overcommit\n");
-		mem_malloc_size = 0;
+		have_overcommit = true;
 	}
 
 	p = expect_alloc_ok(malloc(1));
@@ -90,7 +91,7 @@ static void test_malloc(void)
 	p = expect_alloc_fail(malloc(RELOC_HIDE(MALLOC_MAX_SIZE, 1)));
 	free(p);
 
-	if (mem_malloc_size) {
+	if (!have_overcommit) {
 		tmp = expect_alloc_fail(malloc(RELOC_HIDE(MALLOC_MAX_SIZE, -1)));
 		free(tmp);
 	} else {
@@ -108,19 +109,26 @@ static void test_malloc(void)
 	__expect_cond(*p == 0x42, true, "reread after realloc", __func__, __LINE__);
 
 	if (mem_malloc_size) {
-		tmp = expect_alloc_fail(realloc(p, mem_malloc_size));
+		tmp = realloc(p, mem_malloc_size);
+		if (!malloc_store_is_registered())
+			__expect_cond(tmp, false, "realloc of mem_malloc_size", __func__, __LINE__);
+
 		if (tmp)
 			p = NULL;
 
 		free(tmp);
+	} else {
+		skipped_tests++;
+	}
 
+	if (!have_overcommit) {
 		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(MALLOC_MAX_SIZE, -1)));
 		if (tmp)
 			p = NULL;
 
 		free(tmp);
 	} else {
-		skipped_tests += 2;
+		skipped_tests++;
 	}
 
 	free(p);
-- 
2.47.3



