Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEst1-0003sn-F1
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 09:54:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 11:54:15 +0200
Message-Id: <20190412095415.26691-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ubifs: Add authentication support
To: Barebox List <barebox@lists.infradead.org>

This adds UBIFS authentication support. For now, we do not do
any authentication even on authenticated UBIFS images. Since
this behaviour is not what the user normally expects when mounting
authenticated images we only do this when the user explicitly allows
it in "global.ubifs.allow_authenticated_unauthenticated". If the
flag is false then we refuse mounting such an image and return -EPERM
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/debug.c       |   6 ++
 fs/ubifs/master.c      |  57 +++++++++-
 fs/ubifs/misc.h        |   5 +-
 fs/ubifs/recovery.c    | 100 ++++++++++++------
 fs/ubifs/replay.c      |  71 ++++++++++---
 fs/ubifs/sb.c          |  42 +++++++-
 fs/ubifs/super.c       |  31 +++++-
 fs/ubifs/tnc.c         |  30 ++++--
 fs/ubifs/tnc_misc.c    |  26 +++--
 fs/ubifs/ubifs-media.h |  46 +++++++-
 fs/ubifs/ubifs.c       |   6 ++
 fs/ubifs/ubifs.h       | 235 ++++++++++++++++++++++++++++++++++++++++-
 12 files changed, 580 insertions(+), 75 deletions(-)

diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
index 4e3f32898f..a4cffe84df 100644
--- a/fs/ubifs/debug.c
+++ b/fs/ubifs/debug.c
@@ -141,6 +141,8 @@ const char *dbg_ntype(int type)
 		return "commit start node";
 	case UBIFS_ORPH_NODE:
 		return "orphan node";
+	case UBIFS_AUTH_NODE:
+		return "auth node";
 	default:
 		return "unknown node";
 	}
@@ -453,6 +455,10 @@ void ubifs_dump_node(const struct ubifs_info *c, const void *node)
 			       (unsigned long long)le64_to_cpu(orph->inos[i]));
 		break;
 	}
+	case UBIFS_AUTH_NODE:
+	{
+		break;
+	}
 	default:
 		pr_err("node type %d was not recognized\n",
 		       (int)ch->node_type);
diff --git a/fs/ubifs/master.c b/fs/ubifs/master.c
index 40b49b6346..056699b616 100644
--- a/fs/ubifs/master.c
+++ b/fs/ubifs/master.c
@@ -24,6 +24,42 @@
 
 #include "ubifs.h"
 
+/**
+ * ubifs_compare_master_node - compare two UBIFS master nodes
+ * @c: UBIFS file-system description object
+ * @m1: the first node
+ * @m2: the second node
+ *
+ * This function compares two UBIFS master nodes. Returns 0 if they are equal
+ * and nonzero if not.
+ */
+int ubifs_compare_master_node(struct ubifs_info *c, void *m1, void *m2)
+{
+	int ret;
+	int behind;
+	int hmac_offs = offsetof(struct ubifs_mst_node, hmac);
+
+	/*
+	 * Do not compare the common node header since the sequence number and
+	 * hence the CRC are different.
+	 */
+	ret = memcmp(m1 + UBIFS_CH_SZ, m2 + UBIFS_CH_SZ,
+		     hmac_offs - UBIFS_CH_SZ);
+	if (ret)
+		return ret;
+
+	/*
+	 * Do not compare the embedded HMAC aswell which also must be different
+	 * due to the different common node header.
+	 */
+	behind = hmac_offs + UBIFS_MAX_HMAC_LEN;
+
+	if (UBIFS_MST_NODE_SZ > behind)
+		return memcmp(m1 + behind, m2 + behind, UBIFS_MST_NODE_SZ - behind);
+
+	return 0;
+}
+
 /**
  * scan_for_master - search the valid master node.
  * @c: UBIFS file-system description object
@@ -37,7 +73,7 @@ static int scan_for_master(struct ubifs_info *c)
 {
 	struct ubifs_scan_leb *sleb;
 	struct ubifs_scan_node *snod;
-	int lnum, offs = 0, nodes_cnt;
+	int lnum, offs = 0, nodes_cnt, err;
 
 	lnum = UBIFS_MST_LNUM;
 
@@ -69,12 +105,23 @@ static int scan_for_master(struct ubifs_info *c)
 		goto out_dump;
 	if (snod->offs != offs)
 		goto out;
-	if (memcmp((void *)c->mst_node + UBIFS_CH_SZ,
-		   (void *)snod->node + UBIFS_CH_SZ,
-		   UBIFS_MST_NODE_SZ - UBIFS_CH_SZ))
+	if (ubifs_compare_master_node(c, c->mst_node, snod->node))
 		goto out;
+
 	c->mst_offs = offs;
 	ubifs_scan_destroy(sleb);
+
+	if (!ubifs_authenticated(c))
+		return 0;
+
+	err = ubifs_node_verify_hmac(c, c->mst_node,
+				     sizeof(struct ubifs_mst_node),
+				     offsetof(struct ubifs_mst_node, hmac));
+	if (err) {
+		ubifs_err(c, "Failed to verify master node HMAC");
+		return -EPERM;
+	}
+
 	return 0;
 
 out:
@@ -305,6 +352,8 @@ int ubifs_read_master(struct ubifs_info *c)
 	c->lst.total_dead  = le64_to_cpu(c->mst_node->total_dead);
 	c->lst.total_dark  = le64_to_cpu(c->mst_node->total_dark);
 
+	ubifs_copy_hash(c, c->mst_node->hash_root_idx, c->zroot.hash);
+
 	c->calc_idx_sz = c->bi.old_idx_sz;
 
 	if (c->mst_node->flags & cpu_to_le32(UBIFS_MST_NO_ORPHS))
diff --git a/fs/ubifs/misc.h b/fs/ubifs/misc.h
index 77429be554..82f9225657 100644
--- a/fs/ubifs/misc.h
+++ b/fs/ubifs/misc.h
@@ -188,7 +188,8 @@ static inline int ubifs_return_leb(struct ubifs_info *c, int lnum)
  */
 static inline int ubifs_idx_node_sz(const struct ubifs_info *c, int child_cnt)
 {
-	return UBIFS_IDX_NODE_SZ + (UBIFS_BRANCH_SZ + c->key_len) * child_cnt;
+	return UBIFS_IDX_NODE_SZ + (UBIFS_BRANCH_SZ + c->key_len + c->hash_len)
+				   * child_cnt;
 }
 
 /**
@@ -203,7 +204,7 @@ struct ubifs_branch *ubifs_idx_branch(const struct ubifs_info *c,
 				      int bnum)
 {
 	return (struct ubifs_branch *)((void *)idx->branches +
-				       (UBIFS_BRANCH_SZ + c->key_len) * bnum);
+			(UBIFS_BRANCH_SZ + c->key_len + c->hash_len) * bnum);
 }
 
 /**
diff --git a/fs/ubifs/recovery.c b/fs/ubifs/recovery.c
index fac83f87e0..1d5d701385 100644
--- a/fs/ubifs/recovery.c
+++ b/fs/ubifs/recovery.c
@@ -239,9 +239,7 @@ int ubifs_recover_master_node(struct ubifs_info *c)
 			offs2 = (void *)mst2 - buf2;
 			if (offs1 == offs2) {
 				/* Same offset, so must be the same */
-				if (memcmp((void *)mst1 + UBIFS_CH_SZ,
-					   (void *)mst2 + UBIFS_CH_SZ,
-					   UBIFS_MST_NODE_SZ - UBIFS_CH_SZ))
+				if (ubifs_compare_master_node(c, mst1, mst2))
 					goto out_err;
 				mst = mst1;
 			} else if (offs2 + sz == offs1) {
@@ -1044,16 +1042,68 @@ int ubifs_recover_size_accum(struct ubifs_info *c, union ubifs_key *key,
 static int fix_size_in_place(struct ubifs_info *c, struct size_entry *e)
  */
 
+/**
+ * inode_fix_size - fix inode size
+ * @c: UBIFS file-system description object
+ * @e: inode size information for recovery
+ */
+static int inode_fix_size(struct ubifs_info *c, struct size_entry *e)
+{
+	struct inode *inode;
+	struct ubifs_inode *ui;
+
+	if (c->ro_mount)
+		ubifs_assert(c, !e->inode);
+
+	if (e->inode) {
+		/* Remounting rw, pick up inode we stored earlier */
+		inode = e->inode;
+	} else {
+		inode = ubifs_iget(c->vfs_sb, e->inum);
+		if (IS_ERR(inode))
+			return PTR_ERR(inode);
+
+		if (inode->i_size >= e->d_size) {
+			/*
+			 * The original inode in the index already has a size
+			 * big enough, nothing to do
+			 */
+			iput(inode);
+			return 0;
+		}
+
+		dbg_rcvry("ino %lu size %lld -> %lld",
+			  (unsigned long)e->inum,
+			  inode->i_size, e->d_size);
+
+		ui = ubifs_inode(inode);
+
+		inode->i_size = e->d_size;
+		ui->ui_size = e->d_size;
+		ui->synced_i_size = e->d_size;
+
+		e->inode = inode;
+	}
+
+	/*
+	 * In readonly mode just keep the inode pinned in memory until we go
+	 * readwrite. In readwrite mode write the inode to the journal with the
+	 * fixed size.
+	 */
+	return 0;
+}
+
 /**
  * ubifs_recover_size - recover inode size.
  * @c: UBIFS file-system description object
+ * @in_place: If true, do a in-place size fixup
  *
  * This function attempts to fix inode size discrepancies identified by the
  * 'ubifs_recover_size_accum()' function.
  *
  * This functions returns %0 on success and a negative error code on failure.
  */
-int ubifs_recover_size(struct ubifs_info *c)
+int ubifs_recover_size(struct ubifs_info *c, bool in_place)
 {
 	struct rb_node *this = rb_first(&c->size_tree);
 
@@ -1062,6 +1112,9 @@ int ubifs_recover_size(struct ubifs_info *c)
 		int err;
 
 		e = rb_entry(this, struct size_entry, rb);
+
+		this = rb_next(this);
+
 		if (!e->exists) {
 			union ubifs_key key;
 
@@ -1085,37 +1138,24 @@ int ubifs_recover_size(struct ubifs_info *c)
 		}
 
 		if (e->exists && e->i_size < e->d_size) {
-			if (c->ro_mount) {
-				/* Fix the inode size and pin it in memory */
-				struct inode *inode;
-				struct ubifs_inode *ui;
-
-				ubifs_assert(c, !e->inode);
-
-				inode = ubifs_iget(c->vfs_sb, e->inum);
-				if (IS_ERR(inode))
-					return PTR_ERR(inode);
-
-				ui = ubifs_inode(inode);
-				if (inode->i_size < e->d_size) {
-					dbg_rcvry("ino %lu size %lld -> %lld",
-						  (unsigned long)e->inum,
-						  inode->i_size, e->d_size);
-					inode->i_size = e->d_size;
-					ui->ui_size = e->d_size;
-					ui->synced_i_size = e->d_size;
-					e->inode = inode;
-					this = rb_next(this);
-					continue;
-				}
-				iput(inode);
-			} else {
+			ubifs_assert(c, !(c->ro_mount && in_place));
+
+			/*
+			 * We found data that is outside the found inode size,
+			 * fixup the inode size
+			 */
+
+			if (in_place) {
 				/* Fix the size in place */
 				/* Not done in barebox */
+			} else {
+				err = inode_fix_size(c, e);
+				if (err)
+					return err;
+				continue;
 			}
 		}
 
-		this = rb_next(this);
 		rb_erase(&e->rb, &c->size_tree);
 		kfree(e);
 	}
diff --git a/fs/ubifs/replay.c b/fs/ubifs/replay.c
index 9eb24b035d..8863a30d81 100644
--- a/fs/ubifs/replay.c
+++ b/fs/ubifs/replay.c
@@ -56,6 +56,7 @@ struct replay_entry {
 	int lnum;
 	int offs;
 	int len;
+	u8 hash[UBIFS_HASH_ARR_SZ];
 	unsigned int deletion:1;
 	unsigned long long sqnum;
 	struct list_head list;
@@ -141,7 +142,7 @@ static int apply_replay_entry(struct ubifs_info *c, struct replay_entry *r)
 			err = ubifs_tnc_remove_nm(c, &r->key, &r->nm);
 		else
 			err = ubifs_tnc_add_nm(c, &r->key, r->lnum, r->offs,
-					       r->len, &r->nm);
+					       r->len, r->hash, &r->nm);
 	} else {
 		if (r->deletion)
 			switch (key_type(c, &r->key)) {
@@ -161,7 +162,7 @@ static int apply_replay_entry(struct ubifs_info *c, struct replay_entry *r)
 			}
 		else
 			err = ubifs_tnc_add(c, &r->key, r->lnum, r->offs,
-					    r->len);
+					    r->len, r->hash);
 		if (err)
 			return err;
 
@@ -265,9 +266,9 @@ static void destroy_replay_list(struct ubifs_info *c)
  * in case of success and a negative error code in case of failure.
  */
 static int insert_node(struct ubifs_info *c, int lnum, int offs, int len,
-		       union ubifs_key *key, unsigned long long sqnum,
-		       int deletion, int *used, loff_t old_size,
-		       loff_t new_size)
+		       const u8 *hash, union ubifs_key *key,
+		       unsigned long long sqnum, int deletion, int *used,
+		       loff_t old_size, loff_t new_size)
 {
 	struct replay_entry *r;
 
@@ -285,6 +286,7 @@ static int insert_node(struct ubifs_info *c, int lnum, int offs, int len,
 	r->lnum = lnum;
 	r->offs = offs;
 	r->len = len;
+	ubifs_copy_hash(c, hash, r->hash);
 	r->deletion = !!deletion;
 	r->sqnum = sqnum;
 	key_copy(c, key, &r->key);
@@ -313,8 +315,9 @@ static int insert_node(struct ubifs_info *c, int lnum, int offs, int len,
  * negative error code in case of failure.
  */
 static int insert_dent(struct ubifs_info *c, int lnum, int offs, int len,
-		       union ubifs_key *key, const char *name, int nlen,
-		       unsigned long long sqnum, int deletion, int *used)
+		       const u8 *hash, union ubifs_key *key,
+		       const char *name, int nlen, unsigned long long sqnum,
+		       int deletion, int *used)
 {
 	struct replay_entry *r;
 	char *nbuf;
@@ -338,6 +341,7 @@ static int insert_dent(struct ubifs_info *c, int lnum, int offs, int len,
 	r->lnum = lnum;
 	r->offs = offs;
 	r->len = len;
+	ubifs_copy_hash(c, hash, r->hash);
 	r->deletion = !!deletion;
 	r->sqnum = sqnum;
 	key_copy(c, key, &r->key);
@@ -440,6 +444,12 @@ static int is_last_bud(struct ubifs_info *c, struct ubifs_bud *bud)
 	return data == 0xFFFFFFFF;
 }
 
+/*
+ * removed in barebox
+static int authenticate_sleb(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
+			     struct shash_desc *log_hash, int is_last)
+ */
+
 /**
  * replay_bud - replay a bud logical eraseblock.
  * @c: UBIFS file-system description object
@@ -472,6 +482,9 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 	if (IS_ERR(sleb))
 		return PTR_ERR(sleb);
 
+	ubifs_shash_copy_state(c, b->bud->log_hash,
+			       c->jheads[b->bud->jhead].log_hash);
+
 	/*
 	 * The bud does not have to start from offset zero - the beginning of
 	 * the 'lnum' LEB may contain previously committed data. One of the
@@ -495,6 +508,7 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 	 */
 
 	list_for_each_entry(snod, &sleb->nodes, list) {
+		u8 hash[UBIFS_HASH_ARR_SZ];
 		int deletion = 0;
 
 		cond_resched();
@@ -504,6 +518,8 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 			goto out_dump;
 		}
 
+		ubifs_node_calc_hash(c, snod->node, hash);
+
 		if (snod->sqnum > c->max_sqnum)
 			c->max_sqnum = snod->sqnum;
 
@@ -515,7 +531,7 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 
 			if (le32_to_cpu(ino->nlink) == 0)
 				deletion = 1;
-			err = insert_node(c, lnum, snod->offs, snod->len,
+			err = insert_node(c, lnum, snod->offs, snod->len, hash,
 					  &snod->key, snod->sqnum, deletion,
 					  &used, 0, new_size);
 			break;
@@ -527,7 +543,7 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 					  key_block(c, &snod->key) *
 					  UBIFS_BLOCK_SIZE;
 
-			err = insert_node(c, lnum, snod->offs, snod->len,
+			err = insert_node(c, lnum, snod->offs, snod->len, hash,
 					  &snod->key, snod->sqnum, deletion,
 					  &used, 0, new_size);
 			break;
@@ -541,7 +557,7 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 			if (err)
 				goto out_dump;
 
-			err = insert_dent(c, lnum, snod->offs, snod->len,
+			err = insert_dent(c, lnum, snod->offs, snod->len, hash,
 					  &snod->key, dent->name,
 					  le16_to_cpu(dent->nlen), snod->sqnum,
 					  !le64_to_cpu(dent->inum), &used);
@@ -567,11 +583,13 @@ static int replay_bud(struct ubifs_info *c, struct bud_entry *b)
 			 * functions which expect nodes to have keys.
 			 */
 			trun_key_init(c, &key, le32_to_cpu(trun->inum));
-			err = insert_node(c, lnum, snod->offs, snod->len,
+			err = insert_node(c, lnum, snod->offs, snod->len, hash,
 					  &key, snod->sqnum, 1, &used,
 					  old_size, new_size);
 			break;
 		}
+		case UBIFS_AUTH_NODE:
+			break;
 		default:
 			ubifs_err(c, "unexpected node type %d in bud LEB %d:%d",
 				  snod->type, lnum, snod->offs);
@@ -658,6 +676,7 @@ static int add_replay_bud(struct ubifs_info *c, int lnum, int offs, int jhead,
 {
 	struct ubifs_bud *bud;
 	struct bud_entry *b;
+	int err;
 
 	dbg_mnt("add replay bud LEB %d:%d, head %d", lnum, offs, jhead);
 
@@ -667,13 +686,21 @@ static int add_replay_bud(struct ubifs_info *c, int lnum, int offs, int jhead,
 
 	b = kmalloc(sizeof(struct bud_entry), GFP_KERNEL);
 	if (!b) {
-		kfree(bud);
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto out;
 	}
 
 	bud->lnum = lnum;
 	bud->start = offs;
 	bud->jhead = jhead;
+	bud->log_hash = ubifs_hash_get_desc(c);
+	if (IS_ERR(bud->log_hash)) {
+		err = PTR_ERR(bud->log_hash);
+		goto out;
+	}
+
+	ubifs_shash_copy_state(c, c->log_hash, bud->log_hash);
+
 	ubifs_add_bud(c, bud);
 
 	b->bud = bud;
@@ -681,6 +708,11 @@ static int add_replay_bud(struct ubifs_info *c, int lnum, int offs, int jhead,
 	list_add_tail(&b->list, &c->replay_buds);
 
 	return 0;
+out:
+	kfree(bud);
+	kfree(b);
+
+	return err;
 }
 
 /**
@@ -786,6 +818,14 @@ static int replay_log_leb(struct ubifs_info *c, int lnum, int offs, void *sbuf)
 
 		c->cs_sqnum = le64_to_cpu(node->ch.sqnum);
 		dbg_mnt("commit start sqnum %llu", c->cs_sqnum);
+
+		err = ubifs_shash_init(c, c->log_hash);
+		if (err)
+			goto out;
+
+		err = ubifs_shash_update(c, c->log_hash, node, UBIFS_CS_NODE_SZ);
+		if (err < 0)
+			goto out;
 	}
 
 	if (snod->sqnum < c->cs_sqnum) {
@@ -833,6 +873,11 @@ static int replay_log_leb(struct ubifs_info *c, int lnum, int offs, void *sbuf)
 			if (err)
 				goto out_dump;
 
+			err = ubifs_shash_update(c, c->log_hash, ref,
+						 UBIFS_REF_NODE_SZ);
+			if (err)
+				goto out;
+
 			err = add_replay_bud(c, le32_to_cpu(ref->lnum),
 					     le32_to_cpu(ref->offs),
 					     le32_to_cpu(ref->jhead),
diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
index a13f092eb0..9eb8064d72 100644
--- a/fs/ubifs/sb.c
+++ b/fs/ubifs/sb.c
@@ -220,7 +220,7 @@ failed:
  * code. Note, the user of this function is responsible of kfree()'ing the
  * returned superblock buffer.
  */
-struct ubifs_sb_node *ubifs_read_sb_node(struct ubifs_info *c)
+static struct ubifs_sb_node *ubifs_read_sb_node(struct ubifs_info *c)
 {
 	struct ubifs_sb_node *sup;
 	int err;
@@ -239,6 +239,39 @@ struct ubifs_sb_node *ubifs_read_sb_node(struct ubifs_info *c)
 	return sup;
 }
 
+static int authenticate_sb_node(struct ubifs_info *c,
+				const struct ubifs_sb_node *sup)
+{
+	unsigned int sup_flags = le32_to_cpu(sup->flags);
+	int authenticated = !!(sup_flags & UBIFS_FLG_AUTHENTICATION);
+	int hash_algo;
+	struct digest *digest;
+
+	if (!authenticated)
+		return 0;
+
+	if (!ubifs_allow_authenticated_unauthenticated)
+		return -EPERM;
+
+	hash_algo = le16_to_cpu(sup->hash_algo);
+	if (hash_algo >= HASH_ALGO__LAST) {
+		ubifs_err(c, "superblock uses unknown hash algo %d",
+			hash_algo);
+		return -EINVAL;
+	}
+
+	digest = digest_alloc_by_algo(hash_algo);
+	if (!digest) {
+		ubifs_err(c, "Cannot allocate hash algo %d",
+			hash_algo);
+		return -EINVAL;
+	}
+
+	c->hash_len = digest_length(digest);
+
+	return 0;
+}
+
 /*
  * removed in barebox
 int ubifs_write_sb_node(struct ubifs_info *c, struct ubifs_sb_node *sup)
@@ -266,6 +299,8 @@ int ubifs_read_superblock(struct ubifs_info *c)
 	if (IS_ERR(sup))
 		return PTR_ERR(sup);
 
+	c->sup_node = sup;
+
 	c->fmt_version = le32_to_cpu(sup->fmt_version);
 	c->ro_compat_version = le32_to_cpu(sup->ro_compat_version);
 
@@ -349,6 +384,10 @@ int ubifs_read_superblock(struct ubifs_info *c)
 	c->double_hash = !!(sup_flags & UBIFS_FLG_DOUBLE_HASH);
 	c->encrypted = !!(sup_flags & UBIFS_FLG_ENCRYPTION);
 
+	err = authenticate_sb_node(c, sup);
+	if (err)
+		goto out;
+
 	if ((sup_flags & ~UBIFS_FLG_MASK) != 0) {
 		ubifs_err(c, "Unknown feature flags found: %#x",
 			  sup_flags & ~UBIFS_FLG_MASK);
@@ -389,7 +428,6 @@ int ubifs_read_superblock(struct ubifs_info *c)
 
 	err = validate_sb(c, sup);
 out:
-	kfree(sup);
 	return err;
 }
 
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index fd1b645f9f..b48e21fae6 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -391,6 +391,9 @@ static int init_constants_early(struct ubifs_info *c)
 	c->ranges[UBIFS_REF_NODE].len  = UBIFS_REF_NODE_SZ;
 	c->ranges[UBIFS_TRUN_NODE].len = UBIFS_TRUN_NODE_SZ;
 	c->ranges[UBIFS_CS_NODE].len   = UBIFS_CS_NODE_SZ;
+	c->ranges[UBIFS_AUTH_NODE].min_len = UBIFS_AUTH_NODE_SZ;
+	c->ranges[UBIFS_AUTH_NODE].max_len = UBIFS_AUTH_NODE_SZ +
+				UBIFS_MAX_HMAC_LEN;
 
 	c->ranges[UBIFS_INO_NODE].min_len  = UBIFS_INO_NODE_SZ;
 	c->ranges[UBIFS_INO_NODE].max_len  = UBIFS_MAX_INO_NODE_SZ;
@@ -564,6 +567,9 @@ static int alloc_wbufs(struct ubifs_info *c)
 
 		c->jheads[i].wbuf.jhead = i;
 		c->jheads[i].grouped = 1;
+		c->jheads[i].log_hash = ubifs_hash_get_desc(c);
+		if (IS_ERR(c->jheads[i].log_hash))
+			goto out;
 	}
 
 	/*
@@ -574,6 +580,12 @@ static int alloc_wbufs(struct ubifs_info *c)
 	c->jheads[GCHD].grouped = 0;
 
 	return 0;
+
+out:
+	while (i--)
+		kfree(c->jheads[i].log_hash);
+
+	return err;
 }
 
 /**
@@ -753,6 +765,19 @@ static int mount_ubifs(struct ubifs_info *c)
 
 	c->mounting = 1;
 
+	if (c->auth_key_name) {
+		if (IS_ENABLED(CONFIG_UBIFS_FS_AUTHENTICATION)) {
+			err = ubifs_init_authentication(c);
+			if (err)
+				goto out_free;
+		} else {
+			ubifs_err(c, "auth_key_name, but UBIFS is built without"
+				  " authentication support");
+			err = -EINVAL;
+			goto out_free;
+		}
+	}
+
 	err = ubifs_read_superblock(c);
 	if (err)
 		goto out_free;
@@ -803,9 +828,10 @@ static int mount_ubifs(struct ubifs_info *c)
 
 	if (!c->ro_mount) {
 	} else if (c->need_recovery) {
-		err = ubifs_recover_size(c);
+		err = ubifs_recover_size(c, false);
 		if (err)
 			goto out_orphans;
+	} else {
 	}
 
 	if (c->need_recovery) {
@@ -932,7 +958,10 @@ void ubifs_umount(struct ubifs_info *c)
 	spin_unlock(&ubifs_infos_lock);
 
 	free_wbufs(c);
+	ubifs_exit_authentication(c);
 
+	kfree(c->auth_key_name);
+	kfree(c->auth_hash_name);
 	kfree(c->cbuf);
 	kfree(c->rcvrd_mst_node);
 	kfree(c->mst_node);
diff --git a/fs/ubifs/tnc.c b/fs/ubifs/tnc.c
index 191785cbc1..2d7327ad84 100644
--- a/fs/ubifs/tnc.c
+++ b/fs/ubifs/tnc.c
@@ -35,7 +35,7 @@
 #include "ubifs.h"
 
 static int try_read_node(const struct ubifs_info *c, void *buf, int type,
-			 int len, int lnum, int offs);
+			 struct ubifs_zbranch *zbr);
 static int fallible_read_node(struct ubifs_info *c, const union ubifs_key *key,
 			      struct ubifs_zbranch *zbr, void *node);
 
@@ -355,9 +355,7 @@ static int tnc_read_hashed_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
  * @c: UBIFS file-system description object
  * @buf: buffer to read to
  * @type: node type
- * @len: node length (not aligned)
- * @lnum: LEB number of node to read
- * @offs: offset of node to read
+ * @zbr: the zbranch describing the node to read
  *
  * This function tries to read a node of known type and length, checks it and
  * stores it in @buf. This function returns %1 if a node is present and %0 if
@@ -375,8 +373,11 @@ static int tnc_read_hashed_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
  * journal nodes may potentially be corrupted, so checking is required.
  */
 static int try_read_node(const struct ubifs_info *c, void *buf, int type,
-			 int len, int lnum, int offs)
+			 struct ubifs_zbranch *zbr)
 {
+	int len = zbr->len;
+	int lnum = zbr->lnum;
+	int offs = zbr->offs;
 	int err, node_len;
 	struct ubifs_ch *ch = buf;
 	uint32_t crc, node_crc;
@@ -409,6 +410,12 @@ static int try_read_node(const struct ubifs_info *c, void *buf, int type,
 	if (crc != node_crc)
 		return 0;
 
+	err = ubifs_node_check_hash(c, buf, zbr->hash);
+	if (err) {
+		ubifs_bad_hash(c, buf, zbr->hash, lnum, offs);
+		return 0;
+	}
+
 	return 1;
 }
 
@@ -429,8 +436,7 @@ static int fallible_read_node(struct ubifs_info *c, const union ubifs_key *key,
 
 	dbg_tnck(key, "LEB %d:%d, key ", zbr->lnum, zbr->offs);
 
-	ret = try_read_node(c, node, key_type(c, key), zbr->len, zbr->lnum,
-			    zbr->offs);
+	ret = try_read_node(c, node, key_type(c, key), zbr);
 	if (ret == 1) {
 		union ubifs_key node_key;
 		struct ubifs_dent_node *dent = node;
@@ -1747,13 +1753,14 @@ do_split:
  * @lnum: LEB number of node
  * @offs: node offset
  * @len: node length
+ * @hash: The hash over the node
  *
  * This function adds a node with key @key to TNC. The node may be new or it may
  * obsolete some existing one. Returns %0 on success or negative error code on
  * failure.
  */
 int ubifs_tnc_add(struct ubifs_info *c, const union ubifs_key *key, int lnum,
-		  int offs, int len)
+		  int offs, int len, const u8 *hash)
 {
 	int found, n, err = 0;
 	struct ubifs_znode *znode;
@@ -1768,6 +1775,7 @@ int ubifs_tnc_add(struct ubifs_info *c, const union ubifs_key *key, int lnum,
 		zbr.lnum = lnum;
 		zbr.offs = offs;
 		zbr.len = len;
+		ubifs_copy_hash(c, hash, zbr.hash);
 		key_copy(c, key, &zbr.key);
 		err = tnc_insert(c, znode, &zbr, n + 1);
 	} else if (found == 1) {
@@ -1778,6 +1786,7 @@ int ubifs_tnc_add(struct ubifs_info *c, const union ubifs_key *key, int lnum,
 		zbr->lnum = lnum;
 		zbr->offs = offs;
 		zbr->len = len;
+		ubifs_copy_hash(c, hash, zbr->hash);
 	} else
 		err = found;
 	if (!err)
@@ -1800,13 +1809,14 @@ int ubifs_tnc_replace(struct ubifs_info *c, const union ubifs_key *key,
  * @lnum: LEB number of node
  * @offs: node offset
  * @len: node length
+ * @hash: The hash over the node
  * @nm: node name
  *
  * This is the same as 'ubifs_tnc_add()' but it should be used with keys which
  * may have collisions, like directory entry keys.
  */
 int ubifs_tnc_add_nm(struct ubifs_info *c, const union ubifs_key *key,
-		     int lnum, int offs, int len,
+		     int lnum, int offs, int len, const u8 *hash,
 		     const struct fscrypt_name *nm)
 {
 	int found, n, err = 0;
@@ -1840,6 +1850,7 @@ int ubifs_tnc_add_nm(struct ubifs_info *c, const union ubifs_key *key,
 			zbr->lnum = lnum;
 			zbr->offs = offs;
 			zbr->len = len;
+			ubifs_copy_hash(c, hash, zbr->hash);
 			goto out_unlock;
 		}
 	}
@@ -1851,6 +1862,7 @@ int ubifs_tnc_add_nm(struct ubifs_info *c, const union ubifs_key *key,
 		zbr.lnum = lnum;
 		zbr.offs = offs;
 		zbr.len = len;
+		ubifs_copy_hash(c, hash, zbr.hash);
 		key_copy(c, key, &zbr.key);
 		err = tnc_insert(c, znode, &zbr, n + 1);
 		if (err)
diff --git a/fs/ubifs/tnc_misc.c b/fs/ubifs/tnc_misc.c
index 3106c9d511..e8a8f45207 100644
--- a/fs/ubifs/tnc_misc.c
+++ b/fs/ubifs/tnc_misc.c
@@ -265,9 +265,7 @@ long ubifs_destroy_tnc_subtree(const struct ubifs_info *c,
 /**
  * read_znode - read an indexing node from flash and fill znode.
  * @c: UBIFS file-system description object
- * @lnum: LEB of the indexing node to read
- * @offs: node offset
- * @len: node length
+ * @zzbr: the zbranch describing the node to read
  * @znode: znode to read to
  *
  * This function reads an indexing node from the flash media and fills znode
@@ -276,9 +274,12 @@ long ubifs_destroy_tnc_subtree(const struct ubifs_info *c,
  * is wrong with it, this function prints complaint messages and returns
  * %-EINVAL.
  */
-static int read_znode(struct ubifs_info *c, int lnum, int offs, int len,
+static int read_znode(struct ubifs_info *c, struct ubifs_zbranch *zzbr,
 		      struct ubifs_znode *znode)
 {
+	int lnum = zzbr->lnum;
+	int offs = zzbr->offs;
+	int len = zzbr->len;
 	int i, err, type, cmp;
 	struct ubifs_idx_node *idx;
 
@@ -292,6 +293,12 @@ static int read_znode(struct ubifs_info *c, int lnum, int offs, int len,
 		return err;
 	}
 
+	err = ubifs_node_check_hash(c, idx, zzbr->hash);
+	if (err) {
+		ubifs_bad_hash(c, idx, zzbr->hash, lnum, offs);
+		return err;
+	}
+
 	znode->child_cnt = le16_to_cpu(idx->child_cnt);
 	znode->level = le16_to_cpu(idx->level);
 
@@ -308,13 +315,14 @@ static int read_znode(struct ubifs_info *c, int lnum, int offs, int len,
 	}
 
 	for (i = 0; i < znode->child_cnt; i++) {
-		const struct ubifs_branch *br = ubifs_idx_branch(c, idx, i);
+		struct ubifs_branch *br = ubifs_idx_branch(c, idx, i);
 		struct ubifs_zbranch *zbr = &znode->zbranch[i];
 
 		key_read(c, &br->key, &zbr->key);
 		zbr->lnum = le32_to_cpu(br->lnum);
 		zbr->offs = le32_to_cpu(br->offs);
 		zbr->len  = le32_to_cpu(br->len);
+		ubifs_copy_hash(c, ubifs_branch_hash(c, br), zbr->hash);
 		zbr->znode = NULL;
 
 		/* Validate branch */
@@ -425,7 +433,7 @@ struct ubifs_znode *ubifs_load_znode(struct ubifs_info *c,
 	if (!znode)
 		return ERR_PTR(-ENOMEM);
 
-	err = read_znode(c, zbr->lnum, zbr->offs, zbr->len, znode);
+	err = read_znode(c, zbr, znode);
 	if (err)
 		goto out;
 
@@ -484,5 +492,11 @@ int ubifs_tnc_read_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
 		return -EINVAL;
 	}
 
+	err = ubifs_node_check_hash(c, node, zbr->hash);
+	if (err) {
+		ubifs_bad_hash(c, node, zbr->hash, zbr->lnum, zbr->offs);
+		return err;
+	}
+
 	return 0;
 }
diff --git a/fs/ubifs/ubifs-media.h b/fs/ubifs/ubifs-media.h
index e8c23c9d4f..8b7c184401 100644
--- a/fs/ubifs/ubifs-media.h
+++ b/fs/ubifs/ubifs-media.h
@@ -286,6 +286,7 @@ enum {
 #define UBIFS_IDX_NODE_SZ  sizeof(struct ubifs_idx_node)
 #define UBIFS_CS_NODE_SZ   sizeof(struct ubifs_cs_node)
 #define UBIFS_ORPH_NODE_SZ sizeof(struct ubifs_orph_node)
+#define UBIFS_AUTH_NODE_SZ sizeof(struct ubifs_auth_node)
 /* Extended attribute entry nodes are identical to directory entry nodes */
 #define UBIFS_XENT_NODE_SZ UBIFS_DENT_NODE_SZ
 /* Only this does not have to be multiple of 8 bytes */
@@ -300,6 +301,12 @@ enum {
 /* The largest UBIFS node */
 #define UBIFS_MAX_NODE_SZ UBIFS_MAX_INO_NODE_SZ
 
+/* The maxmimum size of a hash, enough for sha512 */
+#define UBIFS_MAX_HASH_LEN 64
+
+/* The maxmimum size of a hmac, enough for hmac(sha512) */
+#define UBIFS_MAX_HMAC_LEN 64
+
 /*
  * xattr name of UBIFS encryption context, we don't use a prefix
  * nor a long name to not waste space on the flash.
@@ -365,6 +372,7 @@ enum {
  * UBIFS_IDX_NODE: index node
  * UBIFS_CS_NODE: commit start node
  * UBIFS_ORPH_NODE: orphan node
+ * UBIFS_AUTH_NODE: authentication node
  * UBIFS_NODE_TYPES_CNT: count of supported node types
  *
  * Note, we index arrays by these numbers, so keep them low and contiguous.
@@ -384,6 +392,7 @@ enum {
 	UBIFS_IDX_NODE,
 	UBIFS_CS_NODE,
 	UBIFS_ORPH_NODE,
+	UBIFS_AUTH_NODE,
 	UBIFS_NODE_TYPES_CNT,
 };
 
@@ -421,15 +430,19 @@ enum {
  * UBIFS_FLG_DOUBLE_HASH: store a 32bit cookie in directory entry nodes to
  *			  support 64bit cookies for lookups by hash
  * UBIFS_FLG_ENCRYPTION: this filesystem contains encrypted files
+ * UBIFS_FLG_AUTHENTICATION: this filesystem contains hashes for authentication
  */
 enum {
 	UBIFS_FLG_BIGLPT = 0x02,
 	UBIFS_FLG_SPACE_FIXUP = 0x04,
 	UBIFS_FLG_DOUBLE_HASH = 0x08,
 	UBIFS_FLG_ENCRYPTION = 0x10,
+	UBIFS_FLG_AUTHENTICATION = 0x20,
 };
 
-#define UBIFS_FLG_MASK (UBIFS_FLG_BIGLPT|UBIFS_FLG_SPACE_FIXUP|UBIFS_FLG_DOUBLE_HASH|UBIFS_FLG_ENCRYPTION)
+#define UBIFS_FLG_MASK (UBIFS_FLG_BIGLPT | UBIFS_FLG_SPACE_FIXUP | \
+		UBIFS_FLG_DOUBLE_HASH | UBIFS_FLG_ENCRYPTION | \
+		UBIFS_FLG_AUTHENTICATION)
 
 /**
  * struct ubifs_ch - common header node.
@@ -633,6 +646,10 @@ struct ubifs_pad_node {
  * @time_gran: time granularity in nanoseconds
  * @uuid: UUID generated when the file system image was created
  * @ro_compat_version: UBIFS R/O compatibility version
+ * @hmac: HMAC to authenticate the superblock node
+ * @hmac_wkm: HMAC of a well known message (the string "UBIFS") as a convenience
+ *            to the user to check if the correct key is passed.
+ * @hash_algo: The hash algo used for this filesystem (one of enum hash_algo)
  */
 struct ubifs_sb_node {
 	struct ubifs_ch ch;
@@ -660,7 +677,10 @@ struct ubifs_sb_node {
 	__le32 time_gran;
 	__u8 uuid[16];
 	__le32 ro_compat_version;
-	__u8 padding2[3968];
+	__u8 hmac[UBIFS_MAX_HMAC_LEN];
+	__u8 hmac_wkm[UBIFS_MAX_HMAC_LEN];
+	__le16 hash_algo;
+	__u8 padding2[3838];
 } __packed;
 
 /**
@@ -695,6 +715,9 @@ struct ubifs_sb_node {
  * @empty_lebs: number of empty logical eraseblocks
  * @idx_lebs: number of indexing logical eraseblocks
  * @leb_cnt: count of LEBs used by file-system
+ * @hash_root_idx: the hash of the root index node
+ * @hash_lpt: the hash of the LPT
+ * @hmac: HMAC to authenticate the master node
  * @padding: reserved for future, zeroes
  */
 struct ubifs_mst_node {
@@ -727,7 +750,10 @@ struct ubifs_mst_node {
 	__le32 empty_lebs;
 	__le32 idx_lebs;
 	__le32 leb_cnt;
-	__u8 padding[344];
+	__u8 hash_root_idx[UBIFS_MAX_HASH_LEN];
+	__u8 hash_lpt[UBIFS_MAX_HASH_LEN];
+	__u8 hmac[UBIFS_MAX_HMAC_LEN];
+	__u8 padding[152];
 } __packed;
 
 /**
@@ -746,12 +772,26 @@ struct ubifs_ref_node {
 	__u8 padding[28];
 } __packed;
 
+/**
+ * struct ubifs_auth_node - node for authenticating other nodes
+ * @ch: common header
+ * @hmac: The HMAC
+ */
+struct ubifs_auth_node {
+	struct ubifs_ch ch;
+	__u8 hmac[];
+} __packed;
+
 /**
  * struct ubifs_branch - key/reference/length branch
  * @lnum: LEB number of the target node
  * @offs: offset within @lnum
  * @len: target node length
  * @key: key
+ *
+ * In an authenticated UBIFS we have the hash of the referenced node after @key.
+ * This can't be added to the struct type definition because @key is a
+ * dynamically sized element already.
  */
 struct ubifs_branch {
 	__le32 lnum;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 494b1f2614..fd35619246 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -496,6 +496,7 @@ static int zlib_decomp_init(void)
 }
 
 int ubifs_allow_encrypted;
+int ubifs_allow_authenticated_unauthenticated;
 
 static int ubifs_init(void)
 {
@@ -508,6 +509,8 @@ static int ubifs_init(void)
 	}
 
 	globalvar_add_simple_bool("ubifs.allow_encrypted", &ubifs_allow_encrypted);
+	globalvar_add_simple_bool("ubifs.allow_authenticated_unauthenticated",
+				  &ubifs_allow_authenticated_unauthenticated);
 
 	return register_fs_driver(&ubifs_driver);
 }
@@ -516,3 +519,6 @@ coredevice_initcall(ubifs_init);
 
 BAREBOX_MAGICVAR_NAMED(global_ubifs_allow_encrypted, global.ubifs.allow_encrypted,
 		       "If true, allow to mount UBIFS with encrypted files");
+BAREBOX_MAGICVAR_NAMED(global_ubifs_allow_authenticated_unauthenticated,
+		       global.ubifs.allow_authenticated_unauthenticated,
+		       "If true, allow to mount authenticated UBIFS images without doing authentication");
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 01aa8986f3..bffaa26fb3 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -49,6 +49,12 @@
 struct iattr;
 struct kstat;
 extern int ubifs_allow_encrypted;
+extern int ubifs_allow_authenticated_unauthenticated;
+
+#include <digest.h>
+
+struct shash_desc;
+struct crypto_shash;
 
 /* uapi/linux/limits.h */
 #define XATTR_LIST_MAX 65536	/* size of extended attribute namelist (64k) */
@@ -165,6 +171,14 @@ extern int ubifs_allow_encrypted;
 /* Maximum number of data nodes to bulk-read */
 #define UBIFS_MAX_BULK_READ 32
 
+#ifdef CONFIG_UBIFS_FS_AUTHENTICATION
+#define UBIFS_HASH_ARR_SZ UBIFS_MAX_HASH_LEN
+#define UBIFS_HMAC_ARR_SZ UBIFS_MAX_HMAC_LEN
+#else
+#define UBIFS_HASH_ARR_SZ 0
+#define UBIFS_HMAC_ARR_SZ 0
+#endif
+
 /*
  * Lockdep classes for UBIFS inode @ui_mutex.
  */
@@ -713,6 +727,7 @@ struct ubifs_wbuf {
  * @jhead: journal head number this bud belongs to
  * @list: link in the list buds belonging to the same journal head
  * @rb: link in the tree of all buds
+ * @log_hash: the log hash from the commit start node up to this bud
  */
 struct ubifs_bud {
 	int lnum;
@@ -720,6 +735,7 @@ struct ubifs_bud {
 	int jhead;
 	struct list_head list;
 	struct rb_node rb;
+	struct shash_desc *log_hash;
 };
 
 /**
@@ -727,6 +743,7 @@ struct ubifs_bud {
  * @wbuf: head's write-buffer
  * @buds_list: list of bud LEBs belonging to this journal head
  * @grouped: non-zero if UBIFS groups nodes when writing to this journal head
+ * @log_hash: the log hash from the commit start node up to this journal head
  *
  * Note, the @buds list is protected by the @c->buds_lock.
  */
@@ -734,6 +751,7 @@ struct ubifs_jhead {
 	struct ubifs_wbuf wbuf;
 	struct list_head buds_list;
 	unsigned int grouped:1;
+	struct shash_desc *log_hash;
 };
 
 /**
@@ -743,6 +761,7 @@ struct ubifs_jhead {
  * @lnum: LEB number of the target node (indexing node or data node)
  * @offs: target node offset within @lnum
  * @len: target node length
+ * @hash: the hash of the target node
  */
 struct ubifs_zbranch {
 	union ubifs_key key;
@@ -753,12 +772,15 @@ struct ubifs_zbranch {
 	int lnum;
 	int offs;
 	int len;
+	u8 hash[UBIFS_HASH_ARR_SZ];
 };
 
 /**
  * struct ubifs_znode - in-memory representation of an indexing node.
  * @parent: parent znode or NULL if it is the root
  * @cnext: next znode to commit
+ * @cparent: parent node for this commit
+ * @ciip: index in cparent's zbranch array
  * @flags: znode flags (%DIRTY_ZNODE, %COW_ZNODE or %OBSOLETE_ZNODE)
  * @time: last access time (seconds)
  * @level: level of the entry in the TNC tree
@@ -776,6 +798,8 @@ struct ubifs_zbranch {
 struct ubifs_znode {
 	struct ubifs_znode *parent;
 	struct ubifs_znode *cnext;
+	struct ubifs_znode *cparent;
+	int ciip;
 	unsigned long flags;
 	int level;
 	int child_cnt;
@@ -991,6 +1015,7 @@ struct ubifs_debug_info;
  * struct ubifs_info - UBIFS file-system description data structure
  * (per-superblock).
  * @vfs_sb: VFS @struct super_block object
+ * @sup_node: The super block node as read from the device
  *
  * @highest_inum: highest used inode number
  * @max_sqnum: current global sequence number
@@ -1036,6 +1061,7 @@ struct ubifs_debug_info;
  * @default_compr: default compression algorithm (%UBIFS_COMPR_LZO, etc)
  * @rw_incompat: the media is not R/W compatible
  * @assert_action: action to take when a ubifs_assert() fails
+ * @authenticated: flag indigating the FS is mounted in authenticated mode
  *
  * @tnc_mutex: protects the Tree Node Cache (TNC), @zroot, @cnext, @enext, and
  *             @calc_idx_sz
@@ -1083,6 +1109,7 @@ struct ubifs_debug_info;
  * @key_hash: direntry key hash function
  * @key_fmt: key format
  * @key_len: key length
+ * @hash_len: The length of the index node hashes
  * @fanout: fanout of the index tree (number of links per indexing node)
  *
  * @min_io_size: minimal input/output unit size
@@ -1218,6 +1245,15 @@ struct ubifs_debug_info;
  * @rp_uid: reserved pool user ID
  * @rp_gid: reserved pool group ID
  *
+ * @hash_tfm: the hash transformation used for hashing nodes
+ * @hmac_tfm: the HMAC transformation for this filesystem
+ * @hmac_desc_len: length of the HMAC used for authentication
+ * @auth_key_name: the authentication key name
+ * @auth_hash_name: the name of the hash algorithm used for authentication
+ * @auth_hash_algo: the authentication hash used for this fs
+ * @log_hash: the log hash from the commit start node up to the latest reference
+ *            node.
+ *
  * @empty: %1 if the UBI device is empty
  * @need_recovery: %1 if the file-system needs recovery
  * @replaying: %1 during journal replay
@@ -1238,6 +1274,7 @@ struct ubifs_debug_info;
  */
 struct ubifs_info {
 	struct super_block *vfs_sb;
+	struct ubifs_sb_node *sup_node;
 
 	ino_t highest_inum;
 	unsigned long long max_sqnum;
@@ -1278,6 +1315,7 @@ struct ubifs_info {
 	unsigned int default_compr:2;
 	unsigned int rw_incompat:1;
 	unsigned int assert_action:2;
+	unsigned int authenticated:1;
 
 	struct mutex tnc_mutex;
 	struct ubifs_zbranch zroot;
@@ -1322,6 +1360,7 @@ struct ubifs_info {
 	uint32_t (*key_hash)(const char *str, int len);
 	int key_fmt;
 	int key_len;
+	int hash_len;
 	int fanout;
 
 	int min_io_size;
@@ -1449,6 +1488,15 @@ struct ubifs_info {
 	uid_t rp_uid;
 	gid_t rp_gid;
 
+	struct crypto_shash *hash_tfm;
+	struct crypto_shash *hmac_tfm;
+	int hmac_desc_len;
+	char *auth_key_name;
+	char *auth_hash_name;
+	enum hash_algo auth_hash_algo;
+
+	struct shash_desc *log_hash;
+
 	/* The below fields are used only during mounting and re-mounting */
 	unsigned int empty:1;
 	unsigned int need_recovery:1;
@@ -1480,6 +1528,174 @@ extern const struct inode_operations ubifs_dir_inode_operations;
 extern const struct inode_operations ubifs_symlink_inode_operations;
 extern struct ubifs_compressor *ubifs_compressors[UBIFS_COMPR_TYPES_CNT];
 
+/* auth.c */
+static inline int ubifs_authenticated(const struct ubifs_info *c)
+{
+	return (IS_ENABLED(CONFIG_UBIFS_FS_AUTHENTICATION)) && c->authenticated;
+}
+
+struct shash_desc *__ubifs_hash_get_desc(const struct ubifs_info *c);
+static inline struct shash_desc *ubifs_hash_get_desc(const struct ubifs_info *c)
+{
+	return ubifs_authenticated(c) ? __ubifs_hash_get_desc(c) : NULL;
+}
+
+static inline int ubifs_shash_init(const struct ubifs_info *c,
+				   struct shash_desc *desc)
+{
+	return 0;
+}
+
+static inline int ubifs_shash_update(const struct ubifs_info *c,
+				      struct shash_desc *desc, const void *buf,
+				      unsigned int len)
+{
+	return 0;
+}
+
+static inline int ubifs_shash_final(const struct ubifs_info *c,
+				    struct shash_desc *desc, u8 *out)
+{
+	return 0;
+}
+
+static inline int ubifs_node_calc_hash(const struct ubifs_info *c,
+					const void *buf, u8 *hash)
+{
+	return 0;
+}
+
+int ubifs_prepare_auth_node(struct ubifs_info *c, void *node,
+			     struct shash_desc *inhash);
+
+/**
+ * ubifs_check_hash - compare two hashes
+ * @c: UBIFS file-system description object
+ * @expected: first hash
+ * @got: second hash
+ *
+ * Compare two hashes @expected and @got. Returns 0 when they are equal, a
+ * negative error code otherwise.
+ */
+static inline int ubifs_check_hash(const struct ubifs_info *c,
+				   const u8 *expected, const u8 *got)
+{
+	return 0;
+}
+
+/**
+ * ubifs_check_hmac - compare two HMACs
+ * @c: UBIFS file-system description object
+ * @expected: first HMAC
+ * @got: second HMAC
+ *
+ * Compare two hashes @expected and @got. Returns 0 when they are equal, a
+ * negative error code otherwise.
+ */
+static inline int ubifs_check_hmac(const struct ubifs_info *c,
+				   const u8 *expected, const u8 *got)
+{
+	return 0;
+}
+
+void ubifs_bad_hash(const struct ubifs_info *c, const void *node,
+		    const u8 *hash, int lnum, int offs);
+
+static inline int ubifs_node_check_hash(const struct ubifs_info *c,
+					const void *buf, const u8 *expected)
+{
+	return 0;
+}
+
+int ubifs_init_authentication(struct ubifs_info *c);
+void __ubifs_exit_authentication(struct ubifs_info *c);
+static inline void ubifs_exit_authentication(struct ubifs_info *c)
+{
+	if (ubifs_authenticated(c))
+		__ubifs_exit_authentication(c);
+}
+
+/**
+ * ubifs_branch_hash - returns a pointer to the hash of a branch
+ * @c: UBIFS file-system description object
+ * @br: branch to get the hash from
+ *
+ * This returns a pointer to the hash of a branch. Since the key already is a
+ * dynamically sized object we cannot use a struct member here.
+ */
+static inline u8 *ubifs_branch_hash(struct ubifs_info *c,
+				    struct ubifs_branch *br)
+{
+	return (void *)br + sizeof(*br) + c->key_len;
+}
+
+/**
+ * ubifs_copy_hash - copy a hash
+ * @c: UBIFS file-system description object
+ * @from: source hash
+ * @to: destination hash
+ *
+ * With authentication this copies a hash, otherwise does nothing.
+ */
+static inline void ubifs_copy_hash(const struct ubifs_info *c, const u8 *from,
+				   u8 *to)
+{
+	if (ubifs_authenticated(c))
+		memcpy(to, from, c->hash_len);
+}
+
+int __ubifs_node_insert_hmac(const struct ubifs_info *c, void *buf,
+			      int len, int ofs_hmac);
+static inline int ubifs_node_insert_hmac(const struct ubifs_info *c, void *buf,
+					  int len, int ofs_hmac)
+{
+	if (ubifs_authenticated(c))
+		return __ubifs_node_insert_hmac(c, buf, len, ofs_hmac);
+	else
+		return 0;
+}
+
+int __ubifs_node_verify_hmac(const struct ubifs_info *c, const void *buf,
+			     int len, int ofs_hmac);
+static inline int ubifs_node_verify_hmac(const struct ubifs_info *c,
+					 const void *buf, int len, int ofs_hmac)
+{
+	if (ubifs_authenticated(c))
+		return __ubifs_node_verify_hmac(c, buf, len, ofs_hmac);
+	else
+		return 0;
+}
+
+/**
+ * ubifs_auth_node_sz - returns the size of an authentication node
+ * @c: UBIFS file-system description object
+ *
+ * This function returns the size of an authentication node which can
+ * be 0 for unauthenticated filesystems or the real size of an auth node
+ * authentication is enabled.
+ */
+static inline int ubifs_auth_node_sz(const struct ubifs_info *c)
+{
+	if (ubifs_authenticated(c))
+		return sizeof(struct ubifs_auth_node) + c->hmac_desc_len;
+	else
+		return 0;
+}
+
+int ubifs_hmac_wkm(struct ubifs_info *c, u8 *hmac);
+
+int __ubifs_shash_copy_state(const struct ubifs_info *c, struct shash_desc *src,
+			     struct shash_desc *target);
+static inline int ubifs_shash_copy_state(const struct ubifs_info *c,
+					   struct shash_desc *src,
+					   struct shash_desc *target)
+{
+	if (ubifs_authenticated(c))
+		return __ubifs_shash_copy_state(c, src, target);
+	else
+		return 0;
+}
+
 /* io.c */
 void ubifs_ro_mode(struct ubifs_info *c, int err);
 int ubifs_leb_read(const struct ubifs_info *c, int lnum, void *buf, int offs,
@@ -1499,9 +1715,15 @@ int ubifs_read_node_wbuf(struct ubifs_wbuf *wbuf, void *buf, int type, int len,
 			 int lnum, int offs);
 int ubifs_write_node(struct ubifs_info *c, void *node, int len, int lnum,
 		     int offs);
+int ubifs_write_node_hmac(struct ubifs_info *c, void *buf, int len, int lnum,
+			  int offs, int hmac_offs);
 int ubifs_check_node(const struct ubifs_info *c, const void *buf, int lnum,
 		     int offs, int quiet, int must_chk_crc);
+void ubifs_init_node(struct ubifs_info *c, void *buf, int len, int pad);
+void ubifs_crc_node(struct ubifs_info *c, void *buf, int len);
 void ubifs_prepare_node(struct ubifs_info *c, void *buf, int len, int pad);
+int ubifs_prepare_node_hmac(struct ubifs_info *c, void *node, int len,
+			    int hmac_offs, int pad);
 void ubifs_prep_grp_node(struct ubifs_info *c, void *node, int len, int last);
 int ubifs_io_init(struct ubifs_info *c);
 void ubifs_pad(const struct ubifs_info *c, void *buf, int pad);
@@ -1601,11 +1823,12 @@ int ubifs_tnc_lookup_dh(struct ubifs_info *c, const union ubifs_key *key,
 int ubifs_tnc_locate(struct ubifs_info *c, const union ubifs_key *key,
 		     void *node, int *lnum, int *offs);
 int ubifs_tnc_add(struct ubifs_info *c, const union ubifs_key *key, int lnum,
-		  int offs, int len);
+		  int offs, int len, const u8 *hash);
 int ubifs_tnc_replace(struct ubifs_info *c, const union ubifs_key *key,
 		      int old_lnum, int old_offs, int lnum, int offs, int len);
 int ubifs_tnc_add_nm(struct ubifs_info *c, const union ubifs_key *key,
-		     int lnum, int offs, int len, const struct fscrypt_name *nm);
+		     int lnum, int offs, int len, const u8 *hash,
+		     const struct fscrypt_name *nm);
 int ubifs_tnc_remove(struct ubifs_info *c, const union ubifs_key *key);
 int ubifs_tnc_remove_nm(struct ubifs_info *c, const union ubifs_key *key,
 			const struct fscrypt_name *nm);
@@ -1662,12 +1885,12 @@ int ubifs_gc_should_commit(struct ubifs_info *c);
 void ubifs_wait_for_commit(struct ubifs_info *c);
 
 /* master.c */
+int ubifs_compare_master_node(struct ubifs_info *c, void *m1, void *m2);
 int ubifs_read_master(struct ubifs_info *c);
 int ubifs_write_master(struct ubifs_info *c);
 
 /* sb.c */
 int ubifs_read_superblock(struct ubifs_info *c);
-struct ubifs_sb_node *ubifs_read_sb_node(struct ubifs_info *c);
 int ubifs_write_sb_node(struct ubifs_info *c, struct ubifs_sb_node *sup);
 int ubifs_fixup_free_space(struct ubifs_info *c);
 int ubifs_enable_encryption(struct ubifs_info *c);
@@ -1696,7 +1919,7 @@ int ubifs_clear_orphans(struct ubifs_info *c);
 /* lpt.c */
 int ubifs_calc_lpt_geom(struct ubifs_info *c);
 int ubifs_create_dflt_lpt(struct ubifs_info *c, int *main_lebs, int lpt_first,
-			  int *lpt_lebs, int *big_lpt);
+			  int *lpt_lebs, int *big_lpt, u8 *hash);
 int ubifs_lpt_init(struct ubifs_info *c, int rd, int wr);
 struct ubifs_lprops *ubifs_lpt_lookup(struct ubifs_info *c, int lnum);
 struct ubifs_lprops *ubifs_lpt_lookup_dirty(struct ubifs_info *c, int lnum);
@@ -1715,6 +1938,7 @@ struct ubifs_pnode *ubifs_get_pnode(struct ubifs_info *c,
 				    struct ubifs_nnode *parent, int iip);
 struct ubifs_nnode *ubifs_get_nnode(struct ubifs_info *c,
 				    struct ubifs_nnode *parent, int iip);
+struct ubifs_pnode *ubifs_pnode_lookup(struct ubifs_info *c, int i);
 int ubifs_read_nnode(struct ubifs_info *c, struct ubifs_nnode *parent, int iip);
 void ubifs_add_lpt_dirt(struct ubifs_info *c, int lnum, int dirty);
 void ubifs_add_nnode_dirt(struct ubifs_info *c, struct ubifs_nnode *nnode);
@@ -1723,6 +1947,7 @@ struct ubifs_nnode *ubifs_first_nnode(struct ubifs_info *c, int *hght);
 /* Needed only in debugging code in lpt_commit.c */
 int ubifs_unpack_nnode(const struct ubifs_info *c, void *buf,
 		       struct ubifs_nnode *nnode);
+int ubifs_lpt_calc_hash(struct ubifs_info *c, u8 *hash);
 
 /* lpt_commit.c */
 int ubifs_lpt_start_commit(struct ubifs_info *c);
@@ -1810,7 +2035,7 @@ int ubifs_clean_lebs(struct ubifs_info *c, void *sbuf);
 int ubifs_rcvry_gc_commit(struct ubifs_info *c);
 int ubifs_recover_size_accum(struct ubifs_info *c, union ubifs_key *key,
 			     int deletion, loff_t new_size);
-int ubifs_recover_size(struct ubifs_info *c);
+int ubifs_recover_size(struct ubifs_info *c, bool in_place);
 void ubifs_destroy_size_tree(struct ubifs_info *c);
 
 /* ioctl.c */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
