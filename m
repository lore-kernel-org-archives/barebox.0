Delivery-date: Mon, 07 Apr 2025 04:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1cBL-009Mgs-0J
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 04:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1cBK-0007Ae-E4
	for lore@pengutronix.de; Mon, 07 Apr 2025 04:25:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k//TOc6lCVPmv+dXBUFK1MBPZR+A95Jt6FuH5j2ypjQ=; b=RDM9SS8IWKbVo/rcE5Quhzh0Wy
	fsDRNkQixM0z7TneGi7JN7eiknDYFEBGHLVzLTRV4G5etBhzx3mXA+XyW3Uu5jeeejZo/4KeWVW48
	3wOLUd0BhdeFWqAe7Ik8CI5fv3mvYwe2ozeGsCRHvbzx9OWfnzJuI+UOGK9pDw8TKqjQnAjvdX94I
	/q6CBe0KkVB8xz+l4JBPsEGf1ClWolmZ6cMMwwc6zpE43Sj0Z0Bb9pqioWbYM16RmgMtyJ8OuCsii
	ZR5G+38jYbnjKyKnkB/gSsECss4ESOonliMxFL+0TOhnnBlDqNk33IOny/GUBq0QtVkd7NqRPvLkL
	qLJvO5Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1cAU-0000000GC5D-0tyn;
	Mon, 07 Apr 2025 02:24:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1cAR-0000000GC4p-1vpJ
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 02:24:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EE2E05C10B8;
	Mon,  7 Apr 2025 02:22:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F7C4CEE3;
	Mon,  7 Apr 2025 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743992693;
	bh=/7OjtT8uym6w197Ohq6E4Pg21PZdFPCeRmxhIDAFDV0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=tnfhYRwd+6amyi9yL1FPJahK/i+ANye0C44iNp2JaUZ5B5GsxJp6ezNEZU6asEApK
	 eeDWm65PsFB1BrmHXRuG7973Lq1dfx5Xzj8wRiY8bYhTQZwd8CzrAq51G4votrjReJ
	 MCGvUrfv39mzVcJc24jMyWNxubnKWSmYq9zYtlDKOJdyDmEDmk4GXO2UrDVM82rtyC
	 nz8Xecy4k+D2lxoEAOoed1Xwhep2IbodG1Jy5dWcxuj5++YFdQ8uDaYSk5ki67yB8m
	 nFl7DUIFTf1uE4+p0kul80wlOhCyoH/HjqboX3FdLcEBiXLJmIUT8jLCkJ1trsP//N
	 aYC6XRH6zJyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA1C36002;
	Mon,  7 Apr 2025 02:24:53 +0000 (UTC)
From: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Date: Sun, 06 Apr 2025 22:24:40 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-tlsf-addpool-v2-1-880c64d19d59@gmail.com>
X-B4-Tracking: v=1; b=H4sIAGc382cC/1XMyw6DIBCF4Vcxsy4Nl2JsV75H4wK56CQoBgxpY
 3j3Urvq8p/J+Q5INqJN8GgOiDZjwrDW4JcG9KzWyRI0tYFTLikTjOw+OaKM2ULwRLpbfdxH2XE
 NdbJF6/B1cs+h9oxpD/F96pl9rz9I8O4fyowwwqUzdKQtFbLtp0Whv+qwwFBK+QCJEsvmqAAAA
 A==
X-Change-ID: 20250131-tlsf-addpool-5f42029b582c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Dgien <dgienda125@gmail.com>, Tyler Reece <mtreece@acm.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743992692; l=3891;
 i=dgienda125@gmail.com; s=20250126; h=from:subject:message-id;
 bh=9Sv5Zm8CxnEOIhpDZkPAusucZer8DxpiuaUFQn/VIf4=;
 b=qPQQJ1Gil3d1QP1FDZQnYgOioNJM9FBSPBIBkZKuLPMSluwvHKKfixsnVcFa8IP7qJOOnqLmc
 BpnbMJTYuRdCT7ttWT9+u0UeI8VVVL0UBO8r6jjXOlyIDq5ePceLrvm
X-Developer-Key: i=dgienda125@gmail.com; a=ed25519;
 pk=zPhfl/eH2iShpaIksvU8MCg11Il6Dx2oW7WYAzpKbo0=
X-Endpoint-Received: by B4 Relay for dgienda125@gmail.com/20250126 with
 auth_id=332
X-Original-From: David Dgien <dgienda125@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250406_192455_617951_4D347F6A 
X-CRM114-Status: GOOD (  13.09  )
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
Reply-To: dgienda125@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Dgien <dgienda125@gmail.com>

When configured to use the TLSF allocator, the malloc_stats function
only walks the initial memory pool, as that is the only pool it is aware
of, and TLSF doesn't link pools together in a way that the walker can
follow.

Add a wrapper function around tlsf_add_pool to add additional tracking
of added pools, so that they can be walked by the malloc_stats function
and meminfo can report accurate heap utilization.

Signed-off-by: David Dgien <dgienda125@gmail.com>
Reviewed-by: Tyler Reece <mtreece@acm.org>
---
Changes in v2:
 - Removed malloc_remove_pool (Sasha)
 - Reworked tlsf initialization into malloc_add_pool
---
 common/memory.c      |  7 +------
 common/tlsf_malloc.c | 46 ++++++++++++++++++++++++++++++++++++++++++++--
 include/malloc.h     |  4 ++++
 3 files changed, 49 insertions(+), 8 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 36aa4bcb8800943a2742dd13a34165f6238af728..f25fe143984a538f5b1f7c5af7a76596b4aeaa33 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -34,11 +34,6 @@ unsigned long mem_malloc_end(void)
 	return malloc_end;
 }
 
-#ifdef CONFIG_MALLOC_TLSF
-#include <tlsf.h>
-tlsf_t tlsf_mem_pool;
-#endif
-
 int mem_malloc_initialized;
 
 int mem_malloc_is_initialized(void)
@@ -52,7 +47,7 @@ void mem_malloc_init(void *start, void *end)
 	malloc_end = (unsigned long)end;
 	malloc_brk = malloc_start;
 #ifdef CONFIG_MALLOC_TLSF
-	tlsf_mem_pool = tlsf_create_with_pool(start, end - start + 1);
+	malloc_add_pool(start, end - start + 1);
 #endif
 	mem_malloc_initialized = 1;
 }
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 6a90ee47199fa9e8223f843cc95f52eebfec2aee..4acf1c1c507153e1fef98f9f73f42605c580bc6c 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -12,7 +12,17 @@
 #include <module.h>
 #include <tlsf.h>
 
-extern tlsf_t tlsf_mem_pool;
+#include <linux/kasan.h>
+#include <linux/list.h>
+
+tlsf_t tlsf_mem_pool;
+
+struct pool_entry {
+	pool_t pool;
+	struct list_head list;
+};
+
+static LIST_HEAD(mem_pool_list);
 
 void *malloc(size_t bytes)
 {
@@ -75,12 +85,44 @@ static void malloc_walker(void* ptr, size_t size, int used, void *user)
 
 void malloc_stats(void)
 {
+	struct pool_entry *cur_pool;
 	struct malloc_stats s;
 
 	s.used = 0;
 	s.free = 0;
 
-	tlsf_walk_pool(tlsf_get_pool(tlsf_mem_pool), malloc_walker, &s);
+	list_for_each_entry(cur_pool, &mem_pool_list, list)
+		tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);
 
 	printf("used: %zu\nfree: %zu\n", s.used, s.free);
 }
+
+void *malloc_add_pool(void *mem, size_t bytes)
+{
+	pool_t new_pool;
+	struct pool_entry *new_pool_entry;
+
+	if (!mem)
+		return NULL;
+
+	if (!tlsf_mem_pool) {
+		tlsf_mem_pool = tlsf_create(mem);
+		mem = (char *)mem + tlsf_size();
+		bytes = bytes - tlsf_size();
+	}
+
+	new_pool = tlsf_add_pool(tlsf_mem_pool, mem, bytes);
+	if (!new_pool)
+		return NULL;
+
+	new_pool_entry = malloc(sizeof(*new_pool_entry));
+	if (!new_pool_entry)
+		return NULL;
+
+	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
+
+	new_pool_entry->pool = new_pool;
+	list_add(&new_pool_entry->list, &mem_pool_list);
+
+	return (void *)new_pool;
+}
diff --git a/include/malloc.h b/include/malloc.h
index 0b74746360c08a95e593c9afe485382d02cd5c12..35551250324ee1d3c8ddc06f49a06ce07d2855bd 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -21,6 +21,10 @@
 #define ZERO_OR_NULL_PTR(x) ((unsigned long)(x) <= \
 				(unsigned long)ZERO_SIZE_PTR)
 
+#ifdef CONFIG_MALLOC_TLSF
+void *malloc_add_pool(void *mem, size_t bytes);
+#endif
+
 #if IN_PROPER
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);

---
base-commit: b4c0c4615ace1795aa75ced21caa1e78b665cde0
change-id: 20250131-tlsf-addpool-5f42029b582c

Best regards,
-- 
David Dgien <dgienda125@gmail.com>




