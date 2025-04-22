Delivery-date: Tue, 22 Apr 2025 07:38:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Kj-003v4v-1S
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:38:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Ki-0005t3-Ra
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:38:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lso5PIUl3eQtme1+/Hg8XtsxlChX7jECgJ+gX7taWos=; b=KMH8ow7qovgvWLrT2fP0Xmtt3U
	4PA0N1e9ucM5aKNE03CYdL1TYgEybfzkfpsAufPFKXN73mYZfI27uWG0DlQgXsqIDzwf02Tin+fDy
	zeYLMJV/0KPt8+filqCYi3XuN0XcvgSCmTvbJ0MwvqgQ7uIpHWun/PjuUDDqFZweEYDVW7jgPXlS7
	22E0C74GkU45weCiSAu7iEKUD8Vnk0oGPf1Z57HCua2MppTu/d82xZC4ihzY2Jrd5hg/QuCIu4xFs
	12G8sFm0mxn2s5iiX3jRMWnc91ltZ2K6MKnw9B5yVyy7PtaKwaBQA3JLHIk+HcV35NXYuPmYkckz/
	5I56Uk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76KK-00000005sXF-0mSc;
	Tue, 22 Apr 2025 05:37:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76KH-00000005sWK-0pQm
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:37:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-0005jl-E7; Tue, 22 Apr 2025 07:37:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-001V18-0k;
	Tue, 22 Apr 2025 07:37:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-00EQ0Y-0T;
	Tue, 22 Apr 2025 07:37:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:37:40 +0200
Message-Id: <20250422053740.3436389-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422053740.3436389-1-a.fatoum@pengutronix.de>
References: <20250422053740.3436389-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_223745_232178_673B292E 
X-CRM114-Status: GOOD (  12.35  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] tlsf: hardening: skip KASAN checks when zeroing memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are already unpoisoning the memory before allocation, so we know for
certain that memset will not trip over anything. Switch over to using
__memset in that case to reduce performance impact.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/string.h | 8 ++++++++
 common/tlsf.c                 | 8 ++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/string.h b/arch/arm/include/asm/string.h
index f79392e53d01..4b77914865e7 100644
--- a/arch/arm/include/asm/string.h
+++ b/arch/arm/include/asm/string.h
@@ -3,6 +3,8 @@
 #ifndef __ASM_ARM_STRING_H
 #define __ASM_ARM_STRING_H
 
+#include <linux/compiler.h>
+
 #ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
 
 #define __HAVE_ARCH_MEMCPY
@@ -17,4 +19,10 @@ extern void *__memcpy(void *, const void *, __kernel_size_t);
 extern void *__memset(void *, int, __kernel_size_t);
 extern void *__memmove(void *, const void *, __kernel_size_t);
 
+static inline void __memzero_explicit(void *s, __kernel_size_t count)
+{
+	__memset(s, 0, count);
+	barrier_data(s);
+}
+
 #endif
diff --git a/common/tlsf.c b/common/tlsf.c
index 01293630dd7c..8666b94ea387 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -12,6 +12,10 @@
 
 #ifndef CONFIG_KASAN
 #define __memcpy memcpy
+/* This is only an optimization: On sandbox, with ASan, we don't have
+ * an asan-less memset implementation, so we must unpoison memory anyhow.
+ */
+#define __memzero_explicit memzero_explicit
 #endif
 
 /*
@@ -610,7 +614,7 @@ static void* block_prepare_used(control_t* control, block_header_t* block,
 
 		if (want_init_on_alloc()) {
 			kasan_unpoison_shadow(p, size);
-			memzero_explicit(p, size);
+			__memzero_explicit(p, size);
 			/*
 			 * KASAN doesn't play nicely with poisoning addresses
 			 * that are not granule-aligned, which is why we poison
@@ -1028,7 +1032,7 @@ void tlsf_free(tlsf_t tlsf, void* ptr)
 		tlsf_assert(!block_is_free(block) && "block already marked as free");
 		if (want_init_on_free()) {
 			kasan_unpoison_shadow(ptr, block_size(block));
-			memzero_explicit(ptr, block_size(block));
+			__memzero_explicit(ptr, block_size(block));
 		}
 		kasan_poison_shadow(ptr, block_size(block), 0xff);
 		block_mark_as_free(block);
-- 
2.39.5



