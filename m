Delivery-date: Wed, 15 Oct 2025 10:27:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wqk-00824w-2K
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:27:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wqk-0007r2-5P
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:27:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r0OcyHoR01u9ZiAsIikHm8Z8mmXvOsvugD1vggeoucc=; b=ezNB+/aZp/Vo6rM9X7/8xr7PKU
	MsKJsQZf7jR4Zs1uKneqtd+EN/odvwXJV1jc+h2f0w22HKCSwJP8VJus/ADq8Le87Ypuswwd3j/1o
	6ZOEqk0R1YM2Xld/jJ4wbVTyUzsB0O1/EiT1bIb05yJ22ciUI+OcjRkq4V2yxC7ynIH7NySnx5kde
	yy6yrPR6iQ5OYobWf8qqvSxEIbmFpy6IRRpZ9++KxCVa2abBsX5BXU6SLLfULt0yd9Sn3DRyzb4E+
	2U+PNgcQlybUEUDn936E6Hl3vGztJsLQGa8SXELwni1E7w4ZxzMyTt3QELM28NaifvVb0HRpf8rWx
	iVPDLvSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wqL-00000000u3C-18MD;
	Wed, 15 Oct 2025 08:26:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wqI-00000000u2j-47AC
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:26:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wqG-0007m0-SQ; Wed, 15 Oct 2025 10:26:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:26:39 +0200
Message-ID: <20251015082640.4093689-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_012643_019434_C0887781 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! tlsf: support on-demand requesting memory from external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tlsf: fix misaccounting in request_store feature

A TLSF pool itself has overhead in the form of tlsf_pool_overhead()
that's distinct from the struct pool_entry. Adding a helper that returns
this total overhead allows us also to use roundup_pow_of_two(), which
previously issues a warning on clang about sizeof(sizeof(...)) looking
strange.

Another issues is that request_store was not explicitly zeroed leading
to issues on OOM situations, which is remedied as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/tlsf.c        | 1 +
 common/tlsf_malloc.c | 7 ++++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 3c72b41c0385..e7f1b8354f02 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -654,6 +654,7 @@ static void control_construct(control_t* control)
 	control->block_null.next_free = &control->block_null;
 	control->block_null.prev_free = &control->block_null;
 
+	control->request_store = NULL;
 	control->fl_bitmap = 0;
 	for (i = 0; i < FL_INDEX_COUNT; ++i)
 	{
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index d3b665a2fc40..9d55014117f0 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -27,6 +27,11 @@ struct pool_entry {
 
 static LIST_HEAD(mem_pool_list);
 
+static inline size_t mem_pool_overhead(void)
+{
+	return sizeof(struct pool_entry) + tlsf_pool_overhead();
+}
+
 void *malloc(size_t bytes)
 {
 	void *mem;
@@ -132,7 +137,7 @@ static void tlsf_request_store(tlsf_t tlsf, size_t bytes)
 {
 	size_t size;
 
-	size = __roundup_pow_of_two(bytes + sizeof(struct pool_entry));
+	size = roundup_pow_of_two(bytes + mem_pool_overhead());
 
 	malloc_request_store(max_t(size_t, SZ_8M, size));
 }
-- 
2.47.3



