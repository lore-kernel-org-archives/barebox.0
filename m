Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQLe-0004dB-JB
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 05:10:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 07:10:50 +0200
Message-Id: <20200617051050.18150-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] tlsf: Update to v3.1
To: Barebox List <barebox@lists.infradead.org>

This updates the tlsf implementation to v3.1. This is taken from
commit deff9ab509341f264addbd3c8ada533678591905 in
https://github.com/mattconte/tlsf.git.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c      |   4 +-
 common/tlsf.c        | 411 +++++++++++++++++++++++++++----------------
 common/tlsf_malloc.c |   4 +-
 include/tlsf.h       |  86 ++++++---
 4 files changed, 327 insertions(+), 178 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 114958fbcf..57c7d6b220 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -43,7 +43,7 @@ unsigned long mem_malloc_end(void)
 
 #ifdef CONFIG_MALLOC_TLSF
 #include <tlsf.h>
-tlsf_pool tlsf_mem_pool;
+tlsf_t tlsf_mem_pool;
 #endif
 
 int mem_malloc_initialized;
@@ -59,7 +59,7 @@ void mem_malloc_init(void *start, void *end)
 	malloc_end = (unsigned long)end;
 	malloc_brk = malloc_start;
 #ifdef CONFIG_MALLOC_TLSF
-	tlsf_mem_pool = tlsf_create(start, end - start + 1);
+	tlsf_mem_pool = tlsf_create_with_pool(start, end - start + 1);
 #endif
 	mem_malloc_initialized = 1;
 }
diff --git a/common/tlsf.c b/common/tlsf.c
index ba68a5e688..86cc684ab6 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,17 +1,10 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <linux/stringify.h>
-
-#include "tlsf.h"
+#include <tlsf.h>
 #include "tlsfbits.h"
 
-#ifdef DEBUG
-#define tlsf_assert(expr)	\
-	((expr) ? (void)(0) : printf("%s\n", __stringify(expr)))
-#else
-#define tlsf_assert(expr)	(void)(0)
-#endif
+#define CHAR_BIT	8
 
 /*
 ** Constants.
@@ -20,7 +13,10 @@
 /* Public constants: may be modified. */
 enum tlsf_public
 {
-	/* log2 of number of linear subdivisions of block sizes. */
+	/* log2 of number of linear subdivisions of block sizes. Larger
+	** values require more memory in the control structure. Values of
+	** 4 or 5 are typical.
+	*/
 	SL_INDEX_COUNT_LOG2 = 5,
 };
 
@@ -87,7 +83,6 @@ enum tlsf_private
 #define tlsf_static_assert(exp) \
 	typedef char _tlsf_glue(static_assert, __LINE__) [(exp) ? 1 : -1]
 
-#ifndef __BAREBOX__
 /* This code has been tested on 32- and 64-bit (LP/LLP) architectures. */
 tlsf_static_assert(sizeof(int) * CHAR_BIT == 32);
 tlsf_static_assert(sizeof(size_t) * CHAR_BIT >= 32);
@@ -98,7 +93,6 @@ tlsf_static_assert(sizeof(unsigned int) * CHAR_BIT >= SL_INDEX_COUNT);
 
 /* Ensure we've properly tuned our sizes. */
 tlsf_static_assert(ALIGN_SIZE == SMALL_BLOCK_SIZE / SL_INDEX_COUNT);
-#endif
 
 /*
 ** Data structures and associated constants.
@@ -156,8 +150,8 @@ static const size_t block_size_min =
 static const size_t block_size_max = tlsf_cast(size_t, 1) << FL_INDEX_MAX;
 
 
-/* The TLSF pool structure. */
-typedef struct pool_t
+/* The TLSF control structure. */
+typedef struct control_t
 {
 	/* Empty lists point at this block to indicate they are free. */
 	block_header_t block_null;
@@ -168,7 +162,7 @@ typedef struct pool_t
 
 	/* Head of free lists. */
 	block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];
-} pool_t;
+} control_t;
 
 /* A type used for casting when doing pointer arithmetic. */
 typedef ptrdiff_t tlsfptr_t;
@@ -190,7 +184,7 @@ static void block_set_size(block_header_t* block, size_t size)
 
 static int block_is_last(const block_header_t* block)
 {
-	return 0 == block_size(block);
+	return block_size(block) == 0;
 }
 
 static int block_is_free(const block_header_t* block)
@@ -244,6 +238,7 @@ static block_header_t* offset_to_block(const void* ptr, size_t size)
 /* Return location of previous block. */
 static block_header_t* block_prev(const block_header_t* block)
 {
+	tlsf_assert(block_is_prev_free(block) && "previous block must be free");
 	return block->prev_phys_block;
 }
 
@@ -306,10 +301,15 @@ static void* align_ptr(const void* ptr, size_t align)
 static size_t adjust_request_size(size_t size, size_t align)
 {
 	size_t adjust = 0;
-	if (size && size < block_size_max)
+	if (size)
 	{
 		const size_t aligned = align_up(size, align);
-		adjust = tlsf_max(aligned, block_size_min);
+
+		/* aligned sized must not exceed block_size_max or we'll go out of bounds on sl_bitmap */
+		if (aligned < block_size_max)
+		{
+			adjust = tlsf_max(aligned, block_size_min);
+		}
 	}
 	return adjust;
 }
@@ -341,7 +341,7 @@ static void mapping_insert(size_t size, int* fli, int* sli)
 /* This version rounds up to the next block size (for allocations) */
 static void mapping_search(size_t size, int* fli, int* sli)
 {
-	if (size >= (1 << SL_INDEX_COUNT_LOG2))
+	if (size >= SMALL_BLOCK_SIZE)
 	{
 		const size_t round = (1 << (tlsf_fls_sizet(size) - SL_INDEX_COUNT_LOG2)) - 1;
 		size += round;
@@ -349,7 +349,7 @@ static void mapping_search(size_t size, int* fli, int* sli)
 	mapping_insert(size, fli, sli);
 }
 
-static block_header_t* search_suitable_block(pool_t* pool, int* fli, int* sli)
+static block_header_t* search_suitable_block(control_t* control, int* fli, int* sli)
 {
 	int fl = *fli;
 	int sl = *sli;
@@ -358,31 +358,31 @@ static block_header_t* search_suitable_block(pool_t* pool, int* fli, int* sli)
 	** First, search for a block in the list associated with the given
 	** fl/sl index.
 	*/
-	unsigned int sl_map = pool->sl_bitmap[fl] & (~0 << sl);
+	unsigned int sl_map = control->sl_bitmap[fl] & (~0U << sl);
 	if (!sl_map)
 	{
 		/* No block exists. Search in the next largest first-level list. */
-		const unsigned int fl_map = pool->fl_bitmap & (~0 << (fl + 1));
+		const unsigned int fl_map = control->fl_bitmap & (~0U << (fl + 1));
 		if (!fl_map)
 		{
 			/* No free blocks available, memory has been exhausted. */
-			return NULL;
+			return 0;
 		}
 
 		fl = tlsf_ffs(fl_map);
 		*fli = fl;
-		sl_map = pool->sl_bitmap[fl];
+		sl_map = control->sl_bitmap[fl];
 	}
 	tlsf_assert(sl_map && "internal error - second level bitmap is null");
 	sl = tlsf_ffs(sl_map);
 	*sli = sl;
 
 	/* Return the first block in the free list. */
-	return pool->blocks[fl][sl];
+	return control->blocks[fl][sl];
 }
 
 /* Remove a free block from the free list.*/
-static void remove_free_block(pool_t* pool, block_header_t* block, int fl, int sl)
+static void remove_free_block(control_t* control, block_header_t* block, int fl, int sl)
 {
 	block_header_t* prev = block->prev_free;
 	block_header_t* next = block->next_free;
@@ -392,32 +392,32 @@ static void remove_free_block(pool_t* pool, block_header_t* block, int fl, int s
 	prev->next_free = next;
 
 	/* If this block is the head of the free list, set new head. */
-	if (pool->blocks[fl][sl] == block)
+	if (control->blocks[fl][sl] == block)
 	{
-		pool->blocks[fl][sl] = next;
+		control->blocks[fl][sl] = next;
 
 		/* If the new head is null, clear the bitmap. */
-		if (next == &pool->block_null)
+		if (next == &control->block_null)
 		{
-			pool->sl_bitmap[fl] &= ~(1 << sl);
+			control->sl_bitmap[fl] &= ~(1U << sl);
 
 			/* If the second bitmap is now empty, clear the fl bitmap. */
-			if (!pool->sl_bitmap[fl])
+			if (!control->sl_bitmap[fl])
 			{
-				pool->fl_bitmap &= ~(1 << fl);
+				control->fl_bitmap &= ~(1U << fl);
 			}
 		}
 	}
 }
 
 /* Insert a free block into the free block list. */
-static void insert_free_block(pool_t* pool, block_header_t* block, int fl, int sl)
+static void insert_free_block(control_t* control, block_header_t* block, int fl, int sl)
 {
-	block_header_t* current = pool->blocks[fl][sl];
+	block_header_t* current = control->blocks[fl][sl];
 	tlsf_assert(current && "free list cannot have a null entry");
 	tlsf_assert(block && "cannot insert a null entry into the free list");
 	block->next_free = current;
-	block->prev_free = &pool->block_null;
+	block->prev_free = &control->block_null;
 	current->prev_free = block;
 
 	tlsf_assert(block_to_ptr(block) == align_ptr(block_to_ptr(block), ALIGN_SIZE)
@@ -426,25 +426,25 @@ static void insert_free_block(pool_t* pool, block_header_t* block, int fl, int s
 	** Insert the new block at the head of the list, and mark the first-
 	** and second-level bitmaps appropriately.
 	*/
-	pool->blocks[fl][sl] = block;
-	pool->fl_bitmap |= (1 << fl);
-	pool->sl_bitmap[fl] |= (1 << sl);
+	control->blocks[fl][sl] = block;
+	control->fl_bitmap |= (1U << fl);
+	control->sl_bitmap[fl] |= (1U << sl);
 }
 
 /* Remove a given block from the free list. */
-static void block_remove(pool_t* pool, block_header_t* block)
+static void block_remove(control_t* control, block_header_t* block)
 {
 	int fl, sl;
 	mapping_insert(block_size(block), &fl, &sl);
-	remove_free_block(pool, block, fl, sl);
+	remove_free_block(control, block, fl, sl);
 }
 
 /* Insert a given block into the free list. */
-static void block_insert(pool_t* pool, block_header_t* block)
+static void block_insert(control_t* control, block_header_t* block)
 {
 	int fl, sl;
 	mapping_insert(block_size(block), &fl, &sl);
-	insert_free_block(pool, block, fl, sl);
+	insert_free_block(control, block, fl, sl);
 }
 
 static int block_can_split(block_header_t* block, size_t size)
@@ -477,7 +477,7 @@ static block_header_t* block_split(block_header_t* block, size_t size)
 /* Absorb a free block's storage into an adjacent previous free block. */
 static block_header_t* block_absorb(block_header_t* prev, block_header_t* block)
 {
-	tlsf_assert(!block_is_last(prev) && "previous block can't be last!");
+	tlsf_assert(!block_is_last(prev) && "previous block can't be last");
 	/* Note: Leaves flags untouched. */
 	prev->size += block_size(block) + block_header_overhead;
 	block_link_next(prev);
@@ -485,14 +485,14 @@ static block_header_t* block_absorb(block_header_t* prev, block_header_t* block)
 }
 
 /* Merge a just-freed block with an adjacent previous free block. */
-static block_header_t* block_merge_prev(pool_t* pool, block_header_t* block)
+static block_header_t* block_merge_prev(control_t* control, block_header_t* block)
 {
 	if (block_is_prev_free(block))
 	{
 		block_header_t* prev = block_prev(block);
 		tlsf_assert(prev && "prev physical block can't be null");
 		tlsf_assert(block_is_free(prev) && "prev block is not free though marked as such");
-		block_remove(pool, prev);
+		block_remove(control, prev);
 		block = block_absorb(prev, block);
 	}
 
@@ -500,15 +500,15 @@ static block_header_t* block_merge_prev(pool_t* pool, block_header_t* block)
 }
 
 /* Merge a just-freed block with an adjacent free block. */
-static block_header_t* block_merge_next(pool_t* pool, block_header_t* block)
+static block_header_t* block_merge_next(control_t* control, block_header_t* block)
 {
 	block_header_t* next = block_next(block);
 	tlsf_assert(next && "next physical block can't be null");
 
 	if (block_is_free(next))
 	{
-		tlsf_assert(!block_is_last(block) && "previous block can't be last!");
-		block_remove(pool, next);
+		tlsf_assert(!block_is_last(block) && "previous block can't be last");
+		block_remove(control, next);
 		block = block_absorb(block, next);
 	}
 
@@ -516,7 +516,7 @@ static block_header_t* block_merge_next(pool_t* pool, block_header_t* block)
 }
 
 /* Trim any trailing block space off the end of a block, return to pool. */
-static void block_trim_free(pool_t* pool, block_header_t* block, size_t size)
+static void block_trim_free(control_t* control, block_header_t* block, size_t size)
 {
 	tlsf_assert(block_is_free(block) && "block must be free");
 	if (block_can_split(block, size))
@@ -524,12 +524,12 @@ static void block_trim_free(pool_t* pool, block_header_t* block, size_t size)
 		block_header_t* remaining_block = block_split(block, size);
 		block_link_next(block);
 		block_set_prev_free(remaining_block);
-		block_insert(pool, remaining_block);
+		block_insert(control, remaining_block);
 	}
 }
 
 /* Trim any trailing block space off the end of a used block, return to pool. */
-static void block_trim_used(pool_t* pool, block_header_t* block, size_t size)
+static void block_trim_used(control_t* control, block_header_t* block, size_t size)
 {
 	tlsf_assert(!block_is_free(block) && "block must be used");
 	if (block_can_split(block, size))
@@ -538,12 +538,12 @@ static void block_trim_used(pool_t* pool, block_header_t* block, size_t size)
 		block_header_t* remaining_block = block_split(block, size);
 		block_set_prev_used(remaining_block);
 
-		remaining_block = block_merge_next(pool, remaining_block);
-		block_insert(pool, remaining_block);
+		remaining_block = block_merge_next(control, remaining_block);
+		block_insert(control, remaining_block);
 	}
 }
 
-static block_header_t* block_trim_free_leading(pool_t* pool, block_header_t* block, size_t size)
+static block_header_t* block_trim_free_leading(control_t* control, block_header_t* block, size_t size)
 {
 	block_header_t* remaining_block = block;
 	if (block_can_split(block, size))
@@ -553,38 +553,49 @@ static block_header_t* block_trim_free_leading(pool_t* pool, block_header_t* blo
 		block_set_prev_free(remaining_block);
 
 		block_link_next(block);
-		block_insert(pool, block);
+		block_insert(control, block);
 	}
 
 	return remaining_block;
 }
 
-static block_header_t* block_locate_free(pool_t* pool, size_t size)
+static block_header_t* block_locate_free(control_t* control, size_t size)
 {
 	int fl = 0, sl = 0;
-	block_header_t* block = NULL;
+	block_header_t* block = 0;
 
 	if (size)
 	{
 		mapping_search(size, &fl, &sl);
-		block = search_suitable_block(pool, &fl, &sl);
+
+		/*
+		** mapping_search can futz with the size, so for excessively large sizes it can sometimes wind up
+		** with indices that are off the end of the block array.
+		** So, we protect against that here, since this is the only callsite of mapping_search.
+		** Note that we don't need to check sl, since it comes from a modulo operation that guarantees it's always in range.
+		*/
+		if (fl < FL_INDEX_COUNT)
+		{
+			block = search_suitable_block(control, &fl, &sl);
+		}
 	}
 
 	if (block)
 	{
 		tlsf_assert(block_size(block) >= size);
-		remove_free_block(pool, block, fl, sl);
+		remove_free_block(control, block, fl, sl);
 	}
 
 	return block;
 }
 
-static void* block_prepare_used(pool_t* pool, block_header_t* block, size_t size)
+static void* block_prepare_used(control_t* control, block_header_t* block, size_t size)
 {
-	void* p = NULL;
+	void* p = 0;
 	if (block)
 	{
-		block_trim_free(pool, block, size);
+		tlsf_assert(size && "size must be non-zero");
+		block_trim_free(control, block, size);
 		block_mark_as_used(block);
 		p = block_to_ptr(block);
 	}
@@ -592,20 +603,20 @@ static void* block_prepare_used(pool_t* pool, block_header_t* block, size_t size
 }
 
 /* Clear structure and point all empty lists at the null block. */
-static void pool_construct(pool_t* pool)
+static void control_construct(control_t* control)
 {
 	int i, j;
 
-	pool->block_null.next_free = &pool->block_null;
-	pool->block_null.prev_free = &pool->block_null;
+	control->block_null.next_free = &control->block_null;
+	control->block_null.prev_free = &control->block_null;
 
-	pool->fl_bitmap = 0;
+	control->fl_bitmap = 0;
 	for (i = 0; i < FL_INDEX_COUNT; ++i)
 	{
-		pool->sl_bitmap[i] = 0;
+		control->sl_bitmap[i] = 0;
 		for (j = 0; j < SL_INDEX_COUNT; ++j)
 		{
-			pool->blocks[i][j] = &pool->block_null;
+			control->blocks[i][j] = &control->block_null;
 		}
 	}
 }
@@ -631,6 +642,7 @@ static void integrity_walker(void* ptr, size_t size, int used, void* user)
 	const size_t this_block_size = block_size(block);
 
 	int status = 0;
+	(void)used;
 	tlsf_insist(integ->prev_status == this_prev_status && "prev status incorrect");
 	tlsf_insist(size == this_block_size && "block size incorrect");
 
@@ -638,27 +650,22 @@ static void integrity_walker(void* ptr, size_t size, int used, void* user)
 	integ->status += status;
 }
 
-int tlsf_check_heap(tlsf_pool tlsf)
+int tlsf_check(tlsf_t tlsf)
 {
 	int i, j;
 
-	pool_t* pool = tlsf_cast(pool_t*, tlsf);
+	control_t* control = tlsf_cast(control_t*, tlsf);
 	int status = 0;
 
-	/* Check that the blocks are physically correct. */
-	integrity_t integ = { 0, 0 };
-	tlsf_walk_heap(tlsf, integrity_walker, &integ);
-	status = integ.status;
-
 	/* Check that the free lists and bitmaps are accurate. */
 	for (i = 0; i < FL_INDEX_COUNT; ++i)
 	{
 		for (j = 0; j < SL_INDEX_COUNT; ++j)
 		{
-			const int fl_map = pool->fl_bitmap & (1 << i);
-			const int sl_list = pool->sl_bitmap[i];
-			const int sl_map = sl_list & (1 << j);
-			const block_header_t* block = pool->blocks[i][j];
+			const int fl_map = control->fl_bitmap & (1U << i);
+			const int sl_list = control->sl_bitmap[i];
+			const int sl_map = sl_list & (1U << j);
+			const block_header_t* block = control->blocks[i][j];
 
 			/* Check that first- and second-level lists agree. */
 			if (!fl_map)
@@ -668,15 +675,15 @@ int tlsf_check_heap(tlsf_pool tlsf)
 
 			if (!sl_map)
 			{
-				tlsf_insist(block == &pool->block_null && "block list must be null");
+				tlsf_insist(block == &control->block_null && "block list must be null");
 				continue;
 			}
 
 			/* Check that there is at least one free block. */
 			tlsf_insist(sl_list && "no free blocks in second-level map");
-			tlsf_insist(block != &pool->block_null && "block should not be null");
+			tlsf_insist(block != &control->block_null && "block should not be null");
 
-			while (block != &pool->block_null)
+			while (block != &control->block_null)
 			{
 				int fli, sli;
 				tlsf_insist(block_is_free(block) && "block should be free");
@@ -703,15 +710,15 @@ static void default_walker(void* ptr, size_t size, int used, void* user)
 	printf("\t%p %s size: %x (%p)\n", ptr, used ? "used" : "free", (unsigned int)size, block_from_ptr(ptr));
 }
 
-void tlsf_walk_heap(tlsf_pool pool, tlsf_walker walker, void* user)
+void tlsf_walk_pool(pool_t pool, tlsf_walker walker, void* user)
 {
-	tlsf_walker heap_walker = walker ? walker : default_walker;
+	tlsf_walker pool_walker = walker ? walker : default_walker;
 	block_header_t* block =
-		offset_to_block(pool, sizeof(pool_t) - block_header_overhead);
+		offset_to_block(pool, -(int)block_header_overhead);
 
 	while (block && !block_is_last(block))
 	{
-		heap_walker(
+		pool_walker(
 			block_to_ptr(block),
 			block_size(block),
 			!block_is_free(block),
@@ -731,31 +738,125 @@ size_t tlsf_block_size(void* ptr)
 	return size;
 }
 
+int tlsf_check_pool(pool_t pool)
+{
+	/* Check that the blocks are physically correct. */
+	integrity_t integ = { 0, 0 };
+	tlsf_walk_pool(pool, integrity_walker, &integ);
+
+	return integ.status;
+}
+
 /*
-** Overhead of the TLSF structures in a given memory block passed to
-** tlsf_create, equal to the size of a pool_t plus overhead of the initial
-** free block and the sentinel block.
+** Size of the TLSF structures in a given memory block passed to
+** tlsf_create, equal to the size of a control_t
 */
-size_t tlsf_overhead(void)
+size_t tlsf_size(void)
+{
+	return sizeof(control_t);
+}
+
+size_t tlsf_align_size(void)
+{
+	return ALIGN_SIZE;
+}
+
+size_t tlsf_block_size_min(void)
+{
+	return block_size_min;
+}
+
+size_t tlsf_block_size_max(void)
 {
-	const size_t pool_overhead = sizeof(pool_t) + 2 * block_header_overhead;
-	return pool_overhead;
+	return block_size_max;
 }
 
 /*
-** TLSF main interface. Right out of the white paper.
+** Overhead of the TLSF structures in a given memory block passed to
+** tlsf_add_pool, equal to the overhead of a free block and the
+** sentinel block.
 */
+size_t tlsf_pool_overhead(void)
+{
+	return 2 * block_header_overhead;
+}
 
-tlsf_pool tlsf_create(void* mem, size_t bytes)
+size_t tlsf_alloc_overhead(void)
+{
+	return block_header_overhead;
+}
+
+pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 {
 	block_header_t* block;
 	block_header_t* next;
 
-	const size_t pool_overhead = tlsf_overhead();
+	const size_t pool_overhead = tlsf_pool_overhead();
 	const size_t pool_bytes = align_down(bytes - pool_overhead, ALIGN_SIZE);
-	pool_t* pool = tlsf_cast(pool_t*, mem);
 
-#ifdef DEBUG
+	if (((ptrdiff_t)mem % ALIGN_SIZE) != 0)
+	{
+		printf("tlsf_add_pool: Memory must be aligned by %u bytes.\n",
+			(unsigned int)ALIGN_SIZE);
+		return 0;
+	}
+
+	if (pool_bytes < block_size_min || pool_bytes > block_size_max)
+	{
+#if defined (TLSF_64BIT)
+		printf("tlsf_add_pool: Memory size must be between 0x%x and 0x%x00 bytes.\n",
+			(unsigned int)(pool_overhead + block_size_min),
+			(unsigned int)((pool_overhead + block_size_max) / 256));
+#else
+		printf("tlsf_add_pool: Memory size must be between %u and %u bytes.\n",
+			(unsigned int)(pool_overhead + block_size_min),
+			(unsigned int)(pool_overhead + block_size_max));
+#endif
+		return 0;
+	}
+
+	/*
+	** Create the main free block. Offset the start of the block slightly
+	** so that the prev_phys_block field falls outside of the pool -
+	** it will never be used.
+	*/
+	block = offset_to_block(mem, -(tlsfptr_t)block_header_overhead);
+	block_set_size(block, pool_bytes);
+	block_set_free(block);
+	block_set_prev_used(block);
+	block_insert(tlsf_cast(control_t*, tlsf), block);
+
+	/* Split the block to create a zero-size sentinel block. */
+	next = block_link_next(block);
+	block_set_size(next, 0);
+	block_set_used(next);
+	block_set_prev_free(next);
+
+	return mem;
+}
+
+void tlsf_remove_pool(tlsf_t tlsf, pool_t pool)
+{
+	control_t* control = tlsf_cast(control_t*, tlsf);
+	block_header_t* block = offset_to_block(pool, -(int)block_header_overhead);
+
+	int fl = 0, sl = 0;
+
+	tlsf_assert(block_is_free(block) && "block should be free");
+	tlsf_assert(!block_is_free(block_next(block)) && "next block should not be free");
+	tlsf_assert(block_size(block_next(block)) == 0 && "next block size should be zero");
+
+	mapping_insert(block_size(block), &fl, &sl);
+	remove_free_block(control, block, fl, sl);
+}
+
+/*
+** TLSF main interface.
+*/
+
+#ifdef _DEBUG
+int test_ffs_fls()
+{
 	/* Verify ffs/fls work properly. */
 	int rv = 0;
 	rv += (tlsf_ffs(0) == -1) ? 0 : 0x1;
@@ -771,74 +872,72 @@ tlsf_pool tlsf_create(void* mem, size_t bytes)
 	rv += (tlsf_fls_sizet(0x80000000) == 31) ? 0 : 0x100;
 	rv += (tlsf_fls_sizet(0x100000000) == 32) ? 0 : 0x200;
 	rv += (tlsf_fls_sizet(0xffffffffffffffff) == 63) ? 0 : 0x400;
+#endif
+
 	if (rv)
 	{
-		printf("tlsf_create: %x ffs/fls tests failed!\n", rv);
-		return 0;
+		printf("test_ffs_fls: %x ffs/fls tests failed.\n", rv);
 	}
-#endif
+	return rv;
+}
 #endif
 
-	if (pool_bytes < block_size_min || pool_bytes > block_size_max)
+tlsf_t tlsf_create(void* mem)
+{
+#ifdef _DEBUG
+	if (test_ffs_fls())
 	{
-#if defined (TLSF_64BIT)
-		printf("tlsf_create: Pool size must be at least %d bytes.\n",
-			(unsigned int)(pool_overhead + block_size_min));
-#else
-		printf("tlsf_create: Pool size must be between %u and %u bytes.\n",
-			(unsigned int)(pool_overhead + block_size_min),
-			(unsigned int)(pool_overhead + block_size_max));
-#endif
-		return NULL;
+		return 0;
 	}
+#endif
 
-	/* Construct a valid pool object. */
-	pool_construct(pool);
+	if (((tlsfptr_t)mem % ALIGN_SIZE) != 0)
+	{
+		printf("tlsf_create: Memory must be aligned to %u bytes.\n",
+			(unsigned int)ALIGN_SIZE);
+		return 0;
+	}
 
-	/*
-	** Create the main free block. Offset the start of the block slightly
-	** so that the prev_phys_block field falls inside of the pool
-	** structure - it will never be used.
-	*/
-	block = offset_to_block(
-		tlsf_cast(void*, pool), sizeof(pool_t) - block_header_overhead);
-	block_set_size(block, pool_bytes);
-	block_set_free(block);
-	block_set_prev_used(block);
-	block_insert(pool, block);
+	control_construct(tlsf_cast(control_t*, mem));
 
-	/* Split the block to create a zero-size pool sentinel block. */
-	next = block_link_next(block);
-	block_set_size(next, 0);
-	block_set_used(next);
-	block_set_prev_free(next);
+	return tlsf_cast(tlsf_t, mem);
+}
 
-	return tlsf_cast(tlsf_pool, pool);
+tlsf_t tlsf_create_with_pool(void* mem, size_t bytes)
+{
+	tlsf_t tlsf = tlsf_create(mem);
+	tlsf_add_pool(tlsf, (char*)mem + tlsf_size(), bytes - tlsf_size());
+	return tlsf;
 }
 
-void tlsf_destroy(tlsf_pool pool)
+void tlsf_destroy(tlsf_t tlsf)
 {
 	/* Nothing to do. */
-	pool = pool;
+	(void)tlsf;
+}
+
+pool_t tlsf_get_pool(tlsf_t tlsf)
+{
+	return tlsf_cast(pool_t, (char*)tlsf + tlsf_size());
 }
 
-void* tlsf_malloc(tlsf_pool tlsf, size_t size)
+void* tlsf_malloc(tlsf_t tlsf, size_t size)
 {
-	pool_t* pool = tlsf_cast(pool_t*, tlsf);
+	control_t* control = tlsf_cast(control_t*, tlsf);
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
-	block_header_t* block = block_locate_free(pool, adjust);
-	return block_prepare_used(pool, block, adjust);
+	block_header_t* block = block_locate_free(control, adjust);
+	return block_prepare_used(control, block, adjust);
 }
 
-void* tlsf_memalign(tlsf_pool tlsf, size_t align, size_t size)
+void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 {
-	pool_t* pool = tlsf_cast(pool_t*, tlsf);
+	control_t* control = tlsf_cast(control_t*, tlsf);
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
 
 	/*
 	** We must allocate an additional minimum block size bytes so that if
 	** our free block will leave an alignment gap which is smaller, we can
-	** trim a leading free block and release it back to the heap. We must
+	** trim a leading free block and release it back to the pool. We must
 	** do this because the previous physical block is in use, therefore
 	** the prev_phys_block field is not valid, and we can't simply adjust
 	** the size of that block.
@@ -846,10 +945,13 @@ void* tlsf_memalign(tlsf_pool tlsf, size_t align, size_t size)
 	const size_t gap_minimum = sizeof(block_header_t);
 	const size_t size_with_gap = adjust_request_size(adjust + align + gap_minimum, align);
 
-	/* If alignment is less than or equals base alignment, we're done. */
-	const size_t aligned_size = (align <= ALIGN_SIZE) ? adjust : size_with_gap;
+	/*
+	** If alignment is less than or equals base alignment, we're done.
+	** If we requested 0 bytes, return null, as tlsf_malloc(0) does.
+	*/
+	const size_t aligned_size = (adjust && align > ALIGN_SIZE) ? size_with_gap : adjust;
 
-	block_header_t* block = block_locate_free(pool, aligned_size);
+	block_header_t* block = block_locate_free(control, aligned_size);
 
 	/* This can't be a static assert. */
 	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_overhead);
@@ -877,24 +979,25 @@ void* tlsf_memalign(tlsf_pool tlsf, size_t align, size_t size)
 		if (gap)
 		{
 			tlsf_assert(gap >= gap_minimum && "gap size too small");
-			block = block_trim_free_leading(pool, block, gap);
+			block = block_trim_free_leading(control, block, gap);
 		}
 	}
 
-	return block_prepare_used(pool, block, adjust);
+	return block_prepare_used(control, block, adjust);
 }
 
-void tlsf_free(tlsf_pool tlsf, void* ptr)
+void tlsf_free(tlsf_t tlsf, void* ptr)
 {
 	/* Don't attempt to free a NULL pointer. */
 	if (ptr)
 	{
-		pool_t* pool = tlsf_cast(pool_t*, tlsf);
+		control_t* control = tlsf_cast(control_t*, tlsf);
 		block_header_t* block = block_from_ptr(ptr);
+		tlsf_assert(!block_is_free(block) && "block already marked as free");
 		block_mark_as_free(block);
-		block = block_merge_prev(pool, block);
-		block = block_merge_next(pool, block);
-		block_insert(pool, block);
+		block = block_merge_prev(control, block);
+		block = block_merge_next(control, block);
+		block_insert(control, block);
 	}
 }
 
@@ -911,10 +1014,10 @@ void tlsf_free(tlsf_pool tlsf, void* ptr)
 ** - an extended buffer size will leave the newly-allocated area with
 **   contents undefined
 */
-void* tlsf_realloc(tlsf_pool tlsf, void* ptr, size_t size)
+void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size)
 {
-	pool_t* pool = tlsf_cast(pool_t*, tlsf);
-	void* p = NULL;
+	control_t* control = tlsf_cast(control_t*, tlsf);
+	void* p = 0;
 
 	/* Zero-size requests are treated as free. */
 	if (ptr && size == 0)
@@ -935,6 +1038,8 @@ void* tlsf_realloc(tlsf_pool tlsf, void* ptr, size_t size)
 		const size_t combined = cursize + block_size(next) + block_header_overhead;
 		const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
 
+		tlsf_assert(!block_is_free(block) && "block already marked as free");
+
 		/*
 		** If the next block is used, or when combined with the current
 		** block, does not offer enough space, we must reallocate and copy.
@@ -954,12 +1059,12 @@ void* tlsf_realloc(tlsf_pool tlsf, void* ptr, size_t size)
 			/* Do we need to expand to the next block? */
 			if (adjust > cursize)
 			{
-				block_merge_next(pool, block);
+				block_merge_next(control, block);
 				block_mark_as_used(block);
 			}
 
 			/* Trim the resulting block and return the original pointer. */
-			block_trim_used(pool, block, adjust);
+			block_trim_used(control, block, adjust);
 			p = ptr;
 		}
 	}
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 9cb9ede62c..48a56d8656 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -23,7 +23,7 @@
 #include <module.h>
 #include <tlsf.h>
 
-extern tlsf_pool tlsf_mem_pool;
+extern tlsf_t tlsf_mem_pool;
 
 void *malloc(size_t bytes)
 {
@@ -91,7 +91,7 @@ void malloc_stats(void)
 	s.used = 0;
 	s.free = 0;
 
-	tlsf_walk_heap(tlsf_mem_pool, malloc_walker, &s);
+	tlsf_walk_pool(tlsf_get_pool(tlsf_mem_pool), malloc_walker, &s);
 
 	printf("used: %zu\nfree: %zu\n", s.used, s.free);
 }
diff --git a/include/tlsf.h b/include/tlsf.h
index 1917fa111b..7015de0eb5 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -2,46 +2,90 @@
 #define INCLUDED_tlsf
 
 /*
-** Two Level Segregated Fit memory allocator, version 1.9.
-** Written by Matthew Conte, and placed in the Public Domain.
+** Two Level Segregated Fit memory allocator, version 3.1.
+** Written by Matthew Conte
 **	http://tlsf.baisoku.org
 **
 ** Based on the original documentation by Miguel Masmano:
-**	http://rtportal.upv.es/rtmalloc/allocators/tlsf/index.shtml
-**
-** Please see the accompanying Readme.txt for implementation
-** notes and caveats.
+**	http://www.gii.upv.es/tlsf/main/docs
 **
 ** This implementation was written to the specification
 ** of the document, therefore no GPL restrictions apply.
+** 
+** Copyright (c) 2006-2016, Matthew Conte
+** All rights reserved.
+** 
+** Redistribution and use in source and binary forms, with or without
+** modification, are permitted provided that the following conditions are met:
+**     * Redistributions of source code must retain the above copyright
+**       notice, this list of conditions and the following disclaimer.
+**     * Redistributions in binary form must reproduce the above copyright
+**       notice, this list of conditions and the following disclaimer in the
+**       documentation and/or other materials provided with the distribution.
+**     * Neither the name of the copyright holder nor the
+**       names of its contributors may be used to endorse or promote products
+**       derived from this software without specific prior written permission.
+** 
+** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+** ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+** WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+** DISCLAIMED. IN NO EVENT SHALL MATTHEW CONTE BE LIABLE FOR ANY
+** DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+** (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+** LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+** ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+** SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
 #if defined(__cplusplus)
 extern "C" {
 #endif
 
+#define tlsf_assert(expr) do {                              \
+        if (unlikely(!(expr))) {                            \
+                printf(#expr "%s %d\n", __FILE__, __LINE__); \
+        }                                                   \
+} while (0)
+
+/* tlsf_t: a TLSF structure. Can contain 1 to N pools. */
+/* pool_t: a block of memory that TLSF can manage. */
+typedef void* tlsf_t;
+typedef void* pool_t;
+
 /* Create/destroy a memory pool. */
-typedef void* tlsf_pool;
-tlsf_pool tlsf_create(void* mem, size_t bytes);
-void tlsf_destroy(tlsf_pool pool);
+tlsf_t tlsf_create(void* mem);
+tlsf_t tlsf_create_with_pool(void* mem, size_t bytes);
+void tlsf_destroy(tlsf_t tlsf);
+pool_t tlsf_get_pool(tlsf_t tlsf);
 
-/* malloc/memalign/realloc/free replacements. */
-void* tlsf_malloc(tlsf_pool pool, size_t bytes);
-void* tlsf_memalign(tlsf_pool pool, size_t align, size_t bytes);
-void* tlsf_realloc(tlsf_pool pool, void* ptr, size_t size);
-void tlsf_free(tlsf_pool pool, void* ptr);
+/* Add/remove memory pools. */
+pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes);
+void tlsf_remove_pool(tlsf_t tlsf, pool_t pool);
 
-/* Debugging. */
-typedef void (*tlsf_walker)(void* ptr, size_t size, int used, void* user);
-void tlsf_walk_heap(tlsf_pool pool, tlsf_walker walker, void* user);
-/* Returns nonzero if heap check fails. */
-int tlsf_check_heap(tlsf_pool pool);
+/* malloc/memalign/realloc/free replacements. */
+void* tlsf_malloc(tlsf_t tlsf, size_t bytes);
+void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t bytes);
+void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size);
+void tlsf_free(tlsf_t tlsf, void* ptr);
 
 /* Returns internal block size, not original request size */
 size_t tlsf_block_size(void* ptr);
 
-/* Overhead of per-pool internal structures. */
-size_t tlsf_overhead(void);
+/* Overheads/limits of internal structures. */
+size_t tlsf_size(void);
+size_t tlsf_align_size(void);
+size_t tlsf_block_size_min(void);
+size_t tlsf_block_size_max(void);
+size_t tlsf_pool_overhead(void);
+size_t tlsf_alloc_overhead(void);
+
+/* Debugging. */
+typedef void (*tlsf_walker)(void* ptr, size_t size, int used, void* user);
+void tlsf_walk_pool(pool_t pool, tlsf_walker walker, void* user);
+/* Returns nonzero if any internal consistency check fails. */
+int tlsf_check(tlsf_t tlsf);
+int tlsf_check_pool(pool_t pool);
 
 #if defined(__cplusplus)
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
