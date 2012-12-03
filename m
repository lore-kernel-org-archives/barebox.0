Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaS3-0004wH-GD
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:24 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:25 +0000
Message-Id: <1354558114-28799-10-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6909717591045935331=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/18] UBIFS: LEB support
To: barebox@lists.infradead.org

--===============6909717591045935331==
Content-Type: text/plain

These files implement LEB properties access functions as well as the
LEB properties tree area. Also commit-related functionality of the LEB
properties subsystem are implemented.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/lprops.c     |  842 +++++++++++++++++++++++++++++++++++++
 fs/ubifs/lpt.c        | 1105 +++++++++++++++++++++++++++++++++++++++++++++++++
 fs/ubifs/lpt_commit.c |  171 ++++++++
 3 files changed, 2118 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/lprops.c
 create mode 100644 fs/ubifs/lpt.c
 create mode 100644 fs/ubifs/lpt_commit.c

diff --git a/fs/ubifs/lprops.c b/fs/ubifs/lprops.c
new file mode 100644
index 0000000..8ce4949
--- /dev/null
+++ b/fs/ubifs/lprops.c
@@ -0,0 +1,842 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License version 2 as published by
+ * the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program; if not, write to the Free Software Foundation, Inc., 51
+ * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
+ *
+ * Authors: Adrian Hunter
+ *          Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * This file implements the functions that access LEB properties and their
+ * categories. LEBs are categorized based on the needs of UBIFS, and the
+ * categories are stored as either heaps or lists to provide a fast way of
+ * finding a LEB in a particular category. For example, UBIFS may need to find
+ * an empty LEB for the journal, or a very dirty LEB for garbage collection.
+ */
+
+#include "ubifs.h"
+
+/**
+ * get_heap_comp_val - get the LEB properties value for heap comparisons.
+ * @lprops: LEB properties
+ * @cat: LEB category
+ */
+static int get_heap_comp_val(struct ubifs_lprops *lprops, int cat)
+{
+	switch (cat) {
+	case LPROPS_FREE:
+		return lprops->free;
+	case LPROPS_DIRTY_IDX:
+		return lprops->free + lprops->dirty;
+	default:
+		return lprops->dirty;
+	}
+}
+
+/**
+ * move_up_lpt_heap - move a new heap entry up as far as possible.
+ * @c: UBIFS file-system description object
+ * @heap: LEB category heap
+ * @lprops: LEB properties to move
+ * @cat: LEB category
+ *
+ * New entries to a heap are added at the bottom and then moved up until the
+ * parent's value is greater.  In the case of LPT's category heaps, the value
+ * is either the amount of free space or the amount of dirty space, depending
+ * on the category.
+ */
+static void move_up_lpt_heap(struct ubifs_info *c, struct ubifs_lpt_heap *heap,
+			     struct ubifs_lprops *lprops, int cat)
+{
+	int val1, val2, hpos;
+
+	hpos = lprops->hpos;
+	if (!hpos)
+		return; /* Already top of the heap */
+	val1 = get_heap_comp_val(lprops, cat);
+	/* Compare to parent and, if greater, move up the heap */
+	do {
+		int ppos = (hpos - 1) / 2;
+
+		val2 = get_heap_comp_val(heap->arr[ppos], cat);
+		if (val2 >= val1)
+			return;
+		/* Greater than parent so move up */
+		heap->arr[ppos]->hpos = hpos;
+		heap->arr[hpos] = heap->arr[ppos];
+		heap->arr[ppos] = lprops;
+		lprops->hpos = ppos;
+		hpos = ppos;
+	} while (hpos);
+}
+
+/**
+ * adjust_lpt_heap - move a changed heap entry up or down the heap.
+ * @c: UBIFS file-system description object
+ * @heap: LEB category heap
+ * @lprops: LEB properties to move
+ * @hpos: heap position of @lprops
+ * @cat: LEB category
+ *
+ * Changed entries in a heap are moved up or down until the parent's value is
+ * greater.  In the case of LPT's category heaps, the value is either the amount
+ * of free space or the amount of dirty space, depending on the category.
+ */
+static void adjust_lpt_heap(struct ubifs_info *c, struct ubifs_lpt_heap *heap,
+			    struct ubifs_lprops *lprops, int hpos, int cat)
+{
+	int val1, val2, val3, cpos;
+
+	val1 = get_heap_comp_val(lprops, cat);
+	/* Compare to parent and, if greater than parent, move up the heap */
+	if (hpos) {
+		int ppos = (hpos - 1) / 2;
+
+		val2 = get_heap_comp_val(heap->arr[ppos], cat);
+		if (val1 > val2) {
+			/* Greater than parent so move up */
+			while (1) {
+				heap->arr[ppos]->hpos = hpos;
+				heap->arr[hpos] = heap->arr[ppos];
+				heap->arr[ppos] = lprops;
+				lprops->hpos = ppos;
+				hpos = ppos;
+				if (!hpos)
+					return;
+				ppos = (hpos - 1) / 2;
+				val2 = get_heap_comp_val(heap->arr[ppos], cat);
+				if (val1 <= val2)
+					return;
+				/* Still greater than parent so keep going */
+			}
+		}
+	}
+
+	/* Not greater than parent, so compare to children */
+	while (1) {
+		/* Compare to left child */
+		cpos = hpos * 2 + 1;
+		if (cpos >= heap->cnt)
+			return;
+		val2 = get_heap_comp_val(heap->arr[cpos], cat);
+		if (val1 < val2) {
+			/* Less than left child, so promote biggest child */
+			if (cpos + 1 < heap->cnt) {
+				val3 = get_heap_comp_val(heap->arr[cpos + 1],
+							 cat);
+				if (val3 > val2)
+					cpos += 1; /* Right child is bigger */
+			}
+			heap->arr[cpos]->hpos = hpos;
+			heap->arr[hpos] = heap->arr[cpos];
+			heap->arr[cpos] = lprops;
+			lprops->hpos = cpos;
+			hpos = cpos;
+			continue;
+		}
+		/* Compare to right child */
+		cpos += 1;
+		if (cpos >= heap->cnt)
+			return;
+		val3 = get_heap_comp_val(heap->arr[cpos], cat);
+		if (val1 < val3) {
+			/* Less than right child, so promote right child */
+			heap->arr[cpos]->hpos = hpos;
+			heap->arr[hpos] = heap->arr[cpos];
+			heap->arr[cpos] = lprops;
+			lprops->hpos = cpos;
+			hpos = cpos;
+			continue;
+		}
+		return;
+	}
+}
+
+/**
+ * add_to_lpt_heap - add LEB properties to a LEB category heap.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to add
+ * @cat: LEB category
+ *
+ * This function returns %1 if @lprops is added to the heap for LEB category
+ * @cat, otherwise %0 is returned because the heap is full.
+ */
+static int add_to_lpt_heap(struct ubifs_info *c, struct ubifs_lprops *lprops,
+			   int cat)
+{
+	struct ubifs_lpt_heap *heap = &c->lpt_heap[cat - 1];
+
+	if (heap->cnt >= heap->max_cnt) {
+		const int b = LPT_HEAP_SZ / 2 - 1;
+		int cpos, val1, val2;
+
+		/* Compare to some other LEB on the bottom of heap */
+		/* Pick a position kind of randomly */
+		cpos = (((size_t)lprops >> 4) & b) + b;
+		ubifs_assert(cpos >= b);
+		ubifs_assert(cpos < LPT_HEAP_SZ);
+		ubifs_assert(cpos < heap->cnt);
+
+		val1 = get_heap_comp_val(lprops, cat);
+		val2 = get_heap_comp_val(heap->arr[cpos], cat);
+		if (val1 > val2) {
+			struct ubifs_lprops *lp;
+
+			lp = heap->arr[cpos];
+			lp->flags &= ~LPROPS_CAT_MASK;
+			lp->flags |= LPROPS_UNCAT;
+			list_add(&lp->list, &c->uncat_list);
+			lprops->hpos = cpos;
+			heap->arr[cpos] = lprops;
+			move_up_lpt_heap(c, heap, lprops, cat);
+			dbg_check_heap(c, heap, cat, lprops->hpos);
+			return 1; /* Added to heap */
+		}
+		dbg_check_heap(c, heap, cat, -1);
+		return 0; /* Not added to heap */
+	} else {
+		lprops->hpos = heap->cnt++;
+		heap->arr[lprops->hpos] = lprops;
+		move_up_lpt_heap(c, heap, lprops, cat);
+		dbg_check_heap(c, heap, cat, lprops->hpos);
+		return 1; /* Added to heap */
+	}
+}
+
+/**
+ * remove_from_lpt_heap - remove LEB properties from a LEB category heap.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to remove
+ * @cat: LEB category
+ */
+static void remove_from_lpt_heap(struct ubifs_info *c,
+				 struct ubifs_lprops *lprops, int cat)
+{
+	struct ubifs_lpt_heap *heap;
+	int hpos = lprops->hpos;
+
+	heap = &c->lpt_heap[cat - 1];
+	ubifs_assert(hpos >= 0 && hpos < heap->cnt);
+	ubifs_assert(heap->arr[hpos] == lprops);
+	heap->cnt -= 1;
+	if (hpos < heap->cnt) {
+		heap->arr[hpos] = heap->arr[heap->cnt];
+		heap->arr[hpos]->hpos = hpos;
+		adjust_lpt_heap(c, heap, heap->arr[hpos], hpos, cat);
+	}
+	dbg_check_heap(c, heap, cat, -1);
+}
+
+/**
+ * lpt_heap_replace - replace lprops in a category heap.
+ * @c: UBIFS file-system description object
+ * @old_lprops: LEB properties to replace
+ * @new_lprops: LEB properties with which to replace
+ * @cat: LEB category
+ *
+ * During commit it is sometimes necessary to copy a pnode (see dirty_cow_pnode)
+ * and the lprops that the pnode contains.  When that happens, references in
+ * the category heaps to those lprops must be updated to point to the new
+ * lprops.  This function does that.
+ */
+static void lpt_heap_replace(struct ubifs_info *c,
+			     struct ubifs_lprops *old_lprops,
+			     struct ubifs_lprops *new_lprops, int cat)
+{
+	struct ubifs_lpt_heap *heap;
+	int hpos = new_lprops->hpos;
+
+	heap = &c->lpt_heap[cat - 1];
+	heap->arr[hpos] = new_lprops;
+}
+
+/**
+ * ubifs_add_to_cat - add LEB properties to a category list or heap.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to add
+ * @cat: LEB category to which to add
+ *
+ * LEB properties are categorized to enable fast find operations.
+ */
+void ubifs_add_to_cat(struct ubifs_info *c, struct ubifs_lprops *lprops,
+		      int cat)
+{
+	switch (cat) {
+	case LPROPS_DIRTY:
+	case LPROPS_DIRTY_IDX:
+	case LPROPS_FREE:
+		if (add_to_lpt_heap(c, lprops, cat))
+			break;
+		/* No more room on heap so make it uncategorized */
+		cat = LPROPS_UNCAT;
+		/* Fall through */
+	case LPROPS_UNCAT:
+		list_add(&lprops->list, &c->uncat_list);
+		break;
+	case LPROPS_EMPTY:
+		list_add(&lprops->list, &c->empty_list);
+		break;
+	case LPROPS_FREEABLE:
+		list_add(&lprops->list, &c->freeable_list);
+		c->freeable_cnt += 1;
+		break;
+	case LPROPS_FRDI_IDX:
+		list_add(&lprops->list, &c->frdi_idx_list);
+		break;
+	default:
+		ubifs_assert(0);
+	}
+	lprops->flags &= ~LPROPS_CAT_MASK;
+	lprops->flags |= cat;
+}
+
+/**
+ * ubifs_remove_from_cat - remove LEB properties from a category list or heap.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to remove
+ * @cat: LEB category from which to remove
+ *
+ * LEB properties are categorized to enable fast find operations.
+ */
+static void ubifs_remove_from_cat(struct ubifs_info *c,
+				  struct ubifs_lprops *lprops, int cat)
+{
+	switch (cat) {
+	case LPROPS_DIRTY:
+	case LPROPS_DIRTY_IDX:
+	case LPROPS_FREE:
+		remove_from_lpt_heap(c, lprops, cat);
+		break;
+	case LPROPS_FREEABLE:
+		c->freeable_cnt -= 1;
+		ubifs_assert(c->freeable_cnt >= 0);
+		/* Fall through */
+	case LPROPS_UNCAT:
+	case LPROPS_EMPTY:
+	case LPROPS_FRDI_IDX:
+		ubifs_assert(!list_empty(&lprops->list));
+		list_del(&lprops->list);
+		break;
+	default:
+		ubifs_assert(0);
+	}
+}
+
+/**
+ * ubifs_replace_cat - replace lprops in a category list or heap.
+ * @c: UBIFS file-system description object
+ * @old_lprops: LEB properties to replace
+ * @new_lprops: LEB properties with which to replace
+ *
+ * During commit it is sometimes necessary to copy a pnode (see dirty_cow_pnode)
+ * and the lprops that the pnode contains. When that happens, references in
+ * category lists and heaps must be replaced. This function does that.
+ */
+void ubifs_replace_cat(struct ubifs_info *c, struct ubifs_lprops *old_lprops,
+		       struct ubifs_lprops *new_lprops)
+{
+	int cat;
+
+	cat = new_lprops->flags & LPROPS_CAT_MASK;
+	switch (cat) {
+	case LPROPS_DIRTY:
+	case LPROPS_DIRTY_IDX:
+	case LPROPS_FREE:
+		lpt_heap_replace(c, old_lprops, new_lprops, cat);
+		break;
+	case LPROPS_UNCAT:
+	case LPROPS_EMPTY:
+	case LPROPS_FREEABLE:
+	case LPROPS_FRDI_IDX:
+		list_replace(&old_lprops->list, &new_lprops->list);
+		break;
+	default:
+		ubifs_assert(0);
+	}
+}
+
+/**
+ * ubifs_ensure_cat - ensure LEB properties are categorized.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties
+ *
+ * A LEB may have fallen off of the bottom of a heap, and ended up as
+ * uncategorized even though it has enough space for us now. If that is the case
+ * this function will put the LEB back onto a heap.
+ */
+void ubifs_ensure_cat(struct ubifs_info *c, struct ubifs_lprops *lprops)
+{
+	int cat = lprops->flags & LPROPS_CAT_MASK;
+
+	if (cat != LPROPS_UNCAT)
+		return;
+	cat = ubifs_categorize_lprops(c, lprops);
+	if (cat == LPROPS_UNCAT)
+		return;
+	ubifs_remove_from_cat(c, lprops, LPROPS_UNCAT);
+	ubifs_add_to_cat(c, lprops, cat);
+}
+
+/**
+ * ubifs_categorize_lprops - categorize LEB properties.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to categorize
+ *
+ * LEB properties are categorized to enable fast find operations. This function
+ * returns the LEB category to which the LEB properties belong. Note however
+ * that if the LEB category is stored as a heap and the heap is full, the
+ * LEB properties may have their category changed to %LPROPS_UNCAT.
+ */
+int ubifs_categorize_lprops(const struct ubifs_info *c,
+			    const struct ubifs_lprops *lprops)
+{
+	if (lprops->flags & LPROPS_TAKEN)
+		return LPROPS_UNCAT;
+
+	if (lprops->free == c->leb_size) {
+		ubifs_assert(!(lprops->flags & LPROPS_INDEX));
+		return LPROPS_EMPTY;
+	}
+
+	if (lprops->free + lprops->dirty == c->leb_size) {
+		if (lprops->flags & LPROPS_INDEX)
+			return LPROPS_FRDI_IDX;
+		else
+			return LPROPS_FREEABLE;
+	}
+
+	if (lprops->flags & LPROPS_INDEX) {
+		if (lprops->dirty + lprops->free >= c->min_idx_node_sz)
+			return LPROPS_DIRTY_IDX;
+	} else {
+		if (lprops->dirty >= c->dead_wm &&
+		    lprops->dirty > lprops->free)
+			return LPROPS_DIRTY;
+		if (lprops->free > 0)
+			return LPROPS_FREE;
+	}
+
+	return LPROPS_UNCAT;
+}
+
+/**
+ * change_category - change LEB properties category.
+ * @c: UBIFS file-system description object
+ * @lprops: LEB properties to recategorize
+ *
+ * LEB properties are categorized to enable fast find operations. When the LEB
+ * properties change they must be recategorized.
+ */
+static void change_category(struct ubifs_info *c, struct ubifs_lprops *lprops)
+{
+	int old_cat = lprops->flags & LPROPS_CAT_MASK;
+	int new_cat = ubifs_categorize_lprops(c, lprops);
+
+	if (old_cat == new_cat) {
+		struct ubifs_lpt_heap *heap = &c->lpt_heap[new_cat - 1];
+
+		/* lprops on a heap now must be moved up or down */
+		if (new_cat < 1 || new_cat > LPROPS_HEAP_CNT)
+			return; /* Not on a heap */
+		heap = &c->lpt_heap[new_cat - 1];
+		adjust_lpt_heap(c, heap, lprops, lprops->hpos, new_cat);
+	} else {
+		ubifs_remove_from_cat(c, lprops, old_cat);
+		ubifs_add_to_cat(c, lprops, new_cat);
+	}
+}
+
+/**
+ * calc_dark - calculate LEB dark space size.
+ * @c: the UBIFS file-system description object
+ * @spc: amount of free and dirty space in the LEB
+ *
+ * This function calculates amount of dark space in an LEB which has @spc bytes
+ * of free and dirty space. Returns the calculations result.
+ *
+ * Dark space is the space which is not always usable - it depends on which
+ * nodes are written in which order. E.g., if an LEB has only 512 free bytes,
+ * it is dark space, because it cannot fit a large data node. So UBIFS cannot
+ * count on this LEB and treat these 512 bytes as usable because it is not true
+ * if, for example, only big chunks of uncompressible data will be written to
+ * the FS.
+ */
+static int calc_dark(struct ubifs_info *c, int spc)
+{
+	ubifs_assert(!(spc & 7));
+
+	if (spc < c->dark_wm)
+		return spc;
+
+	/*
+	 * If we have slightly more space then the dark space watermark, we can
+	 * anyway safely assume it we'll be able to write a node of the
+	 * smallest size there.
+	 */
+	if (spc - c->dark_wm < MIN_WRITE_SZ)
+		return spc - MIN_WRITE_SZ;
+
+	return c->dark_wm;
+}
+
+/**
+ * is_lprops_dirty - determine if LEB properties are dirty.
+ * @c: the UBIFS file-system description object
+ * @lprops: LEB properties to test
+ */
+static int is_lprops_dirty(struct ubifs_info *c, struct ubifs_lprops *lprops)
+{
+	struct ubifs_pnode *pnode;
+	int pos;
+
+	pos = (lprops->lnum - c->main_first) & (UBIFS_LPT_FANOUT - 1);
+	pnode = (struct ubifs_pnode *)container_of(lprops - pos,
+						   struct ubifs_pnode,
+						   lprops[0]);
+	return !test_bit(COW_ZNODE, &pnode->flags) &&
+	       test_bit(DIRTY_CNODE, &pnode->flags);
+}
+
+/**
+ * ubifs_change_lp - change LEB properties.
+ * @c: the UBIFS file-system description object
+ * @lp: LEB properties to change
+ * @free: new free space amount
+ * @dirty: new dirty space amount
+ * @flags: new flags
+ * @idx_gc_cnt: change to the count of idx_gc list
+ *
+ * This function changes LEB properties (@free, @dirty or @flag). However, the
+ * property which has the %LPROPS_NC value is not changed. Returns a pointer to
+ * the updated LEB properties on success and a negative error code on failure.
+ *
+ * Note, the LEB properties may have had to be copied (due to COW) and
+ * consequently the pointer returned may not be the same as the pointer
+ * passed.
+ */
+const struct ubifs_lprops *ubifs_change_lp(struct ubifs_info *c,
+					   const struct ubifs_lprops *lp,
+					   int free, int dirty, int flags,
+					   int idx_gc_cnt)
+{
+	/*
+	 * This is the only function that is allowed to change lprops, so we
+	 * discard the const qualifier.
+	 */
+	struct ubifs_lprops *lprops = (struct ubifs_lprops *)lp;
+
+	dbg_lp("LEB %d, free %d, dirty %d, flags %d",
+	       lprops->lnum, free, dirty, flags);
+
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+	ubifs_assert(c->lst.empty_lebs >= 0 &&
+		     c->lst.empty_lebs <= c->main_lebs);
+	ubifs_assert(c->freeable_cnt >= 0);
+	ubifs_assert(c->freeable_cnt <= c->main_lebs);
+	ubifs_assert(c->lst.taken_empty_lebs >= 0);
+	ubifs_assert(c->lst.taken_empty_lebs <= c->lst.empty_lebs);
+	ubifs_assert(!(c->lst.total_free & 7) && !(c->lst.total_dirty & 7));
+	ubifs_assert(!(c->lst.total_dead & 7) && !(c->lst.total_dark & 7));
+	ubifs_assert(!(c->lst.total_used & 7));
+	ubifs_assert(free == LPROPS_NC || free >= 0);
+	ubifs_assert(dirty == LPROPS_NC || dirty >= 0);
+
+	if (!is_lprops_dirty(c, lprops)) {
+		lprops = ubifs_lpt_lookup_dirty(c, lprops->lnum);
+		if (IS_ERR(lprops))
+			return lprops;
+	} else
+		ubifs_assert(lprops == ubifs_lpt_lookup_dirty(c, lprops->lnum));
+
+	ubifs_assert(!(lprops->free & 7) && !(lprops->dirty & 7));
+
+	spin_lock(&c->space_lock);
+	if ((lprops->flags & LPROPS_TAKEN) && lprops->free == c->leb_size)
+		c->lst.taken_empty_lebs -= 1;
+
+	if (!(lprops->flags & LPROPS_INDEX)) {
+		int old_spc;
+
+		old_spc = lprops->free + lprops->dirty;
+		if (old_spc < c->dead_wm)
+			c->lst.total_dead -= old_spc;
+		else
+			c->lst.total_dark -= calc_dark(c, old_spc);
+
+		c->lst.total_used -= c->leb_size - old_spc;
+	}
+
+	if (free != LPROPS_NC) {
+		free = ALIGN(free, 8);
+		c->lst.total_free += free - lprops->free;
+
+		/* Increase or decrease empty LEBs counter if needed */
+		if (free == c->leb_size) {
+			if (lprops->free != c->leb_size)
+				c->lst.empty_lebs += 1;
+		} else if (lprops->free == c->leb_size)
+			c->lst.empty_lebs -= 1;
+		lprops->free = free;
+	}
+
+	if (dirty != LPROPS_NC) {
+		dirty = ALIGN(dirty, 8);
+		c->lst.total_dirty += dirty - lprops->dirty;
+		lprops->dirty = dirty;
+	}
+
+	if (flags != LPROPS_NC) {
+		/* Take care about indexing LEBs counter if needed */
+		if ((lprops->flags & LPROPS_INDEX)) {
+			if (!(flags & LPROPS_INDEX))
+				c->lst.idx_lebs -= 1;
+		} else if (flags & LPROPS_INDEX)
+			c->lst.idx_lebs += 1;
+		lprops->flags = flags;
+	}
+
+	if (!(lprops->flags & LPROPS_INDEX)) {
+		int new_spc;
+
+		new_spc = lprops->free + lprops->dirty;
+		if (new_spc < c->dead_wm)
+			c->lst.total_dead += new_spc;
+		else
+			c->lst.total_dark += calc_dark(c, new_spc);
+
+		c->lst.total_used += c->leb_size - new_spc;
+	}
+
+	if ((lprops->flags & LPROPS_TAKEN) && lprops->free == c->leb_size)
+		c->lst.taken_empty_lebs += 1;
+
+	change_category(c, lprops);
+	c->idx_gc_cnt += idx_gc_cnt;
+	spin_unlock(&c->space_lock);
+	return lprops;
+}
+
+/**
+ * ubifs_get_lp_stats - get lprops statistics.
+ * @c: UBIFS file-system description object
+ * @st: return statistics
+ */
+void ubifs_get_lp_stats(struct ubifs_info *c, struct ubifs_lp_stats *lst)
+{
+	spin_lock(&c->space_lock);
+	memcpy(lst, &c->lst, sizeof(struct ubifs_lp_stats));
+	spin_unlock(&c->space_lock);
+}
+
+/**
+ * ubifs_change_one_lp - change LEB properties.
+ * @c: the UBIFS file-system description object
+ * @lnum: LEB to change properties for
+ * @free: amount of free space
+ * @dirty: amount of dirty space
+ * @flags_set: flags to set
+ * @flags_clean: flags to clean
+ * @idx_gc_cnt: change to the count of idx_gc list
+ *
+ * This function changes properties of LEB @lnum. It is a helper wrapper over
+ * 'ubifs_change_lp()' which hides lprops get/release. The arguments are the
+ * same as in case of 'ubifs_change_lp()'. Returns zero in case of success and
+ * a negative error code in case of failure.
+ */
+int ubifs_change_one_lp(struct ubifs_info *c, int lnum, int free, int dirty,
+			int flags_set, int flags_clean, int idx_gc_cnt)
+{
+	int err = 0, flags;
+	const struct ubifs_lprops *lp;
+
+	ubifs_get_lprops(c);
+
+	lp = ubifs_lpt_lookup_dirty(c, lnum);
+	if (IS_ERR(lp)) {
+		err = PTR_ERR(lp);
+		goto out;
+	}
+
+	flags = (lp->flags | flags_set) & ~flags_clean;
+	lp = ubifs_change_lp(c, lp, free, dirty, flags, idx_gc_cnt);
+	if (IS_ERR(lp))
+		err = PTR_ERR(lp);
+
+out:
+	ubifs_release_lprops(c);
+	return err;
+}
+
+/**
+ * ubifs_update_one_lp - update LEB properties.
+ * @c: the UBIFS file-system description object
+ * @lnum: LEB to change properties for
+ * @free: amount of free space
+ * @dirty: amount of dirty space to add
+ * @flags_set: flags to set
+ * @flags_clean: flags to clean
+ *
+ * This function is the same as 'ubifs_change_one_lp()' but @dirty is added to
+ * current dirty space, not substitutes it.
+ */
+int ubifs_update_one_lp(struct ubifs_info *c, int lnum, int free, int dirty,
+			int flags_set, int flags_clean)
+{
+	int err = 0, flags;
+	const struct ubifs_lprops *lp;
+
+	ubifs_get_lprops(c);
+
+	lp = ubifs_lpt_lookup_dirty(c, lnum);
+	if (IS_ERR(lp)) {
+		err = PTR_ERR(lp);
+		goto out;
+	}
+
+	flags = (lp->flags | flags_set) & ~flags_clean;
+	lp = ubifs_change_lp(c, lp, free, lp->dirty + dirty, flags, 0);
+	if (IS_ERR(lp))
+		err = PTR_ERR(lp);
+
+out:
+	ubifs_release_lprops(c);
+	return err;
+}
+
+/**
+ * ubifs_read_one_lp - read LEB properties.
+ * @c: the UBIFS file-system description object
+ * @lnum: LEB to read properties for
+ * @lp: where to store read properties
+ *
+ * This helper function reads properties of a LEB @lnum and stores them in @lp.
+ * Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+int ubifs_read_one_lp(struct ubifs_info *c, int lnum, struct ubifs_lprops *lp)
+{
+	int err = 0;
+	const struct ubifs_lprops *lpp;
+
+	ubifs_get_lprops(c);
+
+	lpp = ubifs_lpt_lookup(c, lnum);
+	if (IS_ERR(lpp)) {
+		err = PTR_ERR(lpp);
+		goto out;
+	}
+
+	memcpy(lp, lpp, sizeof(struct ubifs_lprops));
+
+out:
+	ubifs_release_lprops(c);
+	return err;
+}
+
+/**
+ * ubifs_fast_find_free - try to find a LEB with free space quickly.
+ * @c: the UBIFS file-system description object
+ *
+ * This function returns LEB properties for a LEB with free space or %NULL if
+ * the function is unable to find a LEB quickly.
+ */
+const struct ubifs_lprops *ubifs_fast_find_free(struct ubifs_info *c)
+{
+	struct ubifs_lprops *lprops;
+	struct ubifs_lpt_heap *heap;
+
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+
+	heap = &c->lpt_heap[LPROPS_FREE - 1];
+	if (heap->cnt == 0)
+		return NULL;
+
+	lprops = heap->arr[0];
+	ubifs_assert(!(lprops->flags & LPROPS_TAKEN));
+	ubifs_assert(!(lprops->flags & LPROPS_INDEX));
+	return lprops;
+}
+
+/**
+ * ubifs_fast_find_empty - try to find an empty LEB quickly.
+ * @c: the UBIFS file-system description object
+ *
+ * This function returns LEB properties for an empty LEB or %NULL if the
+ * function is unable to find an empty LEB quickly.
+ */
+const struct ubifs_lprops *ubifs_fast_find_empty(struct ubifs_info *c)
+{
+	struct ubifs_lprops *lprops;
+
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+
+	if (list_empty(&c->empty_list))
+		return NULL;
+
+	lprops = list_entry(c->empty_list.next, struct ubifs_lprops, list);
+	ubifs_assert(!(lprops->flags & LPROPS_TAKEN));
+	ubifs_assert(!(lprops->flags & LPROPS_INDEX));
+	ubifs_assert(lprops->free == c->leb_size);
+	return lprops;
+}
+
+/**
+ * ubifs_fast_find_freeable - try to find a freeable LEB quickly.
+ * @c: the UBIFS file-system description object
+ *
+ * This function returns LEB properties for a freeable LEB or %NULL if the
+ * function is unable to find a freeable LEB quickly.
+ */
+const struct ubifs_lprops *ubifs_fast_find_freeable(struct ubifs_info *c)
+{
+	struct ubifs_lprops *lprops;
+
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+
+	if (list_empty(&c->freeable_list))
+		return NULL;
+
+	lprops = list_entry(c->freeable_list.next, struct ubifs_lprops, list);
+	ubifs_assert(!(lprops->flags & LPROPS_TAKEN));
+	ubifs_assert(!(lprops->flags & LPROPS_INDEX));
+	ubifs_assert(lprops->free + lprops->dirty == c->leb_size);
+	ubifs_assert(c->freeable_cnt > 0);
+	return lprops;
+}
+
+/**
+ * ubifs_fast_find_frdi_idx - try to find a freeable index LEB quickly.
+ * @c: the UBIFS file-system description object
+ *
+ * This function returns LEB properties for a freeable index LEB or %NULL if the
+ * function is unable to find a freeable index LEB quickly.
+ */
+const struct ubifs_lprops *ubifs_fast_find_frdi_idx(struct ubifs_info *c)
+{
+	struct ubifs_lprops *lprops;
+
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+
+	if (list_empty(&c->frdi_idx_list))
+		return NULL;
+
+	lprops = list_entry(c->frdi_idx_list.next, struct ubifs_lprops, list);
+	ubifs_assert(!(lprops->flags & LPROPS_TAKEN));
+	ubifs_assert((lprops->flags & LPROPS_INDEX));
+	ubifs_assert(lprops->free + lprops->dirty == c->leb_size);
+	return lprops;
+}
diff --git a/fs/ubifs/lpt.c b/fs/ubifs/lpt.c
new file mode 100644
index 0000000..1c26171
--- /dev/null
+++ b/fs/ubifs/lpt.c
@@ -0,0 +1,1105 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License version 2 as published by
+ * the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program; if not, write to the Free Software Foundation, Inc., 51
+ * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
+ *
+ * Authors: Adrian Hunter
+ *          Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * This file implements the LEB properties tree (LPT) area. The LPT area
+ * contains the LEB properties tree, a table of LPT area eraseblocks (ltab), and
+ * (for the "big" model) a table of saved LEB numbers (lsave). The LPT area sits
+ * between the log and the orphan area.
+ *
+ * The LPT area is like a miniature self-contained file system. It is required
+ * that it never runs out of space, is fast to access and update, and scales
+ * logarithmically. The LEB properties tree is implemented as a wandering tree
+ * much like the TNC, and the LPT area has its own garbage collection.
+ *
+ * The LPT has two slightly different forms called the "small model" and the
+ * "big model". The small model is used when the entire LEB properties table
+ * can be written into a single eraseblock. In that case, garbage collection
+ * consists of just writing the whole table, which therefore makes all other
+ * eraseblocks reusable. In the case of the big model, dirty eraseblocks are
+ * selected for garbage collection, which consists of marking the clean nodes in
+ * that LEB as dirty, and then only the dirty nodes are written out. Also, in
+ * the case of the big model, a table of LEB numbers is saved so that the entire
+ * LPT does not to be scanned looking for empty eraseblocks when UBIFS is first
+ * mounted.
+ */
+
+#include "ubifs.h"
+#include "crc16.h"
+#include <linux/math64.h>
+
+/**
+ * do_calc_lpt_geom - calculate sizes for the LPT area.
+ * @c: the UBIFS file-system description object
+ *
+ * Calculate the sizes of LPT bit fields, nodes, and tree, based on the
+ * properties of the flash and whether LPT is "big" (c->big_lpt).
+ */
+static void do_calc_lpt_geom(struct ubifs_info *c)
+{
+	int i, n, bits, per_leb_wastage, max_pnode_cnt;
+	long long sz, tot_wastage;
+
+	n = c->main_lebs + c->max_leb_cnt - c->leb_cnt;
+	max_pnode_cnt = DIV_ROUND_UP(n, UBIFS_LPT_FANOUT);
+
+	c->lpt_hght = 1;
+	n = UBIFS_LPT_FANOUT;
+	while (n < max_pnode_cnt) {
+		c->lpt_hght += 1;
+		n <<= UBIFS_LPT_FANOUT_SHIFT;
+	}
+
+	c->pnode_cnt = DIV_ROUND_UP(c->main_lebs, UBIFS_LPT_FANOUT);
+
+	n = DIV_ROUND_UP(c->pnode_cnt, UBIFS_LPT_FANOUT);
+	c->nnode_cnt = n;
+	for (i = 1; i < c->lpt_hght; i++) {
+		n = DIV_ROUND_UP(n, UBIFS_LPT_FANOUT);
+		c->nnode_cnt += n;
+	}
+
+	c->space_bits = fls(c->leb_size) - 3;
+	c->lpt_lnum_bits = fls(c->lpt_lebs);
+	c->lpt_offs_bits = fls(c->leb_size - 1);
+	c->lpt_spc_bits = fls(c->leb_size);
+
+	n = DIV_ROUND_UP(c->max_leb_cnt, UBIFS_LPT_FANOUT);
+	c->pcnt_bits = fls(n - 1);
+
+	c->lnum_bits = fls(c->max_leb_cnt - 1);
+
+	bits = UBIFS_LPT_CRC_BITS + UBIFS_LPT_TYPE_BITS +
+	       (c->big_lpt ? c->pcnt_bits : 0) +
+	       (c->space_bits * 2 + 1) * UBIFS_LPT_FANOUT;
+	c->pnode_sz = (bits + 7) / 8;
+
+	bits = UBIFS_LPT_CRC_BITS + UBIFS_LPT_TYPE_BITS +
+	       (c->big_lpt ? c->pcnt_bits : 0) +
+	       (c->lpt_lnum_bits + c->lpt_offs_bits) * UBIFS_LPT_FANOUT;
+	c->nnode_sz = (bits + 7) / 8;
+
+	bits = UBIFS_LPT_CRC_BITS + UBIFS_LPT_TYPE_BITS +
+	       c->lpt_lebs * c->lpt_spc_bits * 2;
+	c->ltab_sz = (bits + 7) / 8;
+
+	bits = UBIFS_LPT_CRC_BITS + UBIFS_LPT_TYPE_BITS +
+	       c->lnum_bits * c->lsave_cnt;
+	c->lsave_sz = (bits + 7) / 8;
+
+	/* Calculate the minimum LPT size */
+	c->lpt_sz = (long long)c->pnode_cnt * c->pnode_sz;
+	c->lpt_sz += (long long)c->nnode_cnt * c->nnode_sz;
+	c->lpt_sz += c->ltab_sz;
+	if (c->big_lpt)
+		c->lpt_sz += c->lsave_sz;
+
+	/* Add wastage */
+	sz = c->lpt_sz;
+	per_leb_wastage = max_t(int, c->pnode_sz, c->nnode_sz);
+	sz += per_leb_wastage;
+	tot_wastage = per_leb_wastage;
+	while (sz > c->leb_size) {
+		sz += per_leb_wastage;
+		sz -= c->leb_size;
+		tot_wastage += per_leb_wastage;
+	}
+	tot_wastage += ALIGN(sz, c->min_io_size) - sz;
+	c->lpt_sz += tot_wastage;
+}
+
+/**
+ * ubifs_calc_lpt_geom - calculate and check sizes for the LPT area.
+ * @c: the UBIFS file-system description object
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+int ubifs_calc_lpt_geom(struct ubifs_info *c)
+{
+	int lebs_needed;
+	long long sz;
+
+	do_calc_lpt_geom(c);
+
+	/* Verify that lpt_lebs is big enough */
+	sz = c->lpt_sz * 2; /* Must have at least 2 times the size */
+	lebs_needed = div_u64(sz + c->leb_size - 1, c->leb_size);
+	if (lebs_needed > c->lpt_lebs) {
+		ubifs_err("too few LPT LEBs");
+		return -EINVAL;
+	}
+
+	/* Verify that ltab fits in a single LEB (since ltab is a single node */
+	if (c->ltab_sz > c->leb_size) {
+		ubifs_err("LPT ltab too big");
+		return -EINVAL;
+	}
+
+	c->check_lpt_free = c->big_lpt;
+	return 0;
+}
+
+/**
+ * ubifs_unpack_bits - unpack bit fields.
+ * @addr: address at which to unpack (passed and next address returned)
+ * @pos: bit position at which to unpack (passed and next position returned)
+ * @nrbits: number of bits of value to unpack (1-32)
+ *
+ * This functions returns the value unpacked.
+ */
+uint32_t ubifs_unpack_bits(uint8_t **addr, int *pos, int nrbits)
+{
+	const int k = 32 - nrbits;
+	uint8_t *p = *addr;
+	int b = *pos;
+	uint32_t uninitialized_var(val);
+	const int bytes = (nrbits + b + 7) >> 3;
+
+	ubifs_assert(nrbits > 0);
+	ubifs_assert(nrbits <= 32);
+	ubifs_assert(*pos >= 0);
+	ubifs_assert(*pos < 8);
+	if (b) {
+		switch (bytes) {
+		case 2:
+			val = p[1];
+			break;
+		case 3:
+			val = p[1] | ((uint32_t)p[2] << 8);
+			break;
+		case 4:
+			val = p[1] | ((uint32_t)p[2] << 8) |
+				     ((uint32_t)p[3] << 16);
+			break;
+		case 5:
+			val = p[1] | ((uint32_t)p[2] << 8) |
+				     ((uint32_t)p[3] << 16) |
+				     ((uint32_t)p[4] << 24);
+		}
+		val <<= (8 - b);
+		val |= *p >> b;
+		nrbits += b;
+	} else {
+		switch (bytes) {
+		case 1:
+			val = p[0];
+			break;
+		case 2:
+			val = p[0] | ((uint32_t)p[1] << 8);
+			break;
+		case 3:
+			val = p[0] | ((uint32_t)p[1] << 8) |
+				     ((uint32_t)p[2] << 16);
+			break;
+		case 4:
+			val = p[0] | ((uint32_t)p[1] << 8) |
+				     ((uint32_t)p[2] << 16) |
+				     ((uint32_t)p[3] << 24);
+			break;
+		}
+	}
+	val <<= k;
+	val >>= k;
+	b = nrbits & 7;
+	p += nrbits >> 3;
+	*addr = p;
+	*pos = b;
+	ubifs_assert((val >> nrbits) == 0 || nrbits - b == 32);
+	return val;
+}
+
+/**
+ * ubifs_add_lpt_dirt - add dirty space to LPT LEB properties.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to which to add dirty space
+ * @dirty: amount of dirty space to add
+ */
+void ubifs_add_lpt_dirt(struct ubifs_info *c, int lnum, int dirty)
+{
+	if (!dirty || !lnum)
+		return;
+	dbg_lp("LEB %d add %d to %d",
+	       lnum, dirty, c->ltab[lnum - c->lpt_first].dirty);
+	ubifs_assert(lnum >= c->lpt_first && lnum <= c->lpt_last);
+	c->ltab[lnum - c->lpt_first].dirty += dirty;
+}
+
+/**
+ * ubifs_add_nnode_dirt - add dirty space to LPT LEB properties.
+ * @c: UBIFS file-system description object
+ * @nnode: nnode for which to add dirt
+ */
+void ubifs_add_nnode_dirt(struct ubifs_info *c, struct ubifs_nnode *nnode)
+{
+	struct ubifs_nnode *np = nnode->parent;
+
+	if (np)
+		ubifs_add_lpt_dirt(c, np->nbranch[nnode->iip].lnum,
+				   c->nnode_sz);
+	else {
+		ubifs_add_lpt_dirt(c, c->lpt_lnum, c->nnode_sz);
+		if (!(c->lpt_drty_flgs & LTAB_DIRTY)) {
+			c->lpt_drty_flgs |= LTAB_DIRTY;
+			ubifs_add_lpt_dirt(c, c->ltab_lnum, c->ltab_sz);
+		}
+	}
+}
+
+/**
+ * add_pnode_dirt - add dirty space to LPT LEB properties.
+ * @c: UBIFS file-system description object
+ * @pnode: pnode for which to add dirt
+ */
+static void add_pnode_dirt(struct ubifs_info *c, struct ubifs_pnode *pnode)
+{
+	ubifs_add_lpt_dirt(c, pnode->parent->nbranch[pnode->iip].lnum,
+			   c->pnode_sz);
+}
+
+/**
+ * calc_nnode_num_from_parent - calculate nnode number.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode
+ * @iip: index in parent
+ *
+ * The nnode number is a number that uniquely identifies a nnode and can be used
+ * easily to traverse the tree from the root to that nnode.
+ *
+ * This function calculates and returns the nnode number based on the parent's
+ * nnode number and the index in parent.
+ */
+static int calc_nnode_num_from_parent(const struct ubifs_info *c,
+				      struct ubifs_nnode *parent, int iip)
+{
+	int num, shft;
+
+	if (!parent)
+		return 1;
+	shft = (c->lpt_hght - parent->level) * UBIFS_LPT_FANOUT_SHIFT;
+	num = parent->num ^ (1 << shft);
+	num |= (UBIFS_LPT_FANOUT + iip) << shft;
+	return num;
+}
+
+/**
+ * calc_pnode_num_from_parent - calculate pnode number.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode
+ * @iip: index in parent
+ *
+ * The pnode number is a number that uniquely identifies a pnode and can be used
+ * easily to traverse the tree from the root to that pnode.
+ *
+ * This function calculates and returns the pnode number based on the parent's
+ * nnode number and the index in parent.
+ */
+static int calc_pnode_num_from_parent(const struct ubifs_info *c,
+				      struct ubifs_nnode *parent, int iip)
+{
+	int i, n = c->lpt_hght - 1, pnum = parent->num, num = 0;
+
+	for (i = 0; i < n; i++) {
+		num <<= UBIFS_LPT_FANOUT_SHIFT;
+		num |= pnum & (UBIFS_LPT_FANOUT - 1);
+		pnum >>= UBIFS_LPT_FANOUT_SHIFT;
+	}
+	num <<= UBIFS_LPT_FANOUT_SHIFT;
+	num |= iip;
+	return num;
+}
+
+/**
+ * update_cats - add LEB properties of a pnode to LEB category lists and heaps.
+ * @c: UBIFS file-system description object
+ * @pnode: pnode
+ *
+ * When a pnode is loaded into memory, the LEB properties it contains are added,
+ * by this function, to the LEB category lists and heaps.
+ */
+static void update_cats(struct ubifs_info *c, struct ubifs_pnode *pnode)
+{
+	int i;
+
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		int cat = pnode->lprops[i].flags & LPROPS_CAT_MASK;
+		int lnum = pnode->lprops[i].lnum;
+
+		if (!lnum)
+			return;
+		ubifs_add_to_cat(c, &pnode->lprops[i], cat);
+	}
+}
+
+/**
+ * replace_cats - add LEB properties of a pnode to LEB category lists and heaps.
+ * @c: UBIFS file-system description object
+ * @old_pnode: pnode copied
+ * @new_pnode: pnode copy
+ *
+ * During commit it is sometimes necessary to copy a pnode
+ * (see dirty_cow_pnode).  When that happens, references in
+ * category lists and heaps must be replaced.  This function does that.
+ */
+static void replace_cats(struct ubifs_info *c, struct ubifs_pnode *old_pnode,
+			 struct ubifs_pnode *new_pnode)
+{
+	int i;
+
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		if (!new_pnode->lprops[i].lnum)
+			return;
+		ubifs_replace_cat(c, &old_pnode->lprops[i],
+				  &new_pnode->lprops[i]);
+	}
+}
+
+/**
+ * check_lpt_crc - check LPT node crc is correct.
+ * @c: UBIFS file-system description object
+ * @buf: buffer containing node
+ * @len: length of node
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int check_lpt_crc(void *buf, int len)
+{
+	int pos = 0;
+	uint8_t *addr = buf;
+	uint16_t crc, calc_crc;
+
+	crc = ubifs_unpack_bits(&addr, &pos, UBIFS_LPT_CRC_BITS);
+	calc_crc = crc16(-1, buf + UBIFS_LPT_CRC_BYTES,
+			 len - UBIFS_LPT_CRC_BYTES);
+	if (crc != calc_crc) {
+		ubifs_err("invalid crc in LPT node: crc %hx calc %hx", crc,
+			  calc_crc);
+		dbg_dump_stack();
+		return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * check_lpt_type - check LPT node type is correct.
+ * @c: UBIFS file-system description object
+ * @addr: address of type bit field is passed and returned updated here
+ * @pos: position of type bit field is passed and returned updated here
+ * @type: expected type
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int check_lpt_type(uint8_t **addr, int *pos, int type)
+{
+	int node_type;
+
+	node_type = ubifs_unpack_bits(addr, pos, UBIFS_LPT_TYPE_BITS);
+	if (node_type != type) {
+		ubifs_err("invalid type (%d) in LPT node type %d", node_type,
+			  type);
+		dbg_dump_stack();
+		return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * unpack_pnode - unpack a pnode.
+ * @c: UBIFS file-system description object
+ * @buf: buffer containing packed pnode to unpack
+ * @pnode: pnode structure to fill
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int unpack_pnode(const struct ubifs_info *c, void *buf,
+			struct ubifs_pnode *pnode)
+{
+	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
+	int i, pos = 0, err;
+
+	err = check_lpt_type(&addr, &pos, UBIFS_LPT_PNODE);
+	if (err)
+		return err;
+	if (c->big_lpt)
+		pnode->num = ubifs_unpack_bits(&addr, &pos, c->pcnt_bits);
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		struct ubifs_lprops * const lprops = &pnode->lprops[i];
+
+		lprops->free = ubifs_unpack_bits(&addr, &pos, c->space_bits);
+		lprops->free <<= 3;
+		lprops->dirty = ubifs_unpack_bits(&addr, &pos, c->space_bits);
+		lprops->dirty <<= 3;
+
+		if (ubifs_unpack_bits(&addr, &pos, 1))
+			lprops->flags = LPROPS_INDEX;
+		else
+			lprops->flags = 0;
+		lprops->flags |= ubifs_categorize_lprops(c, lprops);
+	}
+	err = check_lpt_crc(buf, c->pnode_sz);
+	return err;
+}
+
+/**
+ * ubifs_unpack_nnode - unpack a nnode.
+ * @c: UBIFS file-system description object
+ * @buf: buffer containing packed nnode to unpack
+ * @nnode: nnode structure to fill
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+int ubifs_unpack_nnode(const struct ubifs_info *c, void *buf,
+		       struct ubifs_nnode *nnode)
+{
+	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
+	int i, pos = 0, err;
+
+	err = check_lpt_type(&addr, &pos, UBIFS_LPT_NNODE);
+	if (err)
+		return err;
+	if (c->big_lpt)
+		nnode->num = ubifs_unpack_bits(&addr, &pos, c->pcnt_bits);
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		int lnum;
+
+		lnum = ubifs_unpack_bits(&addr, &pos, c->lpt_lnum_bits) +
+		       c->lpt_first;
+		if (lnum == c->lpt_last + 1)
+			lnum = 0;
+		nnode->nbranch[i].lnum = lnum;
+		nnode->nbranch[i].offs = ubifs_unpack_bits(&addr, &pos,
+						     c->lpt_offs_bits);
+	}
+	err = check_lpt_crc(buf, c->nnode_sz);
+	return err;
+}
+
+/**
+ * unpack_ltab - unpack the LPT's own lprops table.
+ * @c: UBIFS file-system description object
+ * @buf: buffer from which to unpack
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int unpack_ltab(const struct ubifs_info *c, void *buf)
+{
+	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
+	int i, pos = 0, err;
+
+	err = check_lpt_type(&addr, &pos, UBIFS_LPT_LTAB);
+	if (err)
+		return err;
+	for (i = 0; i < c->lpt_lebs; i++) {
+		int free = ubifs_unpack_bits(&addr, &pos, c->lpt_spc_bits);
+		int dirty = ubifs_unpack_bits(&addr, &pos, c->lpt_spc_bits);
+
+		if (free < 0 || free > c->leb_size || dirty < 0 ||
+		    dirty > c->leb_size || free + dirty > c->leb_size)
+			return -EINVAL;
+
+		c->ltab[i].free = free;
+		c->ltab[i].dirty = dirty;
+		c->ltab[i].tgc = 0;
+		c->ltab[i].cmt = 0;
+	}
+	err = check_lpt_crc(buf, c->ltab_sz);
+	return err;
+}
+
+/**
+ * validate_nnode - validate a nnode.
+ * @c: UBIFS file-system description object
+ * @nnode: nnode to validate
+ * @parent: parent nnode (or NULL for the root nnode)
+ * @iip: index in parent
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int validate_nnode(const struct ubifs_info *c, struct ubifs_nnode *nnode,
+			  struct ubifs_nnode *parent, int iip)
+{
+	int i, lvl, max_offs;
+
+	if (c->big_lpt) {
+		int num = calc_nnode_num_from_parent(c, parent, iip);
+
+		if (nnode->num != num)
+			return -EINVAL;
+	}
+	lvl = parent ? parent->level - 1 : c->lpt_hght;
+	if (lvl < 1)
+		return -EINVAL;
+	if (lvl == 1)
+		max_offs = c->leb_size - c->pnode_sz;
+	else
+		max_offs = c->leb_size - c->nnode_sz;
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		int lnum = nnode->nbranch[i].lnum;
+		int offs = nnode->nbranch[i].offs;
+
+		if (lnum == 0) {
+			if (offs != 0)
+				return -EINVAL;
+			continue;
+		}
+		if (lnum < c->lpt_first || lnum > c->lpt_last)
+			return -EINVAL;
+		if (offs < 0 || offs > max_offs)
+			return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * validate_pnode - validate a pnode.
+ * @c: UBIFS file-system description object
+ * @pnode: pnode to validate
+ * @parent: parent nnode
+ * @iip: index in parent
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int validate_pnode(const struct ubifs_info *c, struct ubifs_pnode *pnode,
+			  struct ubifs_nnode *parent, int iip)
+{
+	int i;
+
+	if (c->big_lpt) {
+		int num = calc_pnode_num_from_parent(c, parent, iip);
+
+		if (pnode->num != num)
+			return -EINVAL;
+	}
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		int free = pnode->lprops[i].free;
+		int dirty = pnode->lprops[i].dirty;
+
+		if (free < 0 || free > c->leb_size || free % c->min_io_size ||
+		    (free & 7))
+			return -EINVAL;
+		if (dirty < 0 || dirty > c->leb_size || (dirty & 7))
+			return -EINVAL;
+		if (dirty + free > c->leb_size)
+			return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * set_pnode_lnum - set LEB numbers on a pnode.
+ * @c: UBIFS file-system description object
+ * @pnode: pnode to update
+ *
+ * This function calculates the LEB numbers for the LEB properties it contains
+ * based on the pnode number.
+ */
+static void set_pnode_lnum(const struct ubifs_info *c,
+			   struct ubifs_pnode *pnode)
+{
+	int i, lnum;
+
+	lnum = (pnode->num << UBIFS_LPT_FANOUT_SHIFT) + c->main_first;
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		if (lnum >= c->leb_cnt)
+			return;
+		pnode->lprops[i].lnum = lnum++;
+	}
+}
+
+/**
+ * ubifs_read_nnode - read a nnode from flash and link it to the tree in memory.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode (or NULL for the root)
+ * @iip: index in parent
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+int ubifs_read_nnode(struct ubifs_info *c, struct ubifs_nnode *parent, int iip)
+{
+	struct ubifs_nbranch *branch = NULL;
+	struct ubifs_nnode *nnode = NULL;
+	void *buf = c->lpt_nod_buf;
+	int err, lnum, offs;
+
+	if (parent) {
+		branch = &parent->nbranch[iip];
+		lnum = branch->lnum;
+		offs = branch->offs;
+	} else {
+		lnum = c->lpt_lnum;
+		offs = c->lpt_offs;
+	}
+	nnode = kzalloc(sizeof(struct ubifs_nnode), GFP_NOFS);
+	if (!nnode) {
+		err = -ENOMEM;
+		goto out;
+	}
+	if (lnum == 0) {
+		/*
+		 * This nnode was not written which just means that the LEB
+		 * properties in the subtree below it describe empty LEBs. We
+		 * make the nnode as though we had read it, which in fact means
+		 * doing almost nothing.
+		 */
+		if (c->big_lpt)
+			nnode->num = calc_nnode_num_from_parent(c, parent, iip);
+	} else {
+		err = ubi_read(c->ubi, lnum, buf, offs, c->nnode_sz);
+		if (err)
+			goto out;
+		err = ubifs_unpack_nnode(c, buf, nnode);
+		if (err)
+			goto out;
+	}
+	err = validate_nnode(c, nnode, parent, iip);
+	if (err)
+		goto out;
+	if (!c->big_lpt)
+		nnode->num = calc_nnode_num_from_parent(c, parent, iip);
+	if (parent) {
+		branch->nnode = nnode;
+		nnode->level = parent->level - 1;
+	} else {
+		c->nroot = nnode;
+		nnode->level = c->lpt_hght;
+	}
+	nnode->parent = parent;
+	nnode->iip = iip;
+	return 0;
+
+out:
+	ubifs_err("error %d reading nnode at %d:%d", err, lnum, offs);
+	kfree(nnode);
+	return err;
+}
+
+/**
+ * read_pnode - read a pnode from flash and link it to the tree in memory.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode
+ * @iip: index in parent
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int read_pnode(struct ubifs_info *c, struct ubifs_nnode *parent, int iip)
+{
+	struct ubifs_nbranch *branch;
+	struct ubifs_pnode *pnode = NULL;
+	void *buf = c->lpt_nod_buf;
+	int err, lnum, offs;
+
+	branch = &parent->nbranch[iip];
+	lnum = branch->lnum;
+	offs = branch->offs;
+	pnode = kzalloc(sizeof(struct ubifs_pnode), GFP_NOFS);
+	if (!pnode) {
+		err = -ENOMEM;
+		goto out;
+	}
+	if (lnum == 0) {
+		/*
+		 * This pnode was not written which just means that the LEB
+		 * properties in it describe empty LEBs. We make the pnode as
+		 * though we had read it.
+		 */
+		int i;
+
+		if (c->big_lpt)
+			pnode->num = calc_pnode_num_from_parent(c, parent, iip);
+		for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+			struct ubifs_lprops * const lprops = &pnode->lprops[i];
+
+			lprops->free = c->leb_size;
+			lprops->flags = ubifs_categorize_lprops(c, lprops);
+		}
+	} else {
+		err = ubi_read(c->ubi, lnum, buf, offs, c->pnode_sz);
+		if (err)
+			goto out;
+		err = unpack_pnode(c, buf, pnode);
+		if (err)
+			goto out;
+	}
+	err = validate_pnode(c, pnode, parent, iip);
+	if (err)
+		goto out;
+	if (!c->big_lpt)
+		pnode->num = calc_pnode_num_from_parent(c, parent, iip);
+	branch->pnode = pnode;
+	pnode->parent = parent;
+	pnode->iip = iip;
+	set_pnode_lnum(c, pnode);
+	c->pnodes_have += 1;
+	return 0;
+
+out:
+	ubifs_err("error %d reading pnode at %d:%d", err, lnum, offs);
+	dbg_dump_pnode(c, pnode, parent, iip);
+	dbg_msg("calc num: %d", calc_pnode_num_from_parent(c, parent, iip));
+	kfree(pnode);
+	return err;
+}
+
+/**
+ * read_ltab - read LPT's own lprops table.
+ * @c: UBIFS file-system description object
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int read_ltab(struct ubifs_info *c)
+{
+	int err;
+	void *buf;
+
+	buf = vmalloc(c->ltab_sz);
+	if (!buf)
+		return -ENOMEM;
+	err = ubi_read(c->ubi, c->ltab_lnum, buf, c->ltab_offs, c->ltab_sz);
+	if (err)
+		goto out;
+	err = unpack_ltab(c, buf);
+out:
+	vfree(buf);
+	return err;
+}
+
+/**
+ * ubifs_get_nnode - get a nnode.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode (or NULL for the root)
+ * @iip: index in parent
+ *
+ * This function returns a pointer to the nnode on success or a negative error
+ * code on failure.
+ */
+struct ubifs_nnode *ubifs_get_nnode(struct ubifs_info *c,
+				    struct ubifs_nnode *parent, int iip)
+{
+	struct ubifs_nbranch *branch;
+	struct ubifs_nnode *nnode;
+	int err;
+
+	branch = &parent->nbranch[iip];
+	nnode = branch->nnode;
+	if (nnode)
+		return nnode;
+	err = ubifs_read_nnode(c, parent, iip);
+	if (err)
+		return ERR_PTR(err);
+	return branch->nnode;
+}
+
+/**
+ * ubifs_get_pnode - get a pnode.
+ * @c: UBIFS file-system description object
+ * @parent: parent nnode
+ * @iip: index in parent
+ *
+ * This function returns a pointer to the pnode on success or a negative error
+ * code on failure.
+ */
+struct ubifs_pnode *ubifs_get_pnode(struct ubifs_info *c,
+				    struct ubifs_nnode *parent, int iip)
+{
+	struct ubifs_nbranch *branch;
+	struct ubifs_pnode *pnode;
+	int err;
+
+	branch = &parent->nbranch[iip];
+	pnode = branch->pnode;
+	if (pnode)
+		return pnode;
+	err = read_pnode(c, parent, iip);
+	if (err)
+		return ERR_PTR(err);
+	update_cats(c, branch->pnode);
+	return branch->pnode;
+}
+
+/**
+ * ubifs_lpt_lookup - lookup LEB properties in the LPT.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to lookup
+ *
+ * This function returns a pointer to the LEB properties on success or a
+ * negative error code on failure.
+ */
+struct ubifs_lprops *ubifs_lpt_lookup(struct ubifs_info *c, int lnum)
+{
+	int err, i, h, iip, shft;
+	struct ubifs_nnode *nnode;
+	struct ubifs_pnode *pnode;
+
+	if (!c->nroot) {
+		err = ubifs_read_nnode(c, NULL, 0);
+		if (err)
+			return ERR_PTR(err);
+	}
+	nnode = c->nroot;
+	i = lnum - c->main_first;
+	shft = c->lpt_hght * UBIFS_LPT_FANOUT_SHIFT;
+	for (h = 1; h < c->lpt_hght; h++) {
+		iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
+		shft -= UBIFS_LPT_FANOUT_SHIFT;
+		nnode = ubifs_get_nnode(c, nnode, iip);
+		if (IS_ERR(nnode))
+			return ERR_PTR(PTR_ERR(nnode));
+	}
+	iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
+	shft -= UBIFS_LPT_FANOUT_SHIFT;
+	pnode = ubifs_get_pnode(c, nnode, iip);
+	if (IS_ERR(pnode))
+		return ERR_PTR(PTR_ERR(pnode));
+	iip = (i & (UBIFS_LPT_FANOUT - 1));
+	dbg_lp("LEB %d, free %d, dirty %d, flags %d", lnum,
+	       pnode->lprops[iip].free, pnode->lprops[iip].dirty,
+	       pnode->lprops[iip].flags);
+	return &pnode->lprops[iip];
+}
+
+/**
+ * dirty_cow_nnode - ensure a nnode is not being committed.
+ * @c: UBIFS file-system description object
+ * @nnode: nnode to check
+ *
+ * Returns dirtied nnode on success or negative error code on failure.
+ */
+static struct ubifs_nnode *dirty_cow_nnode(struct ubifs_info *c,
+					   struct ubifs_nnode *nnode)
+{
+	struct ubifs_nnode *n;
+	int i;
+
+	if (!test_bit(COW_CNODE, &nnode->flags)) {
+		/* nnode is not being committed */
+		if (!test_and_set_bit(DIRTY_CNODE, &nnode->flags)) {
+			c->dirty_nn_cnt += 1;
+			ubifs_add_nnode_dirt(c, nnode);
+		}
+		return nnode;
+	}
+
+	/* nnode is being committed, so copy it */
+	n = kmalloc(sizeof(struct ubifs_nnode), GFP_NOFS);
+	if (unlikely(!n))
+		return ERR_PTR(-ENOMEM);
+
+	memcpy(n, nnode, sizeof(struct ubifs_nnode));
+	n->cnext = NULL;
+	__set_bit(DIRTY_CNODE, &n->flags);
+	__clear_bit(COW_CNODE, &n->flags);
+
+	/* The children now have new parent */
+	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+		struct ubifs_nbranch *branch = &n->nbranch[i];
+
+		if (branch->cnode)
+			branch->cnode->parent = n;
+	}
+
+	ubifs_assert(!test_bit(OBSOLETE_CNODE, &nnode->flags));
+	__set_bit(OBSOLETE_CNODE, &nnode->flags);
+
+	c->dirty_nn_cnt += 1;
+	ubifs_add_nnode_dirt(c, nnode);
+	if (nnode->parent)
+		nnode->parent->nbranch[n->iip].nnode = n;
+	else
+		c->nroot = n;
+	return n;
+}
+
+/**
+ * dirty_cow_pnode - ensure a pnode is not being committed.
+ * @c: UBIFS file-system description object
+ * @pnode: pnode to check
+ *
+ * Returns dirtied pnode on success or negative error code on failure.
+ */
+static struct ubifs_pnode *dirty_cow_pnode(struct ubifs_info *c,
+					   struct ubifs_pnode *pnode)
+{
+	struct ubifs_pnode *p;
+
+	if (!test_bit(COW_CNODE, &pnode->flags)) {
+		/* pnode is not being committed */
+		if (!test_and_set_bit(DIRTY_CNODE, &pnode->flags)) {
+			c->dirty_pn_cnt += 1;
+			add_pnode_dirt(c, pnode);
+		}
+		return pnode;
+	}
+
+	/* pnode is being committed, so copy it */
+	p = kmalloc(sizeof(struct ubifs_pnode), GFP_NOFS);
+	if (unlikely(!p))
+		return ERR_PTR(-ENOMEM);
+
+	memcpy(p, pnode, sizeof(struct ubifs_pnode));
+	p->cnext = NULL;
+	__set_bit(DIRTY_CNODE, &p->flags);
+	__clear_bit(COW_CNODE, &p->flags);
+	replace_cats(c, pnode, p);
+
+	ubifs_assert(!test_bit(OBSOLETE_CNODE, &pnode->flags));
+	__set_bit(OBSOLETE_CNODE, &pnode->flags);
+
+	c->dirty_pn_cnt += 1;
+	add_pnode_dirt(c, pnode);
+	pnode->parent->nbranch[p->iip].pnode = p;
+	return p;
+}
+
+/**
+ * ubifs_lpt_lookup_dirty - lookup LEB properties in the LPT.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to lookup
+ *
+ * This function returns a pointer to the LEB properties on success or a
+ * negative error code on failure.
+ */
+struct ubifs_lprops *ubifs_lpt_lookup_dirty(struct ubifs_info *c, int lnum)
+{
+	int err, i, h, iip, shft;
+	struct ubifs_nnode *nnode;
+	struct ubifs_pnode *pnode;
+
+	if (!c->nroot) {
+		err = ubifs_read_nnode(c, NULL, 0);
+		if (err)
+			return ERR_PTR(err);
+	}
+	nnode = c->nroot;
+	nnode = dirty_cow_nnode(c, nnode);
+	if (IS_ERR(nnode))
+		return ERR_PTR(PTR_ERR(nnode));
+	i = lnum - c->main_first;
+	shft = c->lpt_hght * UBIFS_LPT_FANOUT_SHIFT;
+	for (h = 1; h < c->lpt_hght; h++) {
+		iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
+		shft -= UBIFS_LPT_FANOUT_SHIFT;
+		nnode = ubifs_get_nnode(c, nnode, iip);
+		if (IS_ERR(nnode))
+			return ERR_PTR(PTR_ERR(nnode));
+		nnode = dirty_cow_nnode(c, nnode);
+		if (IS_ERR(nnode))
+			return ERR_PTR(PTR_ERR(nnode));
+	}
+	iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
+	shft -= UBIFS_LPT_FANOUT_SHIFT;
+	pnode = ubifs_get_pnode(c, nnode, iip);
+	if (IS_ERR(pnode))
+		return ERR_PTR(PTR_ERR(pnode));
+	pnode = dirty_cow_pnode(c, pnode);
+	if (IS_ERR(pnode))
+		return ERR_PTR(PTR_ERR(pnode));
+	iip = (i & (UBIFS_LPT_FANOUT - 1));
+	dbg_lp("LEB %d, free %d, dirty %d, flags %d", lnum,
+	       pnode->lprops[iip].free, pnode->lprops[iip].dirty,
+	       pnode->lprops[iip].flags);
+	ubifs_assert(test_bit(DIRTY_CNODE, &pnode->flags));
+	return &pnode->lprops[iip];
+}
+
+/**
+ * lpt_init_rd - initialize the LPT for reading.
+ * @c: UBIFS file-system description object
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static int lpt_init_rd(struct ubifs_info *c)
+{
+	int err, i;
+
+	c->ltab = vmalloc(c->lpt_lebs * sizeof(struct ubifs_lpt_lprops));
+	if (!c->ltab)
+		return -ENOMEM;
+
+	i = max_t(int, c->nnode_sz, c->pnode_sz);
+	c->lpt_nod_buf = kmalloc(i, GFP_KERNEL);
+	if (!c->lpt_nod_buf)
+		return -ENOMEM;
+
+	for (i = 0; i < LPROPS_HEAP_CNT; i++) {
+		c->lpt_heap[i].arr = kmalloc(LPT_HEAP_SZ * sizeof(void *),
+					     GFP_KERNEL);
+		if (!c->lpt_heap[i].arr)
+			return -ENOMEM;
+		c->lpt_heap[i].cnt = 0;
+		c->lpt_heap[i].max_cnt = LPT_HEAP_SZ;
+	}
+
+	c->dirty_idx.arr = kmalloc(LPT_HEAP_SZ * sizeof(void *), GFP_KERNEL);
+	if (!c->dirty_idx.arr)
+		return -ENOMEM;
+	c->dirty_idx.cnt = 0;
+	c->dirty_idx.max_cnt = LPT_HEAP_SZ;
+
+	err = read_ltab(c);
+	if (err)
+		return err;
+
+	dbg_lp("space_bits %d", c->space_bits);
+	dbg_lp("lpt_lnum_bits %d", c->lpt_lnum_bits);
+	dbg_lp("lpt_offs_bits %d", c->lpt_offs_bits);
+	dbg_lp("lpt_spc_bits %d", c->lpt_spc_bits);
+	dbg_lp("pcnt_bits %d", c->pcnt_bits);
+	dbg_lp("lnum_bits %d", c->lnum_bits);
+	dbg_lp("pnode_sz %d", c->pnode_sz);
+	dbg_lp("nnode_sz %d", c->nnode_sz);
+	dbg_lp("ltab_sz %d", c->ltab_sz);
+	dbg_lp("lsave_sz %d", c->lsave_sz);
+	dbg_lp("lsave_cnt %d", c->lsave_cnt);
+	dbg_lp("lpt_hght %d", c->lpt_hght);
+	dbg_lp("big_lpt %d", c->big_lpt);
+	dbg_lp("LPT root is at %d:%d", c->lpt_lnum, c->lpt_offs);
+	dbg_lp("LPT head is at %d:%d", c->nhead_lnum, c->nhead_offs);
+	dbg_lp("LPT ltab is at %d:%d", c->ltab_lnum, c->ltab_offs);
+	if (c->big_lpt)
+		dbg_lp("LPT lsave is at %d:%d", c->lsave_lnum, c->lsave_offs);
+
+	return 0;
+}
+
+/**
+ * ubifs_lpt_init - initialize the LPT.
+ * @c: UBIFS file-system description object
+ * @rd: whether to initialize lpt for reading
+ * @wr: whether to initialize lpt for writing
+ *
+ * For mounting 'rw', @rd and @wr are both true. For mounting 'ro', @rd is true
+ * and @wr is false. For mounting from 'ro' to 'rw', @rd is false and @wr is
+ * true.
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+int ubifs_lpt_init(struct ubifs_info *c, int rd, int wr)
+{
+	int err;
+
+	if (rd) {
+		err = lpt_init_rd(c);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
diff --git a/fs/ubifs/lpt_commit.c b/fs/ubifs/lpt_commit.c
new file mode 100644
index 0000000..c0af818
--- /dev/null
+++ b/fs/ubifs/lpt_commit.c
@@ -0,0 +1,171 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License version 2 as published by
+ * the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program; if not, write to the Free Software Foundation, Inc., 51
+ * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
+ *
+ * Authors: Adrian Hunter
+ *          Artem Bityutskiy (���������������� ����������)
+ */
+
+/*
+ * This file implements commit-related functionality of the LEB properties
+ * subsystem.
+ */
+
+#include "crc16.h"
+#include "ubifs.h"
+
+/**
+ * free_obsolete_cnodes - free obsolete cnodes for commit end.
+ * @c: UBIFS file-system description object
+ */
+static void free_obsolete_cnodes(struct ubifs_info *c)
+{
+	struct ubifs_cnode *cnode, *cnext;
+
+	cnext = c->lpt_cnext;
+	if (!cnext)
+		return;
+	do {
+		cnode = cnext;
+		cnext = cnode->cnext;
+		if (test_bit(OBSOLETE_CNODE, &cnode->flags))
+			kfree(cnode);
+		else
+			cnode->cnext = NULL;
+	} while (cnext != c->lpt_cnext);
+	c->lpt_cnext = NULL;
+}
+
+/**
+ * first_nnode - find the first nnode in memory.
+ * @c: UBIFS file-system description object
+ * @hght: height of tree where nnode found is returned here
+ *
+ * This function returns a pointer to the nnode found or %NULL if no nnode is
+ * found. This function is a helper to 'ubifs_lpt_free()'.
+ */
+static struct ubifs_nnode *first_nnode(struct ubifs_info *c, int *hght)
+{
+	struct ubifs_nnode *nnode;
+	int h, i, found;
+
+	nnode = c->nroot;
+	*hght = 0;
+	if (!nnode)
+		return NULL;
+	for (h = 1; h < c->lpt_hght; h++) {
+		found = 0;
+		for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+			if (nnode->nbranch[i].nnode) {
+				found = 1;
+				nnode = nnode->nbranch[i].nnode;
+				*hght = h;
+				break;
+			}
+		}
+		if (!found)
+			break;
+	}
+	return nnode;
+}
+
+/**
+ * next_nnode - find the next nnode in memory.
+ * @c: UBIFS file-system description object
+ * @nnode: nnode from which to start.
+ * @hght: height of tree where nnode is, is passed and returned here
+ *
+ * This function returns a pointer to the nnode found or %NULL if no nnode is
+ * found. This function is a helper to 'ubifs_lpt_free()'.
+ */
+static struct ubifs_nnode *next_nnode(struct ubifs_info *c,
+				      struct ubifs_nnode *nnode, int *hght)
+{
+	struct ubifs_nnode *parent;
+	int iip, h, i, found;
+
+	parent = nnode->parent;
+	if (!parent)
+		return NULL;
+	if (nnode->iip == UBIFS_LPT_FANOUT - 1) {
+		*hght -= 1;
+		return parent;
+	}
+	for (iip = nnode->iip + 1; iip < UBIFS_LPT_FANOUT; iip++) {
+		nnode = parent->nbranch[iip].nnode;
+		if (nnode)
+			break;
+	}
+	if (!nnode) {
+		*hght -= 1;
+		return parent;
+	}
+	for (h = *hght + 1; h < c->lpt_hght; h++) {
+		found = 0;
+		for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
+			if (nnode->nbranch[i].nnode) {
+				found = 1;
+				nnode = nnode->nbranch[i].nnode;
+				*hght = h;
+				break;
+			}
+		}
+		if (!found)
+			break;
+	}
+	return nnode;
+}
+
+/**
+ * ubifs_lpt_free - free resources owned by the LPT.
+ * @c: UBIFS file-system description object
+ * @wr_only: free only resources used for writing
+ */
+void ubifs_lpt_free(struct ubifs_info *c, int wr_only)
+{
+	struct ubifs_nnode *nnode;
+	int i, hght;
+
+	/* Free write-only things first */
+
+	free_obsolete_cnodes(c); /* Leftover from a failed commit */
+
+	vfree(c->ltab_cmt);
+	c->ltab_cmt = NULL;
+	vfree(c->lpt_buf);
+	c->lpt_buf = NULL;
+	kfree(c->lsave);
+	c->lsave = NULL;
+
+	if (wr_only)
+		return;
+
+	/* Now free the rest */
+
+	nnode = first_nnode(c, &hght);
+	while (nnode) {
+		for (i = 0; i < UBIFS_LPT_FANOUT; i++)
+			kfree(nnode->nbranch[i].nnode);
+		nnode = next_nnode(c, nnode, &hght);
+	}
+	for (i = 0; i < LPROPS_HEAP_CNT; i++)
+		kfree(c->lpt_heap[i].arr);
+	kfree(c->dirty_idx.arr);
+	kfree(c->nroot);
+	vfree(c->ltab);
+	kfree(c->lpt_nod_buf);
+}
-- 
1.7.1



--===============6909717591045935331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6909717591045935331==--
