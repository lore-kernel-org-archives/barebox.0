Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4OzF-0000vV-93
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 06:34:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 08:34:21 +0200
Message-Id: <1404801262-27616-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] dlmalloc: remove unused functions
To: barebox@lists.infradead.org

remove unused function declarations and definitions:

- vallocc is #if 0 in source code
- pvalloc is defined but not used
- cfree is defined but not used
- malloc_usable_size is unused
- mallopt is not defined
- mallinfo is not defined

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dlmalloc.c | 169 ------------------------------------------------------
 include/malloc.h  |   7 ---
 2 files changed, 176 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index d831e90..499ec93 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1712,29 +1712,6 @@ void *memalign(size_t alignment, size_t bytes)
 	return chunk2mem(p);
 }
 
-#if 0
-/*
- * valloc just invokes memalign with alignment argument equal
- * to the page size of the system (or as near to this as can
- * be figured out from all the includes/defines above.)
- */
-void *valloc(size_t bytes)
-{
-	return memalign(malloc_getpagesize, bytes);
-}
-#endif
-
-/*
- * pvalloc just invokes valloc for the nearest pagesize
- * that will accommodate request
- */
-void *pvalloc (size_t bytes)
-{
-	size_t pagesize = malloc_getpagesize;
-
-	return memalign(pagesize, (bytes + pagesize - 1) & ~(pagesize - 1));
-}
-
 /*
  *
  * calloc calls malloc, then zeroes out the allocated chunk.
@@ -1774,115 +1751,6 @@ void *calloc(size_t n, size_t elem_size)
 	}
 }
 
-/*
- *
- * cfree just calls free. It is needed/defined on some systems
- * that pair it with calloc, presumably for odd historical reasons.
- */
-#if !defined(INTERNAL_LINUX_C_LIB) || !defined(__ELF__)
-void cfree(void *mem)
-{
-	free(mem);
-}
-#endif
-
-/*
-    Malloc_trim gives memory back to the system (via negative
-    arguments to sbrk) if there is unused memory at the `high' end of
-    the malloc pool. You can call this after freeing large blocks of
-    memory to potentially reduce the system-level memory requirements
-    of a program. However, it cannot guarantee to reduce memory. Under
-    some allocation patterns, some large free blocks of memory will be
-    locked between two used chunks, so they cannot be given back to
-    the system.
-
-    The `pad' argument to malloc_trim represents the amount of free
-    trailing space to leave untrimmed. If this argument is zero,
-    only the minimum amount of memory to maintain internal data
-    structures will be left (one page or less). Non-zero arguments
-    can be supplied to maintain enough trailing space to service
-    future expected allocations without having to re-obtain memory
-    from the system.
-
-    Malloc_trim returns 1 if it actually released any memory, else 0.
-*/
-#ifdef USE_MALLOC_TRIM
-int malloc_trim(size_t pad)
-{
-	long top_size;		/* Amount of top-most memory */
-	long extra;		/* Amount to release */
-	char *current_brk;	/* address returned by pre-check sbrk call */
-	char *new_brk;		/* address returned by negative sbrk call */
-
-	unsigned long pagesz = malloc_getpagesize;
-
-	top_size = chunksize(top);
-	extra = ((top_size - pad - MINSIZE + (pagesz - 1)) / pagesz -
-		 1) * pagesz;
-
-	if (extra < (long)pagesz)	/* Not enough memory to release */
-		return 0;
-
-	else {
-		/* Test to make sure no one else called sbrk */
-		current_brk = (char*)(sbrk(0));
-		if (current_brk != (char*)(top) + top_size)
-			return 0;	/* Apparently we don't own memory; must fail */
-
-		else {
-			new_brk = (char *) (sbrk(-extra));
-
-			if (new_brk == (char*)(NULL)) {	/* sbrk failed? */
-				/* Try to figure out what we have */
-				current_brk = (char*)(sbrk (0));
-				top_size = current_brk - (char*) top;
-				if (top_size >= (long)MINSIZE) { /* if not, we are very very dead! */
-					sbrked_mem = current_brk - sbrk_base;
-					set_head(top, top_size | PREV_INUSE);
-				}
-				return 0;
-			}
-
-			else {
-				/* Success. Adjust top accordingly. */
-				set_head(top, (top_size - extra) | PREV_INUSE);
-				sbrked_mem -= extra;
-				return 1;
-			}
-		}
-	}
-}
-#endif
-
-/*
- * malloc_usable_size:
- *
- * This routine tells you how many bytes you can actually use in an
- * allocated chunk, which may be more than you requested (although
- * often not). You can use this many bytes without worrying about
- * overwriting other allocated objects. Not a particularly great
- * programming practice, but still sometimes useful.
- */
-size_t malloc_usable_size(void *mem)
-{
-	mchunkptr p;
-
-	if (!mem)
-		return 0;
-	else {
-		p = mem2chunk(mem);
-		if (!chunk_is_mmapped(p)) {
-			if (!inuse(p))
-				return 0;
-			return chunksize(p) - SIZE_SZ;
-		}
-		return chunksize(p) - 2 * SIZE_SZ;
-	}
-}
-
-
-
-
 /* Utility to update current_mallinfo for malloc_stats and mallinfo() */
 
 #ifdef CONFIG_CMD_MEMINFO
@@ -1956,43 +1824,6 @@ void malloc_stats(void)
 #endif /* CONFIG_CMD_MEMINFO */
 
 /*
-  mallopt:
-
-    mallopt is the general SVID/XPG interface to tunable parameters.
-    The format is to provide a (parameter-number, parameter-value) pair.
-    mallopt then sets the corresponding parameter to the argument
-    value if it can (i.e., so long as the value is meaningful),
-    and returns 1 if successful else 0.
-
-    See descriptions of tunable parameters above.
-*/
-#ifndef __BAREBOX__
-int mallopt(int param_number, int value)
-{
-	switch (param_number) {
-	case M_TRIM_THRESHOLD:
-		trim_threshold = value;
-		return 1;
-	case M_TOP_PAD:
-		top_pad = value;
-		return 1;
-	case M_MMAP_THRESHOLD:
-		mmap_threshold = value;
-		return 1;
-	case M_MMAP_MAX:
-		if (value != 0)
-			return 0;
-		else
-			n_mmaps_max = value;
-		return 1;
-
-	default:
-		return 0;
-	}
-}
-#endif
-
-/*
 
 History:
 
diff --git a/include/malloc.h b/include/malloc.h
index 7b9b062..46147bc 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -9,15 +9,8 @@ void* malloc(size_t);
 void free(void*);
 void* realloc(void*, size_t);
 void* memalign(size_t, size_t);
-void* vallocc(size_t);
-void* pvalloc(size_t);
 void* calloc(size_t, size_t);
-void cfree(void*);
-int malloc_trim(size_t);
-size_t malloc_usable_size(void*);
 void malloc_stats(void);
-int mallopt(int, int);
-struct mallinfo mallinfo(void);
 void *sbrk(ptrdiff_t increment);
 
 #endif
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
