Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRr-0004t9-DN
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:05 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:26 +0000
Message-Id: <1354558114-28799-11-git-send-email-renaud.barbier@ge.com>
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
Content-Type: multipart/mixed; boundary="===============4029591014083146164=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/18] UBIFS: master node
To: barebox@lists.infradead.org

--===============4029591014083146164==
Content-Type: text/plain

This patch deals with reading/writing the master node and orphan inodes.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/master.c |  341 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/ubifs/orphan.c |  316 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 657 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/master.c
 create mode 100644 fs/ubifs/orphan.c

diff --git a/fs/ubifs/master.c b/fs/ubifs/master.c
new file mode 100644
index 0000000..3f2926e
--- /dev/null
+++ b/fs/ubifs/master.c
@@ -0,0 +1,341 @@
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
+ * Authors: Artem Bityutskiy (���������������� ����������)
+ *          Adrian Hunter
+ */
+
+/* This file implements reading and writing the master node */
+
+#include "ubifs.h"
+
+/**
+ * scan_for_master - search the valid master node.
+ * @c: UBIFS file-system description object
+ *
+ * This function scans the master node LEBs and search for the latest master
+ * node. Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+static int scan_for_master(struct ubifs_info *c)
+{
+	struct ubifs_scan_leb *sleb;
+	struct ubifs_scan_node *snod;
+	int lnum, offs = 0, nodes_cnt;
+
+	lnum = UBIFS_MST_LNUM;
+
+	sleb = ubifs_scan(c, lnum, 0, c->sbuf);
+	if (IS_ERR(sleb))
+		return PTR_ERR(sleb);
+	nodes_cnt = sleb->nodes_cnt;
+	if (nodes_cnt > 0) {
+		snod = list_entry(sleb->nodes.prev, struct ubifs_scan_node,
+				  list);
+		if (snod->type != UBIFS_MST_NODE)
+			goto out;
+		memcpy(c->mst_node, snod->node, snod->len);
+		offs = snod->offs;
+	}
+	ubifs_scan_destroy(sleb);
+
+	lnum += 1;
+
+	sleb = ubifs_scan(c, lnum, 0, c->sbuf);
+	if (IS_ERR(sleb))
+		return PTR_ERR(sleb);
+	if (sleb->nodes_cnt != nodes_cnt)
+		goto out;
+	if (!sleb->nodes_cnt)
+		goto out;
+	snod = list_entry(sleb->nodes.prev, struct ubifs_scan_node, list);
+	if (snod->type != UBIFS_MST_NODE)
+		goto out;
+	if (snod->offs != offs)
+		goto out;
+	if (memcmp((void *)c->mst_node + UBIFS_CH_SZ,
+		   (void *)snod->node + UBIFS_CH_SZ,
+		   UBIFS_MST_NODE_SZ - UBIFS_CH_SZ))
+		goto out;
+	c->mst_offs = offs;
+	ubifs_scan_destroy(sleb);
+	return 0;
+
+out:
+	ubifs_scan_destroy(sleb);
+	return -EINVAL;
+}
+
+/**
+ * validate_master - validate master node.
+ * @c: UBIFS file-system description object
+ *
+ * This function validates data which was read from master node. Returns zero
+ * if the data is all right and %-EINVAL if not.
+ */
+static int validate_master(const struct ubifs_info *c)
+{
+	long long main_sz;
+	int err;
+
+	if (c->max_sqnum >= SQNUM_WATERMARK) {
+		err = 1;
+		goto out;
+	}
+
+	if (c->cmt_no >= c->max_sqnum) {
+		err = 2;
+		goto out;
+	}
+
+	if (c->highest_inum >= INUM_WATERMARK) {
+		err = 3;
+		goto out;
+	}
+
+	if (c->lhead_lnum < UBIFS_LOG_LNUM ||
+	    c->lhead_lnum >= UBIFS_LOG_LNUM + c->log_lebs ||
+	    c->lhead_offs < 0 || c->lhead_offs >= c->leb_size ||
+	    c->lhead_offs & (c->min_io_size - 1)) {
+		err = 4;
+		goto out;
+	}
+
+	if (c->zroot.lnum >= c->leb_cnt || c->zroot.lnum < c->main_first ||
+	    c->zroot.offs >= c->leb_size || c->zroot.offs & 7) {
+		err = 5;
+		goto out;
+	}
+
+	if (c->zroot.len < c->ranges[UBIFS_IDX_NODE].min_len ||
+	    c->zroot.len > c->ranges[UBIFS_IDX_NODE].max_len) {
+		err = 6;
+		goto out;
+	}
+
+	if (c->gc_lnum >= c->leb_cnt || c->gc_lnum < c->main_first) {
+		err = 7;
+		goto out;
+	}
+
+	if (c->ihead_lnum >= c->leb_cnt || c->ihead_lnum < c->main_first ||
+	    c->ihead_offs % c->min_io_size || c->ihead_offs < 0 ||
+	    c->ihead_offs > c->leb_size || c->ihead_offs & 7) {
+		err = 8;
+		goto out;
+	}
+
+	main_sz = (long long)c->main_lebs * c->leb_size;
+	if (c->old_idx_sz & 7 || c->old_idx_sz >= main_sz) {
+		err = 9;
+		goto out;
+	}
+
+	if (c->lpt_lnum < c->lpt_first || c->lpt_lnum > c->lpt_last ||
+	    c->lpt_offs < 0 || c->lpt_offs + c->nnode_sz > c->leb_size) {
+		err = 10;
+		goto out;
+	}
+
+	if (c->nhead_lnum < c->lpt_first || c->nhead_lnum > c->lpt_last ||
+	    c->nhead_offs < 0 || c->nhead_offs % c->min_io_size ||
+	    c->nhead_offs > c->leb_size) {
+		err = 11;
+		goto out;
+	}
+
+	if (c->ltab_lnum < c->lpt_first || c->ltab_lnum > c->lpt_last ||
+	    c->ltab_offs < 0 ||
+	    c->ltab_offs + c->ltab_sz > c->leb_size) {
+		err = 12;
+		goto out;
+	}
+
+	if (c->big_lpt && (c->lsave_lnum < c->lpt_first ||
+	    c->lsave_lnum > c->lpt_last || c->lsave_offs < 0 ||
+	    c->lsave_offs + c->lsave_sz > c->leb_size)) {
+		err = 13;
+		goto out;
+	}
+
+	if (c->lscan_lnum < c->main_first || c->lscan_lnum >= c->leb_cnt) {
+		err = 14;
+		goto out;
+	}
+
+	if (c->lst.empty_lebs < 0 || c->lst.empty_lebs > c->main_lebs - 2) {
+		err = 15;
+		goto out;
+	}
+
+	if (c->lst.idx_lebs < 0 || c->lst.idx_lebs > c->main_lebs - 1) {
+		err = 16;
+		goto out;
+	}
+
+	if (c->lst.total_free < 0 || c->lst.total_free > main_sz ||
+	    c->lst.total_free & 7) {
+		err = 17;
+		goto out;
+	}
+
+	if (c->lst.total_dirty < 0 || (c->lst.total_dirty & 7)) {
+		err = 18;
+		goto out;
+	}
+
+	if (c->lst.total_used < 0 || (c->lst.total_used & 7)) {
+		err = 19;
+		goto out;
+	}
+
+	if (c->lst.total_free + c->lst.total_dirty +
+	    c->lst.total_used > main_sz) {
+		err = 20;
+		goto out;
+	}
+
+	if (c->lst.total_dead + c->lst.total_dark +
+	    c->lst.total_used + c->old_idx_sz > main_sz) {
+		err = 21;
+		goto out;
+	}
+
+	if (c->lst.total_dead < 0 ||
+	    c->lst.total_dead > c->lst.total_free + c->lst.total_dirty ||
+	    c->lst.total_dead & 7) {
+		err = 22;
+		goto out;
+	}
+
+	if (c->lst.total_dark < 0 ||
+	    c->lst.total_dark > c->lst.total_free + c->lst.total_dirty ||
+	    c->lst.total_dark & 7) {
+		err = 23;
+		goto out;
+	}
+
+	return 0;
+
+out:
+	ubifs_err("bad master node at offset %d error %d", c->mst_offs, err);
+	dbg_dump_node(c, c->mst_node);
+	return -EINVAL;
+}
+
+/**
+ * ubifs_read_master - read master node.
+ * @c: UBIFS file-system description object
+ *
+ * This function finds and reads the master node during file-system mount. If
+ * the flash is empty, it creates default master node as well. Returns zero in
+ * case of success and a negative error code in case of failure.
+ */
+int ubifs_read_master(struct ubifs_info *c)
+{
+	int err, old_leb_cnt;
+
+	c->mst_node = kzalloc(c->mst_node_alsz, GFP_KERNEL);
+	if (!c->mst_node)
+		return -ENOMEM;
+
+	err = scan_for_master(c);
+	if (err) {
+		err = ubifs_recover_master_node(c);
+		if (err)
+			/*
+			 * Note, we do not free 'c->mst_node' here because the
+			 * unmount routine will take care of this.
+			 */
+			return err;
+	}
+
+	/* Make sure that the recovery flag is clear */
+	c->mst_node->flags &= cpu_to_le32(~UBIFS_MST_RCVRY);
+
+	c->max_sqnum       = le64_to_cpu(c->mst_node->ch.sqnum);
+	c->highest_inum    = le64_to_cpu(c->mst_node->highest_inum);
+	c->cmt_no          = le64_to_cpu(c->mst_node->cmt_no);
+	c->zroot.lnum      = le32_to_cpu(c->mst_node->root_lnum);
+	c->zroot.offs      = le32_to_cpu(c->mst_node->root_offs);
+	c->zroot.len       = le32_to_cpu(c->mst_node->root_len);
+	c->lhead_lnum      = le32_to_cpu(c->mst_node->log_lnum);
+	c->gc_lnum         = le32_to_cpu(c->mst_node->gc_lnum);
+	c->ihead_lnum      = le32_to_cpu(c->mst_node->ihead_lnum);
+	c->ihead_offs      = le32_to_cpu(c->mst_node->ihead_offs);
+	c->old_idx_sz      = le64_to_cpu(c->mst_node->index_size);
+	c->lpt_lnum        = le32_to_cpu(c->mst_node->lpt_lnum);
+	c->lpt_offs        = le32_to_cpu(c->mst_node->lpt_offs);
+	c->nhead_lnum      = le32_to_cpu(c->mst_node->nhead_lnum);
+	c->nhead_offs      = le32_to_cpu(c->mst_node->nhead_offs);
+	c->ltab_lnum       = le32_to_cpu(c->mst_node->ltab_lnum);
+	c->ltab_offs       = le32_to_cpu(c->mst_node->ltab_offs);
+	c->lsave_lnum      = le32_to_cpu(c->mst_node->lsave_lnum);
+	c->lsave_offs      = le32_to_cpu(c->mst_node->lsave_offs);
+	c->lscan_lnum      = le32_to_cpu(c->mst_node->lscan_lnum);
+	c->lst.empty_lebs  = le32_to_cpu(c->mst_node->empty_lebs);
+	c->lst.idx_lebs    = le32_to_cpu(c->mst_node->idx_lebs);
+	old_leb_cnt        = le32_to_cpu(c->mst_node->leb_cnt);
+	c->lst.total_free  = le64_to_cpu(c->mst_node->total_free);
+	c->lst.total_dirty = le64_to_cpu(c->mst_node->total_dirty);
+	c->lst.total_used  = le64_to_cpu(c->mst_node->total_used);
+	c->lst.total_dead  = le64_to_cpu(c->mst_node->total_dead);
+	c->lst.total_dark  = le64_to_cpu(c->mst_node->total_dark);
+
+	c->calc_idx_sz = c->old_idx_sz;
+
+	if (c->mst_node->flags & cpu_to_le32(UBIFS_MST_NO_ORPHS))
+		c->no_orphs = 1;
+
+	if (old_leb_cnt != c->leb_cnt) {
+		/* The file system has been resized */
+		int growth = c->leb_cnt - old_leb_cnt;
+
+		if (c->leb_cnt < old_leb_cnt ||
+		    c->leb_cnt < UBIFS_MIN_LEB_CNT) {
+			ubifs_err("bad leb_cnt on master node");
+			dbg_dump_node(c, c->mst_node);
+			return -EINVAL;
+		}
+
+		dbg_mnt("Auto resizing (master) from %d LEBs to %d LEBs",
+			old_leb_cnt, c->leb_cnt);
+		c->lst.empty_lebs += growth;
+		c->lst.total_free += growth * (long long)c->leb_size;
+		c->lst.total_dark += growth * (long long)c->dark_wm;
+
+		/*
+		 * Reflect changes back onto the master node. N.B. the master
+		 * node gets written immediately whenever mounting (or
+		 * remounting) in read-write mode, so we do not need to write it
+		 * here.
+		 */
+		c->mst_node->leb_cnt = cpu_to_le32(c->leb_cnt);
+		c->mst_node->empty_lebs = cpu_to_le32(c->lst.empty_lebs);
+		c->mst_node->total_free = cpu_to_le64(c->lst.total_free);
+		c->mst_node->total_dark = cpu_to_le64(c->lst.total_dark);
+	}
+
+	err = validate_master(c);
+	if (err)
+		return err;
+
+	err = dbg_old_index_check_init(c, &c->zroot);
+
+	return err;
+}
diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
new file mode 100644
index 0000000..d091031
--- /dev/null
+++ b/fs/ubifs/orphan.c
@@ -0,0 +1,316 @@
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
+ * Author: Adrian Hunter
+ */
+
+#include "ubifs.h"
+
+/*
+ * An orphan is an inode number whose inode node has been committed to the index
+ * with a link count of zero. That happens when an open file is deleted
+ * (unlinked) and then a commit is run. In the normal course of events the inode
+ * would be deleted when the file is closed. However in the case of an unclean
+ * unmount, orphans need to be accounted for. After an unclean unmount, the
+ * orphans' inodes must be deleted which means either scanning the entire index
+ * looking for them, or keeping a list on flash somewhere. This unit implements
+ * the latter approach.
+ *
+ * The orphan area is a fixed number of LEBs situated between the LPT area and
+ * the main area. The number of orphan area LEBs is specified when the file
+ * system is created. The minimum number is 1. The size of the orphan area
+ * should be so that it can hold the maximum number of orphans that are expected
+ * to ever exist at one time.
+ *
+ * The number of orphans that can fit in a LEB is:
+ *
+ *         (c->leb_size - UBIFS_ORPH_NODE_SZ) / sizeof(__le64)
+ *
+ * For example: a 15872 byte LEB can fit 1980 orphans so 1 LEB may be enough.
+ *
+ * Orphans are accumulated in a rb-tree. When an inode's link count drops to
+ * zero, the inode number is added to the rb-tree. It is removed from the tree
+ * when the inode is deleted.  Any new orphans that are in the orphan tree when
+ * the commit is run, are written to the orphan area in 1 or more orphan nodes.
+ * If the orphan area is full, it is consolidated to make space.  There is
+ * always enough space because validation prevents the user from creating more
+ * than the maximum number of orphans allowed.
+ */
+
+/**
+ * tot_avail_orphs - calculate total space.
+ * @c: UBIFS file-system description object
+ *
+ * This function returns the number of orphans that can be written in half
+ * the total space. That leaves half the space for adding new orphans.
+ */
+static int tot_avail_orphs(struct ubifs_info *c)
+{
+	int avail_lebs, avail;
+
+	avail_lebs = c->orph_lebs;
+	avail = avail_lebs *
+	       ((c->leb_size - UBIFS_ORPH_NODE_SZ) / sizeof(__le64));
+	return avail / 2;
+}
+
+/**
+ * ubifs_clear_orphans - erase all LEBs used for orphans.
+ * @c: UBIFS file-system description object
+ *
+ * If recovery is not required, then the orphans from the previous session
+ * are not needed. This function locates the LEBs used to record
+ * orphans, and un-maps them.
+ */
+int ubifs_clear_orphans(struct ubifs_info *c)
+{
+	int lnum, err;
+
+	for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
+		err = ubifs_leb_unmap(c, lnum);
+		if (err)
+			return err;
+	}
+	c->ohead_lnum = c->orph_first;
+	c->ohead_offs = 0;
+	return 0;
+}
+
+/**
+ * insert_dead_orphan - insert an orphan.
+ * @c: UBIFS file-system description object
+ * @inum: orphan inode number
+ *
+ * This function is a helper to the 'do_kill_orphans()' function. The orphan
+ * must be kept until the next commit, so it is added to the rb-tree and the
+ * deletion list.
+ */
+static int insert_dead_orphan(struct ubifs_info *c, ino_t inum)
+{
+	struct ubifs_orphan *orphan, *o;
+	struct rb_node **p, *parent = NULL;
+
+	orphan = kzalloc(sizeof(struct ubifs_orphan), GFP_KERNEL);
+	if (!orphan)
+		return -ENOMEM;
+	orphan->inum = inum;
+
+	p = &c->orph_tree.rb_node;
+	while (*p) {
+		parent = *p;
+		o = rb_entry(parent, struct ubifs_orphan, rb);
+		if (inum < o->inum)
+			p = &(*p)->rb_left;
+		else if (inum > o->inum)
+			p = &(*p)->rb_right;
+		else {
+			/* Already added - no problem */
+			kfree(orphan);
+			return 0;
+		}
+	}
+	c->tot_orphans += 1;
+	rb_link_node(&orphan->rb, parent, p);
+	rb_insert_color(&orphan->rb, &c->orph_tree);
+	list_add_tail(&orphan->list, &c->orph_list);
+	orphan->dnext = c->orph_dnext;
+	c->orph_dnext = orphan;
+	dbg_mnt("ino %lu, new %d, tot %d", (unsigned long)inum,
+		c->new_orphans, c->tot_orphans);
+	return 0;
+}
+
+/**
+ * do_kill_orphans - remove orphan inodes from the index.
+ * @c: UBIFS file-system description object
+ * @sleb: scanned LEB
+ * @last_cmt_no: cmt_no of last orphan node read is passed and returned here
+ * @outofdate: whether the LEB is out of date is returned here
+ * @last_flagged: whether the end orphan node is encountered
+ *
+ * This function is a helper to the 'kill_orphans()' function. It goes through
+ * every orphan node in a LEB and for every inode number recorded, removes
+ * all keys for that inode from the TNC.
+ */
+static int do_kill_orphans(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
+			   unsigned long long *last_cmt_no, int *outofdate,
+			   int *last_flagged)
+{
+	struct ubifs_scan_node *snod;
+	struct ubifs_orph_node *orph;
+	unsigned long long cmt_no;
+	ino_t inum;
+	int i, n, err, first = 1;
+
+	list_for_each_entry(snod, &sleb->nodes, list) {
+		if (snod->type != UBIFS_ORPH_NODE) {
+			ubifs_err("invalid node type %d in orphan area at "
+				  "%d:%d", snod->type, sleb->lnum, snod->offs);
+			dbg_dump_node(c, snod->node);
+			return -EINVAL;
+		}
+
+		orph = snod->node;
+
+		/* Check commit number */
+		cmt_no = le64_to_cpu(orph->cmt_no) & LLONG_MAX;
+		/*
+		 * The commit number on the master node may be less, because
+		 * of a failed commit. If there are several failed commits in a
+		 * row, the commit number written on orphan nodes will continue
+		 * to increase (because the commit number is adjusted here) even
+		 * though the commit number on the master node stays the same
+		 * because the master node has not been re-written.
+		 */
+		if (cmt_no > c->cmt_no)
+			c->cmt_no = cmt_no;
+		if (cmt_no < *last_cmt_no && *last_flagged) {
+			/*
+			 * The last orphan node had a higher commit number and
+			 * was flagged as the last written for that commit
+			 * number. That makes this orphan node, out of date.
+			 */
+			if (!first) {
+				ubifs_err("out of order commit number %llu in "
+					  "orphan node at %d:%d",
+					  cmt_no, sleb->lnum, snod->offs);
+				dbg_dump_node(c, snod->node);
+				return -EINVAL;
+			}
+			dbg_rcvry("out of date LEB %d", sleb->lnum);
+			*outofdate = 1;
+			return 0;
+		}
+
+		if (first)
+			first = 0;
+
+		n = (le32_to_cpu(orph->ch.len) - UBIFS_ORPH_NODE_SZ) >> 3;
+		for (i = 0; i < n; i++) {
+			inum = le64_to_cpu(orph->inos[i]);
+			dbg_rcvry("deleting orphaned inode %lu",
+				  (unsigned long)inum);
+			err = ubifs_tnc_remove_ino(c, inum);
+			if (err)
+				return err;
+			err = insert_dead_orphan(c, inum);
+			if (err)
+				return err;
+		}
+
+		*last_cmt_no = cmt_no;
+		if (le64_to_cpu(orph->cmt_no) & (1ULL << 63)) {
+			dbg_rcvry("last orph node for commit %llu at %d:%d",
+				  cmt_no, sleb->lnum, snod->offs);
+			*last_flagged = 1;
+		} else
+			*last_flagged = 0;
+	}
+
+	return 0;
+}
+
+/**
+ * kill_orphans - remove all orphan inodes from the index.
+ * @c: UBIFS file-system description object
+ *
+ * If recovery is required, then orphan inodes recorded during the previous
+ * session (which ended with an unclean unmount) must be deleted from the index.
+ * This is done by updating the TNC, but since the index is not updated until
+ * the next commit, the LEBs where the orphan information is recorded are not
+ * erased until the next commit.
+ */
+static int kill_orphans(struct ubifs_info *c)
+{
+	unsigned long long last_cmt_no = 0;
+	int lnum, err = 0, outofdate = 0, last_flagged = 0;
+
+	c->ohead_lnum = c->orph_first;
+	c->ohead_offs = 0;
+	/* Check no-orphans flag and skip this if no orphans */
+	if (c->no_orphs) {
+		dbg_rcvry("no orphans");
+		return 0;
+	}
+	/*
+	 * Orph nodes always start at c->orph_first and are written to each
+	 * successive LEB in turn. Generally unused LEBs will have been unmapped
+	 * but may contain out of date orphan nodes if the unmap didn't go
+	 * through. In addition, the last orphan node written for each commit is
+	 * marked (top bit of orph->cmt_no is set to 1). It is possible that
+	 * there are orphan nodes from the next commit (i.e. the commit did not
+	 * complete successfully). In that case, no orphans will have been lost
+	 * due to the way that orphans are written, and any orphans added will
+	 * be valid orphans anyway and so can be deleted.
+	 */
+	for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
+		struct ubifs_scan_leb *sleb;
+
+		dbg_rcvry("LEB %d", lnum);
+		sleb = ubifs_scan(c, lnum, 0, c->sbuf);
+		if (IS_ERR(sleb)) {
+			sleb = ubifs_recover_leb(c, lnum, 0, c->sbuf, 0);
+			if (IS_ERR(sleb)) {
+				err = PTR_ERR(sleb);
+				break;
+			}
+		}
+		err = do_kill_orphans(c, sleb, &last_cmt_no, &outofdate,
+				      &last_flagged);
+		if (err || outofdate) {
+			ubifs_scan_destroy(sleb);
+			break;
+		}
+		if (sleb->endpt) {
+			c->ohead_lnum = lnum;
+			c->ohead_offs = sleb->endpt;
+		}
+		ubifs_scan_destroy(sleb);
+	}
+	return err;
+}
+
+/**
+ * ubifs_mount_orphans - delete orphan inodes and erase LEBs that recorded them.
+ * @c: UBIFS file-system description object
+ * @unclean: indicates recovery from unclean unmount
+ * @read_only: indicates read only mount
+ *
+ * This function is called when mounting to erase orphans from the previous
+ * session. If UBIFS was not unmounted cleanly, then the inodes recorded as
+ * orphans are deleted.
+ */
+int ubifs_mount_orphans(struct ubifs_info *c, int unclean, int read_only)
+{
+	int err = 0;
+
+	c->max_orphans = tot_avail_orphs(c);
+
+	if (!read_only) {
+		c->orph_buf = vmalloc(c->leb_size);
+		if (!c->orph_buf)
+			return -ENOMEM;
+	}
+
+	if (unclean)
+		err = kill_orphans(c);
+	else if (!read_only)
+		err = ubifs_clear_orphans(c);
+
+	return err;
+}
-- 
1.7.1



--===============4029591014083146164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4029591014083146164==--
