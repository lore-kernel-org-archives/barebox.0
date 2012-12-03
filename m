Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRx-0004v0-US
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:09:14 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:24 +0000
Message-Id: <1354558114-28799-9-git-send-email-renaud.barbier@ge.com>
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
Content-Type: multipart/mixed; boundary="===============4170237409653828117=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/18] UBIFS: I/O subsystem
To: barebox@lists.infradead.org

--===============4170237409653828117==
Content-Type: text/plain

This support code implements the I/O subsystem helper functions and space
management. There is also functions for crc16 calculation and debugging.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/budget.c |  113 +++++++++++++++++++
 fs/ubifs/crc16.c  |   60 ++++++++++
 fs/ubifs/debug.c  |  156 ++++++++++++++++++++++++++
 fs/ubifs/io.c     |  316 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 645 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/budget.c
 create mode 100644 fs/ubifs/crc16.c
 create mode 100644 fs/ubifs/debug.c
 create mode 100644 fs/ubifs/io.c

diff --git a/fs/ubifs/budget.c b/fs/ubifs/budget.c
new file mode 100644
index 0000000..85377ea
--- /dev/null
+++ b/fs/ubifs/budget.c
@@ -0,0 +1,113 @@
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
+ * This file implements the budgeting sub-system which is responsible for UBIFS
+ * space management.
+ *
+ * Factors such as compression, wasted space at the ends of LEBs, space in other
+ * journal heads, the effect of updates on the index, and so on, make it
+ * impossible to accurately predict the amount of space needed. Consequently
+ * approximations are used.
+ */
+
+#include "ubifs.h"
+#include <linux/math64.h>
+
+/**
+ * ubifs_calc_min_idx_lebs - calculate amount of eraseblocks for the index.
+ * @c: UBIFS file-system description object
+ *
+ * This function calculates and returns the number of eraseblocks which should
+ * be kept for index usage.
+ */
+int ubifs_calc_min_idx_lebs(struct ubifs_info *c)
+{
+	int idx_lebs, eff_leb_size = c->leb_size - c->max_idx_node_sz;
+	long long idx_size;
+
+	idx_size = c->old_idx_sz + c->budg_idx_growth + c->budg_uncommitted_idx;
+
+	/* And make sure we have thrice the index size of space reserved */
+	idx_size = idx_size + (idx_size << 1);
+
+	/*
+	 * We do not maintain 'old_idx_size' as 'old_idx_lebs'/'old_idx_bytes'
+	 * pair, nor similarly the two variables for the new index size, so we
+	 * have to do this costly 64-bit division on fast-path.
+	 */
+	idx_size += eff_leb_size - 1;
+	idx_lebs = div_u64(idx_size, eff_leb_size);
+	/*
+	 * The index head is not available for the in-the-gaps method, so add an
+	 * extra LEB to compensate.
+	 */
+	idx_lebs += 1;
+	if (idx_lebs < MIN_INDEX_LEBS)
+		idx_lebs = MIN_INDEX_LEBS;
+	return idx_lebs;
+}
+
+/**
+ * ubifs_reported_space - calculate reported free space.
+ * @c: the UBIFS file-system description object
+ * @free: amount of free space
+ *
+ * This function calculates amount of free space which will be reported to
+ * user-space. User-space application tend to expect that if the file-system
+ * (e.g., via the 'statfs()' call) reports that it has N bytes available, they
+ * are able to write a file of size N. UBIFS attaches node headers to each data
+ * node and it has to write indexing nodes as well. This introduces additional
+ * overhead, and UBIFS has to report slightly less free space to meet the above
+ * expectations.
+ *
+ * This function assumes free space is made up of uncompressed data nodes and
+ * full index nodes (one per data node, tripled because we always allow enough
+ * space to write the index thrice).
+ *
+ * Note, the calculation is pessimistic, which means that most of the time
+ * UBIFS reports less space than it actually has.
+ */
+long long ubifs_reported_space(const struct ubifs_info *c, long long free)
+{
+	int divisor, factor, f;
+
+	/*
+	 * Reported space size is @free * X, where X is UBIFS block size
+	 * divided by UBIFS block size + all overhead one data block
+	 * introduces. The overhead is the node header + indexing overhead.
+	 *
+	 * Indexing overhead calculations are based on the following formula:
+	 * I = N/(f - 1) + 1, where I - number of indexing nodes, N - number
+	 * of data nodes, f - fanout. Because effective UBIFS fanout is twice
+	 * as less than maximum fanout, we assume that each data node
+	 * introduces 3 * @c->max_idx_node_sz / (@c->fanout/2 - 1) bytes.
+	 * Note, the multiplier 3 is because UBIFS reserves thrice as more space
+	 * for the index.
+	 */
+	f = c->fanout > 3 ? c->fanout >> 1 : 2;
+	factor = UBIFS_BLOCK_SIZE;
+	divisor = UBIFS_MAX_DATA_NODE_SZ;
+	divisor += (c->max_idx_node_sz * 3) / (f - 1);
+	free *= factor;
+	return div_u64(free, divisor);
+}
diff --git a/fs/ubifs/crc16.c b/fs/ubifs/crc16.c
new file mode 100644
index 0000000..443ccf8
--- /dev/null
+++ b/fs/ubifs/crc16.c
@@ -0,0 +1,60 @@
+/*
+ *      crc16.c
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2. See the file COPYING for more details.
+ */
+
+#include <linux/types.h>
+#include "crc16.h"
+
+/** CRC table for the CRC-16. The poly is 0x8005 (x^16 + x^15 + x^2 + 1) */
+u16 const crc16_table[256] = {
+	0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301, 0x03C0, 0x0280, 0xC241,
+	0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1, 0xC481, 0x0440,
+	0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81, 0x0E40,
+	0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
+	0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40,
+	0x1E00, 0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41,
+	0x1400, 0xD4C1, 0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641,
+	0xD201, 0x12C0, 0x1380, 0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040,
+	0xF001, 0x30C0, 0x3180, 0xF141, 0x3300, 0xF3C1, 0xF281, 0x3240,
+	0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501, 0x35C0, 0x3480, 0xF441,
+	0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0, 0x3E80, 0xFE41,
+	0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881, 0x3840,
+	0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
+	0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40,
+	0xE401, 0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640,
+	0x2200, 0xE2C1, 0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041,
+	0xA001, 0x60C0, 0x6180, 0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240,
+	0x6600, 0xA6C1, 0xA781, 0x6740, 0xA501, 0x65C0, 0x6480, 0xA441,
+	0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01, 0x6FC0, 0x6E80, 0xAE41,
+	0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1, 0xA881, 0x6840,
+	0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80, 0xBA41,
+	0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
+	0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640,
+	0x7200, 0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041,
+	0x5000, 0x90C1, 0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241,
+	0x9601, 0x56C0, 0x5780, 0x9741, 0x5500, 0x95C1, 0x9481, 0x5440,
+	0x9C01, 0x5CC0, 0x5D80, 0x9D41, 0x5F00, 0x9FC1, 0x9E81, 0x5E40,
+	0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901, 0x59C0, 0x5880, 0x9841,
+	0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1, 0x8A81, 0x4A40,
+	0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80, 0x8C41,
+	0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
+	0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040
+};
+
+/**
+ * crc16 - compute the CRC-16 for the data buffer
+ * @crc:	previous CRC value
+ * @buffer:	data pointer
+ * @len:	number of bytes in the buffer
+ *
+ * Returns the updated CRC value.
+ */
+u16 crc16(u16 crc, u8 const *buffer, size_t len)
+{
+	while (len--)
+		crc = crc16_byte(crc, *buffer++);
+	return crc;
+}
diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
new file mode 100644
index 0000000..6afb883
--- /dev/null
+++ b/fs/ubifs/debug.c
@@ -0,0 +1,156 @@
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
+ * This file implements most of the debugging stuff which is compiled in only
+ * when it is enabled. But some debugging check functions are implemented in
+ * corresponding subsystem, just because they are closely related and utilize
+ * various local functions of those subsystems.
+ */
+
+#define UBIFS_DBG_PRESERVE_UBI
+
+#include "ubifs.h"
+
+#ifdef CONFIG_UBIFS_FS_DEBUG
+
+DEFINE_SPINLOCK(dbg_lock);
+
+static char dbg_key_buf0[128];
+static char dbg_key_buf1[128];
+
+unsigned int ubifs_msg_flags = UBIFS_MSG_FLAGS_DEFAULT;
+unsigned int ubifs_chk_flags = UBIFS_CHK_FLAGS_DEFAULT;
+unsigned int ubifs_tst_flags;
+
+module_param_named(debug_msgs, ubifs_msg_flags, uint, S_IRUGO | S_IWUSR);
+module_param_named(debug_chks, ubifs_chk_flags, uint, S_IRUGO | S_IWUSR);
+module_param_named(debug_tsts, ubifs_tst_flags, uint, S_IRUGO | S_IWUSR);
+
+MODULE_PARM_DESC(debug_msgs, "Debug message type flags");
+MODULE_PARM_DESC(debug_chks, "Debug check flags");
+MODULE_PARM_DESC(debug_tsts, "Debug special test flags");
+
+static const char *get_key_type(int type)
+{
+	switch (type) {
+	case UBIFS_INO_KEY:
+		return "inode";
+	case UBIFS_DENT_KEY:
+		return "direntry";
+	case UBIFS_XENT_KEY:
+		return "xentry";
+	case UBIFS_DATA_KEY:
+		return "data";
+	case UBIFS_TRUN_KEY:
+		return "truncate";
+	default:
+		return "unknown/invalid key";
+	}
+}
+
+static void sprintf_key(const struct ubifs_info *c, const union ubifs_key *key,
+			char *buffer)
+{
+	char *p = buffer;
+	int type = key_type(c, key);
+
+	if (c->key_fmt == UBIFS_SIMPLE_KEY_FMT) {
+		switch (type) {
+		case UBIFS_INO_KEY:
+			sprintf(p, "(%lu, %s)", (unsigned long)key_inum(c, key),
+			       get_key_type(type));
+			break;
+		case UBIFS_DENT_KEY:
+		case UBIFS_XENT_KEY:
+			sprintf(p, "(%lu, %s, %#08x)",
+				(unsigned long)key_inum(c, key),
+				get_key_type(type), key_hash(c, key));
+			break;
+		case UBIFS_DATA_KEY:
+			sprintf(p, "(%lu, %s, %u)",
+				(unsigned long)key_inum(c, key),
+				get_key_type(type), key_block(c, key));
+			break;
+		case UBIFS_TRUN_KEY:
+			sprintf(p, "(%lu, %s)",
+				(unsigned long)key_inum(c, key),
+				get_key_type(type));
+			break;
+		default:
+			sprintf(p, "(bad key type: %#08x, %#08x)",
+				key->u32[0], key->u32[1]);
+		}
+	} else
+		sprintf(p, "bad key format %d", c->key_fmt);
+}
+
+const char *dbg_key_str0(const struct ubifs_info *c, const union ubifs_key *key)
+{
+	/* dbg_lock must be held */
+	sprintf_key(c, key, dbg_key_buf0);
+	return dbg_key_buf0;
+}
+
+const char *dbg_key_str1(const struct ubifs_info *c, const union ubifs_key *key)
+{
+	/* dbg_lock must be held */
+	sprintf_key(c, key, dbg_key_buf1);
+	return dbg_key_buf1;
+}
+
+/**
+ * ubifs_debugging_init - initialize UBIFS debugging.
+ * @c: UBIFS file-system description object
+ *
+ * This function initializes debugging-related data for the file system.
+ * Returns zero in case of success and a negative error code in case of
+ * failure.
+ */
+int ubifs_debugging_init(struct ubifs_info *c)
+{
+	c->dbg = kzalloc(sizeof(struct ubifs_debug_info), GFP_KERNEL);
+	if (!c->dbg)
+		return -ENOMEM;
+
+	c->dbg->buf = vmalloc(c->leb_size);
+	if (!c->dbg->buf)
+		goto out;
+
+	return 0;
+
+out:
+	kfree(c->dbg);
+	return -ENOMEM;
+}
+
+/**
+ * ubifs_debugging_exit - free debugging data.
+ * @c: UBIFS file-system description object
+ */
+void ubifs_debugging_exit(struct ubifs_info *c)
+{
+	vfree(c->dbg->buf);
+	kfree(c->dbg);
+}
+
+#endif /* CONFIG_UBIFS_FS_DEBUG */
diff --git a/fs/ubifs/io.c b/fs/ubifs/io.c
new file mode 100644
index 0000000..aae5c65
--- /dev/null
+++ b/fs/ubifs/io.c
@@ -0,0 +1,316 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation.
+ * Copyright (C) 2006, 2007 University of Szeged, Hungary
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
+ *          Zoltan Sogor
+ */
+
+/*
+ * This file implements UBIFS I/O subsystem which provides various I/O-related
+ * helper functions (reading/writing/checking/validating nodes) and implements
+ * write-buffering support. Write buffers help to save space which otherwise
+ * would have been wasted for padding to the nearest minimal I/O unit boundary.
+ * Instead, data first goes to the write-buffer and is flushed when the
+ * buffer is full or when it is not used for some time (by timer). This is
+ * similar to the mechanism is used by JFFS2.
+ *
+ * Write-buffers are defined by 'struct ubifs_wbuf' objects and protected by
+ * mutexes defined inside these objects. Since sometimes upper-level code
+ * has to lock the write-buffer (e.g. journal space reservation code), many
+ * functions related to write-buffers have "nolock" suffix which means that the
+ * caller has to lock the write-buffer before calling this function.
+ *
+ * UBIFS stores nodes at 64 bit-aligned addresses. If the node length is not
+ * aligned, UBIFS starts the next node from the aligned address, and the padded
+ * bytes may contain any rubbish. In other words, UBIFS does not put padding
+ * bytes in those small gaps. Common headers of nodes store real node lengths,
+ * not aligned lengths. Indexing nodes also store real lengths in branches.
+ *
+ * UBIFS uses padding when it pads to the next min. I/O unit. In this case it
+ * uses padding nodes or padding bytes, if the padding node does not fit.
+ *
+ * All UBIFS nodes are protected by CRC checksums and UBIFS checks all nodes
+ * every time they are read from the flash media.
+ */
+
+#include "ubifs.h"
+
+/**
+ * ubifs_ro_mode - switch UBIFS to read read-only mode.
+ * @c: UBIFS file-system description object
+ * @err: error code which is the reason of switching to R/O mode
+ */
+void ubifs_ro_mode(struct ubifs_info *c, int err)
+{
+	if (!c->ro_media) {
+		c->ro_media = 1;
+		c->no_chk_data_crc = 0;
+		ubifs_warn("switched to read-only mode, error %d", err);
+		dbg_dump_stack();
+	}
+}
+
+/**
+ * ubifs_check_node - check node.
+ * @c: UBIFS file-system description object
+ * @buf: node to check
+ * @lnum: logical eraseblock number
+ * @offs: offset within the logical eraseblock
+ * @quiet: print no messages
+ * @must_chk_crc: indicates whether to always check the CRC
+ *
+ * This function checks node magic number and CRC checksum. This function also
+ * validates node length to prevent UBIFS from becoming crazy when an attacker
+ * feeds it a file-system image with incorrect nodes. For example, too large
+ * node length in the common header could cause UBIFS to read memory outside of
+ * allocated buffer when checking the CRC checksum.
+ *
+ * This function may skip data nodes CRC checking if @c->no_chk_data_crc is
+ * true, which is controlled by corresponding UBIFS mount option. However, if
+ * @must_chk_crc is true, then @c->no_chk_data_crc is ignored and CRC is
+ * checked. Similarly, if @c->always_chk_crc is true, @c->no_chk_data_crc is
+ * ignored and CRC is checked.
+ *
+ * This function returns zero in case of success and %-EUCLEAN in case of bad
+ * CRC or magic.
+ */
+int ubifs_check_node(const struct ubifs_info *c, const void *buf, int lnum,
+		     int offs, int quiet, int must_chk_crc)
+{
+	int err = -EINVAL, type, node_len;
+	uint32_t crc, node_crc, magic;
+	const struct ubifs_ch *ch = buf;
+
+	ubifs_assert(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
+	ubifs_assert(!(offs & 7) && offs < c->leb_size);
+
+	magic = le32_to_cpu(ch->magic);
+	if (magic != UBIFS_NODE_MAGIC) {
+		if (!quiet)
+			ubifs_err("bad magic %#08x, expected %#08x",
+				  magic, UBIFS_NODE_MAGIC);
+		err = -EUCLEAN;
+		goto out;
+	}
+
+	type = ch->node_type;
+	if (type < 0 || type >= UBIFS_NODE_TYPES_CNT) {
+		if (!quiet)
+			ubifs_err("bad node type %d", type);
+		goto out;
+	}
+
+	node_len = le32_to_cpu(ch->len);
+	if (node_len + offs > c->leb_size)
+		goto out_len;
+
+	if (c->ranges[type].max_len == 0) {
+		if (node_len != c->ranges[type].len)
+			goto out_len;
+	} else if (node_len < c->ranges[type].min_len ||
+		   node_len > c->ranges[type].max_len)
+		goto out_len;
+
+	if (!must_chk_crc && type == UBIFS_DATA_NODE && !c->always_chk_crc &&
+	     c->no_chk_data_crc)
+		return 0;
+
+	crc = crc32(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
+	node_crc = le32_to_cpu(ch->crc);
+	if (crc != node_crc) {
+		if (!quiet)
+			ubifs_err("bad CRC: calculated %#08x, read %#08x",
+				  crc, node_crc);
+		err = -EUCLEAN;
+		goto out;
+	}
+
+	return 0;
+
+out_len:
+	if (!quiet)
+		ubifs_err("bad node length %d", node_len);
+out:
+	if (!quiet) {
+		ubifs_err("bad node at LEB %d:%d", lnum, offs);
+		dbg_dump_node(c, buf);
+		dbg_dump_stack();
+	}
+	return err;
+}
+
+/**
+ * ubifs_pad - pad flash space.
+ * @c: UBIFS file-system description object
+ * @buf: buffer to put padding to
+ * @pad: how many bytes to pad
+ *
+ * The flash media obliges us to write only in chunks of %c->min_io_size and
+ * when we have to write less data we add padding node to the write-buffer and
+ * pad it to the next minimal I/O unit's boundary. Padding nodes help when the
+ * media is being scanned. If the amount of wasted space is not enough to fit a
+ * padding node which takes %UBIFS_PAD_NODE_SZ bytes, we write padding bytes
+ * pattern (%UBIFS_PADDING_BYTE).
+ *
+ * Padding nodes are also used to fill gaps when the "commit-in-gaps" method is
+ * used.
+ */
+void ubifs_pad(const struct ubifs_info *c, void *buf, int pad)
+{
+	uint32_t crc;
+
+	ubifs_assert(pad >= 0 && !(pad & 7));
+
+	if (pad >= UBIFS_PAD_NODE_SZ) {
+		struct ubifs_ch *ch = buf;
+		struct ubifs_pad_node *pad_node = buf;
+
+		ch->magic = cpu_to_le32(UBIFS_NODE_MAGIC);
+		ch->node_type = UBIFS_PAD_NODE;
+		ch->group_type = UBIFS_NO_NODE_GROUP;
+		ch->padding[0] = ch->padding[1] = 0;
+		ch->sqnum = 0;
+		ch->len = cpu_to_le32(UBIFS_PAD_NODE_SZ);
+		pad -= UBIFS_PAD_NODE_SZ;
+		pad_node->pad_len = cpu_to_le32(pad);
+		crc = crc32(UBIFS_CRC32_INIT, buf + 8, UBIFS_PAD_NODE_SZ - 8);
+		ch->crc = cpu_to_le32(crc);
+		memset(buf + UBIFS_PAD_NODE_SZ, 0, pad);
+	} else if (pad > 0)
+		/* Too little space, padding node won't fit */
+		memset(buf, UBIFS_PADDING_BYTE, pad);
+}
+
+/**
+ * next_sqnum - get next sequence number.
+ * @c: UBIFS file-system description object
+ */
+static unsigned long long next_sqnum(struct ubifs_info *c)
+{
+	unsigned long long sqnum;
+
+	spin_lock(&c->cnt_lock);
+	sqnum = ++c->max_sqnum;
+	spin_unlock(&c->cnt_lock);
+
+	if (unlikely(sqnum >= SQNUM_WARN_WATERMARK)) {
+		if (sqnum >= SQNUM_WATERMARK) {
+			ubifs_err("sequence number overflow %llu, end of life",
+				  sqnum);
+			ubifs_ro_mode(c, -EINVAL);
+		}
+		ubifs_warn("running out of sequence numbers, end of life soon");
+	}
+
+	return sqnum;
+}
+
+/**
+ * ubifs_prepare_node - prepare node to be written to flash.
+ * @c: UBIFS file-system description object
+ * @node: the node to pad
+ * @len: node length
+ * @pad: if the buffer has to be padded
+ *
+ * This function prepares node at @node to be written to the media - it
+ * calculates node CRC, fills the common header, and adds proper padding up to
+ * the next minimum I/O unit if @pad is not zero.
+ */
+void ubifs_prepare_node(struct ubifs_info *c, void *node, int len, int pad)
+{
+	uint32_t crc;
+	struct ubifs_ch *ch = node;
+	unsigned long long sqnum = next_sqnum(c);
+
+	ubifs_assert(len >= UBIFS_CH_SZ);
+
+	ch->magic = cpu_to_le32(UBIFS_NODE_MAGIC);
+	ch->len = cpu_to_le32(len);
+	ch->group_type = UBIFS_NO_NODE_GROUP;
+	ch->sqnum = cpu_to_le64(sqnum);
+	ch->padding[0] = ch->padding[1] = 0;
+	crc = crc32(UBIFS_CRC32_INIT, node + 8, len - 8);
+	ch->crc = cpu_to_le32(crc);
+
+	if (pad) {
+		len = ALIGN(len, 8);
+		pad = ALIGN(len, c->min_io_size) - len;
+		ubifs_pad(c, node + len, pad);
+	}
+}
+
+/**
+ * ubifs_read_node - read node.
+ * @c: UBIFS file-system description object
+ * @buf: buffer to read to
+ * @type: node type
+ * @len: node length (not aligned)
+ * @lnum: logical eraseblock number
+ * @offs: offset within the logical eraseblock
+ *
+ * This function reads a node of known type and and length, checks it and
+ * stores in @buf. Returns zero in case of success, %-EUCLEAN if CRC mismatched
+ * and a negative error code in case of failure.
+ */
+int ubifs_read_node(const struct ubifs_info *c, void *buf, int type, int len,
+		    int lnum, int offs)
+{
+	int err, l;
+	struct ubifs_ch *ch = buf;
+
+	dbg_io("LEB %d:%d, %s, length %d", lnum, offs, dbg_ntype(type), len);
+	ubifs_assert(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
+	ubifs_assert(len >= UBIFS_CH_SZ && offs + len <= c->leb_size);
+	ubifs_assert(!(offs & 7) && offs < c->leb_size);
+	ubifs_assert(type >= 0 && type < UBIFS_NODE_TYPES_CNT);
+
+	err = ubi_read(c->ubi, lnum, buf, offs, len);
+	if (err && err != -EBADMSG) {
+		ubifs_err("cannot read node %d from LEB %d:%d, error %d",
+			  type, lnum, offs, err);
+		return err;
+	}
+
+	if (type != ch->node_type) {
+		ubifs_err("bad node type (%d but expected %d)",
+			  ch->node_type, type);
+		goto out;
+	}
+
+	err = ubifs_check_node(c, buf, lnum, offs, 0, 0);
+	if (err) {
+		ubifs_err("expected node type %d", type);
+		return err;
+	}
+
+	l = le32_to_cpu(ch->len);
+	if (l != len) {
+		ubifs_err("bad node length %d, expected %d", l, len);
+		goto out;
+	}
+
+	return 0;
+
+out:
+	ubifs_err("bad node at LEB %d:%d", lnum, offs);
+	dbg_dump_node(c, buf);
+	dbg_dump_stack();
+	return -EINVAL;
+}
-- 
1.7.1



--===============4170237409653828117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4170237409653828117==--
