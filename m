Delivery-date: Sat, 29 Mar 2025 04:14:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyMeh-005XbW-1I
	for lore@lore.pengutronix.de;
	Sat, 29 Mar 2025 04:14:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyMeg-0001ve-O2
	for lore@pengutronix.de; Sat, 29 Mar 2025 04:14:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jKQYcPis6J/EhTP3hpgcoJ9G9zPOCTlZ0ntPyUiyROg=; b=SfTI/BgeOBB2NyrwuzRYl4qlmL
	HGeggUl3lcVMGNjyiGqLLGGz2VNVwFBNZ7lNMmnBumJLX0R4lLMJrKHdMLId86QdDtdPxc5xNtABt
	+wURqILQTfLn3aaZfPWehxVXIO0AcnPOlFSOS+57wVCSSmAowQ9/8npMFFNwhv9o+zsp1O+r69D+J
	fZD8N4YG2L/3NTERyg7YMFdODKYpdHoYjf9FCXlf5LFPD5haOYJZOZhTYpJZu/Cukp2FqQ4M/au2J
	7MkJZ38G9Osa7ZjyDAYlo6VXMyYi0QNiyjvh94OuqKW9u7k+M0kE91CjtB/ksm8HIzEE9o4xcbdBy
	B4UM7sGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyMds-0000000Ee3C-0HwY;
	Sat, 29 Mar 2025 03:13:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyMdp-0000000Ee2m-2st1
	for barebox@lists.infradead.org;
	Sat, 29 Mar 2025 03:13:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9283A44139;
	Sat, 29 Mar 2025 03:13:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10BCC4CEE4;
	Sat, 29 Mar 2025 03:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743218026;
	bh=Mtr05S5muzvIIhr+567J3d7AaFB85A4bEzHaspCwlq0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=ezcxsylRIbxFOYCy0sSRWqFuQel9AWDY5cZSzfsk4qNfY4eYlpqm7RxjXyZZNrKAo
	 XIajrLfvm7jtGv5I5/aOmr6EllMRE/4dwj1Xgi2kSPowKD1CFsYNOHZP10US5VisHo
	 Zls940Z21xQKFl2ikqFfXNRS9YgsC7ZTGSJ+5BfMexIarz2Y7ssAWdiVKUHXQLV1wn
	 A/X8HZ3RIRK/Pgy0iuxb/L/mELPfaj5bHqkucJQVoeZWIxvgk6MR4li7tw/QNVQdPv
	 2hl1R0UyQp+5lj5i9C1tI7GJl8bTx4bW+Gv3M9PIpeG2FE6R0d0ZwkMOwmfvxQfVsY
	 F9VrvVmK9MUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D9C28B20;
	Sat, 29 Mar 2025 03:13:46 +0000 (UTC)
From: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Date: Fri, 28 Mar 2025 23:13:40 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-tlsf-addpool-v1-1-25fd0b060356@gmail.com>
X-B4-Tracking: v=1; b=H4sIAGNl52cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQ2ND3ZKc4jTdxJSUgvz8HF3TNBOghGWSqYVRshJQS0FRalpmBdi46Nj
 aWgA0FFaQXgAAAA==
X-Change-ID: 20250131-tlsf-addpool-5f42029b582c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Dgien <dgienda125@gmail.com>, Tyler Reece <mtreece@acm.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743218026; l=3859;
 i=dgienda125@gmail.com; s=20250126; h=from:subject:message-id;
 bh=O4sf++it3RgO9HV57t9FvIY9tpxEZ5SIabtWRErNi08=;
 b=E/0i4ekUZR4j8HwfhyNduxcRtGahVzOPzLMApGJF++z5PzKfDO6ohqjaxtRotznVInuC2/uyr
 MmpV0ySkxzzB6WnI25toBsWiI0+JueoHMgYItXOoBgbH8+QzgxqWstv
X-Developer-Key: i=dgienda125@gmail.com; a=ed25519;
 pk=zPhfl/eH2iShpaIksvU8MCg11Il6Dx2oW7WYAzpKbo0=
X-Endpoint-Received: by B4 Relay for dgienda125@gmail.com/20250126 with
 auth_id=332
X-Original-From: David Dgien <dgienda125@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_201349_774249_749D8763 
X-CRM114-Status: GOOD (  13.91  )
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
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Dgien <dgienda125@gmail.com>

When configured to use the TLSF allocator, the malloc_stats function
only walks the initial memory pool, as that is the only pool it is aware
of, and TLSF doesn't link pools together in a way that the walker can
follow.

Add wrapper functions around tlsf_add_pool and tlsf_remove_pool to add
additional tracking of added pools, so that they can be walked by the
malloc_stats function and meminfo can report accurate heap utilization.

Signed-off-by: David Dgien <dgienda125@gmail.com>
Reviewed-by: Tyler Reece <mtreece@acm.org>
---
For this change I put the wrapper function prototypes in malloc.h, gated
by CONFIG_MALLOC_TLSF. I was split between there and memory.h, but I'm
not entirely convinced malloc.h was the right decision. I also didn't
provide stubs for when CONFIG_MALLOC_TLSF isn't enabled, as I did not
see any upstream code that utilizes tlsf_add_pool. If the project has
different preferences I can make those changes.
---
 common/tlsf_malloc.c | 64 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/malloc.h     |  5 ++++
 2 files changed, 69 insertions(+)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 6a90ee47199fa9e8223f843cc95f52eebfec2aee..0e756a13d5a2665eccf8931b19dfa4e56cad15eb 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -12,8 +12,18 @@
 #include <module.h>
 #include <tlsf.h>
 
+#include <linux/kasan.h>
+#include <linux/list.h>
+
 extern tlsf_t tlsf_mem_pool;
 
+struct pool_entry {
+	pool_t pool;
+	struct list_head list;
+};
+
+static LIST_HEAD(mem_pool_list);
+
 void *malloc(size_t bytes)
 {
 	void *mem;
@@ -75,6 +85,7 @@ static void malloc_walker(void* ptr, size_t size, int used, void *user)
 
 void malloc_stats(void)
 {
+	struct pool_entry *cur_pool;
 	struct malloc_stats s;
 
 	s.used = 0;
@@ -82,5 +93,58 @@ void malloc_stats(void)
 
 	tlsf_walk_pool(tlsf_get_pool(tlsf_mem_pool), malloc_walker, &s);
 
+	list_for_each_entry(cur_pool, &mem_pool_list, list)
+		tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);
+
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
+	new_pool_entry = malloc(sizeof(struct pool_entry));
+	if (!new_pool_entry)
+		return NULL;
+
+	new_pool = tlsf_add_pool(tlsf_mem_pool, mem, bytes);
+	if (!new_pool) {
+		free(new_pool_entry);
+		return NULL;
+	}
+
+	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
+
+	new_pool_entry->pool = new_pool;
+	list_add(&new_pool_entry->list, &mem_pool_list);
+
+	return (void *)new_pool;
+}
+
+int malloc_remove_pool(void *pool)
+{
+	struct pool_entry *cur_pool;
+	struct malloc_stats s;
+
+	s.used = 0;
+	s.free = 0;
+
+	list_for_each_entry(cur_pool, &mem_pool_list, list) {
+		if (cur_pool->pool == (pool_t)pool) {
+			tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);
+			if (s.used)
+				return -EBUSY;
+
+			list_del(&(cur_pool->list));
+			free(cur_pool);
+			tlsf_remove_pool(tlsf_mem_pool, pool);
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
diff --git a/include/malloc.h b/include/malloc.h
index 0b74746360c08a95e593c9afe485382d02cd5c12..a3684105981eb4a27594c7cb9a71191ca9dceff3 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -21,6 +21,11 @@
 #define ZERO_OR_NULL_PTR(x) ((unsigned long)(x) <= \
 				(unsigned long)ZERO_SIZE_PTR)
 
+#ifdef CONFIG_MALLOC_TLSF
+void *malloc_add_pool(void *mem, size_t bytes);
+int malloc_remove_pool(void *pool);
+#endif
+
 #if IN_PROPER
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);

---
base-commit: d4b5f3d3d1919189c2a8ebbc6ecc531c5459acf8
change-id: 20250131-tlsf-addpool-5f42029b582c

Best regards,
-- 
David Dgien <dgienda125@gmail.com>




