Delivery-date: Mon, 22 Jul 2024 10:25:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLu-001kqb-1R
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 10:25:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLt-0000GB-05
	for lore@pengutronix.de; Mon, 22 Jul 2024 10:25:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=URG9tvWznbikDC4Rw+/d7+dmU6Le21x0ZSF8jR1HeNE=; b=hRs4JJCzhgDpXw8KajghvUJNf+
	H4TLSoQIgiv3qTlMSu7m7E4Lhqrar9uhCEFD84HItusHt20J0lGTgQOdsJj4uMVN6wSsaJmRGggwN
	y4zJgB90mwfBYbUPt41P0UyeOdh5vxT5VLFlKQ1MzA4m9453iDgp0mzQL8FkTZvN1JIg0kA+VHubk
	+q72snhz4ptyt5UXR0s0FKrmVUAYkWTb6quVcBt+iKhITJunt4G5TjE/5/LxZ7+BnBRxQGJzmos2F
	By+KZb+Yai4mJOZ50VWGyjEVTvQoQxIydZUMcbGWIcHH5DSMW3vCUHmzkfe7ccavQQf0gdg3TpKoc
	hZ3//i3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLC-00000008rlt-0NA7;
	Mon, 22 Jul 2024 08:24:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoL6-00000008rid-1Rw7
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 08:24:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-0008Fs-Jb; Mon, 22 Jul 2024 10:24:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-001L9j-62; Mon, 22 Jul 2024 10:24:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-00629B-0F;
	Mon, 22 Jul 2024 10:24:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Jul 2024 10:24:01 +0200
Message-Id: <20240722082405.926111-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722082405.926111-1-s.hauer@pengutronix.de>
References: <20240722082405.926111-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_012412_414586_2BBF3142 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] malloc: implement free_sensitive()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox sometimes stores sensitive data in memory. Add a
(k)free_sensitive() function which zeroes out the memory before freeing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dlmalloc.c    | 15 +++++++++++++++
 common/tlsf_malloc.c | 11 +++++++++++
 include/dma.h        |  5 +++++
 include/linux/slab.h |  5 +++++
 include/malloc.h     |  1 +
 5 files changed, 37 insertions(+)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index c41487d54b..0e23399b2b 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1431,6 +1431,21 @@ void free(void *mem)
 		frontlink(p, sz, idx, bck, fwd);
 }
 
+void free_sensitive(void *mem)
+{
+	mchunkptr p;
+	size_t size;
+
+	if (!mem)
+		return;
+
+	p = mem2chunk(mem);
+	size = chunksize(p);
+	if (size)
+		memset(mem, size, 0x0);
+
+	free(mem);
+}
 /*
   Realloc algorithm:
 
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 981f09de41..5bcbbcd2f8 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -38,6 +38,17 @@ void free(void *mem)
 }
 EXPORT_SYMBOL(free);
 
+void free_sensitive(void *mem)
+{
+	size_t size;
+
+	size = tlsf_block_size(mem);
+	if (size)
+		memset(mem, size, 0x0);
+
+	tlsf_free(tlsf_mem_pool, mem);
+}
+
 void *realloc(void *oldmem, size_t bytes)
 {
 	void *mem = tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
diff --git a/include/dma.h b/include/dma.h
index 4fcd114bb6..c2b1bee358 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -41,6 +41,11 @@ static inline void dma_free(void *mem)
 	free(mem);
 }
 
+static inline void dma_free_sensitive(void *mem)
+{
+	free_sensitive(mem);
+}
+
 #define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
 
 #define DMA_MASK_NONE	0x0ULL
diff --git a/include/linux/slab.h b/include/linux/slab.h
index a63aad1c34..5e08c7697d 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -62,6 +62,11 @@ static inline void kfree(const void *mem)
 	dma_free((void *)mem);
 }
 
+static inline void kfree_sensitive(const void *objp)
+{
+	dma_free_sensitive((void *)objp);
+}
+
 static inline void *kmem_cache_alloc(struct kmem_cache *cache, gfp_t flags)
 {
 	void *mem = kmalloc(cache->size, flags);
diff --git a/include/malloc.h b/include/malloc.h
index d63853b91e..c25bbf6949 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -7,6 +7,7 @@
 
 void *malloc(size_t) __alloc_size(1);
 void free(void *);
+void free_sensitive(void *);
 void *realloc(void *, size_t) __realloc_size(2);
 void *memalign(size_t, size_t) __alloc_size(2);
 void *calloc(size_t, size_t) __alloc_size(1, 2);
-- 
2.39.2



