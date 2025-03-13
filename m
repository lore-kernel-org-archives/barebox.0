Delivery-date: Thu, 13 Mar 2025 10:02:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tseS4-00DV3v-04
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 10:02:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tseS2-0003iZ-Bg
	for lore@pengutronix.de; Thu, 13 Mar 2025 10:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wzticxfm9lJew8wEyfVtQgBh0aqe4hP+bHMAnraa0ZM=; b=cJjPd2z+17kQGsvH61IxAzu1wv
	1N9DasF8UEscB+RBq2+6sek7+Zr+wh+nQUCKn3kY/ervZL1GaAKXXrj404H4h4YO5BKcmpiRBRW3A
	T+zhJjyg/L41R+Gr/F6861bRWODRKMs7n0wZ/wtuZHNa6JXvdT5kNqNytwaX619C46M1v9kEZxILc
	tuZTqezGoEp+OAFsq4ZeCuSc+PR9eDKhx++e4pDjWp5jJUn/XfkSVjYWW2HwDQ87zY7BSJ1WzVIOd
	9Usj8C0ogQeOOwTBaSGqsVyK4kP+hE3txQP4U15iD4b1hg5ShHH1XykA2Eez0S/L0yrxWS5tzjVpA
	PgD4tZKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tseRH-0000000Ade3-0acp;
	Thu, 13 Mar 2025 09:01:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tseNB-0000000Ad4n-3Dr4
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 08:57:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tseNA-0002TJ-9e; Thu, 13 Mar 2025 09:57:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tseNA-005VS7-0L;
	Thu, 13 Mar 2025 09:57:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tseNA-0003wL-03;
	Thu, 13 Mar 2025 09:57:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 09:56:58 +0100
Message-Id: <20250313085658.13255-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_015701_964302_CDED833C 
X-CRM114-Status: GOOD (  24.20  )
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
Subject: [PATCH] malloc: return ZERO_SIZE_PTR for 0-byte allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux kmalloc doesn't return NULL on 0-byte allocations, but returns a
fixed ZERO_PSIZE_PTR constant, which triggers a NULL page exception when
dereferenced.

However, in barebox, allocator behavior differs:

 - glibc returns an unique pointer, but the standard also allows
   libc implementations to return NULL
 - tlsf returns NULL
 - dlmalloc returns a unique pointer
 - dummy malloc returns a unique pointer

Let's unify this discrepancy by doing something completely else and
returning a non-NULL non-unique pointer constant like Linux does.

The benefit of that is:

  - NULL return value always means out-of-memory
  - Accessing a zero sized allocation triggers a NULL page exception

This was noticed during porting of 9p2000 file system from Linux, which
does variable sized allocations and can end up allocating 0 bytes, but
expects that the allocation does not return NULL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/libc_malloc.c | 25 ++++++++++++++++++++++++-
 common/calloc.c               |  2 +-
 common/dlmalloc.c             | 16 +++++++++-------
 common/dummy_malloc.c         |  3 +++
 common/tlsf.c                 | 15 ++++++++++-----
 common/tlsf_malloc.c          |  9 ---------
 include/malloc.h              | 13 +++++++++++++
 test/self/malloc.c            |  3 ++-
 8 files changed, 62 insertions(+), 24 deletions(-)

diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index dd0f8670ff71..bb4fb1c9ead4 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -6,6 +6,10 @@
 #include <stdlib.h>
 #include <malloc.h>
 
+#define ZERO_SIZE_PTR ((void *)16)
+
+#define ZERO_OR_NULL_PTR(x) ((unsigned long)(x) <= \
+				(unsigned long)ZERO_SIZE_PTR)
 #define BAREBOX_ENOMEM 12
 #define BAREBOX_MALLOC_MAX_SIZE 0x40000000
 
@@ -19,6 +23,9 @@ void *barebox_memalign(size_t alignment, size_t bytes)
 {
 	void *mem = NULL;
 
+	if (!bytes)
+		return ZERO_SIZE_PTR;
+
 	if (alignment <= BAREBOX_MALLOC_MAX_SIZE && bytes <= BAREBOX_MALLOC_MAX_SIZE)
 		mem = memalign(alignment, bytes);
 	if (!mem)
@@ -29,9 +36,11 @@ void *barebox_memalign(size_t alignment, size_t bytes)
 
 void *barebox_malloc(size_t size)
 {
-
 	void *mem = NULL;
 
+	if (!size)
+		return ZERO_SIZE_PTR;
+
 	if (size <= BAREBOX_MALLOC_MAX_SIZE)
 		mem = malloc(size);
 	if (!mem)
@@ -42,11 +51,15 @@ void *barebox_malloc(size_t size)
 
 size_t barebox_malloc_usable_size(void *mem)
 {
+	if (ZERO_OR_NULL_PTR(mem))
+		return 0;
 	return malloc_usable_size(mem);
 }
 
 void barebox_free(void *ptr)
 {
+	if (ZERO_OR_NULL_PTR(ptr))
+		return;
 	free(ptr);
 }
 
@@ -54,6 +67,13 @@ void *barebox_realloc(void *ptr, size_t size)
 {
 	void *mem = NULL;
 
+	if (!size) {
+		barebox_free(ptr);
+		return ZERO_SIZE_PTR;
+	}
+	if (ZERO_OR_NULL_PTR(ptr))
+		ptr = NULL;
+
 	if (size <= BAREBOX_MALLOC_MAX_SIZE)
 		mem = realloc(ptr, size);
 	if (!mem)
@@ -67,6 +87,9 @@ void *barebox_calloc(size_t n, size_t elem_size)
 	size_t product;
 	void *mem = NULL;
 
+	if (!n || !elem_size)
+		return ZERO_SIZE_PTR;
+
 	if (!__builtin_mul_overflow(n, elem_size, &product) &&
 	    product <= BAREBOX_MALLOC_MAX_SIZE)
 		mem = calloc(n, elem_size);
diff --git a/common/calloc.c b/common/calloc.c
index 17cbd9beefee..ee9322509751 100644
--- a/common/calloc.c
+++ b/common/calloc.c
@@ -13,7 +13,7 @@ void *calloc(size_t n, size_t elem_size)
 	size_t size = size_mul(elem_size, n);
 	void *r = malloc(size);
 
-	if (r && !want_init_on_alloc())
+	if (!ZERO_OR_NULL_PTR(r) && !want_init_on_alloc())
 		memset(r, 0x0, size);
 
 	return r;
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 2b5723e127c4..c8e05ac68f2a 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -389,7 +389,7 @@
   returns a unique pointer for malloc(0), so does realloc(p, 0).
 */
 
-/*   #define REALLOC_ZERO_BYTES_FREES */
+#define REALLOC_ZERO_BYTES_FREES
 
 /*
   Define HAVE_MMAP to optionally make malloc() use mmap() to
@@ -1165,6 +1165,8 @@ void *dlmalloc(size_t bytes)
 	if (bytes > MALLOC_MAX_SIZE) {
 		errno = ENOMEM;
 		return NULL;
+	} else if (bytes == 0) {
+		return ZERO_SIZE_PTR;
 	}
 
 	nb = request2size(bytes); /* padded request size; */
@@ -1363,7 +1365,7 @@ void dlfree(void *mem)
 	mchunkptr fwd;		/* misc temp for linking */
 	int islr;		/* track whether merging with last_remainder */
 
-	if (!mem)		/* free(0) has no effect */
+	if (ZERO_OR_NULL_PTR(mem))		/* free(0) has no effect */
 		return;
 
 	p = mem2chunk(mem);
@@ -1431,7 +1433,7 @@ size_t dlmalloc_usable_size(void *mem)
 {
 	mchunkptr p;
 
-	if (!mem)
+	if (ZERO_OR_NULL_PTR(mem))
 		return 0;
 
 	p = mem2chunk(mem);
@@ -1495,7 +1497,7 @@ void *dlrealloc(void *oldmem, size_t bytes)
 #ifdef REALLOC_ZERO_BYTES_FREES
 	if (bytes == 0) {
 		dlfree(oldmem);
-		return NULL;
+		return ZERO_SIZE_PTR;
 	}
 #endif
 
@@ -1505,7 +1507,7 @@ void *dlrealloc(void *oldmem, size_t bytes)
 	}
 
 	/* realloc of null is supposed to be same as malloc */
-	if (!oldmem)
+	if (ZERO_OR_NULL_PTR(oldmem))
 		return dlmalloc(bytes);
 
 	newp = oldp = mem2chunk(oldmem);
@@ -1760,8 +1762,8 @@ void *dlcalloc(size_t n, size_t elem_size)
 
 	mem = dlmalloc(sz);
 
-	if (!mem)
-		return NULL;
+	if (ZERO_OR_NULL_PTR(mem))
+		return mem;
 	else {
 		p = mem2chunk(mem);
 
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index 4973f35650ab..956a54da0396 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -13,6 +13,9 @@ void *memalign(size_t alignment, size_t bytes)
 {
 	void *mem = NULL;
 
+	if (!bytes)
+		return ZERO_SIZE_PTR;
+
 	if (alignment <= MALLOC_MAX_SIZE && bytes <= MALLOC_MAX_SIZE)
 		mem = sbrk(bytes + alignment);
 	if (!mem) {
diff --git a/common/tlsf.c b/common/tlsf.c
index 146f1b7ebe81..5504453a9453 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -743,7 +743,7 @@ void tlsf_walk_pool(pool_t pool, tlsf_walker walker, void* user)
 size_t tlsf_block_size(void* ptr)
 {
 	size_t size = 0;
-	if (ptr)
+	if (likely(!ZERO_OR_NULL_PTR(ptr)))
 	{
 		const block_header_t* block = block_from_ptr(ptr);
 		size = block_size(block);
@@ -935,6 +935,8 @@ void* tlsf_malloc(tlsf_t tlsf, size_t size)
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
 	block_header_t* block;
 
+	if (!size)
+		return ZERO_SIZE_PTR;
 	if (!adjust)
 		return NULL;
 
@@ -961,12 +963,14 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 
 	/*
 	** If alignment is less than or equals base alignment, we're done.
-	** If we requested 0 bytes, return null, as tlsf_malloc(0) does.
+	** If we requested 0 bytes, return ZERO_SIZE_PTR, as tlsf_malloc(0) does.
 	*/
 	const size_t aligned_size = (adjust && align > ALIGN_SIZE) ? size_with_gap : adjust;
 
 	block_header_t* block;
 
+	if (!size)
+		return ZERO_SIZE_PTR;
 	if (!adjust || !size_with_gap)
 		return NULL;
 
@@ -1008,7 +1012,7 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 void tlsf_free(tlsf_t tlsf, void* ptr)
 {
 	/* Don't attempt to free a NULL pointer. */
-	if (ptr)
+	if (!ZERO_OR_NULL_PTR(ptr))
 	{
 		control_t* control = tlsf_cast(control_t*, tlsf);
 		block_header_t* block = block_from_ptr(ptr);
@@ -1042,12 +1046,13 @@ void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size)
 	void* p = 0;
 
 	/* Zero-size requests are treated as free. */
-	if (ptr && size == 0)
+	if (size == 0)
 	{
 		tlsf_free(tlsf, ptr);
+		return ZERO_SIZE_PTR;
 	}
 	/* Requests with NULL pointers are treated as malloc. */
-	else if (!ptr)
+	else if (ZERO_OR_NULL_PTR(ptr))
 	{
 		p = tlsf_malloc(tlsf, size);
 	}
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 1b9d9c7702c2..6a90ee47199f 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -17,12 +17,6 @@ extern tlsf_t tlsf_mem_pool;
 void *malloc(size_t bytes)
 {
 	void *mem;
-	/*
-	 * tlsf_malloc returns NULL for zero bytes, we instead want
-	 * to have a valid pointer.
-	 */
-	if (!bytes)
-		bytes = 1;
 
 	mem = tlsf_malloc(tlsf_mem_pool, bytes);
 	if (!mem)
@@ -40,9 +34,6 @@ EXPORT_SYMBOL(free);
 
 size_t malloc_usable_size(void *mem)
 {
-	if (!mem)
-		return 0;
-
 	return tlsf_block_size(mem);
 }
 EXPORT_SYMBOL(malloc_usable_size);
diff --git a/include/malloc.h b/include/malloc.h
index c38726342c08..0b74746360c0 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -8,6 +8,19 @@
 #define MALLOC_SHIFT_MAX	30
 #define MALLOC_MAX_SIZE		(1UL << MALLOC_SHIFT_MAX)
 
+/*
+ * ZERO_SIZE_PTR will be returned for zero sized kmalloc requests.
+ *
+ * Dereferencing ZERO_SIZE_PTR will lead to a distinct access fault.
+ *
+ * ZERO_SIZE_PTR can be passed to free though in the same way that NULL can.
+ * Both make free a no-op.
+ */
+#define ZERO_SIZE_PTR ((void *)16)
+
+#define ZERO_OR_NULL_PTR(x) ((unsigned long)(x) <= \
+				(unsigned long)ZERO_SIZE_PTR)
+
 #if IN_PROPER
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);
diff --git a/test/self/malloc.c b/test/self/malloc.c
index 79a32b5d97c7..52f9fc344c1a 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -122,7 +122,8 @@ static void test_malloc(void)
 	p = expect_alloc_ok(malloc(0));
 	tmp = expect_alloc_ok(malloc(0));
 
-	__expect_cond(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
+	__expect_cond(p == tmp, true, "allocate equal 0-size buffers", __func__, __LINE__);
+	__expect_cond(p == ZERO_SIZE_PTR, true, "get ZERO_SIZE_PTR for 0-size buffers", __func__, __LINE__);
 
 	free(p);
 	free(tmp);
-- 
2.39.5



