Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj6-0005rE-7F
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:57 +0200
Message-Id: <1287492930-15716-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/42] dlmalloc: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dlmalloc.c |   41 +++++++++++++++++++++--------------------
 1 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 83b1e18..ff63fbe 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -792,7 +792,7 @@ typedef struct malloc_chunk *mbinptr;
 #define IAV(i)  bin_at(i), bin_at(i)
 
 static mbinptr av_[NAV * 2 + 2] = {
-	0, 0,
+	NULL, NULL,
 	IAV (0), IAV (1), IAV (2), IAV (3), IAV (4), IAV (5), IAV (6), IAV (7),
 	IAV (8), IAV (9), IAV (10), IAV (11), IAV (12), IAV (13), IAV (14),
 	IAV (15),
@@ -1209,7 +1209,7 @@ void *malloc(size_t bytes)
 	INTERNAL_SIZE_T nb;
 
 	if ((long) bytes < 0)
-		return 0;
+		return NULL;
 
 	nb = request2size(bytes); /* padded request size; */
 
@@ -1364,7 +1364,7 @@ void *malloc(size_t bytes)
 		/* Try to extend */
 		malloc_extend_top(nb);
 		if ((remainder_size = chunksize(top) - nb) < (long) MINSIZE)
-			return 0;	/* propagate failure */
+			return NULL;	/* propagate failure */
 	}
 
 	victim = top;
@@ -1405,7 +1405,7 @@ void free(void *mem)
 	mchunkptr fwd;		/* misc temp for linking */
 	int islr;		/* track whether merging with last_remainder */
 
-	if (mem == 0)		/* free(0) has no effect */
+	if (!mem)		/* free(0) has no effect */
 		return;
 
 	p = mem2chunk(mem);
@@ -1524,15 +1524,15 @@ void *realloc(void *oldmem, size_t bytes)
 #ifdef REALLOC_ZERO_BYTES_FREES
 	if (bytes == 0) {
 		free(oldmem);
-		return 0;
+		return NULL;
 	}
 #endif
 
 	if ((long)bytes < 0)
-		return 0;
+		return NULL;
 
 	/* realloc of null is supposed to be same as malloc */
-	if (oldmem == 0)
+	if (!oldmem)
 		return malloc(bytes);
 
 	newp = oldp = mem2chunk(oldmem);
@@ -1570,7 +1570,7 @@ void *realloc(void *oldmem, size_t bytes)
 				goto split;
 			}
 		} else {
-			next = 0;
+			next = NULL;
 			nextsize = 0;
 		}
 
@@ -1582,7 +1582,7 @@ void *realloc(void *oldmem, size_t bytes)
 
 			/* try forward + backward first to save a later consolidation */
 
-			if (next != 0) {
+			if (next) {
 				/* into top */
 				if (next == top) {
 					if ((long)
@@ -1618,8 +1618,7 @@ void *realloc(void *oldmem, size_t bytes)
 			}
 
 			/* backward only */
-			if (prev != 0
-			    && (long)(prevsize + newsize) >= (long)nb) {
+			if (prev && (long)(prevsize + newsize) >= (long)nb) {
 				unlink(prev, bck, fwd);
 				newp = prev;
 				newsize += prevsize;
@@ -1633,8 +1632,8 @@ void *realloc(void *oldmem, size_t bytes)
 
 		newmem = malloc(bytes);
 
-		if (newmem == 0)	/* propagate failure */
-			return 0;
+		if (!newmem)	/* propagate failure */
+			return NULL;
 
 		/* Avoid copy if newp is next chunk after oldp. */
 		/* (This can only happen when new chunk is sbrk'ed.) */
@@ -1697,7 +1696,7 @@ void *memalign(size_t alignment, size_t bytes)
 	long remainder_size;	/* its size */
 
 	if ((long) bytes < 0)
-		return 0;
+		return NULL;
 
 	/* If need less alignment than we give anyway, just relay to malloc */
 
@@ -1714,8 +1713,8 @@ void *memalign(size_t alignment, size_t bytes)
 	nb = request2size(bytes);
 	m = (char*)(malloc (nb + alignment + MINSIZE));
 
-	if (m == 0)
-		return 0;	/* propagate failure */
+	if (!m)
+		return NULL;	/* propagate failure */
 
 	p = mem2chunk(m);
 
@@ -1763,6 +1762,7 @@ void *memalign(size_t alignment, size_t bytes)
 	return chunk2mem(p);
 }
 
+#if 0
 /*
  * valloc just invokes memalign with alignment argument equal
  * to the page size of the system (or as near to this as can
@@ -1772,6 +1772,7 @@ void *valloc(size_t bytes)
 {
 	return memalign(malloc_getpagesize, bytes);
 }
+#endif
 
 /*
  * pvalloc just invokes valloc for the nearest pagesize
@@ -1802,10 +1803,10 @@ void *calloc(size_t n, size_t elem_size)
 	void *mem = malloc(sz);
 
 	if ((long)n < 0)
-		return 0;
+		return NULL;
 
-	if (mem == 0)
-		return 0;
+	if (!mem)
+		return NULL;
 	else {
 		p = mem2chunk(mem);
 
@@ -1915,7 +1916,7 @@ size_t malloc_usable_size(void *mem)
 {
 	mchunkptr p;
 
-	if (mem == 0)
+	if (!mem)
 		return 0;
 	else {
 		p = mem2chunk(mem);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
