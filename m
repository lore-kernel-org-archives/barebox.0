Delivery-date: Mon, 25 Nov 2024 16:21:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFate-000FnW-2X
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:21:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFate-0001sf-8k
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:21:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+VgE4PsZOwYJjiT1pVxrZ3y/NRNsBv/zkSxGEftQWI=; b=j3Sq04hECMzSYGSTtCptlwi/Nz
	tGrMMgONQQSOfZ5YiwrnxNmciwGbMn72svX5twGxGGTP5mPrBp0hiEVvXN5CA4jLRlk4l3flHoSc3
	ZY3rRYOe7Ljbefm6OH89RLGJONqJMYVDhFQ87l+nENRMCVCU1H8lORPkiIuQMb8M+LcePzFWWiysJ
	vhoYLE2NKbcUiPRwyUCmMOvspx+UIDlAeU4QDD01Tarrh8C2kOWvkStT/HXEwLAbyID65gWdk49Nb
	8UHhSCwpkNR1ocPJXzawkLkhDYUsq/B+lwrjQoXVXVG/vE43wsg0WSeARaOqf6TVBnU6QBQzrsYbP
	jycHbrnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFatB-00000008SCS-2FzO;
	Mon, 25 Nov 2024 15:20:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat8-00000008S96-3abE
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasz-0001VL-Gv; Mon, 25 Nov 2024 16:20:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0006Ol-1o;
	Mon, 25 Nov 2024 16:20:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0020Cn-21;
	Mon, 25 Nov 2024 16:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:20:20 +0100
Message-Id: <20241125152024.477375-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152024.477375-1-a.fatoum@pengutronix.de>
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072035_054544_2F1E153D 
X-CRM114-Status: GOOD (  25.27  )
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
Subject: [PATCH 1/5] dlmalloc: add aliases with dl as prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tlsf function already have tlsf_ as prefix. Let's add dl as prefix for
the dlmalloc functions.

The point of this is that we can at a later time start compiling in more
than one allocator into barebox: An allocator that's being fuzzed and
one for everything else (normally libc malloc).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/dlmalloc.c  | 66 ++++++++++++++++++++++++----------------------
 include/dlmalloc.h | 15 +++++++++++
 2 files changed, 49 insertions(+), 32 deletions(-)
 create mode 100644 include/dlmalloc.h

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index f92863f180d5..7993a20e0bd4 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -4,6 +4,7 @@
 #include <malloc.h>
 #include <string.h>
 #include <memory.h>
+#include <dlmalloc.h>
 #include <linux/overflow.h>
 #include <linux/build_bug.h>
 
@@ -34,38 +35,29 @@
 
   (Much fuller descriptions are contained in the program documentation below.)
 
-  malloc(size_t n);
+  dlmalloc(size_t n);
      Return a pointer to a newly allocated chunk of at least n bytes, or null
      if no space is available.
-  free(Void_t* p);
+  dlfree(Void_t* p);
      Release the chunk of memory pointed to by p, or no effect if p is null.
-  realloc(Void_t* p, size_t n);
+  dlrealloc(Void_t* p, size_t n);
      Return a pointer to a chunk of size n that contains the same data
      as does chunk p up to the minimum of (n, p's size) bytes, or null
      if no space is available. The returned pointer may or may not be
      the same as p. If p is null, equivalent to malloc.  Unless the
      #define REALLOC_ZERO_BYTES_FREES below is set, realloc with a
      size argument of zero (re)allocates a minimum-sized chunk.
-  memalign(size_t alignment, size_t n);
+  dlmemalign(size_t alignment, size_t n);
      Return a pointer to a newly allocated chunk of n bytes, aligned
      in accord with the alignment argument, which must be a power of
      two.
-  valloc(size_t n);
-     Equivalent to memalign(pagesize, n), where pagesize is the page
-     size of the system (or as near to this as can be figured out from
-     all the includes/defines below.)
-  pvalloc(size_t n);
-     Equivalent to valloc(minimum-page-that-holds(n)), that is,
-     round up n to nearest pagesize.
-  calloc(size_t unit, size_t quantity);
+  dlcalloc(size_t unit, size_t quantity);
      Returns a pointer to quantity * unit bytes, with all locations
      set to zero.
-  cfree(Void_t* p);
-     Equivalent to free(p).
   malloc_trim(size_t pad);
      Release all but pad bytes of freed top-most memory back
      to the system. Return 1 if successful, else 0.
-  malloc_usable_size(Void_t* p);
+  dlmalloc_usable_size(Void_t* p);
      Report the number usable allocated bytes associated with allocated
      chunk p. This may or may not report more bytes than were requested,
      due to alignment and minimum size constraints.
@@ -1083,7 +1075,7 @@ static void malloc_extend_top(INTERNAL_SIZE_T nb)
 				SIZE_SZ | PREV_INUSE;
 			/* If possible, release the rest. */
 			if (old_top_size >= MINSIZE)
-				free(chunk2mem (old_top));
+				dlfree(chunk2mem (old_top));
 		}
 	}
 
@@ -1152,7 +1144,7 @@ static void malloc_extend_top(INTERNAL_SIZE_T nb)
       chunk borders either a previously allocated and still in-use chunk,
       or the base of its memory arena.)
 */
-void *malloc(size_t bytes)
+void *dlmalloc(size_t bytes)
 {
 	mchunkptr victim;	/* inspected/selected chunk */
 	INTERNAL_SIZE_T victim_size;	/* its size */
@@ -1357,7 +1349,7 @@ void *malloc(size_t bytes)
 	  placed in corresponding bins. (This includes the case of
 	  consolidating with the current `last_remainder').
 */
-void free(void *mem)
+void dlfree(void *mem)
 {
 	mchunkptr p;		/* chunk corresponding to mem */
 	INTERNAL_SIZE_T hd;	/* its head field */
@@ -1432,7 +1424,7 @@ void free(void *mem)
 		frontlink(p, sz, idx, bck, fwd);
 }
 
-size_t malloc_usable_size(void *mem)
+size_t dlmalloc_usable_size(void *mem)
 {
 	mchunkptr p;
 
@@ -1474,7 +1466,7 @@ size_t malloc_usable_size(void *mem)
     and allowing it would also allow too many other incorrect
     usages of realloc to be sensible.
 */
-void *realloc(void *oldmem, size_t bytes)
+void *dlrealloc(void *oldmem, size_t bytes)
 {
 	INTERNAL_SIZE_T nb;	/* padded request size */
 
@@ -1499,7 +1491,7 @@ void *realloc(void *oldmem, size_t bytes)
 
 #ifdef REALLOC_ZERO_BYTES_FREES
 	if (bytes == 0) {
-		free(oldmem);
+		dlfree(oldmem);
 		return NULL;
 	}
 #endif
@@ -1511,7 +1503,7 @@ void *realloc(void *oldmem, size_t bytes)
 
 	/* realloc of null is supposed to be same as malloc */
 	if (!oldmem)
-		return malloc(bytes);
+		return dlmalloc(bytes);
 
 	newp = oldp = mem2chunk(oldmem);
 	newsize = oldsize = chunksize(oldp);
@@ -1608,7 +1600,7 @@ void *realloc(void *oldmem, size_t bytes)
 
 		/* Must allocate */
 
-		newmem = malloc(bytes);
+		newmem = dlmalloc(bytes);
 
 		if (!newmem)	/* propagate failure */
 			return NULL;
@@ -1624,7 +1616,7 @@ void *realloc(void *oldmem, size_t bytes)
 
 		/* Otherwise copy, free, and exit */
 		memcpy(newmem, oldmem, oldsize - SIZE_SZ);
-		free(oldmem);
+		dlfree(oldmem);
 		return newmem;
 	}
 
@@ -1637,7 +1629,7 @@ void *realloc(void *oldmem, size_t bytes)
 		set_head_size(newp, nb);
 		set_head(remainder, remainder_size | PREV_INUSE);
 		set_inuse_bit_at_offset(remainder, remainder_size);
-		free (chunk2mem(remainder)); /* let free() deal with it */
+		dlfree(chunk2mem(remainder)); /* let free() deal with it */
 	} else {
 		set_head_size(newp, newsize);
 		set_inuse_bit_at_offset(newp, newsize);
@@ -1661,7 +1653,7 @@ void *realloc(void *oldmem, size_t bytes)
 
     Overreliance on memalign is a sure way to fragment space.
 */
-void *memalign(size_t alignment, size_t bytes)
+void *dlmemalign(size_t alignment, size_t bytes)
 {
 	INTERNAL_SIZE_T nb;	/* padded  request size */
 	char *m;		/* memory returned by malloc call */
@@ -1681,7 +1673,7 @@ void *memalign(size_t alignment, size_t bytes)
 	/* If need less alignment than we give anyway, just relay to malloc */
 
 	if (alignment <= MALLOC_ALIGNMENT)
-		return malloc(bytes);
+		return dlmalloc(bytes);
 
 	/* Otherwise, ensure that it is at least a minimum chunk size */
 
@@ -1691,7 +1683,7 @@ void *memalign(size_t alignment, size_t bytes)
 	/* Call malloc with worst case padding to hit alignment. */
 
 	nb = request2size(bytes);
-	m = (char*)(malloc (nb + alignment + MINSIZE));
+	m = (char*)(dlmalloc(nb + alignment + MINSIZE));
 
 	if (!m)
 		return NULL;	/* propagate failure */
@@ -1724,7 +1716,7 @@ void *memalign(size_t alignment, size_t bytes)
 		set_head(newp, newsize | PREV_INUSE);
 		set_inuse_bit_at_offset(newp, newsize);
 		set_head_size(p, leadsize);
-		free(chunk2mem(p));
+		dlfree(chunk2mem(p));
 		p = newp;
 	}
 
@@ -1736,7 +1728,7 @@ void *memalign(size_t alignment, size_t bytes)
 		remainder = chunk_at_offset(p, nb);
 		set_head(remainder, remainder_size | PREV_INUSE);
 		set_head_size(p, nb);
-		free (chunk2mem(remainder));
+		dlfree(chunk2mem(remainder));
 	}
 
 	return chunk2mem(p);
@@ -1747,7 +1739,7 @@ void *memalign(size_t alignment, size_t bytes)
  * calloc calls malloc, then zeroes out the allocated chunk.
  *
  */
-void *calloc(size_t n, size_t elem_size)
+void *dlcalloc(size_t n, size_t elem_size)
 {
 	mchunkptr p;
 	INTERNAL_SIZE_T csz;
@@ -1763,7 +1755,7 @@ void *calloc(size_t n, size_t elem_size)
 		return NULL;
 	}
 
-	mem = malloc(sz);
+	mem = dlmalloc(sz);
 
 	if (!mem)
 		return NULL;
@@ -1959,7 +1951,17 @@ void malloc_stats(void)
 
 */
 
+#ifdef CONFIG_MALLOC_DLMALLOC
+void *malloc(size_t) __alias(dlmalloc);
 EXPORT_SYMBOL(malloc);
+void *calloc(size_t, size_t) __alias(dlcalloc);
 EXPORT_SYMBOL(calloc);
+void free(void *) __alias(dlfree);
 EXPORT_SYMBOL(free);
+void *realloc(void *, size_t) __alias(dlrealloc);
 EXPORT_SYMBOL(realloc);
+void *memalign(size_t, size_t) __alias(dlmemalign);
+EXPORT_SYMBOL(memalign);
+size_t malloc_usable_size(void *) __alias(dlmalloc_usable_size);
+EXPORT_SYMBOL(malloc_usable_size);
+#endif
diff --git a/include/dlmalloc.h b/include/dlmalloc.h
new file mode 100644
index 000000000000..90b647314230
--- /dev/null
+++ b/include/dlmalloc.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DLMALLOC_H
+#define __DLMALLOC_H
+
+#include <linux/compiler.h>
+#include <types.h>
+
+void *dlmalloc(size_t) __alloc_size(1);
+size_t dlmalloc_usable_size(void *);
+void dlfree(void *);
+void *dlrealloc(void *, size_t) __realloc_size(2);
+void *dlmemalign(size_t, size_t) __alloc_size(2);
+void *dlcalloc(size_t, size_t) __alloc_size(1, 2);
+
+#endif /* __DLMALLOC_H */
-- 
2.39.5



