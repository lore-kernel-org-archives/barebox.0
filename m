Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRq-0004t6-R6
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:21 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:19 +0000
Message-Id: <1354558114-28799-4-git-send-email-renaud.barbier@ge.com>
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
Content-Type: multipart/mixed; boundary="===============8110381183305718270=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/18] UBIFS: header files (1/2)
To: barebox@lists.infradead.org

--===============8110381183305718270==
Content-Type: text/plain

This is the first set of header files to support UBIFS.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/crc16.h       |   29 ++
 fs/ubifs/debug.h       |  392 ++++++++++++++++++++++++
 fs/ubifs/key.h         |  557 ++++++++++++++++++++++++++++++++++
 fs/ubifs/misc.h        |  311 +++++++++++++++++++
 fs/ubifs/ubifs-media.h |  775 ++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 2064 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/crc16.h
 create mode 100644 fs/ubifs/debug.h
 create mode 100644 fs/ubifs/key.h
 create mode 100644 fs/ubifs/misc.h
 create mode 100644 fs/ubifs/ubifs-media.h

diff --git a/fs/ubifs/crc16.h b/fs/ubifs/crc16.h
new file mode 100644
index 0000000..052fd33
--- /dev/null
+++ b/fs/ubifs/crc16.h
@@ -0,0 +1,29 @@
+/*
+ *	crc16.h - CRC-16 routine
+ *
+ * Implements the standard CRC-16:
+ *   Width 16
+ *   Poly  0x8005 (x^16 + x^15 + x^2 + 1)
+ *   Init  0
+ *
+ * Copyright (c) 2005 Ben Gardner <bgardner@wabtec.com>
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2. See the file COPYING for more details.
+ */
+
+#ifndef __CRC16_H
+#define __CRC16_H
+
+#include <linux/types.h>
+
+extern u16 const crc16_table[256];
+
+extern u16 crc16(u16 crc, const u8 *buffer, size_t len);
+
+static inline u16 crc16_byte(u16 crc, const u8 data)
+{
+	return (crc >> 8) ^ crc16_table[(crc ^ data) & 0xff];
+}
+
+#endif /* __CRC16_H */
diff --git a/fs/ubifs/debug.h b/fs/ubifs/debug.h
new file mode 100644
index 0000000..62617b6
--- /dev/null
+++ b/fs/ubifs/debug.h
@@ -0,0 +1,392 @@
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
+#ifndef __UBIFS_DEBUG_H__
+#define __UBIFS_DEBUG_H__
+
+#ifdef CONFIG_UBIFS_FS_DEBUG
+
+/**
+ * ubifs_debug_info - per-FS debugging information.
+ * @buf: a buffer of LEB size, used for various purposes
+ * @old_zroot: old index root - used by 'dbg_check_old_index()'
+ * @old_zroot_level: old index root level - used by 'dbg_check_old_index()'
+ * @old_zroot_sqnum: old index root sqnum - used by 'dbg_check_old_index()'
+ * @failure_mode: failure mode for recovery testing
+ * @fail_delay: 0=>don't delay, 1=>delay a time, 2=>delay a number of calls
+ * @fail_timeout: time in jiffies when delay of failure mode expires
+ * @fail_cnt: current number of calls to failure mode I/O functions
+ * @fail_cnt_max: number of calls by which to delay failure mode
+ * @chk_lpt_sz: used by LPT tree size checker
+ * @chk_lpt_sz2: used by LPT tree size checker
+ * @chk_lpt_wastage: used by LPT tree size checker
+ * @chk_lpt_lebs: used by LPT tree size checker
+ * @new_nhead_offs: used by LPT tree size checker
+ * @new_ihead_lnum: used by debugging to check @c->ihead_lnum
+ * @new_ihead_offs: used by debugging to check @c->ihead_offs
+ *
+ * @saved_lst: saved lprops statistics (used by 'dbg_save_space_info()')
+ * @saved_free: saved free space (used by 'dbg_save_space_info()')
+ *
+ * dfs_dir_name: name of debugfs directory containing this file-system's files
+ * dfs_dir: direntry object of the file-system debugfs directory
+ * dfs_dump_lprops: "dump lprops" debugfs knob
+ * dfs_dump_budg: "dump budgeting information" debugfs knob
+ * dfs_dump_tnc: "dump TNC" debugfs knob
+ */
+struct ubifs_debug_info {
+	void *buf;
+	struct ubifs_zbranch old_zroot;
+	int old_zroot_level;
+	unsigned long long old_zroot_sqnum;
+	int failure_mode;
+	int fail_delay;
+	unsigned long fail_timeout;
+	unsigned int fail_cnt;
+	unsigned int fail_cnt_max;
+	long long chk_lpt_sz;
+	long long chk_lpt_sz2;
+	long long chk_lpt_wastage;
+	int chk_lpt_lebs;
+	int new_nhead_offs;
+	int new_ihead_lnum;
+	int new_ihead_offs;
+
+	struct ubifs_lp_stats saved_lst;
+	long long saved_free;
+
+	char dfs_dir_name[100];
+	struct dentry *dfs_dir;
+	struct dentry *dfs_dump_lprops;
+	struct dentry *dfs_dump_budg;
+	struct dentry *dfs_dump_tnc;
+};
+
+#define UBIFS_DBG(op) op
+
+#define ubifs_assert(expr) do {                                                \
+	if (unlikely(!(expr))) {                                               \
+		printk(KERN_CRIT "UBIFS assert failed in %s at %u (pid %d)\n", \
+		       __func__, __LINE__, 0);                      \
+		dbg_dump_stack();                                              \
+	}                                                                      \
+} while (0)
+
+#define ubifs_assert_cmt_locked(c) do {                                        \
+	if (unlikely(down_write_trylock(&(c)->commit_sem))) {                  \
+		up_write(&(c)->commit_sem);                                    \
+		printk(KERN_CRIT "commit lock is not locked!\n");              \
+		ubifs_assert(0);                                               \
+	}                                                                      \
+} while (0)
+
+#define dbg_dump_stack() do {                                                  \
+	if (!dbg_failure_mode)                                                 \
+		dump_stack();                                                  \
+} while (0)
+
+/* Generic debugging messages */
+#define dbg_msg(fmt, ...) do {                                                 \
+	spin_lock(&dbg_lock);                                                  \
+	printk(KERN_DEBUG "UBIFS DBG (pid %d): %s: " fmt "\n", 0,   \
+	       __func__, ##__VA_ARGS__);                                       \
+	spin_unlock(&dbg_lock);                                                \
+} while (0)
+
+#define dbg_do_msg(typ, fmt, ...) do {                                         \
+	if (ubifs_msg_flags & typ)                                             \
+		dbg_msg(fmt, ##__VA_ARGS__);                                   \
+} while (0)
+
+#define dbg_err(fmt, ...) do {                                                 \
+	spin_lock(&dbg_lock);                                                  \
+	ubifs_err(fmt, ##__VA_ARGS__);                                         \
+	spin_unlock(&dbg_lock);                                                \
+} while (0)
+
+const char *dbg_key_str0(const struct ubifs_info *c,
+			 const union ubifs_key *key);
+const char *dbg_key_str1(const struct ubifs_info *c,
+			 const union ubifs_key *key);
+
+/*
+ * DBGKEY macros require @dbg_lock to be held, which it is in the dbg message
+ * macros.
+ */
+#define DBGKEY(key)	dbg_key_str0(c, (key))
+#define DBGKEY1(key)	dbg_key_str1(c, (key))
+
+/* General messages */
+#define dbg_gen(fmt, ...)   dbg_do_msg(UBIFS_MSG_GEN, fmt, ##__VA_ARGS__)
+
+/* Additional journal messages */
+#define dbg_jnl(fmt, ...)   dbg_do_msg(UBIFS_MSG_JNL, fmt, ##__VA_ARGS__)
+
+/* Additional TNC messages */
+#define dbg_tnc(fmt, ...)   dbg_do_msg(UBIFS_MSG_TNC, fmt, ##__VA_ARGS__)
+
+/* Additional lprops messages */
+#define dbg_lp(fmt, ...)    dbg_do_msg(UBIFS_MSG_LP, fmt, ##__VA_ARGS__)
+
+/* Additional LEB find messages */
+#define dbg_find(fmt, ...)  dbg_do_msg(UBIFS_MSG_FIND, fmt, ##__VA_ARGS__)
+
+/* Additional mount messages */
+#define dbg_mnt(fmt, ...)   dbg_do_msg(UBIFS_MSG_MNT, fmt, ##__VA_ARGS__)
+
+/* Additional I/O messages */
+#define dbg_io(fmt, ...)    dbg_do_msg(UBIFS_MSG_IO, fmt, ##__VA_ARGS__)
+
+/* Additional commit messages */
+#define dbg_cmt(fmt, ...)   dbg_do_msg(UBIFS_MSG_CMT, fmt, ##__VA_ARGS__)
+
+/* Additional budgeting messages */
+#define dbg_budg(fmt, ...)  dbg_do_msg(UBIFS_MSG_BUDG, fmt, ##__VA_ARGS__)
+
+/* Additional log messages */
+#define dbg_log(fmt, ...)   dbg_do_msg(UBIFS_MSG_LOG, fmt, ##__VA_ARGS__)
+
+/* Additional gc messages */
+#define dbg_gc(fmt, ...)    dbg_do_msg(UBIFS_MSG_GC, fmt, ##__VA_ARGS__)
+
+/* Additional scan messages */
+#define dbg_scan(fmt, ...)  dbg_do_msg(UBIFS_MSG_SCAN, fmt, ##__VA_ARGS__)
+
+/* Additional recovery messages */
+#define dbg_rcvry(fmt, ...) dbg_do_msg(UBIFS_MSG_RCVRY, fmt, ##__VA_ARGS__)
+
+/*
+ * Debugging message type flags (must match msg_type_names in debug.c).
+ *
+ * UBIFS_MSG_GEN: general messages
+ * UBIFS_MSG_JNL: journal messages
+ * UBIFS_MSG_MNT: mount messages
+ * UBIFS_MSG_CMT: commit messages
+ * UBIFS_MSG_FIND: LEB find messages
+ * UBIFS_MSG_BUDG: budgeting messages
+ * UBIFS_MSG_GC: garbage collection messages
+ * UBIFS_MSG_TNC: TNC messages
+ * UBIFS_MSG_LP: lprops messages
+ * UBIFS_MSG_IO: I/O messages
+ * UBIFS_MSG_LOG: log messages
+ * UBIFS_MSG_SCAN: scan messages
+ * UBIFS_MSG_RCVRY: recovery messages
+ */
+enum {
+	UBIFS_MSG_GEN   = 0x1,
+	UBIFS_MSG_JNL   = 0x2,
+	UBIFS_MSG_MNT   = 0x4,
+	UBIFS_MSG_CMT   = 0x8,
+	UBIFS_MSG_FIND  = 0x10,
+	UBIFS_MSG_BUDG  = 0x20,
+	UBIFS_MSG_GC    = 0x40,
+	UBIFS_MSG_TNC   = 0x80,
+	UBIFS_MSG_LP    = 0x100,
+	UBIFS_MSG_IO    = 0x200,
+	UBIFS_MSG_LOG   = 0x400,
+	UBIFS_MSG_SCAN  = 0x800,
+	UBIFS_MSG_RCVRY = 0x1000,
+};
+
+/* Debugging message type flags for each default debug message level */
+#define UBIFS_MSG_LVL_0 0
+#define UBIFS_MSG_LVL_1 0x1
+#define UBIFS_MSG_LVL_2 0x7f
+#define UBIFS_MSG_LVL_3 0xffff
+
+/*
+ * Debugging check flags (must match chk_names in debug.c).
+ *
+ * UBIFS_CHK_GEN: general checks
+ * UBIFS_CHK_TNC: check TNC
+ * UBIFS_CHK_IDX_SZ: check index size
+ * UBIFS_CHK_ORPH: check orphans
+ * UBIFS_CHK_OLD_IDX: check the old index
+ * UBIFS_CHK_LPROPS: check lprops
+ * UBIFS_CHK_FS: check the file-system
+ */
+enum {
+	UBIFS_CHK_GEN     = 0x1,
+	UBIFS_CHK_TNC     = 0x2,
+	UBIFS_CHK_IDX_SZ  = 0x4,
+	UBIFS_CHK_ORPH    = 0x8,
+	UBIFS_CHK_OLD_IDX = 0x10,
+	UBIFS_CHK_LPROPS  = 0x20,
+	UBIFS_CHK_FS      = 0x40,
+};
+
+/*
+ * Special testing flags (must match tst_names in debug.c).
+ *
+ * UBIFS_TST_FORCE_IN_THE_GAPS: force the use of in-the-gaps method
+ * UBIFS_TST_RCVRY: failure mode for recovery testing
+ */
+enum {
+	UBIFS_TST_FORCE_IN_THE_GAPS = 0x2,
+	UBIFS_TST_RCVRY             = 0x4,
+};
+
+#if CONFIG_UBIFS_FS_DEBUG_MSG_LVL == 1
+#define UBIFS_MSG_FLAGS_DEFAULT UBIFS_MSG_LVL_1
+#elif CONFIG_UBIFS_FS_DEBUG_MSG_LVL == 2
+#define UBIFS_MSG_FLAGS_DEFAULT UBIFS_MSG_LVL_2
+#elif CONFIG_UBIFS_FS_DEBUG_MSG_LVL == 3
+#define UBIFS_MSG_FLAGS_DEFAULT UBIFS_MSG_LVL_3
+#else
+#define UBIFS_MSG_FLAGS_DEFAULT UBIFS_MSG_LVL_0
+#endif
+
+#ifdef CONFIG_UBIFS_FS_DEBUG_CHKS
+#define UBIFS_CHK_FLAGS_DEFAULT 0xffffffff
+#else
+#define UBIFS_CHK_FLAGS_DEFAULT 0
+#endif
+
+#define dbg_ntype(type)                       ""
+#define dbg_cstate(cmt_state)                 ""
+#define dbg_get_key_dump(c, key)              ({})
+#define dbg_dump_inode(c, inode)              ({})
+#define dbg_dump_node(c, node)                ({})
+#define dbg_dump_budget_req(req)              ({})
+#define dbg_dump_lstats(lst)                  ({})
+#define dbg_dump_budg(c)                      ({})
+#define dbg_dump_lprop(c, lp)                 ({})
+#define dbg_dump_lprops(c)                    ({})
+#define dbg_dump_lpt_info(c)                  ({})
+#define dbg_dump_leb(c, lnum)                 ({})
+#define dbg_dump_znode(c, znode)              ({})
+#define dbg_dump_heap(c, heap, cat)           ({})
+#define dbg_dump_pnode(c, pnode, parent, iip) ({})
+#define dbg_dump_tnc(c)                       ({})
+#define dbg_dump_index(c)                     ({})
+
+#define dbg_walk_index(c, leaf_cb, znode_cb, priv) 0
+#define dbg_old_index_check_init(c, zroot)         0
+#define dbg_check_old_index(c, zroot)              0
+#define dbg_check_cats(c)                          0
+#define dbg_check_ltab(c)                          0
+#define dbg_chk_lpt_free_spc(c)                    0
+#define dbg_chk_lpt_sz(c, action, len)             0
+#define dbg_check_synced_i_size(inode)             0
+#define dbg_check_dir_size(c, dir)                 0
+#define dbg_check_tnc(c, x)                        0
+#define dbg_check_idx_size(c, idx_size)            0
+#define dbg_check_filesystem(c)                    0
+#define dbg_check_heap(c, heap, cat, add_pos)      ({})
+#define dbg_check_lprops(c)                        0
+#define dbg_check_lpt_nodes(c, cnode, row, col)    0
+#define dbg_force_in_the_gaps_enabled              0
+#define dbg_force_in_the_gaps()                    0
+#define dbg_failure_mode                           0
+#define dbg_failure_mode_registration(c)           ({})
+#define dbg_failure_mode_deregistration(c)         ({})
+
+int ubifs_debugging_init(struct ubifs_info *c);
+void ubifs_debugging_exit(struct ubifs_info *c);
+
+#else /* !CONFIG_UBIFS_FS_DEBUG */
+
+#define UBIFS_DBG(op)
+
+/* Use "if (0)" to make compiler check arguments even if debugging is off */
+#define ubifs_assert(expr)  do {                                               \
+	if (0 && (expr))                                                       \
+		printk(KERN_CRIT "UBIFS assert failed in %s at %u (pid %d)\n", \
+		       __func__, __LINE__, 0);                      \
+} while (0)
+
+#define dbg_err(fmt, ...)   do {                                               \
+	if (0)                                                                 \
+		ubifs_err(fmt, ##__VA_ARGS__);                                 \
+} while (0)
+
+#define dbg_msg(fmt, ...) do {                                                 \
+	if (0)                                                                 \
+		printk(KERN_DEBUG "UBIFS DBG (pid %d): %s: " fmt "\n",         \
+		       0, __func__, ##__VA_ARGS__);                 \
+} while (0)
+
+#define dbg_dump_stack()
+#define ubifs_assert_cmt_locked(c)
+
+#define dbg_gen(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_jnl(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_tnc(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_lp(fmt, ...)    dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_find(fmt, ...)  dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_mnt(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_io(fmt, ...)    dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_cmt(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_budg(fmt, ...)  dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_log(fmt, ...)   dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_gc(fmt, ...)    dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_scan(fmt, ...)  dbg_msg(fmt, ##__VA_ARGS__)
+#define dbg_rcvry(fmt, ...) dbg_msg(fmt, ##__VA_ARGS__)
+
+#define DBGKEY(key)  ((char *)(key))
+#define DBGKEY1(key) ((char *)(key))
+
+#define ubifs_debugging_init(c)                0
+#define ubifs_debugging_exit(c)                ({})
+
+#define dbg_ntype(type)                       ""
+#define dbg_cstate(cmt_state)                 ""
+#define dbg_get_key_dump(c, key)              ({})
+#define dbg_dump_inode(c, inode)              ({})
+#define dbg_dump_node(c, node)                ({})
+#define dbg_dump_budget_req(req)              ({})
+#define dbg_dump_lstats(lst)                  ({})
+#define dbg_dump_budg(c)                      ({})
+#define dbg_dump_lprop(c, lp)                 ({})
+#define dbg_dump_lprops(c)                    ({})
+#define dbg_dump_lpt_info(c)                  ({})
+#define dbg_dump_leb(c, lnum)                 ({})
+#define dbg_dump_znode(c, znode)              ({})
+#define dbg_dump_heap(c, heap, cat)           ({})
+#define dbg_dump_pnode(c, pnode, parent, iip) ({})
+#define dbg_dump_tnc(c)                       ({})
+#define dbg_dump_index(c)                     ({})
+
+#define dbg_walk_index(c, leaf_cb, znode_cb, priv) 0
+#define dbg_old_index_check_init(c, zroot)         0
+#define dbg_check_old_index(c, zroot)              0
+#define dbg_check_cats(c)                          0
+#define dbg_check_ltab(c)                          0
+#define dbg_chk_lpt_free_spc(c)                    0
+#define dbg_chk_lpt_sz(c, action, len)             0
+#define dbg_check_synced_i_size(inode)             0
+#define dbg_check_dir_size(c, dir)                 0
+#define dbg_check_tnc(c, x)                        0
+#define dbg_check_idx_size(c, idx_size)            0
+#define dbg_check_filesystem(c)                    0
+#define dbg_check_heap(c, heap, cat, add_pos)      ({})
+#define dbg_check_lprops(c)                        0
+#define dbg_check_lpt_nodes(c, cnode, row, col)    0
+#define dbg_force_in_the_gaps_enabled              0
+#define dbg_force_in_the_gaps()                    0
+#define dbg_failure_mode                           0
+#define dbg_failure_mode_registration(c)           ({})
+#define dbg_failure_mode_deregistration(c)         ({})
+
+#endif /* !CONFIG_UBIFS_FS_DEBUG */
+
+#endif /* !__UBIFS_DEBUG_H__ */
diff --git a/fs/ubifs/key.h b/fs/ubifs/key.h
new file mode 100644
index 0000000..efb3430
--- /dev/null
+++ b/fs/ubifs/key.h
@@ -0,0 +1,557 @@
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
+/*
+ * This header contains various key-related definitions and helper function.
+ * UBIFS allows several key schemes, so we access key fields only via these
+ * helpers. At the moment only one key scheme is supported.
+ *
+ * Simple key scheme
+ * ~~~~~~~~~~~~~~~~~
+ *
+ * Keys are 64-bits long. First 32-bits are inode number (parent inode number
+ * in case of direntry key). Next 3 bits are node type. The last 29 bits are
+ * 4KiB offset in case of inode node, and direntry hash in case of a direntry
+ * node. We use "r5" hash borrowed from reiserfs.
+ */
+
+#ifndef __UBIFS_KEY_H__
+#define __UBIFS_KEY_H__
+
+/**
+ * key_mask_hash - mask a valid hash value.
+ * @val: value to be masked
+ *
+ * We use hash values as offset in directories, so values %0 and %1 are
+ * reserved for "." and "..". %2 is reserved for "end of readdir" marker. This
+ * function makes sure the reserved values are not used.
+ */
+static inline uint32_t key_mask_hash(uint32_t hash)
+{
+	hash &= UBIFS_S_KEY_HASH_MASK;
+	if (unlikely(hash <= 2))
+		hash += 3;
+	return hash;
+}
+
+/**
+ * key_r5_hash - R5 hash function (borrowed from reiserfs).
+ * @s: direntry name
+ * @len: name length
+ */
+static inline uint32_t key_r5_hash(const char *s, int len)
+{
+	uint32_t a = 0;
+	const signed char *str = (const signed char *)s;
+
+	while (*str) {
+		a += *str << 4;
+		a += *str >> 4;
+		a *= 11;
+		str++;
+	}
+
+	return key_mask_hash(a);
+}
+
+/**
+ * key_test_hash - testing hash function.
+ * @str: direntry name
+ * @len: name length
+ */
+static inline uint32_t key_test_hash(const char *str, int len)
+{
+	uint32_t a = 0;
+
+	len = min_t(uint32_t, len, 4);
+	memcpy(&a, str, len);
+	return key_mask_hash(a);
+}
+
+/**
+ * ino_key_init - initialize inode key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: inode number
+ */
+static inline void ino_key_init(const struct ubifs_info *c,
+				union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = UBIFS_INO_KEY << UBIFS_S_KEY_BLOCK_BITS;
+}
+
+/**
+ * ino_key_init_flash - initialize on-flash inode key.
+ * @c: UBIFS file-system description object
+ * @k: key to initialize
+ * @inum: inode number
+ */
+static inline void ino_key_init_flash(const struct ubifs_info *c, void *k,
+				      ino_t inum)
+{
+	union ubifs_key *key = k;
+
+	key->j32[0] = cpu_to_le32(inum);
+	key->j32[1] = cpu_to_le32(UBIFS_INO_KEY << UBIFS_S_KEY_BLOCK_BITS);
+	memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
+}
+
+/**
+ * lowest_ino_key - get the lowest possible inode key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: inode number
+ */
+static inline void lowest_ino_key(const struct ubifs_info *c,
+				union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = 0;
+}
+
+/**
+ * highest_ino_key - get the highest possible inode key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: inode number
+ */
+static inline void highest_ino_key(const struct ubifs_info *c,
+				union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = 0xffffffff;
+}
+
+/**
+ * dent_key_init - initialize directory entry key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: parent inode number
+ * @nm: direntry name and length
+ */
+static inline void dent_key_init(const struct ubifs_info *c,
+				 union ubifs_key *key, ino_t inum,
+				 const struct qstr *nm)
+{
+	uint32_t hash = c->key_hash(nm->name, nm->len);
+
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->u32[0] = inum;
+	key->u32[1] = hash | (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS);
+}
+
+/**
+ * dent_key_init_hash - initialize directory entry key without re-calculating
+ *                      hash function.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: parent inode number
+ * @hash: direntry name hash
+ */
+static inline void dent_key_init_hash(const struct ubifs_info *c,
+				      union ubifs_key *key, ino_t inum,
+				      uint32_t hash)
+{
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->u32[0] = inum;
+	key->u32[1] = hash | (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS);
+}
+
+/**
+ * dent_key_init_flash - initialize on-flash directory entry key.
+ * @c: UBIFS file-system description object
+ * @k: key to initialize
+ * @inum: parent inode number
+ * @nm: direntry name and length
+ */
+static inline void dent_key_init_flash(const struct ubifs_info *c, void *k,
+				       ino_t inum, const struct qstr *nm)
+{
+	union ubifs_key *key = k;
+	uint32_t hash = c->key_hash(nm->name, nm->len);
+
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->j32[0] = cpu_to_le32(inum);
+	key->j32[1] = cpu_to_le32(hash |
+				  (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS));
+	memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
+}
+
+/**
+ * lowest_dent_key - get the lowest possible directory entry key.
+ * @c: UBIFS file-system description object
+ * @key: where to store the lowest key
+ * @inum: parent inode number
+ */
+static inline void lowest_dent_key(const struct ubifs_info *c,
+				   union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS;
+}
+
+/**
+ * xent_key_init - initialize extended attribute entry key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: host inode number
+ * @nm: extended attribute entry name and length
+ */
+static inline void xent_key_init(const struct ubifs_info *c,
+				 union ubifs_key *key, ino_t inum,
+				 const struct qstr *nm)
+{
+	uint32_t hash = c->key_hash(nm->name, nm->len);
+
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->u32[0] = inum;
+	key->u32[1] = hash | (UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS);
+}
+
+/**
+ * xent_key_init_hash - initialize extended attribute entry key without
+ *                      re-calculating hash function.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: host inode number
+ * @hash: extended attribute entry name hash
+ */
+static inline void xent_key_init_hash(const struct ubifs_info *c,
+				      union ubifs_key *key, ino_t inum,
+				      uint32_t hash)
+{
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->u32[0] = inum;
+	key->u32[1] = hash | (UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS);
+}
+
+/**
+ * xent_key_init_flash - initialize on-flash extended attribute entry key.
+ * @c: UBIFS file-system description object
+ * @k: key to initialize
+ * @inum: host inode number
+ * @nm: extended attribute entry name and length
+ */
+static inline void xent_key_init_flash(const struct ubifs_info *c, void *k,
+				       ino_t inum, const struct qstr *nm)
+{
+	union ubifs_key *key = k;
+	uint32_t hash = c->key_hash(nm->name, nm->len);
+
+	ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
+	key->j32[0] = cpu_to_le32(inum);
+	key->j32[1] = cpu_to_le32(hash |
+				  (UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS));
+	memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
+}
+
+/**
+ * lowest_xent_key - get the lowest possible extended attribute entry key.
+ * @c: UBIFS file-system description object
+ * @key: where to store the lowest key
+ * @inum: host inode number
+ */
+static inline void lowest_xent_key(const struct ubifs_info *c,
+				   union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS;
+}
+
+/**
+ * data_key_init - initialize data key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: inode number
+ * @block: block number
+ */
+static inline void data_key_init(const struct ubifs_info *c,
+				 union ubifs_key *key, ino_t inum,
+				 unsigned int block)
+{
+	ubifs_assert(!(block & ~UBIFS_S_KEY_BLOCK_MASK));
+	key->u32[0] = inum;
+	key->u32[1] = block | (UBIFS_DATA_KEY << UBIFS_S_KEY_BLOCK_BITS);
+}
+
+/**
+ * data_key_init_flash - initialize on-flash data key.
+ * @c: UBIFS file-system description object
+ * @k: key to initialize
+ * @inum: inode number
+ * @block: block number
+ */
+static inline void data_key_init_flash(const struct ubifs_info *c, void *k,
+				       ino_t inum, unsigned int block)
+{
+	union ubifs_key *key = k;
+
+	ubifs_assert(!(block & ~UBIFS_S_KEY_BLOCK_MASK));
+	key->j32[0] = cpu_to_le32(inum);
+	key->j32[1] = cpu_to_le32(block |
+				  (UBIFS_DATA_KEY << UBIFS_S_KEY_BLOCK_BITS));
+	memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
+}
+
+/**
+ * trun_key_init - initialize truncation node key.
+ * @c: UBIFS file-system description object
+ * @key: key to initialize
+ * @inum: inode number
+ *
+ * Note, UBIFS does not have truncation keys on the media and this function is
+ * only used for purposes of replay.
+ */
+static inline void trun_key_init(const struct ubifs_info *c,
+				 union ubifs_key *key, ino_t inum)
+{
+	key->u32[0] = inum;
+	key->u32[1] = UBIFS_TRUN_KEY << UBIFS_S_KEY_BLOCK_BITS;
+}
+
+/**
+ * key_type - get key type.
+ * @c: UBIFS file-system description object
+ * @key: key to get type of
+ */
+static inline int key_type(const struct ubifs_info *c,
+			   const union ubifs_key *key)
+{
+	return key->u32[1] >> UBIFS_S_KEY_BLOCK_BITS;
+}
+
+/**
+ * key_type_flash - get type of a on-flash formatted key.
+ * @c: UBIFS file-system description object
+ * @k: key to get type of
+ */
+static inline int key_type_flash(const struct ubifs_info *c, const void *k)
+{
+	const union ubifs_key *key = k;
+
+	return le32_to_cpu(key->j32[1]) >> UBIFS_S_KEY_BLOCK_BITS;
+}
+
+/**
+ * key_inum - fetch inode number from key.
+ * @c: UBIFS file-system description object
+ * @k: key to fetch inode number from
+ */
+static inline ino_t key_inum(const struct ubifs_info *c, const void *k)
+{
+	const union ubifs_key *key = k;
+
+	return key->u32[0];
+}
+
+/**
+ * key_inum_flash - fetch inode number from an on-flash formatted key.
+ * @c: UBIFS file-system description object
+ * @k: key to fetch inode number from
+ */
+static inline ino_t key_inum_flash(const struct ubifs_info *c, const void *k)
+{
+	const union ubifs_key *key = k;
+
+	return le32_to_cpu(key->j32[0]);
+}
+
+/**
+ * key_hash - get directory entry hash.
+ * @c: UBIFS file-system description object
+ * @key: the key to get hash from
+ */
+static inline int key_hash(const struct ubifs_info *c,
+			   const union ubifs_key *key)
+{
+	return key->u32[1] & UBIFS_S_KEY_HASH_MASK;
+}
+
+/**
+ * key_hash_flash - get directory entry hash from an on-flash formatted key.
+ * @c: UBIFS file-system description object
+ * @k: the key to get hash from
+ */
+static inline int key_hash_flash(const struct ubifs_info *c, const void *k)
+{
+	const union ubifs_key *key = k;
+
+	return le32_to_cpu(key->j32[1]) & UBIFS_S_KEY_HASH_MASK;
+}
+
+/**
+ * key_block - get data block number.
+ * @c: UBIFS file-system description object
+ * @key: the key to get the block number from
+ */
+static inline unsigned int key_block(const struct ubifs_info *c,
+				     const union ubifs_key *key)
+{
+	return key->u32[1] & UBIFS_S_KEY_BLOCK_MASK;
+}
+
+/**
+ * key_block_flash - get data block number from an on-flash formatted key.
+ * @c: UBIFS file-system description object
+ * @k: the key to get the block number from
+ */
+static inline unsigned int key_block_flash(const struct ubifs_info *c,
+					   const void *k)
+{
+	const union ubifs_key *key = k;
+
+	return le32_to_cpu(key->j32[1]) & UBIFS_S_KEY_BLOCK_MASK;
+}
+
+/**
+ * key_read - transform a key to in-memory format.
+ * @c: UBIFS file-system description object
+ * @from: the key to transform
+ * @to: the key to store the result
+ */
+static inline void key_read(const struct ubifs_info *c, const void *from,
+			    union ubifs_key *to)
+{
+	const union ubifs_key *f = from;
+
+	to->u32[0] = le32_to_cpu(f->j32[0]);
+	to->u32[1] = le32_to_cpu(f->j32[1]);
+}
+
+/**
+ * key_write - transform a key from in-memory format.
+ * @c: UBIFS file-system description object
+ * @from: the key to transform
+ * @to: the key to store the result
+ */
+static inline void key_write(const struct ubifs_info *c,
+			     const union ubifs_key *from, void *to)
+{
+	union ubifs_key *t = to;
+
+	t->j32[0] = cpu_to_le32(from->u32[0]);
+	t->j32[1] = cpu_to_le32(from->u32[1]);
+	memset(to + 8, 0, UBIFS_MAX_KEY_LEN - 8);
+}
+
+/**
+ * key_write_idx - transform a key from in-memory format for the index.
+ * @c: UBIFS file-system description object
+ * @from: the key to transform
+ * @to: the key to store the result
+ */
+static inline void key_write_idx(const struct ubifs_info *c,
+				 const union ubifs_key *from, void *to)
+{
+	union ubifs_key *t = to;
+
+	t->j32[0] = cpu_to_le32(from->u32[0]);
+	t->j32[1] = cpu_to_le32(from->u32[1]);
+}
+
+/**
+ * key_copy - copy a key.
+ * @c: UBIFS file-system description object
+ * @from: the key to copy from
+ * @to: the key to copy to
+ */
+static inline void key_copy(const struct ubifs_info *c,
+			    const union ubifs_key *from, union ubifs_key *to)
+{
+	to->u64[0] = from->u64[0];
+}
+
+/**
+ * keys_cmp - compare keys.
+ * @c: UBIFS file-system description object
+ * @key1: the first key to compare
+ * @key2: the second key to compare
+ *
+ * This function compares 2 keys and returns %-1 if @key1 is less than
+ * @key2, %0 if the keys are equivalent and %1 if @key1 is greater than @key2.
+ */
+static inline int keys_cmp(const struct ubifs_info *c,
+			   const union ubifs_key *key1,
+			   const union ubifs_key *key2)
+{
+	if (key1->u32[0] < key2->u32[0])
+		return -1;
+	if (key1->u32[0] > key2->u32[0])
+		return 1;
+	if (key1->u32[1] < key2->u32[1])
+		return -1;
+	if (key1->u32[1] > key2->u32[1])
+		return 1;
+
+	return 0;
+}
+
+/**
+ * keys_eq - determine if keys are equivalent.
+ * @c: UBIFS file-system description object
+ * @key1: the first key to compare
+ * @key2: the second key to compare
+ *
+ * This function compares 2 keys and returns %1 if @key1 is equal to @key2 and
+ * %0 if not.
+ */
+static inline int keys_eq(const struct ubifs_info *c,
+			  const union ubifs_key *key1,
+			  const union ubifs_key *key2)
+{
+	if (key1->u32[0] != key2->u32[0])
+		return 0;
+	if (key1->u32[1] != key2->u32[1])
+		return 0;
+	return 1;
+}
+
+/**
+ * is_hash_key - is a key vulnerable to hash collisions.
+ * @c: UBIFS file-system description object
+ * @key: key
+ *
+ * This function returns %1 if @key is a hashed key or %0 otherwise.
+ */
+static inline int is_hash_key(const struct ubifs_info *c,
+			      const union ubifs_key *key)
+{
+	int type = key_type(c, key);
+
+	return type == UBIFS_DENT_KEY || type == UBIFS_XENT_KEY;
+}
+
+/**
+ * key_max_inode_size - get maximum file size allowed by current key format.
+ * @c: UBIFS file-system description object
+ */
+static inline unsigned long long key_max_inode_size(const struct ubifs_info *c)
+{
+	switch (c->key_fmt) {
+	case UBIFS_SIMPLE_KEY_FMT:
+		return (1ULL << UBIFS_S_KEY_BLOCK_BITS) * UBIFS_BLOCK_SIZE;
+	default:
+		return 0;
+	}
+}
+#endif /* !__UBIFS_KEY_H__ */
diff --git a/fs/ubifs/misc.h b/fs/ubifs/misc.h
new file mode 100644
index 0000000..609232e
--- /dev/null
+++ b/fs/ubifs/misc.h
@@ -0,0 +1,311 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation
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
+/*
+ * This file contains miscellaneous helper functions.
+ */
+
+#ifndef __UBIFS_MISC_H__
+#define __UBIFS_MISC_H__
+
+/**
+ * ubifs_zn_dirty - check if znode is dirty.
+ * @znode: znode to check
+ *
+ * This helper function returns %1 if @znode is dirty and %0 otherwise.
+ */
+static inline int ubifs_zn_dirty(const struct ubifs_znode *znode)
+{
+	return !!test_bit(DIRTY_ZNODE, &znode->flags);
+}
+
+/**
+ * ubifs_wake_up_bgt - wake up background thread.
+ * @c: UBIFS file-system description object
+ */
+static inline void ubifs_wake_up_bgt(struct ubifs_info *c)
+{
+	if (c->bgt && !c->need_bgt) {
+		c->need_bgt = 1;
+		wake_up_process(c->bgt);
+	}
+}
+
+/**
+ * ubifs_tnc_find_child - find next child in znode.
+ * @znode: znode to search at
+ * @start: the zbranch index to start at
+ *
+ * This helper function looks for znode child starting at index @start. Returns
+ * the child or %NULL if no children were found.
+ */
+static inline struct ubifs_znode *
+ubifs_tnc_find_child(struct ubifs_znode *znode, int start)
+{
+	while (start < znode->child_cnt) {
+		if (znode->zbranch[start].znode)
+			return znode->zbranch[start].znode;
+		start += 1;
+	}
+
+	return NULL;
+}
+
+/**
+ * ubifs_inode - get UBIFS inode information by VFS 'struct inode' object.
+ * @inode: the VFS 'struct inode' pointer
+ */
+static inline struct ubifs_inode *ubifs_inode(const struct inode *inode)
+{
+	return container_of(inode, struct ubifs_inode, vfs_inode);
+}
+
+/**
+ * ubifs_compr_present - check if compressor was compiled in.
+ * @compr_type: compressor type to check
+ *
+ * This function returns %1 of compressor of type @compr_type is present, and
+ * %0 if not.
+ */
+static inline int ubifs_compr_present(int compr_type)
+{
+	ubifs_assert(compr_type >= 0 && compr_type < UBIFS_COMPR_TYPES_CNT);
+	return !!ubifs_compressors[compr_type]->capi_name;
+}
+
+/**
+ * ubifs_compr_name - get compressor name string by its type.
+ * @compr_type: compressor type
+ *
+ * This function returns compressor type string.
+ */
+static inline const char *ubifs_compr_name(int compr_type)
+{
+	ubifs_assert(compr_type >= 0 && compr_type < UBIFS_COMPR_TYPES_CNT);
+	return ubifs_compressors[compr_type]->name;
+}
+
+/**
+ * ubifs_wbuf_sync - synchronize write-buffer.
+ * @wbuf: write-buffer to synchronize
+ *
+ * This is the same as as 'ubifs_wbuf_sync_nolock()' but it does not assume
+ * that the write-buffer is already locked.
+ */
+static inline int ubifs_wbuf_sync(struct ubifs_wbuf *wbuf)
+{
+	int err;
+
+	mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
+	err = ubifs_wbuf_sync_nolock(wbuf);
+	mutex_unlock(&wbuf->io_mutex);
+	return err;
+}
+
+/**
+ * ubifs_leb_unmap - unmap an LEB.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to unmap
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static inline int ubifs_leb_unmap(const struct ubifs_info *c, int lnum)
+{
+	int err;
+
+	if (c->ro_media)
+		return -EROFS;
+	err = ubi_leb_unmap(c->ubi, lnum);
+	if (err) {
+		ubifs_err("unmap LEB %d failed, error %d", lnum, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ubifs_leb_write - write to a LEB.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to write
+ * @buf: buffer to write from
+ * @offs: offset within LEB to write to
+ * @len: length to write
+ * @dtype: data type
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static inline int ubifs_leb_write(const struct ubifs_info *c, int lnum,
+				  const void *buf, int offs, int len, int dtype)
+{
+	int err;
+
+	if (c->ro_media)
+		return -EROFS;
+	err = ubi_leb_write(c->ubi, lnum, buf, offs, len, dtype);
+	if (err) {
+		ubifs_err("writing %d bytes at %d:%d, error %d",
+			  len, lnum, offs, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ubifs_leb_change - atomic LEB change.
+ * @c: UBIFS file-system description object
+ * @lnum: LEB number to write
+ * @buf: buffer to write from
+ * @len: length to write
+ * @dtype: data type
+ *
+ * This function returns %0 on success and a negative error code on failure.
+ */
+static inline int ubifs_leb_change(const struct ubifs_info *c, int lnum,
+				   const void *buf, int len, int dtype)
+{
+	int err;
+
+	if (c->ro_media)
+		return -EROFS;
+	err = ubi_leb_change(c->ubi, lnum, buf, len, dtype);
+	if (err) {
+		ubifs_err("changing %d bytes in LEB %d, error %d",
+			  len, lnum, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ubifs_add_dirt - add dirty space to LEB properties.
+ * @c: the UBIFS file-system description object
+ * @lnum: LEB to add dirty space for
+ * @dirty: dirty space to add
+ *
+ * This is a helper function which increased amount of dirty LEB space. Returns
+ * zero in case of success and a negative error code in case of failure.
+ */
+static inline int ubifs_add_dirt(struct ubifs_info *c, int lnum, int dirty)
+{
+	return ubifs_update_one_lp(c, lnum, LPROPS_NC, dirty, 0, 0);
+}
+
+/**
+ * ubifs_return_leb - return LEB to lprops.
+ * @c: the UBIFS file-system description object
+ * @lnum: LEB to return
+ *
+ * This helper function cleans the "taken" flag of a logical eraseblock in the
+ * lprops. Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+static inline int ubifs_return_leb(struct ubifs_info *c, int lnum)
+{
+	return ubifs_change_one_lp(c, lnum, LPROPS_NC, LPROPS_NC, 0,
+				   LPROPS_TAKEN, 0);
+}
+
+/**
+ * ubifs_idx_node_sz - return index node size.
+ * @c: the UBIFS file-system description object
+ * @child_cnt: number of children of this index node
+ */
+static inline int ubifs_idx_node_sz(const struct ubifs_info *c, int child_cnt)
+{
+	return UBIFS_IDX_NODE_SZ + (UBIFS_BRANCH_SZ + c->key_len) * child_cnt;
+}
+
+/**
+ * ubifs_idx_branch - return pointer to an index branch.
+ * @c: the UBIFS file-system description object
+ * @idx: index node
+ * @bnum: branch number
+ */
+static inline
+struct ubifs_branch *ubifs_idx_branch(const struct ubifs_info *c,
+				      const struct ubifs_idx_node *idx,
+				      int bnum)
+{
+	return (struct ubifs_branch *)((void *)idx->branches +
+				       (UBIFS_BRANCH_SZ + c->key_len) * bnum);
+}
+
+/**
+ * ubifs_idx_key - return pointer to an index key.
+ * @c: the UBIFS file-system description object
+ * @idx: index node
+ */
+static inline void *ubifs_idx_key(const struct ubifs_info *c,
+				  const struct ubifs_idx_node *idx)
+{
+	const __u8 *branch = idx->branches;
+	return (void *)((struct ubifs_branch *)branch)->key;
+}
+
+/**
+ * ubifs_tnc_lookup - look up a file-system node.
+ * @c: UBIFS file-system description object
+ * @key: node key to lookup
+ * @node: the node is returned here
+ *
+ * This function look up and reads node with key @key. The caller has to make
+ * sure the @node buffer is large enough to fit the node. Returns zero in case
+ * of success, %-ENOENT if the node was not found, and a negative error code in
+ * case of failure.
+ */
+static inline int ubifs_tnc_lookup(struct ubifs_info *c,
+				   const union ubifs_key *key, void *node)
+{
+	return ubifs_tnc_locate(c, key, node, NULL, NULL);
+}
+
+/**
+ * ubifs_get_lprops - get reference to LEB properties.
+ * @c: the UBIFS file-system description object
+ *
+ * This function locks lprops. Lprops have to be unlocked by
+ * 'ubifs_release_lprops()'.
+ */
+static inline void ubifs_get_lprops(struct ubifs_info *c)
+{
+	mutex_lock(&c->lp_mutex);
+}
+
+/**
+ * ubifs_release_lprops - release lprops lock.
+ * @c: the UBIFS file-system description object
+ *
+ * This function has to be called after each 'ubifs_get_lprops()' call to
+ * unlock lprops.
+ */
+static inline void ubifs_release_lprops(struct ubifs_info *c)
+{
+	ubifs_assert(mutex_is_locked(&c->lp_mutex));
+	ubifs_assert(c->lst.empty_lebs >= 0 &&
+		     c->lst.empty_lebs <= c->main_lebs);
+	mutex_unlock(&c->lp_mutex);
+}
+
+#endif /* __UBIFS_MISC_H__ */
diff --git a/fs/ubifs/ubifs-media.h b/fs/ubifs/ubifs-media.h
new file mode 100644
index 0000000..3eee07e
--- /dev/null
+++ b/fs/ubifs/ubifs-media.h
@@ -0,0 +1,775 @@
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
+/*
+ * This file describes UBIFS on-flash format and contains definitions of all the
+ * relevant data structures and constants.
+ *
+ * All UBIFS on-flash objects are stored in the form of nodes. All nodes start
+ * with the UBIFS node magic number and have the same common header. Nodes
+ * always sit at 8-byte aligned positions on the media and node header sizes are
+ * also 8-byte aligned (except for the indexing node and the padding node).
+ */
+
+#ifndef __UBIFS_MEDIA_H__
+#define __UBIFS_MEDIA_H__
+
+/* UBIFS node magic number (must not have the padding byte first or last) */
+#define UBIFS_NODE_MAGIC  0x06101831
+
+/*
+ * UBIFS on-flash format version. This version is increased when the on-flash
+ * format is changing. If this happens, UBIFS is will support older versions as
+ * well. But older UBIFS code will not support newer formats. Format changes
+ * will be rare and only when absolutely necessary, e.g. to fix a bug or to add
+ * a new feature.
+ *
+ * UBIFS went into mainline kernel with format version 4. The older formats
+ * were development formats.
+ */
+#define UBIFS_FORMAT_VERSION 4
+
+/*
+ * Read-only compatibility version. If the UBIFS format is changed, older UBIFS
+ * implementations will not be able to mount newer formats in read-write mode.
+ * However, depending on the change, it may be possible to mount newer formats
+ * in R/O mode. This is indicated by the R/O compatibility version which is
+ * stored in the super-block.
+ *
+ * This is needed to support boot-loaders which only need R/O mounting. With
+ * this flag it is possible to do UBIFS format changes without a need to update
+ * boot-loaders.
+ */
+#define UBIFS_RO_COMPAT_VERSION 0
+
+/* Minimum logical eraseblock size in bytes */
+#define UBIFS_MIN_LEB_SZ (15*1024)
+
+/* Initial CRC32 value used when calculating CRC checksums */
+#define UBIFS_CRC32_INIT 0xFFFFFFFFU
+
+/*
+ * UBIFS does not try to compress data if its length is less than the below
+ * constant.
+ */
+#define UBIFS_MIN_COMPR_LEN 128
+
+/*
+ * If compressed data length is less than %UBIFS_MIN_COMPRESS_DIFF bytes
+ * shorter than uncompressed data length, UBIFS prefers to leave this data
+ * node uncompress, because it'll be read faster.
+ */
+#define UBIFS_MIN_COMPRESS_DIFF 64
+
+/* Root inode number */
+#define UBIFS_ROOT_INO 1
+
+/* Lowest inode number used for regular inodes (not UBIFS-only internal ones) */
+#define UBIFS_FIRST_INO 64
+
+/*
+ * Maximum file name and extended attribute length (must be a multiple of 8,
+ * minus 1).
+ */
+#define UBIFS_MAX_NLEN 255
+
+/* Maximum number of data journal heads */
+#define UBIFS_MAX_JHEADS 1
+
+/*
+ * Size of UBIFS data block. Note, UBIFS is not a block oriented file-system,
+ * which means that it does not treat the underlying media as consisting of
+ * blocks like in case of hard drives. Do not be confused. UBIFS block is just
+ * the maximum amount of data which one data node can have or which can be
+ * attached to an inode node.
+ */
+#define UBIFS_BLOCK_SIZE  4096
+#define UBIFS_BLOCK_SHIFT 12
+
+/* UBIFS padding byte pattern (must not be first or last byte of node magic) */
+#define UBIFS_PADDING_BYTE 0xCE
+
+/* Maximum possible key length */
+#define UBIFS_MAX_KEY_LEN 16
+
+/* Key length ("simple" format) */
+#define UBIFS_SK_LEN 8
+
+/* Minimum index tree fanout */
+#define UBIFS_MIN_FANOUT 3
+
+/* Maximum number of levels in UBIFS indexing B-tree */
+#define UBIFS_MAX_LEVELS 512
+
+/* Maximum amount of data attached to an inode in bytes */
+#define UBIFS_MAX_INO_DATA UBIFS_BLOCK_SIZE
+
+/* LEB Properties Tree fanout (must be power of 2) and fanout shift */
+#define UBIFS_LPT_FANOUT 4
+#define UBIFS_LPT_FANOUT_SHIFT 2
+
+/* LEB Properties Tree bit field sizes */
+#define UBIFS_LPT_CRC_BITS 16
+#define UBIFS_LPT_CRC_BYTES 2
+#define UBIFS_LPT_TYPE_BITS 4
+
+/* The key is always at the same position in all keyed nodes */
+#define UBIFS_KEY_OFFSET offsetof(struct ubifs_ino_node, key)
+
+/*
+ * LEB Properties Tree node types.
+ *
+ * UBIFS_LPT_PNODE: LPT leaf node (contains LEB properties)
+ * UBIFS_LPT_NNODE: LPT internal node
+ * UBIFS_LPT_LTAB: LPT's own lprops table
+ * UBIFS_LPT_LSAVE: LPT's save table (big model only)
+ * UBIFS_LPT_NODE_CNT: count of LPT node types
+ * UBIFS_LPT_NOT_A_NODE: all ones (15 for 4 bits) is never a valid node type
+ */
+enum {
+	UBIFS_LPT_PNODE,
+	UBIFS_LPT_NNODE,
+	UBIFS_LPT_LTAB,
+	UBIFS_LPT_LSAVE,
+	UBIFS_LPT_NODE_CNT,
+	UBIFS_LPT_NOT_A_NODE = (1 << UBIFS_LPT_TYPE_BITS) - 1,
+};
+
+/*
+ * UBIFS inode types.
+ *
+ * UBIFS_ITYPE_REG: regular file
+ * UBIFS_ITYPE_DIR: directory
+ * UBIFS_ITYPE_LNK: soft link
+ * UBIFS_ITYPE_BLK: block device node
+ * UBIFS_ITYPE_CHR: character device node
+ * UBIFS_ITYPE_FIFO: fifo
+ * UBIFS_ITYPE_SOCK: socket
+ * UBIFS_ITYPES_CNT: count of supported file types
+ */
+enum {
+	UBIFS_ITYPE_REG,
+	UBIFS_ITYPE_DIR,
+	UBIFS_ITYPE_LNK,
+	UBIFS_ITYPE_BLK,
+	UBIFS_ITYPE_CHR,
+	UBIFS_ITYPE_FIFO,
+	UBIFS_ITYPE_SOCK,
+	UBIFS_ITYPES_CNT,
+};
+
+/*
+ * Supported key hash functions.
+ *
+ * UBIFS_KEY_HASH_R5: R5 hash
+ * UBIFS_KEY_HASH_TEST: test hash which just returns first 4 bytes of the name
+ */
+enum {
+	UBIFS_KEY_HASH_R5,
+	UBIFS_KEY_HASH_TEST,
+};
+
+/*
+ * Supported key formats.
+ *
+ * UBIFS_SIMPLE_KEY_FMT: simple key format
+ */
+enum {
+	UBIFS_SIMPLE_KEY_FMT,
+};
+
+/*
+ * The simple key format uses 29 bits for storing UBIFS block number and hash
+ * value.
+ */
+#define UBIFS_S_KEY_BLOCK_BITS 29
+#define UBIFS_S_KEY_BLOCK_MASK 0x1FFFFFFF
+#define UBIFS_S_KEY_HASH_BITS  UBIFS_S_KEY_BLOCK_BITS
+#define UBIFS_S_KEY_HASH_MASK  UBIFS_S_KEY_BLOCK_MASK
+
+/*
+ * Key types.
+ *
+ * UBIFS_INO_KEY: inode node key
+ * UBIFS_DATA_KEY: data node key
+ * UBIFS_DENT_KEY: directory entry node key
+ * UBIFS_XENT_KEY: extended attribute entry key
+ * UBIFS_KEY_TYPES_CNT: number of supported key types
+ */
+enum {
+	UBIFS_INO_KEY,
+	UBIFS_DATA_KEY,
+	UBIFS_DENT_KEY,
+	UBIFS_XENT_KEY,
+	UBIFS_KEY_TYPES_CNT,
+};
+
+/* Count of LEBs reserved for the superblock area */
+#define UBIFS_SB_LEBS 1
+/* Count of LEBs reserved for the master area */
+#define UBIFS_MST_LEBS 2
+
+/* First LEB of the superblock area */
+#define UBIFS_SB_LNUM 0
+/* First LEB of the master area */
+#define UBIFS_MST_LNUM (UBIFS_SB_LNUM + UBIFS_SB_LEBS)
+/* First LEB of the log area */
+#define UBIFS_LOG_LNUM (UBIFS_MST_LNUM + UBIFS_MST_LEBS)
+
+/*
+ * The below constants define the absolute minimum values for various UBIFS
+ * media areas. Many of them actually depend of flash geometry and the FS
+ * configuration (number of journal heads, orphan LEBs, etc). This means that
+ * the smallest volume size which can be used for UBIFS cannot be pre-defined
+ * by these constants. The file-system that meets the below limitation will not
+ * necessarily mount. UBIFS does run-time calculations and validates the FS
+ * size.
+ */
+
+/* Minimum number of logical eraseblocks in the log */
+#define UBIFS_MIN_LOG_LEBS 2
+/* Minimum number of bud logical eraseblocks (one for each head) */
+#define UBIFS_MIN_BUD_LEBS 3
+/* Minimum number of journal logical eraseblocks */
+#define UBIFS_MIN_JNL_LEBS (UBIFS_MIN_LOG_LEBS + UBIFS_MIN_BUD_LEBS)
+/* Minimum number of LPT area logical eraseblocks */
+#define UBIFS_MIN_LPT_LEBS 2
+/* Minimum number of orphan area logical eraseblocks */
+#define UBIFS_MIN_ORPH_LEBS 1
+/*
+ * Minimum number of main area logical eraseblocks (buds, 3 for the index, 1
+ * for GC, 1 for deletions, and at least 1 for committed data).
+ */
+#define UBIFS_MIN_MAIN_LEBS (UBIFS_MIN_BUD_LEBS + 6)
+
+/* Minimum number of logical eraseblocks */
+#define UBIFS_MIN_LEB_CNT (UBIFS_SB_LEBS + UBIFS_MST_LEBS + \
+			   UBIFS_MIN_LOG_LEBS + UBIFS_MIN_LPT_LEBS + \
+			   UBIFS_MIN_ORPH_LEBS + UBIFS_MIN_MAIN_LEBS)
+
+/* Node sizes (N.B. these are guaranteed to be multiples of 8) */
+#define UBIFS_CH_SZ        sizeof(struct ubifs_ch)
+#define UBIFS_INO_NODE_SZ  sizeof(struct ubifs_ino_node)
+#define UBIFS_DATA_NODE_SZ sizeof(struct ubifs_data_node)
+#define UBIFS_DENT_NODE_SZ sizeof(struct ubifs_dent_node)
+#define UBIFS_TRUN_NODE_SZ sizeof(struct ubifs_trun_node)
+#define UBIFS_PAD_NODE_SZ  sizeof(struct ubifs_pad_node)
+#define UBIFS_SB_NODE_SZ   sizeof(struct ubifs_sb_node)
+#define UBIFS_MST_NODE_SZ  sizeof(struct ubifs_mst_node)
+#define UBIFS_REF_NODE_SZ  sizeof(struct ubifs_ref_node)
+#define UBIFS_IDX_NODE_SZ  sizeof(struct ubifs_idx_node)
+#define UBIFS_CS_NODE_SZ   sizeof(struct ubifs_cs_node)
+#define UBIFS_ORPH_NODE_SZ sizeof(struct ubifs_orph_node)
+/* Extended attribute entry nodes are identical to directory entry nodes */
+#define UBIFS_XENT_NODE_SZ UBIFS_DENT_NODE_SZ
+/* Only this does not have to be multiple of 8 bytes */
+#define UBIFS_BRANCH_SZ    sizeof(struct ubifs_branch)
+
+/* Maximum node sizes (N.B. these are guaranteed to be multiples of 8) */
+#define UBIFS_MAX_DATA_NODE_SZ  (UBIFS_DATA_NODE_SZ + UBIFS_BLOCK_SIZE)
+#define UBIFS_MAX_INO_NODE_SZ   (UBIFS_INO_NODE_SZ + UBIFS_MAX_INO_DATA)
+#define UBIFS_MAX_DENT_NODE_SZ  (UBIFS_DENT_NODE_SZ + UBIFS_MAX_NLEN + 1)
+#define UBIFS_MAX_XENT_NODE_SZ  UBIFS_MAX_DENT_NODE_SZ
+
+/* The largest UBIFS node */
+#define UBIFS_MAX_NODE_SZ UBIFS_MAX_INO_NODE_SZ
+
+/*
+ * On-flash inode flags.
+ *
+ * UBIFS_COMPR_FL: use compression for this inode
+ * UBIFS_SYNC_FL:  I/O on this inode has to be synchronous
+ * UBIFS_IMMUTABLE_FL: inode is immutable
+ * UBIFS_APPEND_FL: writes to the inode may only append data
+ * UBIFS_DIRSYNC_FL: I/O on this directory inode has to be synchronous
+ * UBIFS_XATTR_FL: this inode is the inode for an extended attribute value
+ *
+ * Note, these are on-flash flags which correspond to ioctl flags
+ * (@FS_COMPR_FL, etc). They have the same values now, but generally, do not
+ * have to be the same.
+ */
+enum {
+	UBIFS_COMPR_FL     = 0x01,
+	UBIFS_SYNC_FL      = 0x02,
+	UBIFS_IMMUTABLE_FL = 0x04,
+	UBIFS_APPEND_FL    = 0x08,
+	UBIFS_DIRSYNC_FL   = 0x10,
+	UBIFS_XATTR_FL     = 0x20,
+};
+
+/* Inode flag bits used by UBIFS */
+#define UBIFS_FL_MASK 0x0000001F
+
+/*
+ * UBIFS compression algorithms.
+ *
+ * UBIFS_COMPR_NONE: no compression
+ * UBIFS_COMPR_LZO: LZO compression
+ * UBIFS_COMPR_ZLIB: ZLIB compression
+ * UBIFS_COMPR_TYPES_CNT: count of supported compression types
+ */
+enum {
+	UBIFS_COMPR_NONE,
+	UBIFS_COMPR_LZO,
+	UBIFS_COMPR_ZLIB,
+	UBIFS_COMPR_TYPES_CNT,
+};
+
+/*
+ * UBIFS node types.
+ *
+ * UBIFS_INO_NODE: inode node
+ * UBIFS_DATA_NODE: data node
+ * UBIFS_DENT_NODE: directory entry node
+ * UBIFS_XENT_NODE: extended attribute node
+ * UBIFS_TRUN_NODE: truncation node
+ * UBIFS_PAD_NODE: padding node
+ * UBIFS_SB_NODE: superblock node
+ * UBIFS_MST_NODE: master node
+ * UBIFS_REF_NODE: LEB reference node
+ * UBIFS_IDX_NODE: index node
+ * UBIFS_CS_NODE: commit start node
+ * UBIFS_ORPH_NODE: orphan node
+ * UBIFS_NODE_TYPES_CNT: count of supported node types
+ *
+ * Note, we index arrays by these numbers, so keep them low and contiguous.
+ * Node type constants for inodes, direntries and so on have to be the same as
+ * corresponding key type constants.
+ */
+enum {
+	UBIFS_INO_NODE,
+	UBIFS_DATA_NODE,
+	UBIFS_DENT_NODE,
+	UBIFS_XENT_NODE,
+	UBIFS_TRUN_NODE,
+	UBIFS_PAD_NODE,
+	UBIFS_SB_NODE,
+	UBIFS_MST_NODE,
+	UBIFS_REF_NODE,
+	UBIFS_IDX_NODE,
+	UBIFS_CS_NODE,
+	UBIFS_ORPH_NODE,
+	UBIFS_NODE_TYPES_CNT,
+};
+
+/*
+ * Master node flags.
+ *
+ * UBIFS_MST_DIRTY: rebooted uncleanly - master node is dirty
+ * UBIFS_MST_NO_ORPHS: no orphan inodes present
+ * UBIFS_MST_RCVRY: written by recovery
+ */
+enum {
+	UBIFS_MST_DIRTY = 1,
+	UBIFS_MST_NO_ORPHS = 2,
+	UBIFS_MST_RCVRY = 4,
+};
+
+/*
+ * Node group type (used by recovery to recover whole group or none).
+ *
+ * UBIFS_NO_NODE_GROUP: this node is not part of a group
+ * UBIFS_IN_NODE_GROUP: this node is a part of a group
+ * UBIFS_LAST_OF_NODE_GROUP: this node is the last in a group
+ */
+enum {
+	UBIFS_NO_NODE_GROUP = 0,
+	UBIFS_IN_NODE_GROUP,
+	UBIFS_LAST_OF_NODE_GROUP,
+};
+
+/*
+ * Superblock flags.
+ *
+ * UBIFS_FLG_BIGLPT: if "big" LPT model is used if set
+ */
+enum {
+	UBIFS_FLG_BIGLPT = 0x02,
+};
+
+/**
+ * struct ubifs_ch - common header node.
+ * @magic: UBIFS node magic number (%UBIFS_NODE_MAGIC)
+ * @crc: CRC-32 checksum of the node header
+ * @sqnum: sequence number
+ * @len: full node length
+ * @node_type: node type
+ * @group_type: node group type
+ * @padding: reserved for future, zeroes
+ *
+ * Every UBIFS node starts with this common part. If the node has a key, the
+ * key always goes next.
+ */
+struct ubifs_ch {
+	__le32 magic;
+	__le32 crc;
+	__le64 sqnum;
+	__le32 len;
+	__u8 node_type;
+	__u8 group_type;
+	__u8 padding[2];
+} __attribute__ ((packed));
+
+/**
+ * union ubifs_dev_desc - device node descriptor.
+ * @new: new type device descriptor
+ * @huge: huge type device descriptor
+ *
+ * This data structure describes major/minor numbers of a device node. In an
+ * inode is a device node then its data contains an object of this type. UBIFS
+ * uses standard Linux "new" and "huge" device node encodings.
+ */
+union ubifs_dev_desc {
+	__le32 new;
+	__le64 huge;
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_ino_node - inode node.
+ * @ch: common header
+ * @key: node key
+ * @creat_sqnum: sequence number at time of creation
+ * @size: inode size in bytes (amount of uncompressed data)
+ * @atime_sec: access time seconds
+ * @ctime_sec: creation time seconds
+ * @mtime_sec: modification time seconds
+ * @atime_nsec: access time nanoseconds
+ * @ctime_nsec: creation time nanoseconds
+ * @mtime_nsec: modification time nanoseconds
+ * @nlink: number of hard links
+ * @uid: owner ID
+ * @gid: group ID
+ * @mode: access flags
+ * @flags: per-inode flags (%UBIFS_COMPR_FL, %UBIFS_SYNC_FL, etc)
+ * @data_len: inode data length
+ * @xattr_cnt: count of extended attributes this inode has
+ * @xattr_size: summarized size of all extended attributes in bytes
+ * @padding1: reserved for future, zeroes
+ * @xattr_names: sum of lengths of all extended attribute names belonging to
+ *               this inode
+ * @compr_type: compression type used for this inode
+ * @padding2: reserved for future, zeroes
+ * @data: data attached to the inode
+ *
+ * Note, even though inode compression type is defined by @compr_type, some
+ * nodes of this inode may be compressed with different compressor - this
+ * happens if compression type is changed while the inode already has data
+ * nodes. But @compr_type will be use for further writes to the inode.
+ *
+ * Note, do not forget to amend 'zero_ino_node_unused()' function when changing
+ * the padding fields.
+ */
+struct ubifs_ino_node {
+	struct ubifs_ch ch;
+	__u8 key[UBIFS_MAX_KEY_LEN];
+	__le64 creat_sqnum;
+	__le64 size;
+	__le64 atime_sec;
+	__le64 ctime_sec;
+	__le64 mtime_sec;
+	__le32 atime_nsec;
+	__le32 ctime_nsec;
+	__le32 mtime_nsec;
+	__le32 nlink;
+	__le32 uid;
+	__le32 gid;
+	__le32 mode;
+	__le32 flags;
+	__le32 data_len;
+	__le32 xattr_cnt;
+	__le32 xattr_size;
+	__u8 padding1[4]; /* Watch 'zero_ino_node_unused()' if changing! */
+	__le32 xattr_names;
+	__le16 compr_type;
+	__u8 padding2[26]; /* Watch 'zero_ino_node_unused()' if changing! */
+	__u8 data[];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_dent_node - directory entry node.
+ * @ch: common header
+ * @key: node key
+ * @inum: target inode number
+ * @padding1: reserved for future, zeroes
+ * @type: type of the target inode (%UBIFS_ITYPE_REG, %UBIFS_ITYPE_DIR, etc)
+ * @nlen: name length
+ * @padding2: reserved for future, zeroes
+ * @name: zero-terminated name
+ *
+ * Note, do not forget to amend 'zero_dent_node_unused()' function when
+ * changing the padding fields.
+ */
+struct ubifs_dent_node {
+	struct ubifs_ch ch;
+	__u8 key[UBIFS_MAX_KEY_LEN];
+	__le64 inum;
+	__u8 padding1;
+	__u8 type;
+	__le16 nlen;
+	__u8 padding2[4]; /* Watch 'zero_dent_node_unused()' if changing! */
+	__u8 name[];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_data_node - data node.
+ * @ch: common header
+ * @key: node key
+ * @size: uncompressed data size in bytes
+ * @compr_type: compression type (%UBIFS_COMPR_NONE, %UBIFS_COMPR_LZO, etc)
+ * @padding: reserved for future, zeroes
+ * @data: data
+ *
+ * Note, do not forget to amend 'zero_data_node_unused()' function when
+ * changing the padding fields.
+ */
+struct ubifs_data_node {
+	struct ubifs_ch ch;
+	__u8 key[UBIFS_MAX_KEY_LEN];
+	__le32 size;
+	__le16 compr_type;
+	__u8 padding[2]; /* Watch 'zero_data_node_unused()' if changing! */
+	__u8 data[];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_trun_node - truncation node.
+ * @ch: common header
+ * @inum: truncated inode number
+ * @padding: reserved for future, zeroes
+ * @old_size: size before truncation
+ * @new_size: size after truncation
+ *
+ * This node exists only in the journal and never goes to the main area. Note,
+ * do not forget to amend 'zero_trun_node_unused()' function when changing the
+ * padding fields.
+ */
+struct ubifs_trun_node {
+	struct ubifs_ch ch;
+	__le32 inum;
+	__u8 padding[12]; /* Watch 'zero_trun_node_unused()' if changing! */
+	__le64 old_size;
+	__le64 new_size;
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_pad_node - padding node.
+ * @ch: common header
+ * @pad_len: how many bytes after this node are unused (because padded)
+ * @padding: reserved for future, zeroes
+ */
+struct ubifs_pad_node {
+	struct ubifs_ch ch;
+	__le32 pad_len;
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_sb_node - superblock node.
+ * @ch: common header
+ * @padding: reserved for future, zeroes
+ * @key_hash: type of hash function used in keys
+ * @key_fmt: format of the key
+ * @flags: file-system flags (%UBIFS_FLG_BIGLPT, etc)
+ * @min_io_size: minimal input/output unit size
+ * @leb_size: logical eraseblock size in bytes
+ * @leb_cnt: count of LEBs used by file-system
+ * @max_leb_cnt: maximum count of LEBs used by file-system
+ * @max_bud_bytes: maximum amount of data stored in buds
+ * @log_lebs: log size in logical eraseblocks
+ * @lpt_lebs: number of LEBs used for lprops table
+ * @orph_lebs: number of LEBs used for recording orphans
+ * @jhead_cnt: count of journal heads
+ * @fanout: tree fanout (max. number of links per indexing node)
+ * @lsave_cnt: number of LEB numbers in LPT's save table
+ * @fmt_version: UBIFS on-flash format version
+ * @default_compr: default compression algorithm (%UBIFS_COMPR_LZO, etc)
+ * @padding1: reserved for future, zeroes
+ * @rp_uid: reserve pool UID
+ * @rp_gid: reserve pool GID
+ * @rp_size: size of the reserved pool in bytes
+ * @padding2: reserved for future, zeroes
+ * @time_gran: time granularity in nanoseconds
+ * @uuid: UUID generated when the file system image was created
+ * @ro_compat_version: UBIFS R/O compatibility version
+ */
+struct ubifs_sb_node {
+	struct ubifs_ch ch;
+	__u8 padding[2];
+	__u8 key_hash;
+	__u8 key_fmt;
+	__le32 flags;
+	__le32 min_io_size;
+	__le32 leb_size;
+	__le32 leb_cnt;
+	__le32 max_leb_cnt;
+	__le64 max_bud_bytes;
+	__le32 log_lebs;
+	__le32 lpt_lebs;
+	__le32 orph_lebs;
+	__le32 jhead_cnt;
+	__le32 fanout;
+	__le32 lsave_cnt;
+	__le32 fmt_version;
+	__le16 default_compr;
+	__u8 padding1[2];
+	__le32 rp_uid;
+	__le32 rp_gid;
+	__le64 rp_size;
+	__le32 time_gran;
+	__u8 uuid[16];
+	__le32 ro_compat_version;
+	__u8 padding2[3968];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_mst_node - master node.
+ * @ch: common header
+ * @highest_inum: highest inode number in the committed index
+ * @cmt_no: commit number
+ * @flags: various flags (%UBIFS_MST_DIRTY, etc)
+ * @log_lnum: start of the log
+ * @root_lnum: LEB number of the root indexing node
+ * @root_offs: offset within @root_lnum
+ * @root_len: root indexing node length
+ * @gc_lnum: LEB reserved for garbage collection (%-1 value means the LEB was
+ * not reserved and should be reserved on mount)
+ * @ihead_lnum: LEB number of index head
+ * @ihead_offs: offset of index head
+ * @index_size: size of index on flash
+ * @total_free: total free space in bytes
+ * @total_dirty: total dirty space in bytes
+ * @total_used: total used space in bytes (includes only data LEBs)
+ * @total_dead: total dead space in bytes (includes only data LEBs)
+ * @total_dark: total dark space in bytes (includes only data LEBs)
+ * @lpt_lnum: LEB number of LPT root nnode
+ * @lpt_offs: offset of LPT root nnode
+ * @nhead_lnum: LEB number of LPT head
+ * @nhead_offs: offset of LPT head
+ * @ltab_lnum: LEB number of LPT's own lprops table
+ * @ltab_offs: offset of LPT's own lprops table
+ * @lsave_lnum: LEB number of LPT's save table (big model only)
+ * @lsave_offs: offset of LPT's save table (big model only)
+ * @lscan_lnum: LEB number of last LPT scan
+ * @empty_lebs: number of empty logical eraseblocks
+ * @idx_lebs: number of indexing logical eraseblocks
+ * @leb_cnt: count of LEBs used by file-system
+ * @padding: reserved for future, zeroes
+ */
+struct ubifs_mst_node {
+	struct ubifs_ch ch;
+	__le64 highest_inum;
+	__le64 cmt_no;
+	__le32 flags;
+	__le32 log_lnum;
+	__le32 root_lnum;
+	__le32 root_offs;
+	__le32 root_len;
+	__le32 gc_lnum;
+	__le32 ihead_lnum;
+	__le32 ihead_offs;
+	__le64 index_size;
+	__le64 total_free;
+	__le64 total_dirty;
+	__le64 total_used;
+	__le64 total_dead;
+	__le64 total_dark;
+	__le32 lpt_lnum;
+	__le32 lpt_offs;
+	__le32 nhead_lnum;
+	__le32 nhead_offs;
+	__le32 ltab_lnum;
+	__le32 ltab_offs;
+	__le32 lsave_lnum;
+	__le32 lsave_offs;
+	__le32 lscan_lnum;
+	__le32 empty_lebs;
+	__le32 idx_lebs;
+	__le32 leb_cnt;
+	__u8 padding[344];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_ref_node - logical eraseblock reference node.
+ * @ch: common header
+ * @lnum: the referred logical eraseblock number
+ * @offs: start offset in the referred LEB
+ * @jhead: journal head number
+ * @padding: reserved for future, zeroes
+ */
+struct ubifs_ref_node {
+	struct ubifs_ch ch;
+	__le32 lnum;
+	__le32 offs;
+	__le32 jhead;
+	__u8 padding[28];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_branch - key/reference/length branch
+ * @lnum: LEB number of the target node
+ * @offs: offset within @lnum
+ * @len: target node length
+ * @key: key
+ */
+struct ubifs_branch {
+	__le32 lnum;
+	__le32 offs;
+	__le32 len;
+	__u8 key[];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_idx_node - indexing node.
+ * @ch: common header
+ * @child_cnt: number of child index nodes
+ * @level: tree level
+ * @branches: LEB number / offset / length / key branches
+ */
+struct ubifs_idx_node {
+	struct ubifs_ch ch;
+	__le16 child_cnt;
+	__le16 level;
+	__u8 branches[];
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_cs_node - commit start node.
+ * @ch: common header
+ * @cmt_no: commit number
+ */
+struct ubifs_cs_node {
+	struct ubifs_ch ch;
+	__le64 cmt_no;
+} __attribute__ ((packed));
+
+/**
+ * struct ubifs_orph_node - orphan node.
+ * @ch: common header
+ * @cmt_no: commit number (also top bit is set on the last node of the commit)
+ * @inos: inode numbers of orphans
+ */
+struct ubifs_orph_node {
+	struct ubifs_ch ch;
+	__le64 cmt_no;
+	__le64 inos[];
+} __attribute__ ((packed));
+
+#endif /* __UBIFS_MEDIA_H__ */
-- 
1.7.1



--===============8110381183305718270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8110381183305718270==--
