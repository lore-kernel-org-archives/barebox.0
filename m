Delivery-date: Mon, 05 Jan 2026 09:23:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfrm-001SKi-0L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:23:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfrl-0001X3-HM
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:23:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GUhEILzbDxcLAfPsXxDXq4U2XowJAwY1i9EHmY5Tw6g=; b=wENxa0UmW//oOsIYCq7FqQrX0F
	y1qHvWleQE/3Wv4/2jfFNeFj+BctY+0KWOXIS7lv6I2Utbrt9aPOGO+tfl7E5hijsixgroWN59ymY
	7MtJOZG1y9f5FO58G+J0xhTkEkebggddi+ema7rLAJKkt/uGdyVhsAlSy0oh0iCKTpFsb85fHkeiE
	PtkJ8QMoFFz4cFaP8K/brkc1BNDjHkJuPxMU3IUaFoMzled5m9+HMilcHl/6kYDuWmgO3mG/w0YPp
	UtVrDAs3YcE0AaLPfG8Dp3lpzGVglkZ83RDA5xWJFiqjrI+pWUtTUJYsq2heQ2qvSpCJHKWVkkURY
	ze2yvd9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfrL-0000000Ayg5-3Gfm;
	Mon, 05 Jan 2026 08:22:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfrJ-0000000AyfN-0vYt
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:22:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfrH-0001SY-6B; Mon, 05 Jan 2026 09:22:35 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:22:33 +0100
Message-ID: <20260105082234.3248830-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_002237_257136_BA466C25 
X-CRM114-Status: UNSURE (   9.56  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] malloc: make malloc_add_pool return void
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no common semantics for how the result of the function is
interpreted and there are no users that make use of it, so turn it to
return void.

Cc: David Dgien <dgienda125@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/tlsf_malloc.c | 10 ++++------
 include/malloc.h     |  4 ++--
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 7de39ebeef09..36fdc307cc26 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -105,13 +105,13 @@ void malloc_stats(void)
 	printf("used: %zu\nfree: %zu\n", s.used, s.free);
 }
 
-void *malloc_add_pool(void *mem, size_t bytes)
+void malloc_add_pool(void *mem, size_t bytes)
 {
 	pool_t new_pool;
 	struct pool_entry *new_pool_entry;
 
 	if (!mem)
-		return NULL;
+		return;
 
 	if (!tlsf_mem_pool) {
 		tlsf_mem_pool = tlsf_create(mem);
@@ -121,16 +121,14 @@ void *malloc_add_pool(void *mem, size_t bytes)
 
 	new_pool = tlsf_add_pool(tlsf_mem_pool, mem, bytes);
 	if (!new_pool)
-		return NULL;
+		return;
 
 	new_pool_entry = malloc(sizeof(*new_pool_entry));
 	if (!new_pool_entry)
-		return NULL;
+		return;
 
 	new_pool_entry->pool = new_pool;
 	list_add(&new_pool_entry->list, &mem_pool_list);
-
-	return (void *)new_pool;
 }
 
 static void tlsf_request_store(tlsf_t tlsf, size_t bytes)
diff --git a/include/malloc.h b/include/malloc.h
index bee998cd9079..82fa2bb39c8e 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -22,12 +22,12 @@
 				(unsigned long)ZERO_SIZE_PTR)
 
 #ifdef CONFIG_MALLOC_TLSF
-void *malloc_add_pool(void *mem, size_t bytes);
+void malloc_add_pool(void *mem, size_t bytes);
 void malloc_register_store(void (*cb)(size_t bytes));
 bool malloc_store_is_registered(void);
 #else
 #include <linux/bug.h>
-static inline void *malloc_add_pool(void *mem, size_t bytes) { BUG(); }
+static inline void malloc_add_pool(void *mem, size_t bytes) { BUG(); }
 static inline void malloc_register_store(void (*cb)(size_t bytes)) { BUG(); }
 static inline bool malloc_store_is_registered(void) { return false; }
 #endif
-- 
2.47.3



