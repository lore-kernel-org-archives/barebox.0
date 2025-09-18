Delivery-date: Thu, 18 Sep 2025 09:45:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L5-004O0W-0c
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L2-0001od-0X
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lgfaaDWp19914Ri7AxXSdX0XLKx/OYY3/dTOLTwlGBk=; b=rnyw4R0DT3aufGYHmN0pM0KJ0N
	VzIUj62J8GifGayNT+UjOwplEWhXmE6yl6DS0ukuysGuiJSO2ZkoVJdcTZJG35pRRzT1kiOhbYgRa
	zT+flRPAtS6xWRSP5dUKKCNdcsNIgPUnTM3xEeu+rL/33BU+dqmXMNpIuHKQ+s30+8fuReTcmeEpY
	ftXIMGzadVhBQtzGuQI2DMf1IwcSVAQLsmCMX3flFeHUizo/rJQnEjHN+Tw9t413lFnGDWlN+YPCa
	IUB671wDgVSAbu5gMQkRI7cMQHxLaqEujPuzQvRMdEcCc0GP7gBFcsjSLflRS2xkQk3ct+kHztz7T
	GQKiYfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KP-0000000GaRa-28c1;
	Thu, 18 Sep 2025 07:45:17 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KK-0000000GaLh-0bAt
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:13 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b042eb09948so117465266b.3
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181510; x=1758786310; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgfaaDWp19914Ri7AxXSdX0XLKx/OYY3/dTOLTwlGBk=;
        b=r4q3xgCNBpphDJlmDLWmD1qcH5OQv9oVMZcsoJwGmAhIyMC69loPlEVDwC+whWsCQd
         j4q4BL11zrQWa+OosYjFCVorio+fS9XurxNHztD5isZkM0vtsj+qpTurXAjT0dYp+CQl
         aIymiA9HRWN2Hs+ll09O3ScoDYWlsB/qxQu/epdMOBiG232E+vQz/TYzwM+b9CEClLKr
         ipJpgjl3lSzm+xORwscIXw+5nePhSgHbUcn8ikigikIcgXfDNGMSC4SDQQ6962Tnxiq4
         cR66DgLJhwhBrtjfZ2J8tEENop+PyKFN2/lVQAYXeYX0IKCAPBNzPQXcl7Fqx6EV+4bQ
         F/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181510; x=1758786310;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lgfaaDWp19914Ri7AxXSdX0XLKx/OYY3/dTOLTwlGBk=;
        b=i+OHma42GVmB56zslHi//HDsAyzEyColjRLX1GNLJAr4/c793jd9TNhOTEBrwTyZCg
         IJ/r5tYS8xb6ZiETFiN1/sbjNSAaRMfOv9fAVQiLfGbJNmHxYqYD6/pVFAzOvhc5RwNW
         qlmTMt0tmJ63ckqZrG8ST8mgev0vGpnZC8L4bErTRVUY3jLWTmd6QtXind/Sh5j1XE3o
         4PQBeYopfz663ubhi3LEstdtAQeiby61GEGrWFUXns3rwgC1hvbXbKuxJ2rtEP/GNBBP
         j9hNAlY7ScX4KxKtf5RlqVNT/vJqY8XS+mC0Gf8orUm0p0OfYn67Y703dMg7vixnUfyS
         vukw==
X-Gm-Message-State: AOJu0YzbBmoDd91lX9RFyHra3jG+1MjQBOMbbbhjl4nHx2qOPDsUbxCU
	GMxe2DGnUhhXi3Qcw5plKpF/CHx217Ryd3BT9b88i5dpXuTm73c3WAMBPouTQs4QgIjIsc6Fkzz
	Qhtn8
X-Gm-Gg: ASbGncvt+jy0FWGRqE6HWQn9v4bhPt9kUX+sRSs1hfJxlHJHhT7j8bW3mUVFtY0AB1X
	M86lFoAUD9bYNj7Jw1DoucVrgCWzpi8pvsUPzGhgUYc/jR5I7I7tH2rwaWuTyFzulQ6nuNH7TMe
	TtJHkILoPCNnLHilDcDBRjCJIm1CT4QfaX7aP9iF2C0ERiY95nW4VUf0CoBV7rf4QuGZ/Q37WNh
	gPa44/UkfZzLVUQIyJSR14smm7es0qeot5Z+ZLp2mO6P61EMdNZblQ2gcxIvhn2q8jK3K2RngHa
	YitBIezKGqCupkGFQcLjMmwI7XTy8xUgyWB2TvmhJSub20bu+SB8MaXtguC0A9hvMnNyvFouFxT
	XCu1ATXPoIAX65fC1fbdmxma5EHWUBVjYd2d+S3Sjbd1RCe7JL8Ya0DdIVnk1T+csptDpXjZ2Ex
	m8VqzMS2qL
X-Google-Smtp-Source: AGHT+IFQodMI9GUX8O1zuFWLSPiLTEYod0h68q+OQtbzt32v0PL654A0ftLUNU3SAvmyp/dnrE55KQ==
X-Received: by 2002:a17:907:3e8c:b0:b04:76ed:3ff5 with SMTP id a640c23a62f3a-b1bb6802513mr570459766b.40.1758181509669;
        Thu, 18 Sep 2025 00:45:09 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.09
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:13 +0200
Message-ID: <20250918074455.891780-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004512_337404_DF071397 
X-CRM114-Status: GOOD (  31.19  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/11] dm: verity: Add transparent integrity checking target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the dm-verity target, which is compatible with the Linux
implementation. This means that we can now create dm-verity devices on
top of partitions containing read-only filesystems and transparently
verify the integrity of all data is associated the verity root hash.

CRUCIALLY: The root hash still has be validated by some other means,
which is outside of the scope of this implementation. Future changes
will add support for validation of the root hash using a PKCS#7
signature, again compatible with the Linux kernel implementation.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/Kconfig     |   7 +
 drivers/block/dm/Makefile    |   1 +
 drivers/block/dm/dm-target.h |  14 ++
 drivers/block/dm/dm-verity.c | 463 +++++++++++++++++++++++++++++++++++
 4 files changed, 485 insertions(+)
 create mode 100644 drivers/block/dm/dm-verity.c

diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
index 03a0876eda..93f29c84a1 100644
--- a/drivers/block/dm/Kconfig
+++ b/drivers/block/dm/Kconfig
@@ -11,3 +11,10 @@ config DM_BLK_LINEAR
 	help
 	  Maps a contiguous region of an existing device into a dm
 	  device.
+
+config DM_BLK_VERITY
+	bool "Verity target"
+	depends on DM_BLK
+	help
+	  Transparent integrity checking of underlying device using a
+	  pre-computed Merkle tree.
diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
index f52d19f9c4..3650f4c856 100644
--- a/drivers/block/dm/Makefile
+++ b/drivers/block/dm/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_DM_BLK) += dm-core.o
 obj-$(CONFIG_DM_BLK_LINEAR) += dm-linear.o
+obj-$(CONFIG_DM_BLK_VERITY) += dm-verity.o
diff --git a/drivers/block/dm/dm-target.h b/drivers/block/dm/dm-target.h
index bd25208889..5c7c6f612f 100644
--- a/drivers/block/dm/dm-target.h
+++ b/drivers/block/dm/dm-target.h
@@ -38,8 +38,22 @@ struct dm_target {
 	void *private;
 };
 
+static inline size_t dm_target_size(struct dm_target *ti)
+{
+	return ti->size << SECTOR_SHIFT;
+}
+
 void dm_target_err(struct dm_target *ti, const char *fmt, ...);
 
+#define dm_target_err_once(_ti, _format, _args...) do {	\
+	static bool __print_once;				\
+								\
+	if (!__print_once && LOGLEVEL >= MSG_ERR) {		\
+		__print_once = true;				\
+		dm_target_err((_ti), (_format), ##_args);	\
+	}							\
+} while (0)
+
 struct dm_target_ops {
 	struct list_head list;
 	const char *name;
diff --git a/drivers/block/dm/dm-verity.c b/drivers/block/dm/dm-verity.c
new file mode 100644
index 0000000000..b7ed3dcc93
--- /dev/null
+++ b/drivers/block/dm/dm-verity.c
@@ -0,0 +1,463 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+/*
+ * Based on dm-verity from Linux:
+ *
+ * Copyright (C) 2012 Red Hat, Inc.
+ *
+ * Author: Mikulas Patocka <mpatocka@redhat.com>
+ *
+ * Based on Chromium dm-verity driver (C) 2011 The Chromium OS Authors
+ */
+
+#include <block.h>
+#include <device-mapper.h>
+#include <digest.h>
+#include <disks.h>
+#include <fcntl.h>
+#include <xfuncs.h>
+
+#include <linux/bitmap.h>
+#include <linux/bitops.h>
+#include <linux/hex.h>
+#include <linux/kstrtox.h>
+
+#include "dm-target.h"
+
+#define DM_VERITY_MAX_LEVELS 63
+
+struct dm_verity {
+	struct dm_cdev ddev;
+	struct dm_cdev hdev;
+
+	struct digest *digest_algo;
+	size_t digest_len;
+
+	u8 *root_digest;
+	u8 *salt;
+	size_t salt_size;
+
+	u8 levels;
+	u8 hash_per_block_bits;
+	sector_t hash_level_block[DM_VERITY_MAX_LEVELS];
+
+	struct {
+		unsigned long *trusted;
+		u8 *digest;
+
+		struct {
+			u8 *data;
+			sector_t block;
+		} hblock;
+	} verify;
+};
+
+static sector_t dm_verity_position_at_level(struct dm_verity *v, sector_t dblock,
+					    int level)
+{
+	return dblock >> (level * v->hash_per_block_bits);
+}
+
+static void dm_verity_hash_at_level(struct dm_verity *v, sector_t dblock, int level,
+				    sector_t *hblock, unsigned int *offset)
+{
+	sector_t position = dm_verity_position_at_level(v, dblock, level);
+	unsigned int idx;
+
+	*hblock = v->hash_level_block[level] + (position >> v->hash_per_block_bits);
+
+	if (!offset)
+		return;
+
+	idx = position & ((1 << v->hash_per_block_bits) - 1);
+	*offset = idx << (v->hdev.blk.bits - v->hash_per_block_bits);
+}
+
+static int dm_verity_set_digest(struct dm_verity *v, const void *buf, size_t buflen)
+{
+	int err;
+
+	err = digest_init(v->digest_algo);
+	err = err ? : digest_update(v->digest_algo, v->salt, v->salt_size);
+	err = err ? : digest_update(v->digest_algo, buf, buflen);
+	err = err ? : digest_final(v->digest_algo, v->verify.digest);
+	return err;
+}
+
+static int dm_verity_set_hblock(struct dm_verity *v, sector_t hblock)
+{
+	int err;
+
+	if (v->verify.hblock.block == hblock)
+		/* Requested block is already loaded. This is the
+		 * common scenario for sequential block checking once
+		 * the upper levels of hash blocks have been marked as
+		 * trusted.
+		 */
+		return 0;
+
+	err = dm_cdev_read(&v->hdev, v->verify.hblock.data, hblock, 1);
+	if (err)
+		return err;
+
+	v->verify.hblock.block = hblock;
+	return 0;
+}
+
+static int dm_verity_verify(struct dm_target *ti, const void *buf, sector_t dblock)
+{
+	struct dm_verity *v = ti->private;
+	const u8 *expected;
+	unsigned int hoffs;
+	sector_t hblock;
+	int err, level;
+
+	err = dm_verity_set_digest(v, buf, 1 << v->ddev.blk.bits);
+	if (err)
+		return err;
+
+	for (level = 0; level < v->levels; level++) {
+		dm_verity_hash_at_level(v, dblock, level, &hblock, &hoffs);
+
+		err = dm_verity_set_hblock(v, hblock);
+		if (err)
+			return err;
+
+		expected = v->verify.hblock.data + hoffs;
+
+		if (memcmp(v->verify.digest, expected, v->digest_len)) {
+			dm_target_err_once(
+				ti, "Verity error for data block %llu at level %d\n",
+				dblock, level);
+			return -EINVAL;
+		}
+
+		if (test_bit(hblock, v->verify.trusted)) {
+			/* This hash block has already been validated
+			 * all the way up to the root digest by an
+			 * earlier operation, we do not need to ascend
+			 * any further.
+			 *
+			 * Make sure to mark any subset of branches
+			 * that this operation might have verified.
+			 */
+			goto mark_as_trusted;
+		}
+
+		/* Current level OK. Now calculate the digest for the
+		 * entire hblock, which then becomes the input when
+		 * checking the next level up.
+		 */
+		err = dm_verity_set_digest(v, v->verify.hblock.data,
+					   1 << v->hdev.blk.bits);
+		if (err)
+			return err;
+	}
+
+	/* Data is consistent with hash tree. Now make sure that the top
+	 * level matches the externally provided root digest.
+	 */
+	if (memcmp(v->verify.digest, v->root_digest, v->digest_len)) {
+		dm_target_err_once(ti, "Verity error for data block %llu at root\n",
+				   dblock);
+		return -EINVAL;
+
+	}
+
+mark_as_trusted:
+	/* All hash blocks in the chain from dblock to the root digest
+	 * are valid. Cache this knowledge for subsequent operations
+	 * that map to the same subtree.
+	 */
+	for (level--; level >= 0; level--) {
+		dm_verity_hash_at_level(v, dblock, level, &hblock, NULL);
+		set_bit(hblock, v->verify.trusted);
+	}
+
+	return 0;
+}
+
+static int dm_verity_verify_range(struct dm_target *ti, const void *buf,
+				  sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_verity *v = ti->private;
+	int err;
+
+	for (; num_blocks; block++, num_blocks--, buf += 1 << v->ddev.blk.bits) {
+		err = dm_verity_verify(ti, buf, block);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int dm_verity_read(struct dm_target *ti, void *in_buf,
+			  sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_verity *v = ti->private;
+	blkcnt_t pre_blocks, post_blocks, dblocks;
+	void *buf = in_buf;
+	sector_t dblock;
+	int err;
+
+	/* The dm-verity data block size is guaranteed to be at least
+	 * 512B, but typically larger. Make sure we align the request
+	 * to even data block size boundaries, since those are the
+	 * chunks we need to hash.
+	 */
+	pre_blocks = block & v->ddev.blk.mask;
+	post_blocks = (pre_blocks + num_blocks) & v->ddev.blk.mask;
+	if (post_blocks)
+		post_blocks = v->ddev.blk.mask + 1 - post_blocks;
+
+	if (pre_blocks || post_blocks) {
+		/* Need to read more data than in_buf will hold. */
+		buf = malloc((pre_blocks + num_blocks + post_blocks) << SECTOR_SHIFT);
+		if (!buf)
+			return -ENOMEM;
+	}
+
+	dblock = block - pre_blocks;
+	dblock >>= (v->ddev.blk.bits - SECTOR_SHIFT);
+
+	dblocks = pre_blocks + num_blocks + post_blocks;
+	dblocks >>= (v->ddev.blk.bits - SECTOR_SHIFT);
+
+	err = dm_cdev_read(&v->ddev, buf, dblock, dblocks);
+	if (err)
+		goto err;
+
+	err = dm_verity_verify_range(ti, buf, dblock, dblocks);
+	if (err)
+		goto err;
+
+	if (buf != in_buf) {
+		memcpy(in_buf, buf + (pre_blocks << SECTOR_SHIFT),
+		       num_blocks << SECTOR_SHIFT);
+		free(buf);
+	}
+
+	return 0;
+
+err:
+	if (buf != in_buf)
+		free(buf);
+
+	return err;
+}
+
+static int dm_verity_measure(struct dm_target *ti)
+{
+	struct dm_verity *v = ti->private;
+	sector_t lstart, lsize;
+	unsigned int lshift;
+	size_t minsize;
+	int i;
+
+	v->hash_per_block_bits =
+		fls((1 << v->hdev.blk.bits) / v->digest_len) - 1;
+
+	v->levels = 0;
+	if (v->ddev.blk.num)
+		while (v->hash_per_block_bits * v->levels < 64 &&
+		       (unsigned long long)(v->ddev.blk.num - 1) >>
+		       (v->hash_per_block_bits * v->levels))
+			v->levels++;
+
+	if (v->levels > DM_VERITY_MAX_LEVELS) {
+		dm_target_err(ti, "Too many tree levels\n");
+		return -E2BIG;
+	}
+
+	for (lstart = 0, i = v->levels - 1; i >= 0; i--) {
+		v->hash_level_block[i] = lstart;
+
+		lshift = (i + 1) * v->hash_per_block_bits;
+		lsize = (v->ddev.blk.num + ((sector_t)1 << lshift) - 1) >> lshift;
+		if (lstart + lsize < lstart) {
+			dm_target_err(ti, "Hash device offset overflow\n");
+			return -E2BIG;
+		}
+		lstart += lsize;
+	}
+	v->hdev.blk.num = lstart;
+
+	minsize = (v->hdev.blk.start + v->hdev.blk.num) << v->hdev.blk.bits;
+	if (minsize > v->hdev.cdev->size) {
+		dm_target_err(ti, "Hash device is too small to fit tree\n");
+		return -E2BIG;
+	}
+
+	return 0;
+}
+
+static int dm_verity_cdev_init(struct dm_target *ti, struct dm_cdev *dmcdev,
+			       const char *devstr, const char *blkszstr,
+			       const char *num_blkstr, const char *start_blkstr)
+{
+	struct dm_verity *v = ti->private;
+	const char *kind = (dmcdev == &v->ddev) ? "data" : "hash";
+	unsigned long blocksize;
+	blkcnt_t num_blocks = 0;
+	sector_t start = 0;
+	char *errmsg;
+	int err;
+
+	if (kstrtoul(blkszstr, 0, &blocksize)) {
+		dm_target_err(ti, "Invalid %s block size: \"%s\"\n", kind, blkszstr);
+		return -EINVAL;
+	}
+
+	if (num_blkstr && kstrtoull(num_blkstr, 0, &num_blocks)) {
+		dm_target_err(ti, "Invalid # of %s blocks: \"%s\"\n", kind, num_blkstr);
+		return -EINVAL;
+	}
+
+	if (start_blkstr && kstrtoull(start_blkstr, 0, &start)) {
+		dm_target_err(ti, "Invalid start %s block: \"%s\"\n", kind, start_blkstr);
+		return -EINVAL;
+	}
+
+	err = dm_cdev_open(dmcdev, devstr, O_RDONLY,
+			   start, num_blocks, blocksize, &errmsg);
+	if (err) {
+		dm_target_err(ti, "Error opening %d device: %s\n", kind, errmsg);
+		free(errmsg);
+	}
+
+	return err;
+}
+
+static int dm_verity_create(struct dm_target *ti, unsigned int argc, char **argv)
+{
+	struct dm_verity *v;
+	unsigned int ver;
+	int err;
+
+	if (argc != 10) {
+		dm_target_err(ti, "Expected 10 arguments, got %u\n", argc);
+		return -EINVAL;
+	}
+
+	if (kstrtouint(argv[0], 0, &ver) || ver != 1) {
+		dm_target_err(ti, "Only version 1 is supported, not \"%s\"\n", argv[0]);
+		return -EINVAL;
+	}
+
+	v = xzalloc(sizeof(*v));
+	ti->private = v;
+
+	err = dm_verity_cdev_init(ti, &v->ddev, argv[1], argv[3], argv[5], NULL);
+	if (err)
+		goto err;
+
+	err = dm_verity_cdev_init(ti, &v->hdev, argv[2], argv[4], NULL, argv[6]);
+	if (err)
+		goto err;
+
+	v->digest_algo = digest_alloc(argv[7]);
+	if (!v->digest_algo) {
+		dm_target_err(ti, "Unknown digest \"%s\"\n", argv[7]);
+		err = -EINVAL;
+		goto err;
+	}
+
+	v->digest_len = digest_length(v->digest_algo);
+	if ((1 << v->hdev.blk.bits) < v->digest_len * 2) {
+		dm_target_err(ti, "Digest size too big\n");
+		err = -EINVAL;
+		goto err;
+	}
+
+	v->root_digest = xmalloc(v->digest_len);
+	if (strlen(argv[8]) != v->digest_len * 2 ||
+	    hex2bin(v->root_digest, argv[8], v->digest_len)) {
+		dm_target_err(ti, "Invalid root digest \"%s\"\n", argv[8]);
+		err = -EINVAL;
+		goto err;
+	}
+
+	if (strcmp(argv[9], "-")) {
+		v->salt_size = strlen(argv[9]) / 2;
+		v->salt = xmalloc(v->salt_size);
+
+		if (strlen(argv[9]) != v->salt_size * 2 ||
+		    hex2bin(v->salt, argv[9], v->salt_size)) {
+			dm_target_err(ti, "Invalid salt \"%s\"\n", argv[9]);
+			err = -EINVAL;
+			goto err;
+		}
+	}
+
+	err = dm_verity_measure(ti);
+	if (err)
+		goto err;
+
+	/* Initialize this to a value larger than the largest possible
+	 * hash block lba to make sure that the first hash block read
+	 * in dm_verity_verify() always misses the cache.
+	 */
+	v->verify.hblock.block = v->hdev.blk.num;
+	v->verify.hblock.data = xmalloc(1 << v->hdev.blk.bits);
+
+	v->verify.digest = xmalloc(v->digest_len);
+	v->verify.trusted = bitmap_xzalloc(v->hdev.blk.num);
+	return 0;
+
+err:
+	if (v->salt)
+		free(v->salt);
+	if (v->root_digest)
+		free(v->root_digest);
+	if (v->digest_algo)
+		digest_free(v->digest_algo);
+	if (v->hdev.cdev)
+		cdev_close(v->hdev.cdev);
+	if (v->ddev.cdev)
+		cdev_close(v->ddev.cdev);
+
+	free(v);
+	return err;
+}
+
+static int dm_verity_destroy(struct dm_target *ti)
+{
+	struct dm_verity *v = ti->private;
+
+	free(v->verify.digest);
+	free(v->verify.hblock.data);
+	free(v->verify.trusted);
+	free(v->salt);
+	free(v->root_digest);
+	digest_free(v->digest_algo);
+	dm_cdev_close(&v->hdev);
+	dm_cdev_close(&v->ddev);
+
+	free(v);
+	return 0;
+}
+
+static char *dm_verity_asprint(struct dm_target *ti)
+{
+	struct dm_verity *v = ti->private;
+
+	return xasprintf("data:%s hash:%s@%llu root:%*phN",
+			 cdev_name(v->ddev.cdev),
+			 cdev_name(v->hdev.cdev), v->hdev.blk.start,
+			 (int)v->digest_len, v->root_digest);
+}
+
+static struct dm_target_ops dm_verity_ops = {
+	.name = "verity",
+	.asprint = dm_verity_asprint,
+	.create = dm_verity_create,
+	.destroy = dm_verity_destroy,
+	.read = dm_verity_read,
+};
+
+static int __init dm_verity_init(void)
+{
+	return dm_target_register(&dm_verity_ops);
+}
+device_initcall(dm_verity_init);
-- 
2.43.0



