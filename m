Delivery-date: Tue, 16 Apr 2024 11:55:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfXF-003BUO-2e
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:55:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfX2-00050Y-Nd
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:55:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=peGhZq69IUt4Y3TuRbpVC2ApIWbZKrd/1M7brNWwuug=; b=tD8BmliZGOMuwIICTDaTY+xwF1
	WB5h0YVqv05Z9Lz6iUtxVZcF612bXRMbe09qr8ZlpRJ9ukcWXrsceyGXSYVZ04BzMo3lPW4c8TUOW
	ImExAx89O3PxplbuZFGQT19T5p8YvWDK8RIJ0iyhays1aTvXgxVvmKc/kijk4RqLj3y+u9326SKCc
	3z/iR14KUcTIh3HfDcmw1x7MYFa+i1c5zQd+mJQpKyNBBgSL+OmRrpjHMQ4F2nyd6oxg6ZkGDXKSW
	VcvNlpEOqeT3lph2QbfJRicK6P8v5AKuy2IPbZyxL/N4Z3LLIU2NuPitlYQ7JH/ICSo1elTkHW6yG
	5kbPw/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVQ-0000000Bfkr-0aBl;
	Tue, 16 Apr 2024 09:53:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcG-0nBO
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002dK-DM; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-00CaKI-0k; Tue, 16 Apr 2024 11:53:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-008J49-2h;
	Tue, 16 Apr 2024 11:53:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:09 +0200
Message-Id: <20240416095313.1977242-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] mtd: nand: update to Linux-6.9-rc2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig                |   41 +-
 drivers/mtd/nand/Makefile               |    4 +
 drivers/mtd/nand/core.c                 |  133 +-
 drivers/mtd/nand/ecc-sw-bch.c           |  406 ++++++
 drivers/mtd/nand/ecc-sw-hamming.c       |  660 +++++++++
 drivers/mtd/nand/ecc.c                  |  697 ++++++++++
 drivers/mtd/nand/raw/Kconfig            |    6 -
 drivers/mtd/nand/raw/Makefile           |    1 -
 drivers/mtd/nand/raw/atmel/legacy.c     |   11 +-
 drivers/mtd/nand/raw/internals.h        |    5 +
 drivers/mtd/nand/raw/nand_base.c        | 1631 ++++++++++++++---------
 drivers/mtd/nand/raw/nand_bch.c         |  219 ---
 drivers/mtd/nand/raw/nand_denali.c      |    3 +-
 drivers/mtd/nand/raw/nand_esmt.c        |   17 +-
 drivers/mtd/nand/raw/nand_fsl_ifc.c     |    8 +-
 drivers/mtd/nand/raw/nand_hynix.c       |   59 +-
 drivers/mtd/nand/raw/nand_imx.c         |   11 -
 drivers/mtd/nand/raw/nand_macronix.c    |   42 +-
 drivers/mtd/nand/raw/nand_micron.c      |   24 +-
 drivers/mtd/nand/raw/nand_mrvl_nfc.c    |   10 +-
 drivers/mtd/nand/raw/nand_mxs.c         |    2 +-
 drivers/mtd/nand/raw/nand_omap_gpmc.c   |    5 +-
 drivers/mtd/nand/raw/nand_onfi.c        |   32 +-
 drivers/mtd/nand/raw/nand_orion.c       |    3 +-
 drivers/mtd/nand/raw/nand_samsung.c     |   22 +-
 drivers/mtd/nand/raw/nand_timings.c     |  370 ++++-
 drivers/mtd/nand/raw/nand_toshiba.c     |   25 +-
 drivers/mtd/nand/raw/nomadik_nand.c     |    2 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c  |    2 +-
 drivers/of/of_mtd.c                     |    1 -
 include/linux/mtd/mtd.h                 |    3 +
 include/linux/mtd/nand-ecc-sw-bch.h     |   71 +
 include/linux/mtd/nand-ecc-sw-hamming.h |   89 ++
 include/linux/mtd/nand.h                |  327 ++++-
 include/linux/mtd/onfi.h                |   42 +-
 include/linux/mtd/rawnand.h             |  275 +++-
 36 files changed, 4215 insertions(+), 1044 deletions(-)
 create mode 100644 drivers/mtd/nand/ecc-sw-bch.c
 create mode 100644 drivers/mtd/nand/ecc-sw-hamming.c
 create mode 100644 drivers/mtd/nand/ecc.c
 delete mode 100644 drivers/mtd/nand/raw/nand_bch.c
 create mode 100644 include/linux/mtd/nand-ecc-sw-bch.h
 create mode 100644 include/linux/mtd/nand-ecc-sw-hamming.h

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 4de2d86113..4c19718467 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -1,17 +1,40 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+menu "NAND"
+
 config MTD_NAND_CORE
 	bool
 
-menuconfig NAND
-	bool "NAND support"
-	help
-	  This enables support for accessing all type of NAND flash
-	  devices. For further information see
-	  <http://www.linux-mtd.infradead.org/doc/nand.html>.
+source "drivers/mtd/nand/raw/Kconfig"
 
-if NAND
+menu "ECC engine support"
 
-source "drivers/mtd/nand/raw/Kconfig"
+config MTD_NAND_ECC
+	bool
+	select MTD_NAND_CORE
+
+config MTD_NAND_ECC_SW_HAMMING
+	bool "Software Hamming ECC engine"
+	default y if MTD_RAW_NAND
+	select MTD_NAND_ECC
+	help
+	  This enables support for software Hamming error
+	  correction. This correction can correct up to 1 bit error
+	  per chunk and detect up to 2 bit errors. While it used to be
+	  widely used with old parts, newer NAND chips usually require
+	  more strength correction and in this case BCH or RS will be
+	  preferred.
+
+config MTD_NAND_ECC_SW_BCH
+	bool "Software BCH ECC engine"
+	select BCH
+	select MTD_NAND_ECC
+	default n
+	help
+	  This enables support for software BCH error correction. Binary BCH
+	  codes are more powerful and cpu intensive than traditional Hamming
+	  ECC codes. They are used with NAND devices requiring more than 1 bit
+	  of error correction.
 
-endif
+endmenu
+endmenu
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 6e94575728..617a9c2638 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -3,3 +3,7 @@
 obj-$(CONFIG_MTD_NAND_CORE) += core.o bbt.o nand-bb.o
 
 obj-y += raw/
+
+obj-$(CONFIG_MTD_NAND_ECC) += ecc.o
+obj-$(CONFIG_MTD_NAND_ECC_SW_HAMMING) += ecc-sw-hamming.o
+obj-$(CONFIG_MTD_NAND_ECC_SW_BCH) += ecc-sw-bch.o
diff --git a/drivers/mtd/nand/core.c b/drivers/mtd/nand/core.c
index 52036dd857..2d165f9474 100644
--- a/drivers/mtd/nand/core.c
+++ b/drivers/mtd/nand/core.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2017 Free Electrons
  *
@@ -123,7 +123,7 @@ EXPORT_SYMBOL_GPL(nanddev_isreserved);
  *
  * Return: 0 in case of success, a negative error code otherwise.
  */
-int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos)
+static int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos)
 {
 	if (nanddev_isbad(nand, pos) || nanddev_isreserved(nand, pos)) {
 		pr_warn("attempt to erase a bad/reserved block @%llx\n",
@@ -133,7 +133,6 @@ int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos)
 
 	return nand->ops->erase(nand, pos);
 }
-EXPORT_SYMBOL_GPL(nanddev_erase);
 
 /**
  * nanddev_mtd_erase() - Generic mtd->_erase() implementation for NAND devices
@@ -207,6 +206,134 @@ int nanddev_mtd_max_bad_blocks(struct mtd_info *mtd, loff_t offs, size_t len)
 }
 EXPORT_SYMBOL_GPL(nanddev_mtd_max_bad_blocks);
 
+/**
+ * nanddev_get_ecc_engine() - Find and get a suitable ECC engine
+ * @nand: NAND device
+ */
+static int nanddev_get_ecc_engine(struct nand_device *nand)
+{
+	int engine_type;
+
+	/* Read the user desires in terms of ECC engine/configuration */
+	of_get_nand_ecc_user_config(nand);
+
+	engine_type = nand->ecc.user_conf.engine_type;
+	if (engine_type == NAND_ECC_ENGINE_TYPE_INVALID)
+		engine_type = nand->ecc.defaults.engine_type;
+
+	switch (engine_type) {
+	case NAND_ECC_ENGINE_TYPE_NONE:
+		return 0;
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+		nand->ecc.engine = nand_ecc_get_sw_engine(nand);
+		break;
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
+		nand->ecc.engine = nand_ecc_get_on_die_hw_engine(nand);
+		break;
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		nand->ecc.engine = nand_ecc_get_on_host_hw_engine(nand);
+		if (PTR_ERR(nand->ecc.engine) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		break;
+	default:
+		pr_err("Missing ECC engine type\n");
+	}
+
+	if (!nand->ecc.engine)
+		return  -EINVAL;
+
+	return 0;
+}
+
+/**
+ * nanddev_put_ecc_engine() - Dettach and put the in-use ECC engine
+ * @nand: NAND device
+ */
+static int nanddev_put_ecc_engine(struct nand_device *nand)
+{
+	switch (nand->ecc.ctx.conf.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		nand_ecc_put_on_host_hw_engine(nand);
+		break;
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * nanddev_find_ecc_configuration() - Find a suitable ECC configuration
+ * @nand: NAND device
+ */
+static int nanddev_find_ecc_configuration(struct nand_device *nand)
+{
+	int ret;
+
+	if (!nand->ecc.engine)
+		return -ENOTSUPP;
+
+	ret = nand_ecc_init_ctx(nand);
+	if (ret)
+		return ret;
+
+	if (!nand_ecc_is_strong_enough(nand))
+		pr_warn("WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\n",
+			nand->mtd.name);
+
+	return 0;
+}
+
+/**
+ * nanddev_ecc_engine_init() - Initialize an ECC engine for the chip
+ * @nand: NAND device
+ */
+int nanddev_ecc_engine_init(struct nand_device *nand)
+{
+	int ret;
+
+	/* Look for the ECC engine to use */
+	ret = nanddev_get_ecc_engine(nand);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			pr_err("No ECC engine found\n");
+
+		return ret;
+	}
+
+	/* No ECC engine requested */
+	if (!nand->ecc.engine)
+		return 0;
+
+	/* Configure the engine: balance user input and chip requirements */
+	ret = nanddev_find_ecc_configuration(nand);
+	if (ret) {
+		pr_err("No suitable ECC configuration\n");
+		nanddev_put_ecc_engine(nand);
+
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nanddev_ecc_engine_init);
+
+/**
+ * nanddev_ecc_engine_cleanup() - Cleanup ECC engine initializations
+ * @nand: NAND device
+ */
+void nanddev_ecc_engine_cleanup(struct nand_device *nand)
+{
+	if (nand->ecc.engine)
+		nand_ecc_cleanup_ctx(nand);
+
+	nanddev_put_ecc_engine(nand);
+}
+EXPORT_SYMBOL_GPL(nanddev_ecc_engine_cleanup);
+
 /**
  * nanddev_init() - Initialize a NAND device
  * @nand: NAND device
diff --git a/drivers/mtd/nand/ecc-sw-bch.c b/drivers/mtd/nand/ecc-sw-bch.c
new file mode 100644
index 0000000000..29cf562aa9
--- /dev/null
+++ b/drivers/mtd/nand/ecc-sw-bch.c
@@ -0,0 +1,406 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * This file provides ECC correction for more than 1 bit per block of data,
+ * using binary BCH codes. It relies on the generic BCH library lib/bch.c.
+ *
+ * Copyright © 2011 Ivan Djelic <ivan.djelic@parrot.com>
+ */
+
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/export.h>
+#include <linux/bitops.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
+
+/**
+ * nand_ecc_sw_bch_calculate - Calculate the ECC corresponding to a data block
+ * @nand: NAND device
+ * @buf: Input buffer with raw data
+ * @code: Output buffer with ECC
+ */
+int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+			      const unsigned char *buf, unsigned char *code)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int i;
+
+	memset(code, 0, engine_conf->code_size);
+	bch_encode(engine_conf->bch, buf, nand->ecc.ctx.conf.step_size, code);
+
+	/* apply mask so that an erased page is a valid codeword */
+	for (i = 0; i < engine_conf->code_size; i++)
+		code[i] ^= engine_conf->eccmask[i];
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_calculate);
+
+/**
+ * nand_ecc_sw_bch_correct - Detect, correct and report bit error(s)
+ * @nand: NAND device
+ * @buf: Raw data read from the chip
+ * @read_ecc: ECC bytes from the chip
+ * @calc_ecc: ECC calculated from the raw data
+ *
+ * Detect and correct bit errors for a data block.
+ */
+int nand_ecc_sw_bch_correct(struct nand_device *nand, unsigned char *buf,
+			    unsigned char *read_ecc, unsigned char *calc_ecc)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
+	unsigned int *errloc = engine_conf->errloc;
+	int i, count;
+
+	count = bch_decode(engine_conf->bch, NULL, step_size, read_ecc,
+			   calc_ecc, NULL, errloc);
+	if (count > 0) {
+		for (i = 0; i < count; i++) {
+			if (errloc[i] < (step_size * 8))
+				/* The error is in the data area: correct it */
+				buf[errloc[i] >> 3] ^= (1 << (errloc[i] & 7));
+
+			/* Otherwise the error is in the ECC area: nothing to do */
+			pr_debug("%s: corrected bitflip %u\n", __func__,
+				 errloc[i]);
+		}
+	} else if (count < 0) {
+		pr_err("ECC unrecoverable error\n");
+		count = -EBADMSG;
+	}
+
+	return count;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_correct);
+
+/**
+ * nand_ecc_sw_bch_cleanup - Cleanup software BCH ECC resources
+ * @nand: NAND device
+ */
+static void nand_ecc_sw_bch_cleanup(struct nand_device *nand)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+
+	bch_free(engine_conf->bch);
+	kfree(engine_conf->errloc);
+	kfree(engine_conf->eccmask);
+}
+
+/**
+ * nand_ecc_sw_bch_init - Initialize software BCH ECC engine
+ * @nand: NAND device
+ *
+ * Returns: a pointer to a new NAND BCH control structure, or NULL upon failure
+ *
+ * Initialize NAND BCH error correction. @nand.ecc parameters 'step_size' and
+ * 'bytes' are used to compute the following BCH parameters:
+ *     m, the Galois field order
+ *     t, the error correction capability
+ * 'bytes' should be equal to the number of bytes required to store m * t
+ * bits, where m is such that 2^m - 1 > step_size * 8.
+ *
+ * Example: to configure 4 bit correction per 512 bytes, you should pass
+ * step_size = 512 (thus, m = 13 is the smallest integer such that 2^m - 1 > 512 * 8)
+ * bytes = 7 (7 bytes are required to store m * t = 13 * 4 = 52 bits)
+ */
+static int nand_ecc_sw_bch_init(struct nand_device *nand)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int eccsize = nand->ecc.ctx.conf.step_size;
+	unsigned int eccbytes = engine_conf->code_size;
+	unsigned int m, t, i;
+	unsigned char *erased_page;
+	int ret;
+
+	m = fls(1 + (8 * eccsize));
+	t = (eccbytes * 8) / m;
+
+	engine_conf->bch = bch_init(m, t, 0, false);
+	if (!engine_conf->bch)
+		return -EINVAL;
+
+	engine_conf->eccmask = kzalloc(eccbytes, GFP_KERNEL);
+	engine_conf->errloc = kmalloc_array(t, sizeof(*engine_conf->errloc),
+					    GFP_KERNEL);
+	if (!engine_conf->eccmask || !engine_conf->errloc) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
+
+	/* Compute and store the inverted ECC of an erased step */
+	erased_page = kmalloc(eccsize, GFP_KERNEL);
+	if (!erased_page) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
+
+	memset(erased_page, 0xff, eccsize);
+	bch_encode(engine_conf->bch, erased_page, eccsize,
+		   engine_conf->eccmask);
+	kfree(erased_page);
+
+	for (i = 0; i < eccbytes; i++)
+		engine_conf->eccmask[i] ^= 0xff;
+
+	/* Verify that the number of code bytes has the expected value */
+	if (engine_conf->bch->ecc_bytes != eccbytes) {
+		pr_err("Invalid number of ECC bytes: %u, expected: %u\n",
+		       eccbytes, engine_conf->bch->ecc_bytes);
+		ret = -EINVAL;
+		goto cleanup;
+	}
+
+	/* Sanity checks */
+	if (8 * (eccsize + eccbytes) >= (1 << m)) {
+		pr_err("ECC step size is too large (%u)\n", eccsize);
+		ret = -EINVAL;
+		goto cleanup;
+	}
+
+	return 0;
+
+cleanup:
+	nand_ecc_sw_bch_cleanup(nand);
+
+	return ret;
+}
+
+int nand_ecc_sw_bch_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf = &nand->ecc.ctx.conf;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	struct nand_ecc_sw_bch_conf *engine_conf;
+	unsigned int code_size = 0, nsteps;
+	int ret;
+
+	/* Only large page NAND chips may use BCH */
+	if (mtd->oobsize < 64) {
+		pr_err("BCH cannot be used with small page NAND chips\n");
+		return -EINVAL;
+	}
+
+	if (!mtd->ooblayout)
+		mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
+
+	conf->engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+	conf->algo = NAND_ECC_ALGO_BCH;
+	conf->step_size = nand->ecc.user_conf.step_size;
+	conf->strength = nand->ecc.user_conf.strength;
+
+	/*
+	 * Board driver should supply ECC size and ECC strength
+	 * values to select how many bits are correctable.
+	 * Otherwise, default to 512 bytes for large page devices and 256 for
+	 * small page devices.
+	 */
+	if (!conf->step_size) {
+		if (mtd->oobsize >= 64)
+			conf->step_size = 512;
+		else
+			conf->step_size = 256;
+
+		conf->strength = 4;
+	}
+
+	nsteps = mtd->writesize / conf->step_size;
+
+	/* Maximize */
+	if (nand->ecc.user_conf.flags & NAND_ECC_MAXIMIZE_STRENGTH) {
+		conf->step_size = 1024;
+		nsteps = mtd->writesize / conf->step_size;
+		/* Reserve 2 bytes for the BBM */
+		code_size = (mtd->oobsize - 2) / nsteps;
+		conf->strength = code_size * 8 / fls(8 * conf->step_size);
+	}
+
+	if (!code_size)
+		code_size = DIV_ROUND_UP(conf->strength *
+					 fls(8 * conf->step_size), 8);
+
+	if (!conf->strength)
+		conf->strength = (code_size * 8) / fls(8 * conf->step_size);
+
+	if (!code_size && !conf->strength) {
+		pr_err("Missing ECC parameters\n");
+		return -EINVAL;
+	}
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	ret = nand_ecc_init_req_tweaking(&engine_conf->req_ctx, nand);
+	if (ret)
+		goto free_engine_conf;
+
+	engine_conf->code_size = code_size;
+	engine_conf->calc_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	engine_conf->code_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	if (!engine_conf->calc_buf || !engine_conf->code_buf) {
+		ret = -ENOMEM;
+		goto free_bufs;
+	}
+
+	nand->ecc.ctx.priv = engine_conf;
+	nand->ecc.ctx.nsteps = nsteps;
+	nand->ecc.ctx.total = nsteps * code_size;
+
+	ret = nand_ecc_sw_bch_init(nand);
+	if (ret)
+		goto free_bufs;
+
+	/* Verify the layout validity */
+	if (mtd_ooblayout_count_eccbytes(mtd) !=
+	    nand->ecc.ctx.nsteps * engine_conf->code_size) {
+		pr_err("Invalid ECC layout\n");
+		ret = -EINVAL;
+		goto cleanup_bch_ctx;
+	}
+
+	return 0;
+
+cleanup_bch_ctx:
+	nand_ecc_sw_bch_cleanup(nand);
+free_bufs:
+	nand_ecc_cleanup_req_tweaking(&engine_conf->req_ctx);
+	kfree(engine_conf->calc_buf);
+	kfree(engine_conf->code_buf);
+free_engine_conf:
+	kfree(engine_conf);
+
+	return ret;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_init_ctx);
+
+void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+
+	if (engine_conf) {
+		nand_ecc_sw_bch_cleanup(nand);
+		nand_ecc_cleanup_req_tweaking(&engine_conf->req_ctx);
+		kfree(engine_conf->calc_buf);
+		kfree(engine_conf->code_buf);
+		kfree(engine_conf);
+	}
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_cleanup_ctx);
+
+static int nand_ecc_sw_bch_prepare_io_req(struct nand_device *nand,
+					  struct nand_page_io_req *req)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = nand->ecc.ctx.nsteps;
+	int total = nand->ecc.ctx.total;
+	u8 *ecccalc = engine_conf->calc_buf;
+	const u8 *data;
+	int i;
+
+	/* Nothing to do for a raw operation */
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	nand_ecc_tweak_req(&engine_conf->req_ctx, req);
+
+	/* No more preparation for page read */
+	if (req->type == NAND_PAGE_READ)
+		return 0;
+
+	/* Preparation for page write: derive the ECC bytes and place them */
+	for (i = 0, data = req->databuf.out;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_bch_calculate(nand, data, &ecccalc[i]);
+
+	return mtd_ooblayout_set_eccbytes(mtd, ecccalc, (void *)req->oobbuf.out,
+					  0, total);
+}
+
+static int nand_ecc_sw_bch_finish_io_req(struct nand_device *nand,
+					 struct nand_page_io_req *req)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int total = nand->ecc.ctx.total;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = nand->ecc.ctx.nsteps;
+	u8 *ecccalc = engine_conf->calc_buf;
+	u8 *ecccode = engine_conf->code_buf;
+	unsigned int max_bitflips = 0;
+	u8 *data = req->databuf.in;
+	int i, ret;
+
+	/* Nothing to do for a raw operation */
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	/* No more preparation for page write */
+	if (req->type == NAND_PAGE_WRITE) {
+		nand_ecc_restore_req(&engine_conf->req_ctx, req);
+		return 0;
+	}
+
+	/* Finish a page read: retrieve the (raw) ECC bytes*/
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecccode, req->oobbuf.in, 0,
+					 total);
+	if (ret)
+		return ret;
+
+	/* Calculate the ECC bytes */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_bch_calculate(nand, data, &ecccalc[i]);
+
+	/* Finish a page read: compare and correct */
+	for (eccsteps = nand->ecc.ctx.nsteps, i = 0, data = req->databuf.in;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize) {
+		int stat =  nand_ecc_sw_bch_correct(nand, data,
+						    &ecccode[i],
+						    &ecccalc[i]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	nand_ecc_restore_req(&engine_conf->req_ctx, req);
+
+	return max_bitflips;
+}
+
+static struct nand_ecc_engine_ops nand_ecc_sw_bch_engine_ops = {
+	.init_ctx = nand_ecc_sw_bch_init_ctx,
+	.cleanup_ctx = nand_ecc_sw_bch_cleanup_ctx,
+	.prepare_io_req = nand_ecc_sw_bch_prepare_io_req,
+	.finish_io_req = nand_ecc_sw_bch_finish_io_req,
+};
+
+static struct nand_ecc_engine nand_ecc_sw_bch_engine = {
+	.ops = &nand_ecc_sw_bch_engine_ops,
+};
+
+struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void)
+{
+	return &nand_ecc_sw_bch_engine;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_get_engine);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
+MODULE_DESCRIPTION("NAND software BCH ECC support");
diff --git a/drivers/mtd/nand/ecc-sw-hamming.c b/drivers/mtd/nand/ecc-sw-hamming.c
new file mode 100644
index 0000000000..f773a25a3e
--- /dev/null
+++ b/drivers/mtd/nand/ecc-sw-hamming.c
@@ -0,0 +1,660 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * This file contains an ECC algorithm that detects and corrects 1 bit
+ * errors in a 256 byte block of data.
+ *
+ * Copyright © 2008 Koninklijke Philips Electronics NV.
+ *                  Author: Frans Meulenbroeks
+ *
+ * Completely replaces the previous ECC implementation which was written by:
+ *   Steven J. Hill (sjhill@realitydiluted.com)
+ *   Thomas Gleixner (tglx@linutronix.de)
+ *
+ * Information on how this algorithm works and how it was developed
+ * can be found in Documentation/driver-api/mtd/nand_ecc.rst
+ */
+
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <linux/export.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/nand-ecc-sw-hamming.h>
+#include <linux/slab.h>
+#include <asm/byteorder.h>
+
+/*
+ * invparity is a 256 byte table that contains the odd parity
+ * for each byte. So if the number of bits in a byte is even,
+ * the array element is 1, and when the number of bits is odd
+ * the array eleemnt is 0.
+ */
+static const char invparity[256] = {
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0,
+	1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1
+};
+
+/*
+ * bitsperbyte contains the number of bits per byte
+ * this is only used for testing and repairing parity
+ * (a precalculated value slightly improves performance)
+ */
+static const char bitsperbyte[256] = {
+	0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4,
+	1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
+	1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
+	1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
+	3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
+	3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
+	4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8,
+};
+
+/*
+ * addressbits is a lookup table to filter out the bits from the xor-ed
+ * ECC data that identify the faulty location.
+ * this is only used for repairing parity
+ * see the comments in nand_ecc_sw_hamming_correct for more details
+ */
+static const char addressbits[256] = {
+	0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01,
+	0x02, 0x02, 0x03, 0x03, 0x02, 0x02, 0x03, 0x03,
+	0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01,
+	0x02, 0x02, 0x03, 0x03, 0x02, 0x02, 0x03, 0x03,
+	0x04, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05,
+	0x06, 0x06, 0x07, 0x07, 0x06, 0x06, 0x07, 0x07,
+	0x04, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05,
+	0x06, 0x06, 0x07, 0x07, 0x06, 0x06, 0x07, 0x07,
+	0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01,
+	0x02, 0x02, 0x03, 0x03, 0x02, 0x02, 0x03, 0x03,
+	0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01,
+	0x02, 0x02, 0x03, 0x03, 0x02, 0x02, 0x03, 0x03,
+	0x04, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05,
+	0x06, 0x06, 0x07, 0x07, 0x06, 0x06, 0x07, 0x07,
+	0x04, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05,
+	0x06, 0x06, 0x07, 0x07, 0x06, 0x06, 0x07, 0x07,
+	0x08, 0x08, 0x09, 0x09, 0x08, 0x08, 0x09, 0x09,
+	0x0a, 0x0a, 0x0b, 0x0b, 0x0a, 0x0a, 0x0b, 0x0b,
+	0x08, 0x08, 0x09, 0x09, 0x08, 0x08, 0x09, 0x09,
+	0x0a, 0x0a, 0x0b, 0x0b, 0x0a, 0x0a, 0x0b, 0x0b,
+	0x0c, 0x0c, 0x0d, 0x0d, 0x0c, 0x0c, 0x0d, 0x0d,
+	0x0e, 0x0e, 0x0f, 0x0f, 0x0e, 0x0e, 0x0f, 0x0f,
+	0x0c, 0x0c, 0x0d, 0x0d, 0x0c, 0x0c, 0x0d, 0x0d,
+	0x0e, 0x0e, 0x0f, 0x0f, 0x0e, 0x0e, 0x0f, 0x0f,
+	0x08, 0x08, 0x09, 0x09, 0x08, 0x08, 0x09, 0x09,
+	0x0a, 0x0a, 0x0b, 0x0b, 0x0a, 0x0a, 0x0b, 0x0b,
+	0x08, 0x08, 0x09, 0x09, 0x08, 0x08, 0x09, 0x09,
+	0x0a, 0x0a, 0x0b, 0x0b, 0x0a, 0x0a, 0x0b, 0x0b,
+	0x0c, 0x0c, 0x0d, 0x0d, 0x0c, 0x0c, 0x0d, 0x0d,
+	0x0e, 0x0e, 0x0f, 0x0f, 0x0e, 0x0e, 0x0f, 0x0f,
+	0x0c, 0x0c, 0x0d, 0x0d, 0x0c, 0x0c, 0x0d, 0x0d,
+	0x0e, 0x0e, 0x0f, 0x0f, 0x0e, 0x0e, 0x0f, 0x0f
+};
+
+int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
+			     unsigned char *code, bool sm_order)
+{
+	const u32 *bp = (uint32_t *)buf;
+	const u32 eccsize_mult = (step_size == 256) ? 1 : 2;
+	/* current value in buffer */
+	u32 cur;
+	/* rp0..rp17 are the various accumulated parities (per byte) */
+	u32 rp0, rp1, rp2, rp3, rp4, rp5, rp6, rp7, rp8, rp9, rp10, rp11, rp12,
+		rp13, rp14, rp15, rp16, rp17;
+	/* Cumulative parity for all data */
+	u32 par;
+	/* Cumulative parity at the end of the loop (rp12, rp14, rp16) */
+	u32 tmppar;
+	int i;
+
+	par = 0;
+	rp4 = 0;
+	rp6 = 0;
+	rp8 = 0;
+	rp10 = 0;
+	rp12 = 0;
+	rp14 = 0;
+	rp16 = 0;
+	rp17 = 0;
+
+	/*
+	 * The loop is unrolled a number of times;
+	 * This avoids if statements to decide on which rp value to update
+	 * Also we process the data by longwords.
+	 * Note: passing unaligned data might give a performance penalty.
+	 * It is assumed that the buffers are aligned.
+	 * tmppar is the cumulative sum of this iteration.
+	 * needed for calculating rp12, rp14, rp16 and par
+	 * also used as a performance improvement for rp6, rp8 and rp10
+	 */
+	for (i = 0; i < eccsize_mult << 2; i++) {
+		cur = *bp++;
+		tmppar = cur;
+		rp4 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp6 ^= tmppar;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp8 ^= tmppar;
+
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		rp6 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp6 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp10 ^= tmppar;
+
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		rp6 ^= cur;
+		rp8 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp6 ^= cur;
+		rp8 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		rp8 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp8 ^= cur;
+
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		rp6 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp6 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+		rp4 ^= cur;
+		cur = *bp++;
+		tmppar ^= cur;
+
+		par ^= tmppar;
+		if ((i & 0x1) == 0)
+			rp12 ^= tmppar;
+		if ((i & 0x2) == 0)
+			rp14 ^= tmppar;
+		if (eccsize_mult == 2 && (i & 0x4) == 0)
+			rp16 ^= tmppar;
+	}
+
+	/*
+	 * handle the fact that we use longword operations
+	 * we'll bring rp4..rp14..rp16 back to single byte entities by
+	 * shifting and xoring first fold the upper and lower 16 bits,
+	 * then the upper and lower 8 bits.
+	 */
+	rp4 ^= (rp4 >> 16);
+	rp4 ^= (rp4 >> 8);
+	rp4 &= 0xff;
+	rp6 ^= (rp6 >> 16);
+	rp6 ^= (rp6 >> 8);
+	rp6 &= 0xff;
+	rp8 ^= (rp8 >> 16);
+	rp8 ^= (rp8 >> 8);
+	rp8 &= 0xff;
+	rp10 ^= (rp10 >> 16);
+	rp10 ^= (rp10 >> 8);
+	rp10 &= 0xff;
+	rp12 ^= (rp12 >> 16);
+	rp12 ^= (rp12 >> 8);
+	rp12 &= 0xff;
+	rp14 ^= (rp14 >> 16);
+	rp14 ^= (rp14 >> 8);
+	rp14 &= 0xff;
+	if (eccsize_mult == 2) {
+		rp16 ^= (rp16 >> 16);
+		rp16 ^= (rp16 >> 8);
+		rp16 &= 0xff;
+	}
+
+	/*
+	 * we also need to calculate the row parity for rp0..rp3
+	 * This is present in par, because par is now
+	 * rp3 rp3 rp2 rp2 in little endian and
+	 * rp2 rp2 rp3 rp3 in big endian
+	 * as well as
+	 * rp1 rp0 rp1 rp0 in little endian and
+	 * rp0 rp1 rp0 rp1 in big endian
+	 * First calculate rp2 and rp3
+	 */
+#ifdef __BIG_ENDIAN
+	rp2 = (par >> 16);
+	rp2 ^= (rp2 >> 8);
+	rp2 &= 0xff;
+	rp3 = par & 0xffff;
+	rp3 ^= (rp3 >> 8);
+	rp3 &= 0xff;
+#else
+	rp3 = (par >> 16);
+	rp3 ^= (rp3 >> 8);
+	rp3 &= 0xff;
+	rp2 = par & 0xffff;
+	rp2 ^= (rp2 >> 8);
+	rp2 &= 0xff;
+#endif
+
+	/* reduce par to 16 bits then calculate rp1 and rp0 */
+	par ^= (par >> 16);
+#ifdef __BIG_ENDIAN
+	rp0 = (par >> 8) & 0xff;
+	rp1 = (par & 0xff);
+#else
+	rp1 = (par >> 8) & 0xff;
+	rp0 = (par & 0xff);
+#endif
+
+	/* finally reduce par to 8 bits */
+	par ^= (par >> 8);
+	par &= 0xff;
+
+	/*
+	 * and calculate rp5..rp15..rp17
+	 * note that par = rp4 ^ rp5 and due to the commutative property
+	 * of the ^ operator we can say:
+	 * rp5 = (par ^ rp4);
+	 * The & 0xff seems superfluous, but benchmarking learned that
+	 * leaving it out gives slightly worse results. No idea why, probably
+	 * it has to do with the way the pipeline in pentium is organized.
+	 */
+	rp5 = (par ^ rp4) & 0xff;
+	rp7 = (par ^ rp6) & 0xff;
+	rp9 = (par ^ rp8) & 0xff;
+	rp11 = (par ^ rp10) & 0xff;
+	rp13 = (par ^ rp12) & 0xff;
+	rp15 = (par ^ rp14) & 0xff;
+	if (eccsize_mult == 2)
+		rp17 = (par ^ rp16) & 0xff;
+
+	/*
+	 * Finally calculate the ECC bits.
+	 * Again here it might seem that there are performance optimisations
+	 * possible, but benchmarks showed that on the system this is developed
+	 * the code below is the fastest
+	 */
+	if (sm_order) {
+		code[0] = (invparity[rp7] << 7) | (invparity[rp6] << 6) |
+			  (invparity[rp5] << 5) | (invparity[rp4] << 4) |
+			  (invparity[rp3] << 3) | (invparity[rp2] << 2) |
+			  (invparity[rp1] << 1) | (invparity[rp0]);
+		code[1] = (invparity[rp15] << 7) | (invparity[rp14] << 6) |
+			  (invparity[rp13] << 5) | (invparity[rp12] << 4) |
+			  (invparity[rp11] << 3) | (invparity[rp10] << 2) |
+			  (invparity[rp9] << 1) | (invparity[rp8]);
+	} else {
+		code[1] = (invparity[rp7] << 7) | (invparity[rp6] << 6) |
+			  (invparity[rp5] << 5) | (invparity[rp4] << 4) |
+			  (invparity[rp3] << 3) | (invparity[rp2] << 2) |
+			  (invparity[rp1] << 1) | (invparity[rp0]);
+		code[0] = (invparity[rp15] << 7) | (invparity[rp14] << 6) |
+			  (invparity[rp13] << 5) | (invparity[rp12] << 4) |
+			  (invparity[rp11] << 3) | (invparity[rp10] << 2) |
+			  (invparity[rp9] << 1) | (invparity[rp8]);
+	}
+
+	if (eccsize_mult == 1)
+		code[2] =
+		    (invparity[par & 0xf0] << 7) |
+		    (invparity[par & 0x0f] << 6) |
+		    (invparity[par & 0xcc] << 5) |
+		    (invparity[par & 0x33] << 4) |
+		    (invparity[par & 0xaa] << 3) |
+		    (invparity[par & 0x55] << 2) |
+		    3;
+	else
+		code[2] =
+		    (invparity[par & 0xf0] << 7) |
+		    (invparity[par & 0x0f] << 6) |
+		    (invparity[par & 0xcc] << 5) |
+		    (invparity[par & 0x33] << 4) |
+		    (invparity[par & 0xaa] << 3) |
+		    (invparity[par & 0x55] << 2) |
+		    (invparity[rp17] << 1) |
+		    (invparity[rp16] << 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(ecc_sw_hamming_calculate);
+
+/**
+ * nand_ecc_sw_hamming_calculate - Calculate 3-byte ECC for 256/512-byte block
+ * @nand: NAND device
+ * @buf: Input buffer with raw data
+ * @code: Output buffer with ECC
+ */
+int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+				  const unsigned char *buf, unsigned char *code)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
+	bool sm_order = engine_conf ? engine_conf->sm_order : false;
+
+	return ecc_sw_hamming_calculate(buf, step_size, code, sm_order);
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_calculate);
+
+int ecc_sw_hamming_correct(unsigned char *buf, unsigned char *read_ecc,
+			   unsigned char *calc_ecc, unsigned int step_size,
+			   bool sm_order)
+{
+	const u32 eccsize_mult = step_size >> 8;
+	unsigned char b0, b1, b2, bit_addr;
+	unsigned int byte_addr;
+
+	/*
+	 * b0 to b2 indicate which bit is faulty (if any)
+	 * we might need the xor result  more than once,
+	 * so keep them in a local var
+	*/
+	if (sm_order) {
+		b0 = read_ecc[0] ^ calc_ecc[0];
+		b1 = read_ecc[1] ^ calc_ecc[1];
+	} else {
+		b0 = read_ecc[1] ^ calc_ecc[1];
+		b1 = read_ecc[0] ^ calc_ecc[0];
+	}
+
+	b2 = read_ecc[2] ^ calc_ecc[2];
+
+	/* check if there are any bitfaults */
+
+	/* repeated if statements are slightly more efficient than switch ... */
+	/* ordered in order of likelihood */
+
+	if ((b0 | b1 | b2) == 0)
+		return 0;	/* no error */
+
+	if ((((b0 ^ (b0 >> 1)) & 0x55) == 0x55) &&
+	    (((b1 ^ (b1 >> 1)) & 0x55) == 0x55) &&
+	    ((eccsize_mult == 1 && ((b2 ^ (b2 >> 1)) & 0x54) == 0x54) ||
+	     (eccsize_mult == 2 && ((b2 ^ (b2 >> 1)) & 0x55) == 0x55))) {
+	/* single bit error */
+		/*
+		 * rp17/rp15/13/11/9/7/5/3/1 indicate which byte is the faulty
+		 * byte, cp 5/3/1 indicate the faulty bit.
+		 * A lookup table (called addressbits) is used to filter
+		 * the bits from the byte they are in.
+		 * A marginal optimisation is possible by having three
+		 * different lookup tables.
+		 * One as we have now (for b0), one for b2
+		 * (that would avoid the >> 1), and one for b1 (with all values
+		 * << 4). However it was felt that introducing two more tables
+		 * hardly justify the gain.
+		 *
+		 * The b2 shift is there to get rid of the lowest two bits.
+		 * We could also do addressbits[b2] >> 1 but for the
+		 * performance it does not make any difference
+		 */
+		if (eccsize_mult == 1)
+			byte_addr = (addressbits[b1] << 4) + addressbits[b0];
+		else
+			byte_addr = (addressbits[b2 & 0x3] << 8) +
+				    (addressbits[b1] << 4) + addressbits[b0];
+		bit_addr = addressbits[b2 >> 2];
+		/* flip the bit */
+		buf[byte_addr] ^= (1 << bit_addr);
+		return 1;
+
+	}
+	/* count nr of bits; use table lookup, faster than calculating it */
+	if ((bitsperbyte[b0] + bitsperbyte[b1] + bitsperbyte[b2]) == 1)
+		return 1;	/* error in ECC data; no action needed */
+
+	pr_err("%s: uncorrectable ECC error\n", __func__);
+	return -EBADMSG;
+}
+EXPORT_SYMBOL(ecc_sw_hamming_correct);
+
+/**
+ * nand_ecc_sw_hamming_correct - Detect and correct bit error(s)
+ * @nand: NAND device
+ * @buf: Raw data read from the chip
+ * @read_ecc: ECC bytes read from the chip
+ * @calc_ecc: ECC calculated from the raw data
+ *
+ * Detect and correct up to 1 bit error per 256/512-byte block.
+ */
+int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
+				unsigned char *read_ecc,
+				unsigned char *calc_ecc)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
+	bool sm_order = engine_conf ? engine_conf->sm_order : false;
+
+	return ecc_sw_hamming_correct(buf, read_ecc, calc_ecc, step_size,
+				      sm_order);
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_correct);
+
+int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf = &nand->ecc.ctx.conf;
+	struct nand_ecc_sw_hamming_conf *engine_conf;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int ret;
+
+	if (!mtd->ooblayout) {
+		switch (mtd->oobsize) {
+		case 8:
+		case 16:
+			mtd_set_ooblayout(mtd, nand_get_small_page_ooblayout());
+			break;
+		case 64:
+		case 128:
+			mtd_set_ooblayout(mtd,
+					  nand_get_large_page_hamming_ooblayout());
+			break;
+		default:
+			return -ENOTSUPP;
+		}
+	}
+
+	conf->engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+	conf->algo = NAND_ECC_ALGO_HAMMING;
+	conf->step_size = nand->ecc.user_conf.step_size;
+	conf->strength = 1;
+
+	/* Use the strongest configuration by default */
+	if (conf->step_size != 256 && conf->step_size != 512)
+		conf->step_size = 256;
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	ret = nand_ecc_init_req_tweaking(&engine_conf->req_ctx, nand);
+	if (ret)
+		goto free_engine_conf;
+
+	engine_conf->code_size = 3;
+	engine_conf->calc_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	engine_conf->code_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	if (!engine_conf->calc_buf || !engine_conf->code_buf) {
+		ret = -ENOMEM;
+		goto free_bufs;
+	}
+
+	nand->ecc.ctx.priv = engine_conf;
+	nand->ecc.ctx.nsteps = mtd->writesize / conf->step_size;
+	nand->ecc.ctx.total = nand->ecc.ctx.nsteps * engine_conf->code_size;
+
+	return 0;
+
+free_bufs:
+	nand_ecc_cleanup_req_tweaking(&engine_conf->req_ctx);
+	kfree(engine_conf->calc_buf);
+	kfree(engine_conf->code_buf);
+free_engine_conf:
+	kfree(engine_conf);
+
+	return ret;
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_init_ctx);
+
+void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+
+	if (engine_conf) {
+		nand_ecc_cleanup_req_tweaking(&engine_conf->req_ctx);
+		kfree(engine_conf->calc_buf);
+		kfree(engine_conf->code_buf);
+		kfree(engine_conf);
+	}
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_cleanup_ctx);
+
+static int nand_ecc_sw_hamming_prepare_io_req(struct nand_device *nand,
+					      struct nand_page_io_req *req)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = nand->ecc.ctx.nsteps;
+	int total = nand->ecc.ctx.total;
+	u8 *ecccalc = engine_conf->calc_buf;
+	const u8 *data;
+	int i;
+
+	/* Nothing to do for a raw operation */
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	nand_ecc_tweak_req(&engine_conf->req_ctx, req);
+
+	/* No more preparation for page read */
+	if (req->type == NAND_PAGE_READ)
+		return 0;
+
+	/* Preparation for page write: derive the ECC bytes and place them */
+	for (i = 0, data = req->databuf.out;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_hamming_calculate(nand, data, &ecccalc[i]);
+
+	return mtd_ooblayout_set_eccbytes(mtd, ecccalc, (void *)req->oobbuf.out,
+					  0, total);
+}
+
+static int nand_ecc_sw_hamming_finish_io_req(struct nand_device *nand,
+					     struct nand_page_io_req *req)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int total = nand->ecc.ctx.total;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = nand->ecc.ctx.nsteps;
+	u8 *ecccalc = engine_conf->calc_buf;
+	u8 *ecccode = engine_conf->code_buf;
+	unsigned int max_bitflips = 0;
+	u8 *data = req->databuf.in;
+	int i, ret;
+
+	/* Nothing to do for a raw operation */
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	/* No more preparation for page write */
+	if (req->type == NAND_PAGE_WRITE) {
+		nand_ecc_restore_req(&engine_conf->req_ctx, req);
+		return 0;
+	}
+
+	/* Finish a page read: retrieve the (raw) ECC bytes*/
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecccode, req->oobbuf.in, 0,
+					 total);
+	if (ret)
+		return ret;
+
+	/* Calculate the ECC bytes */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_hamming_calculate(nand, data, &ecccalc[i]);
+
+	/* Finish a page read: compare and correct */
+	for (eccsteps = nand->ecc.ctx.nsteps, i = 0, data = req->databuf.in;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize) {
+		int stat =  nand_ecc_sw_hamming_correct(nand, data,
+							&ecccode[i],
+							&ecccalc[i]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	nand_ecc_restore_req(&engine_conf->req_ctx, req);
+
+	return max_bitflips;
+}
+
+static struct nand_ecc_engine_ops nand_ecc_sw_hamming_engine_ops = {
+	.init_ctx = nand_ecc_sw_hamming_init_ctx,
+	.cleanup_ctx = nand_ecc_sw_hamming_cleanup_ctx,
+	.prepare_io_req = nand_ecc_sw_hamming_prepare_io_req,
+	.finish_io_req = nand_ecc_sw_hamming_finish_io_req,
+};
+
+static struct nand_ecc_engine nand_ecc_sw_hamming_engine = {
+	.ops = &nand_ecc_sw_hamming_engine_ops,
+};
+
+struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void)
+{
+	return &nand_ecc_sw_hamming_engine;
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_get_engine);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Frans Meulenbroeks <fransmeulenbroeks@gmail.com>");
+MODULE_DESCRIPTION("NAND software Hamming ECC support");
diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
new file mode 100644
index 0000000000..60e1fa3cf2
--- /dev/null
+++ b/drivers/mtd/nand/ecc.c
@@ -0,0 +1,697 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Generic Error-Correcting Code (ECC) engine
+ *
+ * Copyright (C) 2019 Macronix
+ * Author:
+ *     Miquèl RAYNAL <miquel.raynal@bootlin.com>
+ *
+ *
+ * This file describes the abstraction of any NAND ECC engine. It has been
+ * designed to fit most cases, including parallel NANDs and SPI-NANDs.
+ *
+ * There are three main situations where instantiating this ECC engine makes
+ * sense:
+ *   - external: The ECC engine is outside the NAND pipeline, typically this
+ *               is a software ECC engine, or an hardware engine that is
+ *               outside the NAND controller pipeline.
+ *   - pipelined: The ECC engine is inside the NAND pipeline, ie. on the
+ *                controller's side. This is the case of most of the raw NAND
+ *                controllers. In the pipeline case, the ECC bytes are
+ *                generated/data corrected on the fly when a page is
+ *                written/read.
+ *   - ondie: The ECC engine is inside the NAND pipeline, on the chip's side.
+ *            Some NAND chips can correct themselves the data.
+ *
+ * Besides the initial setup and final cleanups, the interfaces are rather
+ * simple:
+ *   - prepare: Prepare an I/O request. Enable/disable the ECC engine based on
+ *              the I/O request type. In case of software correction or external
+ *              engine, this step may involve to derive the ECC bytes and place
+ *              them in the OOB area before a write.
+ *   - finish: Finish an I/O request. Correct the data in case of a read
+ *             request and report the number of corrected bits/uncorrectable
+ *             errors. Most likely empty for write operations, unless you have
+ *             hardware specific stuff to do, like shutting down the engine to
+ *             save power.
+ *
+ * The I/O request should be enclosed in a prepare()/finish() pair of calls
+ * and will behave differently depending on the requested I/O type:
+ *   - raw: Correction disabled
+ *   - ecc: Correction enabled
+ *
+ * The request direction is impacting the logic as well:
+ *   - read: Load data from the NAND chip
+ *   - write: Store data in the NAND chip
+ *
+ * Mixing all this combinations together gives the following behavior.
+ * Those are just examples, drivers are free to add custom steps in their
+ * prepare/finish hook.
+ *
+ * [external ECC engine]
+ *   - external + prepare + raw + read: do nothing
+ *   - external + finish  + raw + read: do nothing
+ *   - external + prepare + raw + write: do nothing
+ *   - external + finish  + raw + write: do nothing
+ *   - external + prepare + ecc + read: do nothing
+ *   - external + finish  + ecc + read: calculate expected ECC bytes, extract
+ *                                      ECC bytes from OOB buffer, correct
+ *                                      and report any bitflip/error
+ *   - external + prepare + ecc + write: calculate ECC bytes and store them at
+ *                                       the right place in the OOB buffer based
+ *                                       on the OOB layout
+ *   - external + finish  + ecc + write: do nothing
+ *
+ * [pipelined ECC engine]
+ *   - pipelined + prepare + raw + read: disable the controller's ECC engine if
+ *                                       activated
+ *   - pipelined + finish  + raw + read: do nothing
+ *   - pipelined + prepare + raw + write: disable the controller's ECC engine if
+ *                                        activated
+ *   - pipelined + finish  + raw + write: do nothing
+ *   - pipelined + prepare + ecc + read: enable the controller's ECC engine if
+ *                                       deactivated
+ *   - pipelined + finish  + ecc + read: check the status, report any
+ *                                       error/bitflip
+ *   - pipelined + prepare + ecc + write: enable the controller's ECC engine if
+ *                                        deactivated
+ *   - pipelined + finish  + ecc + write: do nothing
+ *
+ * [ondie ECC engine]
+ *   - ondie + prepare + raw + read: send commands to disable the on-chip ECC
+ *                                   engine if activated
+ *   - ondie + finish  + raw + read: do nothing
+ *   - ondie + prepare + raw + write: send commands to disable the on-chip ECC
+ *                                    engine if activated
+ *   - ondie + finish  + raw + write: do nothing
+ *   - ondie + prepare + ecc + read: send commands to enable the on-chip ECC
+ *                                   engine if deactivated
+ *   - ondie + finish  + ecc + read: send commands to check the status, report
+ *                                   any error/bitflip
+ *   - ondie + prepare + ecc + write: send commands to enable the on-chip ECC
+ *                                    engine if deactivated
+ *   - ondie + finish  + ecc + write: do nothing
+ */
+
+#include <common.h>
+#include <linux/mtd/nand.h>
+#include <linux/slab.h>
+#include <linux/mutex.h>
+
+static LIST_HEAD(on_host_hw_engines);
+static DEFINE_MUTEX(on_host_hw_engines_mutex);
+
+/**
+ * nand_ecc_init_ctx - Init the ECC engine context
+ * @nand: the NAND device
+ *
+ * On success, the caller is responsible of calling @nand_ecc_cleanup_ctx().
+ */
+int nand_ecc_init_ctx(struct nand_device *nand)
+{
+	if (!nand->ecc.engine || !nand->ecc.engine->ops->init_ctx)
+		return 0;
+
+	return nand->ecc.engine->ops->init_ctx(nand);
+}
+EXPORT_SYMBOL(nand_ecc_init_ctx);
+
+/**
+ * nand_ecc_cleanup_ctx - Cleanup the ECC engine context
+ * @nand: the NAND device
+ */
+void nand_ecc_cleanup_ctx(struct nand_device *nand)
+{
+	if (nand->ecc.engine && nand->ecc.engine->ops->cleanup_ctx)
+		nand->ecc.engine->ops->cleanup_ctx(nand);
+}
+EXPORT_SYMBOL(nand_ecc_cleanup_ctx);
+
+/**
+ * nand_ecc_prepare_io_req - Prepare an I/O request
+ * @nand: the NAND device
+ * @req: the I/O request
+ */
+int nand_ecc_prepare_io_req(struct nand_device *nand,
+			    struct nand_page_io_req *req)
+{
+	if (!nand->ecc.engine || !nand->ecc.engine->ops->prepare_io_req)
+		return 0;
+
+	return nand->ecc.engine->ops->prepare_io_req(nand, req);
+}
+EXPORT_SYMBOL(nand_ecc_prepare_io_req);
+
+/**
+ * nand_ecc_finish_io_req - Finish an I/O request
+ * @nand: the NAND device
+ * @req: the I/O request
+ */
+int nand_ecc_finish_io_req(struct nand_device *nand,
+			   struct nand_page_io_req *req)
+{
+	if (!nand->ecc.engine || !nand->ecc.engine->ops->finish_io_req)
+		return 0;
+
+	return nand->ecc.engine->ops->finish_io_req(nand, req);
+}
+EXPORT_SYMBOL(nand_ecc_finish_io_req);
+
+/* Define default OOB placement schemes for large and small page devices */
+static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section > 1)
+		return -ERANGE;
+
+	if (!section) {
+		oobregion->offset = 0;
+		if (mtd->oobsize == 16)
+			oobregion->length = 4;
+		else
+			oobregion->length = 3;
+	} else {
+		if (mtd->oobsize == 8)
+			return -ERANGE;
+
+		oobregion->offset = 6;
+		oobregion->length = total_ecc_bytes - 4;
+	}
+
+	return 0;
+}
+
+static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	if (section > 1)
+		return -ERANGE;
+
+	if (mtd->oobsize == 16) {
+		if (section)
+			return -ERANGE;
+
+		oobregion->length = 8;
+		oobregion->offset = 8;
+	} else {
+		oobregion->length = 2;
+		if (!section)
+			oobregion->offset = 3;
+		else
+			oobregion->offset = 6;
+	}
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
+	.ecc = nand_ooblayout_ecc_sp,
+	.free = nand_ooblayout_free_sp,
+};
+
+const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void)
+{
+	return &nand_ooblayout_sp_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_small_page_ooblayout);
+
+static int nand_ooblayout_ecc_lp(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section || !total_ecc_bytes)
+		return -ERANGE;
+
+	oobregion->length = total_ecc_bytes;
+	oobregion->offset = mtd->oobsize - oobregion->length;
+
+	return 0;
+}
+
+static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section)
+		return -ERANGE;
+
+	oobregion->length = mtd->oobsize - total_ecc_bytes - 2;
+	oobregion->offset = 2;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
+	.ecc = nand_ooblayout_ecc_lp,
+	.free = nand_ooblayout_free_lp,
+};
+
+const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void)
+{
+	return &nand_ooblayout_lp_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_large_page_ooblayout);
+
+/*
+ * Support the old "large page" layout used for 1-bit Hamming ECC where ECC
+ * are placed at a fixed offset.
+ */
+static int nand_ooblayout_ecc_lp_hamming(struct mtd_info *mtd, int section,
+					 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section)
+		return -ERANGE;
+
+	switch (mtd->oobsize) {
+	case 64:
+		oobregion->offset = 40;
+		break;
+	case 128:
+		oobregion->offset = 80;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	oobregion->length = total_ecc_bytes;
+	if (oobregion->offset + oobregion->length > mtd->oobsize)
+		return -ERANGE;
+
+	return 0;
+}
+
+static int nand_ooblayout_free_lp_hamming(struct mtd_info *mtd, int section,
+					  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+	int ecc_offset = 0;
+
+	if (section < 0 || section > 1)
+		return -ERANGE;
+
+	switch (mtd->oobsize) {
+	case 64:
+		ecc_offset = 40;
+		break;
+	case 128:
+		ecc_offset = 80;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (section == 0) {
+		oobregion->offset = 2;
+		oobregion->length = ecc_offset - 2;
+	} else {
+		oobregion->offset = ecc_offset + total_ecc_bytes;
+		oobregion->length = mtd->oobsize - oobregion->offset;
+	}
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
+	.ecc = nand_ooblayout_ecc_lp_hamming,
+	.free = nand_ooblayout_free_lp_hamming,
+};
+
+const struct mtd_ooblayout_ops *nand_get_large_page_hamming_ooblayout(void)
+{
+	return &nand_ooblayout_lp_hamming_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_large_page_hamming_ooblayout);
+
+static enum nand_ecc_engine_type
+of_get_nand_ecc_engine_type(struct device_node *np)
+{
+	struct device_node *eng_np;
+
+	if (of_property_read_bool(np, "nand-no-ecc-engine"))
+		return NAND_ECC_ENGINE_TYPE_NONE;
+
+	if (of_property_read_bool(np, "nand-use-soft-ecc-engine"))
+		return NAND_ECC_ENGINE_TYPE_SOFT;
+
+	eng_np = of_parse_phandle(np, "nand-ecc-engine", 0);
+	of_node_put(eng_np);
+
+	if (eng_np) {
+		if (eng_np == np)
+			return NAND_ECC_ENGINE_TYPE_ON_DIE;
+		else
+			return NAND_ECC_ENGINE_TYPE_ON_HOST;
+	}
+
+	return NAND_ECC_ENGINE_TYPE_INVALID;
+}
+
+static const char * const nand_ecc_placement[] = {
+	[NAND_ECC_PLACEMENT_OOB] = "oob",
+	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
+};
+
+static enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
+{
+	enum nand_ecc_placement placement;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-placement", &pm);
+	if (!err) {
+		for (placement = NAND_ECC_PLACEMENT_OOB;
+		     placement < ARRAY_SIZE(nand_ecc_placement); placement++) {
+			if (!strcasecmp(pm, nand_ecc_placement[placement]))
+				return placement;
+		}
+	}
+
+	return NAND_ECC_PLACEMENT_UNKNOWN;
+}
+
+static const char * const nand_ecc_algos[] = {
+	[NAND_ECC_ALGO_HAMMING] = "hamming",
+	[NAND_ECC_ALGO_BCH] = "bch",
+	[NAND_ECC_ALGO_RS] = "rs",
+};
+
+static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
+{
+	enum nand_ecc_algo ecc_algo;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-algo", &pm);
+	if (!err) {
+		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
+		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
+		     ecc_algo++) {
+			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
+				return ecc_algo;
+		}
+	}
+
+	return NAND_ECC_ALGO_UNKNOWN;
+}
+
+static int of_get_nand_ecc_step_size(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-step-size", &val);
+	return ret ? ret : val;
+}
+
+static int of_get_nand_ecc_strength(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-strength", &val);
+	return ret ? ret : val;
+}
+
+void of_get_nand_ecc_user_config(struct nand_device *nand)
+{
+	struct device_node *dn = nanddev_get_of_node(nand);
+	int strength, size;
+
+	nand->ecc.user_conf.engine_type = of_get_nand_ecc_engine_type(dn);
+	nand->ecc.user_conf.algo = of_get_nand_ecc_algo(dn);
+	nand->ecc.user_conf.placement = of_get_nand_ecc_placement(dn);
+
+	strength = of_get_nand_ecc_strength(dn);
+	if (strength >= 0)
+		nand->ecc.user_conf.strength = strength;
+
+	size = of_get_nand_ecc_step_size(dn);
+	if (size >= 0)
+		nand->ecc.user_conf.step_size = size;
+
+	if (of_property_read_bool(dn, "nand-ecc-maximize"))
+		nand->ecc.user_conf.flags |= NAND_ECC_MAXIMIZE_STRENGTH;
+}
+EXPORT_SYMBOL(of_get_nand_ecc_user_config);
+
+/**
+ * nand_ecc_is_strong_enough - Check if the chip configuration meets the
+ *                             datasheet requirements.
+ *
+ * @nand: Device to check
+ *
+ * If our configuration corrects A bits per B bytes and the minimum
+ * required correction level is X bits per Y bytes, then we must ensure
+ * both of the following are true:
+ *
+ * (1) A / B >= X / Y
+ * (2) A >= X
+ *
+ * Requirement (1) ensures we can correct for the required bitflip density.
+ * Requirement (2) ensures we can correct even when all bitflips are clumped
+ * in the same sector.
+ */
+bool nand_ecc_is_strong_enough(struct nand_device *nand)
+{
+	const struct nand_ecc_props *reqs = nanddev_get_ecc_requirements(nand);
+	const struct nand_ecc_props *conf = nanddev_get_ecc_conf(nand);
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int corr, ds_corr;
+
+	if (conf->step_size == 0 || reqs->step_size == 0)
+		/* Not enough information */
+		return true;
+
+	/*
+	 * We get the number of corrected bits per page to compare
+	 * the correction density.
+	 */
+	corr = (mtd->writesize * conf->strength) / conf->step_size;
+	ds_corr = (mtd->writesize * reqs->strength) / reqs->step_size;
+
+	return corr >= ds_corr && conf->strength >= reqs->strength;
+}
+EXPORT_SYMBOL(nand_ecc_is_strong_enough);
+
+/* ECC engine driver internal helpers */
+int nand_ecc_init_req_tweaking(struct nand_ecc_req_tweak_ctx *ctx,
+			       struct nand_device *nand)
+{
+	unsigned int total_buffer_size;
+
+	ctx->nand = nand;
+
+	/* Let the user decide the exact length of each buffer */
+	if (!ctx->page_buffer_size)
+		ctx->page_buffer_size = nanddev_page_size(nand);
+	if (!ctx->oob_buffer_size)
+		ctx->oob_buffer_size = nanddev_per_page_oobsize(nand);
+
+	total_buffer_size = ctx->page_buffer_size + ctx->oob_buffer_size;
+
+	ctx->spare_databuf = kzalloc(total_buffer_size, GFP_KERNEL);
+	if (!ctx->spare_databuf)
+		return -ENOMEM;
+
+	ctx->spare_oobbuf = ctx->spare_databuf + ctx->page_buffer_size;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nand_ecc_init_req_tweaking);
+
+void nand_ecc_cleanup_req_tweaking(struct nand_ecc_req_tweak_ctx *ctx)
+{
+	kfree(ctx->spare_databuf);
+}
+EXPORT_SYMBOL_GPL(nand_ecc_cleanup_req_tweaking);
+
+/*
+ * Ensure data and OOB area is fully read/written otherwise the correction might
+ * not work as expected.
+ */
+void nand_ecc_tweak_req(struct nand_ecc_req_tweak_ctx *ctx,
+			struct nand_page_io_req *req)
+{
+	struct nand_device *nand = ctx->nand;
+	struct nand_page_io_req *orig, *tweak;
+
+	/* Save the original request */
+	ctx->orig_req = *req;
+	ctx->bounce_data = false;
+	ctx->bounce_oob = false;
+	orig = &ctx->orig_req;
+	tweak = req;
+
+	/* Ensure the request covers the entire page */
+	if (orig->datalen < nanddev_page_size(nand)) {
+		ctx->bounce_data = true;
+		tweak->dataoffs = 0;
+		tweak->datalen = nanddev_page_size(nand);
+		tweak->databuf.in = ctx->spare_databuf;
+		memset(tweak->databuf.in, 0xFF, ctx->page_buffer_size);
+	}
+
+	if (orig->ooblen < nanddev_per_page_oobsize(nand)) {
+		ctx->bounce_oob = true;
+		tweak->ooboffs = 0;
+		tweak->ooblen = nanddev_per_page_oobsize(nand);
+		tweak->oobbuf.in = ctx->spare_oobbuf;
+		memset(tweak->oobbuf.in, 0xFF, ctx->oob_buffer_size);
+	}
+
+	/* Copy the data that must be writen in the bounce buffers, if needed */
+	if (orig->type == NAND_PAGE_WRITE) {
+		if (ctx->bounce_data)
+			memcpy((void *)tweak->databuf.out + orig->dataoffs,
+			       orig->databuf.out, orig->datalen);
+
+		if (ctx->bounce_oob)
+			memcpy((void *)tweak->oobbuf.out + orig->ooboffs,
+			       orig->oobbuf.out, orig->ooblen);
+	}
+}
+EXPORT_SYMBOL_GPL(nand_ecc_tweak_req);
+
+void nand_ecc_restore_req(struct nand_ecc_req_tweak_ctx *ctx,
+			  struct nand_page_io_req *req)
+{
+	struct nand_page_io_req *orig, *tweak;
+
+	orig = &ctx->orig_req;
+	tweak = req;
+
+	/* Restore the data read from the bounce buffers, if needed */
+	if (orig->type == NAND_PAGE_READ) {
+		if (ctx->bounce_data)
+			memcpy(orig->databuf.in,
+			       tweak->databuf.in + orig->dataoffs,
+			       orig->datalen);
+
+		if (ctx->bounce_oob)
+			memcpy(orig->oobbuf.in,
+			       tweak->oobbuf.in + orig->ooboffs,
+			       orig->ooblen);
+	}
+
+	/* Ensure the original request is restored */
+	*req = *orig;
+}
+EXPORT_SYMBOL_GPL(nand_ecc_restore_req);
+
+struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand)
+{
+	unsigned int algo = nand->ecc.user_conf.algo;
+
+	if (algo == NAND_ECC_ALGO_UNKNOWN)
+		algo = nand->ecc.defaults.algo;
+
+	switch (algo) {
+	case NAND_ECC_ALGO_HAMMING:
+		return nand_ecc_sw_hamming_get_engine();
+	case NAND_ECC_ALGO_BCH:
+		return nand_ecc_sw_bch_get_engine();
+	default:
+		break;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(nand_ecc_get_sw_engine);
+
+struct nand_ecc_engine *nand_ecc_get_on_die_hw_engine(struct nand_device *nand)
+{
+	return nand->ecc.ondie_engine;
+}
+EXPORT_SYMBOL(nand_ecc_get_on_die_hw_engine);
+
+int nand_ecc_register_on_host_hw_engine(struct nand_ecc_engine *engine)
+{
+	struct nand_ecc_engine *item;
+
+	if (!engine)
+		return -EINVAL;
+
+	/* Prevent multiple registrations of one engine */
+	list_for_each_entry(item, &on_host_hw_engines, node)
+		if (item == engine)
+			return 0;
+
+	mutex_lock(&on_host_hw_engines_mutex);
+	list_add_tail(&engine->node, &on_host_hw_engines);
+	mutex_unlock(&on_host_hw_engines_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_register_on_host_hw_engine);
+
+int nand_ecc_unregister_on_host_hw_engine(struct nand_ecc_engine *engine)
+{
+	if (!engine)
+		return -EINVAL;
+
+	mutex_lock(&on_host_hw_engines_mutex);
+	list_del(&engine->node);
+	mutex_unlock(&on_host_hw_engines_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_unregister_on_host_hw_engine);
+
+static struct nand_ecc_engine *nand_ecc_match_on_host_hw_engine(struct device *dev)
+{
+	struct nand_ecc_engine *item;
+
+	list_for_each_entry(item, &on_host_hw_engines, node)
+		if (item->dev == dev)
+			return item;
+
+	return NULL;
+}
+
+struct nand_ecc_engine *nand_ecc_get_on_host_hw_engine(struct nand_device *nand)
+{
+	struct nand_ecc_engine *engine = NULL;
+	struct device *dev = &nand->mtd.dev;
+	struct device *pdev;
+	struct device_node *np;
+
+	if (list_empty(&on_host_hw_engines))
+		return NULL;
+
+	/* Check for an explicit nand-ecc-engine property */
+	np = of_parse_phandle(dev->of_node, "nand-ecc-engine", 0);
+	if (np) {
+		pdev = of_find_device_by_node(np);
+		if (!pdev)
+			return ERR_PTR(-EPROBE_DEFER);
+
+		engine = nand_ecc_match_on_host_hw_engine(pdev);
+
+		if (!engine)
+			return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	return engine;
+}
+EXPORT_SYMBOL(nand_ecc_get_on_host_hw_engine);
+
+void nand_ecc_put_on_host_hw_engine(struct nand_device *nand)
+{
+	put_device(nand->ecc.engine->dev);
+}
+EXPORT_SYMBOL(nand_ecc_put_on_host_hw_engine);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
+MODULE_DESCRIPTION("Generic ECC engine");
diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index b979bc5bd0..5bc13c40d8 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -15,12 +15,6 @@ config MTD_NAND_ECC_SOFT
 	bool
 	prompt "Support software ecc"
 
-config MTD_NAND_ECC_SW_BCH
-	select BCH
-	depends on MTD_NAND_ECC_SOFT
-	bool
-	prompt "Support software BCH ecc"
-
 config NAND_ECC_HW_SYNDROME
 	bool
 	prompt "Support syndrome hardware ecc controllers"
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 5f45cd91e6..f0e8834e25 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -1,7 +1,6 @@
 # Generic NAND options
 
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand_ecc.o
-obj-$(CONFIG_MTD_NAND_ECC_SW_BCH)	+= nand_bch.o
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand_ids.o
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand_base.o  nand_timings.o
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand_legacy.o nand_onfi.o nand_amd.o
diff --git a/drivers/mtd/nand/raw/atmel/legacy.c b/drivers/mtd/nand/raw/atmel/legacy.c
index cee9e49be0..5e2fd540ea 100644
--- a/drivers/mtd/nand/raw/atmel/legacy.c
+++ b/drivers/mtd/nand/raw/atmel/legacy.c
@@ -919,7 +919,8 @@ static int __init atmel_pmecc_nand_init_params(struct device *dev,
 	default:
 		/* page size not handled by HW ECC */
 		/* switching back to soft ECC */
-		nand_chip->ecc.mode = NAND_ECC_SOFT;
+		nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+		nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		return 0;
 	}
 
@@ -1235,7 +1236,7 @@ static int atmel_hw_nand_init_params(struct device *dev,
 	default:
 		/* page size not handled by HW ECC */
 		/* switching back to soft ECC */
-		nand_chip->ecc.mode = NAND_ECC_SOFT;
+		nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		return 0;
 	}
 
@@ -1334,12 +1335,14 @@ static int __init atmel_nand_probe(struct device *dev)
 		}
 	}
 
-	nand_chip->ecc.mode = pdata->ecc_mode;
 	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
 	nand_chip->ecc.size = 1 << (pdata->ecc_size_shift ? : 9);
 
 	if (pdata->ecc_mode == NAND_ECC_SOFT) {
+		nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
+	} else {
+		nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	}
 
 	nand_chip->legacy.chip_delay = 40;		/* 40us command delay time */
@@ -1392,7 +1395,7 @@ static int __init atmel_nand_probe(struct device *dev)
 
 	host->ecc_code = xmalloc(mtd->oobsize);
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW) {
+	if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC) && pdata->has_pmecc)
 			res = atmel_pmecc_nand_init_params(dev, host);
 		else
diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index e6b2282f2c..6dab25ecab 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -90,9 +90,14 @@ void onfi_fill_interface_config(struct nand_chip *chip,
 				unsigned int timing_mode);
 unsigned int
 onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
+unsigned int
+onfi_find_closest_nvddr_mode(const struct nand_nvddr_timings *spec_timings);
 int nand_choose_best_sdr_timings(struct nand_chip *chip,
 				 struct nand_interface_config *iface,
 				 struct nand_sdr_timings *spec_timings);
+int nand_choose_best_nvddr_timings(struct nand_chip *chip,
+				   struct nand_interface_config *iface,
+				   struct nand_nvddr_timings *spec_timings);
 const struct nand_interface_config *nand_get_reset_interface_config(void);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 439c3f72d2..810b58a0c0 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -39,179 +39,12 @@
 #include <linux/gpio/consumer.h>
 #include <module.h>
 #include <of_mtd.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
+#include <linux/mtd/nand-ecc-sw-hamming.h>
+#include <linux/sizes.h>
 
 #include "internals.h"
 
-/* Define default oob placement schemes for large and small page devices */
-static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
-				 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section > 1)
-		return -ERANGE;
-
-	if (!section) {
-		oobregion->offset = 0;
-		if (mtd->oobsize == 16)
-			oobregion->length = 4;
-		else
-			oobregion->length = 3;
-	} else {
-		if (mtd->oobsize == 8)
-			return -ERANGE;
-
-		oobregion->offset = 6;
-		oobregion->length = ecc->total - 4;
-	}
-
-	return 0;
-}
-
-static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
-				  struct mtd_oob_region *oobregion)
-{
-	if (section > 1)
-		return -ERANGE;
-
-	if (mtd->oobsize == 16) {
-		if (section)
-			return -ERANGE;
-
-		oobregion->length = 8;
-		oobregion->offset = 8;
-	} else {
-		oobregion->length = 2;
-		if (!section)
-			oobregion->offset = 3;
-		else
-			oobregion->offset = 6;
-	}
-
-	return 0;
-}
-
-static const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
-	.ecc = nand_ooblayout_ecc_sp,
-	.free = nand_ooblayout_free_sp,
-};
-
-const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void)
-{
-	return &nand_ooblayout_sp_ops;
-}
-EXPORT_SYMBOL_GPL(nand_get_small_page_ooblayout);
-
-static int nand_ooblayout_ecc_lp(struct mtd_info *mtd, int section,
-				 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section || !ecc->total)
-		return -ERANGE;
-
-	oobregion->length = ecc->total;
-	oobregion->offset = mtd->oobsize - oobregion->length;
-
-	return 0;
-}
-
-static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
-				  struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section)
-		return -ERANGE;
-
-	oobregion->length = mtd->oobsize - ecc->total - 2;
-	oobregion->offset = 2;
-
-	return 0;
-}
-
-static const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
-	.ecc = nand_ooblayout_ecc_lp,
-	.free = nand_ooblayout_free_lp,
-};
-
-const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void)
-{
-	return &nand_ooblayout_lp_ops;
-}
-EXPORT_SYMBOL_GPL(nand_get_large_page_ooblayout);
-
-/*
- * Support the old "large page" layout used for 1-bit Hamming ECC where ECC
- * are placed at a fixed offset.
- */
-static int nand_ooblayout_ecc_lp_hamming(struct mtd_info *mtd, int section,
-					 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section)
-		return -ERANGE;
-
-	switch (mtd->oobsize) {
-	case 64:
-		oobregion->offset = 40;
-		break;
-	case 128:
-		oobregion->offset = 80;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	oobregion->length = ecc->total;
-	if (oobregion->offset + oobregion->length > mtd->oobsize)
-		return -ERANGE;
-
-	return 0;
-}
-
-static int nand_ooblayout_free_lp_hamming(struct mtd_info *mtd, int section,
-					  struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-	int ecc_offset = 0;
-
-	if (section < 0 || section > 1)
-		return -ERANGE;
-
-	switch (mtd->oobsize) {
-	case 64:
-		ecc_offset = 40;
-		break;
-	case 128:
-		ecc_offset = 80;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	if (section == 0) {
-		oobregion->offset = 2;
-		oobregion->length = ecc_offset - 2;
-	} else {
-		oobregion->offset = ecc_offset + ecc->total;
-		oobregion->length = mtd->oobsize - oobregion->offset;
-	}
-
-	return 0;
-}
-
-static const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
-	.ecc = nand_ooblayout_ecc_lp_hamming,
-	.free = nand_ooblayout_free_lp_hamming,
-};
-
 static int check_offs_len(struct nand_chip *chip, loff_t ofs, uint64_t len)
 {
 	int ret = 0;
@@ -410,19 +243,9 @@ static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
  * @chip: NAND chip structure
  *
  * Lock the device and its controller for exclusive access
- *
- * Return: -EBUSY if the chip has been suspended, 0 otherwise
  */
-static int nand_get_device(struct nand_chip *chip)
+static void nand_get_device(struct nand_chip *chip)
 {
-	mutex_lock(&chip->lock);
-	if (chip->suspended) {
-		mutex_unlock(&chip->lock);
-		return -EBUSY;
-	}
-	mutex_lock(&chip->controller->lock);
-
-	return 0;
 }
 
 /**
@@ -441,6 +264,10 @@ static int nand_check_wp(struct nand_chip *chip)
 	if (chip->options & NAND_BROKEN_XD)
 		return 0;
 
+	/* controller responsible for NAND write protect */
+	if (chip->controller->controller_wp)
+		return 0;
+
 	/* Check the WP bit */
 	ret = nand_status_op(chip, &status);
 	if (ret)
@@ -647,9 +474,7 @@ static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
 		nand_erase_nand(chip, &einfo, 0);
 
 		/* Write bad block marker to OOB */
-		ret = nand_get_device(chip);
-		if (ret)
-			return ret;
+		nand_get_device(chip);
 
 		ret = nand_markbad_bbm(chip, ofs);
 		nand_release_device(chip);
@@ -669,46 +494,20 @@ static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
 }
 
 /**
- * nand_block_markgood_lowlevel - mark a block good
+ * nand_block_isreserved - [GENERIC] Check if a block is marked reserved.
  * @mtd: MTD device structure
  * @ofs: offset from device start
  *
- * We try operations in the following order:
- *  (1) erase the affected block
- *  (2) check bad block marker
- *  (3) update the BBT
+ * Check if the block is marked as reserved.
  */
-static int nand_block_markgood_lowlevel(struct nand_chip *chip, loff_t ofs)
+static int nand_block_isreserved(struct mtd_info *mtd, loff_t ofs)
 {
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	bool allow_erasebad;
-	int ret;
-
-	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
-		struct erase_info einfo;
-
-		/* Attempt erase possibly bad block */
-		allow_erasebad = mtd->allow_erasebad;
-		mtd->allow_erasebad = true;
-		memset(&einfo, 0, sizeof(einfo));
-		einfo.mtd = mtd;
-		einfo.addr = ofs;
-		einfo.len = 1 << chip->phys_erase_shift;
-		nand_erase_nand(chip, &einfo, 0);
-		mtd->allow_erasebad = allow_erasebad;
-	}
-
-	/* Mark block good in BBT */
-	if (chip->bbt) {
-		ret = nand_markgood_bbt(chip, ofs);
-		if (ret)
-			return ret;
-	}
-
-	if (mtd->ecc_stats.badblocks > 0)
-		mtd->ecc_stats.badblocks--;
+	struct nand_chip *chip = mtd_to_nand(mtd);
 
-	return 0;
+	if (!chip->bbt)
+		return 0;
+	/* Return info from the table */
+	return nand_isreserved_bbt(chip, ofs);
 }
 
 /**
@@ -748,7 +547,7 @@ static int nand_block_checkbad(struct nand_chip *chip, loff_t ofs, int allowbbt)
  */
 int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 {
-	const struct nand_sdr_timings *timings;
+	const struct nand_interface_config *conf;
 	u8 status = 0;
 	int ret;
 	uint64_t start;
@@ -757,13 +556,18 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 		return -ENOTSUPP;
 
 	/* Wait tWB before polling the STATUS reg. */
-	timings = nand_get_sdr_timings(nand_get_interface_config(chip));
-	ndelay(PSEC_TO_NSEC(timings->tWB_max));
+	conf = nand_get_interface_config(chip);
+	ndelay(NAND_COMMON_TIMING_NS(conf, tWB_max));
 
 	ret = nand_status_op(chip, NULL);
 	if (ret)
 		return ret;
 
+	/*
+	 * +1 below is necessary because if we are now in the last fraction
+	 * of jiffy and msecs_to_jiffies is 1 then we will wait only that
+	 * small jiffy fraction - possibly leading to false timeout
+	 */
 	start = get_time_ns();
 	do {
 		ret = nand_read_data_op(chip, &status, sizeof(status), true,
@@ -780,7 +584,7 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 		 * deriving a delay from the timeout value, timeout_ms/ratio).
 		 */
 		udelay(10);
-	} while	(!is_timeout(start, timeout_ms * MSECOND));
+	} while (!is_timeout(start, timeout_ms * MSECOND));
 
 	/*
 	 * We have to exit READ_STATUS mode in order to read real data on the
@@ -810,13 +614,45 @@ EXPORT_SYMBOL_GPL(nand_soft_waitrdy);
  *
  * Return 0 if the R/B pin indicates chip is ready, a negative error otherwise.
  */
-int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpio,
+int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpiod,
 		      unsigned long timeout_ms)
 {
-	return gpiod_poll_timeout_us(gpio, true, timeout_ms * USEC_PER_MSEC);
+	return gpiod_poll_timeout_us(gpiod, true, timeout_ms * USEC_PER_MSEC);
 };
 EXPORT_SYMBOL_GPL(nand_gpio_waitrdy);
 
+/**
+ * panic_nand_wait - [GENERIC] wait until the command is done
+ * @chip: NAND chip structure
+ * @timeo: timeout
+ *
+ * Wait for command done. This is a helper function for nand_wait used when
+ * we are in interrupt context. May happen when in panic and trying to write
+ * an oops through mtdoops.
+ */
+void panic_nand_wait(struct nand_chip *chip, unsigned long timeo)
+{
+	int i;
+	for (i = 0; i < timeo; i++) {
+		if (chip->legacy.dev_ready) {
+			if (chip->legacy.dev_ready(chip))
+				break;
+		} else {
+			int ret;
+			u8 status;
+
+			ret = nand_read_data_op(chip, &status, sizeof(status),
+						true, false);
+			if (ret)
+				return;
+
+			if (status & NAND_STATUS_READY)
+				break;
+		}
+		mdelay(1);
+	}
+}
+
 static bool nand_supports_get_features(struct nand_chip *chip, int addr)
 {
 	return (chip->parameters.supports_set_get_features &&
@@ -882,7 +718,7 @@ static int nand_reset_interface(struct nand_chip *chip, int chipnr)
 static int nand_setup_interface(struct nand_chip *chip, int chipnr)
 {
 	const struct nand_controller_ops *ops = chip->controller->ops;
-	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { };
+	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { }, request;
 	int ret;
 
 	if (!nand_controller_can_setup_interface(chip))
@@ -898,7 +734,12 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
 	if (!chip->best_interface_config)
 		return 0;
 
-	tmode_param[0] = chip->best_interface_config->timings.mode;
+	request = chip->best_interface_config->timings.mode;
+	if (nand_interface_is_sdr(chip->best_interface_config))
+		request |= ONFI_DATA_INTERFACE_SDR;
+	else
+		request |= ONFI_DATA_INTERFACE_NVDDR;
+	tmode_param[0] = request;
 
 	/* Change the mode on the chip side (if supported by the NAND chip) */
 	if (nand_supports_set_features(chip, ONFI_FEATURE_ADDR_TIMING_MODE)) {
@@ -927,9 +768,13 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
 	if (ret)
 		goto err_reset_chip;
 
-	if (tmode_param[0] != chip->best_interface_config->timings.mode) {
-		pr_warn("timing mode %d not acknowledged by the NAND chip\n",
+	if (request != tmode_param[0]) {
+		pr_warn("%s timing mode %d not acknowledged by the NAND chip\n",
+			nand_interface_is_nvddr(chip->best_interface_config) ? "NV-DDR" : "SDR",
 			chip->best_interface_config->timings.mode);
+		pr_debug("NAND chip would work in %s timing mode %d\n",
+			 tmode_param[0] & ONFI_DATA_INTERFACE_NVDDR ? "NV-DDR" : "SDR",
+			 (unsigned int)ONFI_TIMING_MODE_PARAM(tmode_param[0]));
 		goto err_reset_chip;
 	}
 
@@ -966,7 +811,7 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 				 struct nand_sdr_timings *spec_timings)
 {
 	const struct nand_controller_ops *ops = chip->controller->ops;
-	int best_mode = 0, mode, ret;
+	int best_mode = 0, mode, ret = -EOPNOTSUPP;
 
 	iface->type = NAND_SDR_IFACE;
 
@@ -985,7 +830,7 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 		/* Fallback to slower modes */
 		best_mode = iface->timings.mode;
 	} else if (chip->parameters.onfi) {
-		best_mode = fls(chip->parameters.onfi->async_timing_mode) - 1;
+		best_mode = fls(chip->parameters.onfi->sdr_timing_modes) - 1;
 	}
 
 	for (mode = best_mode; mode >= 0; mode--) {
@@ -993,13 +838,87 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 
 		ret = ops->setup_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
 					   iface);
-		if (!ret)
+		if (!ret) {
+			chip->best_interface_config = iface;
 			break;
+		}
 	}
 
-	chip->best_interface_config = iface;
+	return ret;
+}
 
-	return 0;
+/**
+ * nand_choose_best_nvddr_timings - Pick up the best NVDDR timings that both the
+ *                                  NAND controller and the NAND chip support
+ * @chip: the NAND chip
+ * @iface: the interface configuration (can eventually be updated)
+ * @spec_timings: specific timings, when not fitting the ONFI specification
+ *
+ * If specific timings are provided, use them. Otherwise, retrieve supported
+ * timing modes from ONFI information.
+ */
+int nand_choose_best_nvddr_timings(struct nand_chip *chip,
+				   struct nand_interface_config *iface,
+				   struct nand_nvddr_timings *spec_timings)
+{
+	const struct nand_controller_ops *ops = chip->controller->ops;
+	int best_mode = 0, mode, ret = -EOPNOTSUPP;
+
+	iface->type = NAND_NVDDR_IFACE;
+
+	if (spec_timings) {
+		iface->timings.nvddr = *spec_timings;
+		iface->timings.mode = onfi_find_closest_nvddr_mode(spec_timings);
+
+		/* Verify the controller supports the requested interface */
+		ret = ops->setup_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
+					   iface);
+		if (!ret) {
+			chip->best_interface_config = iface;
+			return ret;
+		}
+
+		/* Fallback to slower modes */
+		best_mode = iface->timings.mode;
+	} else if (chip->parameters.onfi) {
+		best_mode = fls(chip->parameters.onfi->nvddr_timing_modes) - 1;
+	}
+
+	for (mode = best_mode; mode >= 0; mode--) {
+		onfi_fill_interface_config(chip, iface, NAND_NVDDR_IFACE, mode);
+
+		ret = ops->setup_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
+					   iface);
+		if (!ret) {
+			chip->best_interface_config = iface;
+			break;
+		}
+	}
+
+	return ret;
+}
+
+/**
+ * nand_choose_best_timings - Pick up the best NVDDR or SDR timings that both
+ *                            NAND controller and the NAND chip support
+ * @chip: the NAND chip
+ * @iface: the interface configuration (can eventually be updated)
+ *
+ * If specific timings are provided, use them. Otherwise, retrieve supported
+ * timing modes from ONFI information.
+ */
+static int nand_choose_best_timings(struct nand_chip *chip,
+				    struct nand_interface_config *iface)
+{
+	int ret;
+
+	/* Try the fastest timings: NV-DDR */
+	ret = nand_choose_best_nvddr_timings(chip, iface, NULL);
+	if (!ret)
+		return 0;
+
+	/* Fallback to SDR timings otherwise */
+	return nand_choose_best_sdr_timings(chip, iface, NULL);
 }
 
 /**
@@ -1030,7 +949,7 @@ static int nand_choose_interface_config(struct nand_chip *chip)
 	if (chip->ops.choose_interface_config)
 		ret = chip->ops.choose_interface_config(chip, iface);
 	else
-		ret = nand_choose_best_sdr_timings(chip, iface, NULL);
+		ret = nand_choose_best_timings(chip, iface);
 
 	if (ret)
 		kfree(iface);
@@ -1096,15 +1015,15 @@ static int nand_sp_exec_read_page_op(struct nand_chip *chip, unsigned int page,
 				     unsigned int offset_in_page, void *buf,
 				     unsigned int len)
 {
-	const struct nand_sdr_timings *sdr =
-		nand_get_sdr_timings(nand_get_interface_config(chip));
+	const struct nand_interface_config *conf =
+		nand_get_interface_config(chip);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	u8 addrs[4];
 	struct nand_op_instr instrs[] = {
 		NAND_OP_CMD(NAND_CMD_READ0, 0),
-		NAND_OP_ADDR(3, addrs, PSEC_TO_NSEC(sdr->tWB_max)),
-		NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
-				 PSEC_TO_NSEC(sdr->tRR_min)),
+		NAND_OP_ADDR(3, addrs, NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max),
+				 NAND_COMMON_TIMING_NS(conf, tRR_min)),
 		NAND_OP_DATA_IN(len, buf, 0),
 	};
 	struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
@@ -1139,15 +1058,15 @@ static int nand_lp_exec_read_page_op(struct nand_chip *chip, unsigned int page,
 				     unsigned int offset_in_page, void *buf,
 				     unsigned int len)
 {
-	const struct nand_sdr_timings *sdr =
-		nand_get_sdr_timings(nand_get_interface_config(chip));
+	const struct nand_interface_config *conf =
+		nand_get_interface_config(chip);
 	u8 addrs[5];
 	struct nand_op_instr instrs[] = {
 		NAND_OP_CMD(NAND_CMD_READ0, 0),
 		NAND_OP_ADDR(4, addrs, 0),
-		NAND_OP_CMD(NAND_CMD_READSTART, PSEC_TO_NSEC(sdr->tWB_max)),
-		NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
-				 PSEC_TO_NSEC(sdr->tRR_min)),
+		NAND_OP_CMD(NAND_CMD_READSTART, NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max),
+				 NAND_COMMON_TIMING_NS(conf, tRR_min)),
 		NAND_OP_DATA_IN(len, buf, 0),
 	};
 	struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
@@ -1172,6 +1091,117 @@ static int nand_lp_exec_read_page_op(struct nand_chip *chip, unsigned int page,
 	return nand_exec_op(chip, &op);
 }
 
+static unsigned int rawnand_last_page_of_lun(unsigned int pages_per_lun, unsigned int lun)
+{
+	/* lun is expected to be very small */
+	return (lun * pages_per_lun) + pages_per_lun - 1;
+}
+
+static void rawnand_cap_cont_reads(struct nand_chip *chip)
+{
+	struct nand_memory_organization *memorg;
+	unsigned int ppl, first_lun, last_lun;
+
+	memorg = nanddev_get_memorg(&chip->base);
+	ppl = memorg->pages_per_eraseblock * memorg->eraseblocks_per_lun;
+	first_lun = chip->cont_read.first_page / ppl;
+	last_lun = chip->cont_read.last_page / ppl;
+
+	/* Prevent sequential cache reads across LUN boundaries */
+	if (first_lun != last_lun)
+		chip->cont_read.pause_page = rawnand_last_page_of_lun(ppl, first_lun);
+	else
+		chip->cont_read.pause_page = chip->cont_read.last_page;
+
+	if (chip->cont_read.first_page == chip->cont_read.pause_page) {
+		chip->cont_read.first_page++;
+		chip->cont_read.pause_page = min(chip->cont_read.last_page,
+						 rawnand_last_page_of_lun(ppl, first_lun + 1));
+	}
+
+	if (chip->cont_read.first_page >= chip->cont_read.last_page)
+		chip->cont_read.ongoing = false;
+}
+
+static int nand_lp_exec_cont_read_page_op(struct nand_chip *chip, unsigned int page,
+					  unsigned int offset_in_page, void *buf,
+					  unsigned int len, bool check_only)
+{
+	const struct nand_interface_config *conf =
+		nand_get_interface_config(chip);
+	u8 addrs[5];
+	struct nand_op_instr start_instrs[] = {
+		NAND_OP_CMD(NAND_CMD_READ0, 0),
+		NAND_OP_ADDR(4, addrs, 0),
+		NAND_OP_CMD(NAND_CMD_READSTART, NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max), 0),
+		NAND_OP_CMD(NAND_CMD_READCACHESEQ, NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max),
+				 NAND_COMMON_TIMING_NS(conf, tRR_min)),
+		NAND_OP_DATA_IN(len, buf, 0),
+	};
+	struct nand_op_instr cont_instrs[] = {
+		NAND_OP_CMD(page == chip->cont_read.pause_page ?
+			    NAND_CMD_READCACHEEND : NAND_CMD_READCACHESEQ,
+			    NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max),
+				 NAND_COMMON_TIMING_NS(conf, tRR_min)),
+		NAND_OP_DATA_IN(len, buf, 0),
+	};
+	struct nand_operation start_op = NAND_OPERATION(chip->cur_cs, start_instrs);
+	struct nand_operation cont_op = NAND_OPERATION(chip->cur_cs, cont_instrs);
+	int ret;
+
+	if (!len) {
+		start_op.ninstrs--;
+		cont_op.ninstrs--;
+	}
+
+	ret = nand_fill_column_cycles(chip, addrs, offset_in_page);
+	if (ret < 0)
+		return ret;
+
+	addrs[2] = page;
+	addrs[3] = page >> 8;
+
+	if (chip->options & NAND_ROW_ADDR_3) {
+		addrs[4] = page >> 16;
+		start_instrs[1].ctx.addr.naddrs++;
+	}
+
+	/* Check if cache reads are supported */
+	if (check_only) {
+		if (nand_check_op(chip, &start_op) || nand_check_op(chip, &cont_op))
+			return -EOPNOTSUPP;
+
+		return 0;
+	}
+
+	if (page == chip->cont_read.first_page)
+		ret = nand_exec_op(chip, &start_op);
+	else
+		ret = nand_exec_op(chip, &cont_op);
+	if (ret)
+		return ret;
+
+	if (!chip->cont_read.ongoing)
+		return 0;
+
+	if (page == chip->cont_read.last_page) {
+		chip->cont_read.ongoing = false;
+	} else if (page == chip->cont_read.pause_page) {
+		chip->cont_read.first_page++;
+		rawnand_cap_cont_reads(chip);
+	}
+
+	return 0;
+}
+
+static bool rawnand_cont_read_ongoing(struct nand_chip *chip, unsigned int page)
+{
+	return chip->cont_read.ongoing && page >= chip->cont_read.first_page;
+}
+
 /**
  * nand_read_page_op - Do a READ PAGE operation
  * @chip: The NAND chip
@@ -1197,10 +1227,16 @@ int nand_read_page_op(struct nand_chip *chip, unsigned int page,
 		return -EINVAL;
 
 	if (nand_has_exec_op(chip)) {
-		if (mtd->writesize > 512)
-			return nand_lp_exec_read_page_op(chip, page,
-							 offset_in_page, buf,
-							 len);
+		if (mtd->writesize > 512) {
+			if (rawnand_cont_read_ongoing(chip, page))
+				return nand_lp_exec_cont_read_page_op(chip, page,
+								      offset_in_page,
+								      buf, len, false);
+			else
+				return nand_lp_exec_read_page_op(chip, page,
+								 offset_in_page, buf,
+								 len);
+		}
 
 		return nand_sp_exec_read_page_op(chip, page, offset_in_page,
 						 buf, len);
@@ -1236,13 +1272,14 @@ int nand_read_param_page_op(struct nand_chip *chip, u8 page, void *buf,
 		return -EINVAL;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_PARAM, 0),
-			NAND_OP_ADDR(1, &page, PSEC_TO_NSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tR_max),
-					 PSEC_TO_NSEC(sdr->tRR_min)),
+			NAND_OP_ADDR(1, &page,
+				     NAND_COMMON_TIMING_NS(conf, tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tR_max),
+					 NAND_COMMON_TIMING_NS(conf, tRR_min)),
 			NAND_OP_8BIT_DATA_IN(len, buf, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
@@ -1291,14 +1328,14 @@ int nand_change_read_column_op(struct nand_chip *chip,
 		return -ENOTSUPP;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		u8 addrs[2] = {};
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_RNDOUT, 0),
 			NAND_OP_ADDR(2, addrs, 0),
 			NAND_OP_CMD(NAND_CMD_RNDOUTSTART,
-				    PSEC_TO_NSEC(sdr->tCCS_min)),
+				    NAND_COMMON_TIMING_NS(conf, tCCS_min)),
 			NAND_OP_DATA_IN(len, buf, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
@@ -1366,8 +1403,8 @@ static int nand_exec_prog_page_op(struct nand_chip *chip, unsigned int page,
 				  unsigned int offset_in_page, const void *buf,
 				  unsigned int len, bool prog)
 {
-	const struct nand_sdr_timings *sdr =
-		nand_get_sdr_timings(nand_get_interface_config(chip));
+	const struct nand_interface_config *conf =
+		nand_get_interface_config(chip);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	u8 addrs[5] = {};
 	struct nand_op_instr instrs[] = {
@@ -1378,15 +1415,15 @@ static int nand_exec_prog_page_op(struct nand_chip *chip, unsigned int page,
 		 */
 		NAND_OP_CMD(NAND_CMD_READ0, 0),
 		NAND_OP_CMD(NAND_CMD_SEQIN, 0),
-		NAND_OP_ADDR(0, addrs, PSEC_TO_NSEC(sdr->tADL_min)),
+		NAND_OP_ADDR(0, addrs, NAND_COMMON_TIMING_NS(conf, tADL_min)),
 		NAND_OP_DATA_OUT(len, buf, 0),
-		NAND_OP_CMD(NAND_CMD_PAGEPROG, PSEC_TO_NSEC(sdr->tWB_max)),
-		NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tPROG_max), 0),
+		NAND_OP_CMD(NAND_CMD_PAGEPROG,
+			    NAND_COMMON_TIMING_NS(conf, tWB_max)),
+		NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tPROG_max), 0),
 	};
-	struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+	struct nand_operation op = NAND_DESTRUCTIVE_OPERATION(chip->cur_cs,
+							      instrs);
 	int naddrs = nand_fill_column_cycles(chip, addrs, offset_in_page);
-	int ret;
-	u8 status;
 
 	if (naddrs < 0)
 		return naddrs;
@@ -1426,15 +1463,7 @@ static int nand_exec_prog_page_op(struct nand_chip *chip, unsigned int page,
 		op.ninstrs--;
 	}
 
-	ret = nand_exec_op(chip, &op);
-	if (!prog || ret)
-		return ret;
-
-	ret = nand_status_op(chip, &status);
-	if (ret)
-		return ret;
-
-	return status;
+	return nand_exec_op(chip, &op);
 }
 
 /**
@@ -1490,12 +1519,13 @@ int nand_prog_page_end_op(struct nand_chip *chip)
 	u8 status;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_PAGEPROG,
-				    PSEC_TO_NSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tPROG_max), 0),
+				    NAND_COMMON_TIMING_NS(conf, tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tPROG_max),
+					 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 
@@ -1540,7 +1570,8 @@ int nand_prog_page_op(struct nand_chip *chip, unsigned int page,
 		      unsigned int len)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
-	int status;
+	u8 status;
+	int ret;
 
 	if (!len || !buf)
 		return -EINVAL;
@@ -1549,14 +1580,24 @@ int nand_prog_page_op(struct nand_chip *chip, unsigned int page,
 		return -EINVAL;
 
 	if (nand_has_exec_op(chip)) {
-		status = nand_exec_prog_page_op(chip, page, offset_in_page, buf,
+		ret = nand_exec_prog_page_op(chip, page, offset_in_page, buf,
 						len, true);
+		if (ret)
+			return ret;
+
+		ret = nand_status_op(chip, &status);
+		if (ret)
+			return ret;
 	} else {
 		chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, offset_in_page,
 				     page);
 		chip->legacy.write_buf(chip, buf, len);
 		chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-		status = chip->legacy.waitfunc(chip);
+		ret = chip->legacy.waitfunc(chip);
+		if (ret < 0)
+			return ret;
+
+		status = ret;
 	}
 
 	if (status & NAND_STATUS_FAIL)
@@ -1597,12 +1638,12 @@ int nand_change_write_column_op(struct nand_chip *chip,
 		return -ENOTSUPP;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		u8 addrs[2];
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_RNDIN, 0),
-			NAND_OP_ADDR(2, addrs, PSEC_TO_NSEC(sdr->tCCS_min)),
+			NAND_OP_ADDR(2, addrs, NAND_COMMON_TIMING_NS(conf, tCCS_min)),
 			NAND_OP_DATA_OUT(len, buf, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
@@ -1646,26 +1687,46 @@ int nand_readid_op(struct nand_chip *chip, u8 addr, void *buf,
 		   unsigned int len)
 {
 	unsigned int i;
-	u8 *id = buf;
+	u8 *id = buf, *ddrbuf = NULL;
 
 	if (len && !buf)
 		return -EINVAL;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_READID, 0),
-			NAND_OP_ADDR(1, &addr, PSEC_TO_NSEC(sdr->tADL_min)),
+			NAND_OP_ADDR(1, &addr,
+				     NAND_COMMON_TIMING_NS(conf, tADL_min)),
 			NAND_OP_8BIT_DATA_IN(len, buf, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+		int ret;
+
+		/* READ_ID data bytes are received twice in NV-DDR mode */
+		if (len && nand_interface_is_nvddr(conf)) {
+			ddrbuf = kzalloc(len * 2, GFP_KERNEL);
+			if (!ddrbuf)
+				return -ENOMEM;
+
+			instrs[2].ctx.data.len *= 2;
+			instrs[2].ctx.data.buf.in = ddrbuf;
+		}
 
 		/* Drop the DATA_IN instruction if len is set to 0. */
 		if (!len)
 			op.ninstrs--;
 
-		return nand_exec_op(chip, &op);
+		ret = nand_exec_op(chip, &op);
+		if (!ret && len && nand_interface_is_nvddr(conf)) {
+			for (i = 0; i < len; i++)
+				id[i] = ddrbuf[i * 2];
+		}
+
+		kfree(ddrbuf);
+
+		return ret;
 	}
 
 	chip->legacy.cmdfunc(chip, NAND_CMD_READID, addr, -1);
@@ -1691,19 +1752,31 @@ EXPORT_SYMBOL_GPL(nand_readid_op);
 int nand_status_op(struct nand_chip *chip, u8 *status)
 {
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
+		u8 ddrstatus[2];
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_STATUS,
-				    PSEC_TO_NSEC(sdr->tADL_min)),
+				    NAND_COMMON_TIMING_NS(conf, tADL_min)),
 			NAND_OP_8BIT_DATA_IN(1, status, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+		int ret;
+
+		/* The status data byte will be received twice in NV-DDR mode */
+		if (status && nand_interface_is_nvddr(conf)) {
+			instrs[1].ctx.data.len *= 2;
+			instrs[1].ctx.data.buf.in = ddrstatus;
+		}
 
 		if (!status)
 			op.ninstrs--;
 
-		return nand_exec_op(chip, &op);
+		ret = nand_exec_op(chip, &op);
+		if (!ret && status && nand_interface_is_nvddr(conf))
+			*status = ddrstatus[0];
+
+		return ret;
 	}
 
 	chip->legacy.cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
@@ -1740,6 +1813,7 @@ int nand_exit_status_op(struct nand_chip *chip)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(nand_exit_status_op);
 
 /**
  * nand_erase_op - Do an erase operation
@@ -1760,17 +1834,19 @@ int nand_erase_op(struct nand_chip *chip, unsigned int eraseblock)
 	u8 status;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		u8 addrs[3] = {	page, page >> 8, page >> 16 };
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_ERASE1, 0),
 			NAND_OP_ADDR(2, addrs, 0),
 			NAND_OP_CMD(NAND_CMD_ERASE2,
-				    PSEC_TO_MSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tBERS_max), 0),
+				    NAND_COMMON_TIMING_NS(conf, tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tBERS_max),
+					 0),
 		};
-		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+		struct nand_operation op = NAND_DESTRUCTIVE_OPERATION(chip->cur_cs,
+								      instrs);
 
 		if (chip->options & NAND_ROW_ADDR_3)
 			instrs[1].ctx.addr.naddrs++;
@@ -1819,14 +1895,17 @@ static int nand_set_features_op(struct nand_chip *chip, u8 feature,
 	int i, ret;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_SET_FEATURES, 0),
-			NAND_OP_ADDR(1, &feature, PSEC_TO_NSEC(sdr->tADL_min)),
+			NAND_OP_ADDR(1, &feature, NAND_COMMON_TIMING_NS(conf,
+									tADL_min)),
 			NAND_OP_8BIT_DATA_OUT(ONFI_SUBFEATURE_PARAM_LEN, data,
-					      PSEC_TO_NSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tFEAT_max), 0),
+					      NAND_COMMON_TIMING_NS(conf,
+								    tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tFEAT_max),
+					 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 
@@ -1862,23 +1941,37 @@ static int nand_set_features_op(struct nand_chip *chip, u8 feature,
 static int nand_get_features_op(struct nand_chip *chip, u8 feature,
 				void *data)
 {
-	u8 *params = data;
+	u8 *params = data, ddrbuf[ONFI_SUBFEATURE_PARAM_LEN * 2];
 	int i;
 
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_CMD(NAND_CMD_GET_FEATURES, 0),
-			NAND_OP_ADDR(1, &feature, PSEC_TO_NSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tFEAT_max),
-					 PSEC_TO_NSEC(sdr->tRR_min)),
+			NAND_OP_ADDR(1, &feature,
+				     NAND_COMMON_TIMING_NS(conf, tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tFEAT_max),
+					 NAND_COMMON_TIMING_NS(conf, tRR_min)),
 			NAND_OP_8BIT_DATA_IN(ONFI_SUBFEATURE_PARAM_LEN,
 					     data, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+		int ret;
 
-		return nand_exec_op(chip, &op);
+		/* GET_FEATURE data bytes are received twice in NV-DDR mode */
+		if (nand_interface_is_nvddr(conf)) {
+			instrs[3].ctx.data.len *= 2;
+			instrs[3].ctx.data.buf.in = ddrbuf;
+		}
+
+		ret = nand_exec_op(chip, &op);
+		if (nand_interface_is_nvddr(conf)) {
+			for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; i++)
+				params[i] = ddrbuf[i * 2];
+		}
+
+		return ret;
 	}
 
 	chip->legacy.cmdfunc(chip, NAND_CMD_GET_FEATURES, feature, -1);
@@ -1923,11 +2016,13 @@ static int nand_wait_rdy_op(struct nand_chip *chip, unsigned int timeout_ms,
 int nand_reset_op(struct nand_chip *chip)
 {
 	if (nand_has_exec_op(chip)) {
-		const struct nand_sdr_timings *sdr =
-			nand_get_sdr_timings(nand_get_interface_config(chip));
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
-			NAND_OP_CMD(NAND_CMD_RESET, PSEC_TO_NSEC(sdr->tWB_max)),
-			NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tRST_max), 0),
+			NAND_OP_CMD(NAND_CMD_RESET,
+				    NAND_COMMON_TIMING_NS(conf, tWB_max)),
+			NAND_OP_WAIT_RDY(NAND_COMMON_TIMING_MS(conf, tRST_max),
+					 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 
@@ -1962,17 +2057,50 @@ int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
 		return -EINVAL;
 
 	if (nand_has_exec_op(chip)) {
+		const struct nand_interface_config *conf =
+			nand_get_interface_config(chip);
 		struct nand_op_instr instrs[] = {
 			NAND_OP_DATA_IN(len, buf, 0),
 		};
 		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+		u8 *ddrbuf = NULL;
+		int ret, i;
 
 		instrs[0].ctx.data.force_8bit = force_8bit;
 
-		if (check_only)
-			return nand_check_op(chip, &op);
+		/*
+		 * Parameter payloads (ID, status, features, etc) do not go
+		 * through the same pipeline as regular data, hence the
+		 * force_8bit flag must be set and this also indicates that in
+		 * case NV-DDR timings are being used the data will be received
+		 * twice.
+		 */
+		if (force_8bit && nand_interface_is_nvddr(conf)) {
+			ddrbuf = kzalloc(len * 2, GFP_KERNEL);
+			if (!ddrbuf)
+				return -ENOMEM;
+
+			instrs[0].ctx.data.len *= 2;
+			instrs[0].ctx.data.buf.in = ddrbuf;
+		}
 
-		return nand_exec_op(chip, &op);
+		if (check_only) {
+			ret = nand_check_op(chip, &op);
+			kfree(ddrbuf);
+			return ret;
+		}
+
+		ret = nand_exec_op(chip, &op);
+		if (!ret && force_8bit && nand_interface_is_nvddr(conf)) {
+			u8 *dst = buf;
+
+			for (i = 0; i < len; i++)
+				dst[i] = ddrbuf[i * 2];
+		}
+
+		kfree(ddrbuf);
+
+		return ret;
 	}
 
 	if (check_only)
@@ -3037,6 +3165,73 @@ static int nand_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 	return max_bitflips;
 }
 
+/**
+ * nand_read_page_hwecc_oob_first - Hardware ECC page read with ECC
+ *                                  data read from OOB area
+ * @chip: nand chip info structure
+ * @buf: buffer to store read data
+ * @oob_required: caller requires OOB data read to chip->oob_poi
+ * @page: page number to read
+ *
+ * Hardware ECC for large page chips, which requires the ECC data to be
+ * extracted from the OOB before the actual data is read.
+ */
+int nand_read_page_hwecc_oob_first(struct nand_chip *chip, uint8_t *buf,
+				   int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int i, eccsize = chip->ecc.size, ret;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_code = chip->ecc.code_buf;
+	unsigned int max_bitflips = 0;
+
+	/* Read the OOB area first */
+	ret = nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);
+	if (ret)
+		return ret;
+
+	/* Move read cursor to start of page */
+	ret = nand_change_read_column_op(chip, 0, NULL, 0, false);
+	if (ret)
+		return ret;
+
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecc_code, chip->oob_poi, 0,
+					 chip->ecc.total);
+	if (ret)
+		return ret;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
+		if (ret)
+			return ret;
+
+		stat = chip->ecc.correct(chip, p, &ecc_code[i], NULL);
+		if (stat == -EBADMSG &&
+		    (chip->ecc.options & NAND_ECC_GENERIC_ERASED_CHECK)) {
+			/* check for empty pages with bitflips */
+			stat = nand_check_erased_ecc_chunk(p, eccsize,
+							   &ecc_code[i],
+							   eccbytes, NULL, 0,
+							   chip->ecc.strength);
+		}
+
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+	return max_bitflips;
+}
+EXPORT_SYMBOL_GPL(nand_read_page_hwecc_oob_first);
+
 /**
  * nand_read_page_syndrome - [REPLACEABLE] hardware ECC syndrome based page read
  * @chip: nand chip info structure
@@ -3161,6 +3356,51 @@ static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
 	return NULL;
 }
 
+static void rawnand_enable_cont_reads(struct nand_chip *chip, unsigned int page,
+				      u32 readlen, int col)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	unsigned int first_page, last_page;
+
+	chip->cont_read.ongoing = false;
+
+	if (!chip->controller->supported_op.cont_read)
+		return;
+
+	/*
+	 * Don't bother making any calculations if the length is too small.
+	 * Side effect: avoids possible integer underflows below.
+	 */
+	if (readlen < (2 * mtd->writesize))
+		return;
+
+	/* Derive the page where continuous read should start (the first full page read) */
+	first_page = page;
+	if (col)
+		first_page++;
+
+	/* Derive the page where continuous read should stop (the last full page read) */
+	last_page = page + ((col + readlen) / mtd->writesize) - 1;
+
+	/* Configure and enable continuous read when suitable */
+	if (first_page < last_page) {
+		chip->cont_read.first_page = first_page;
+		chip->cont_read.last_page = last_page;
+		chip->cont_read.ongoing = true;
+		/* May reset the ongoing flag */
+		rawnand_cap_cont_reads(chip);
+	}
+}
+
+static void rawnand_cont_read_skip_first_page(struct nand_chip *chip, unsigned int page)
+{
+	if (!chip->cont_read.ongoing || page != chip->cont_read.first_page)
+		return;
+
+	chip->cont_read.first_page++;
+	rawnand_cap_cont_reads(chip);
+}
+
 /**
  * nand_setup_read_retry - [INTERN] Set the READ RETRY mode
  * @chip: NAND chip object
@@ -3185,13 +3425,13 @@ static int nand_setup_read_retry(struct nand_chip *chip, int retry_mode)
 
 static void nand_wait_readrdy(struct nand_chip *chip)
 {
-	const struct nand_sdr_timings *sdr;
+	const struct nand_interface_config *conf;
 
 	if (!(chip->options & NAND_NEED_READRDY))
 		return;
 
-	sdr = nand_get_sdr_timings(nand_get_interface_config(chip));
-	WARN_ON(nand_wait_rdy_op(chip, PSEC_TO_MSEC(sdr->tR_max), 0));
+	conf = nand_get_interface_config(chip);
+	WARN_ON(nand_wait_rdy_op(chip, NAND_COMMON_TIMING_MS(conf, tR_max), 0));
 }
 
 /**
@@ -3230,6 +3470,9 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 	oob = ops->oobbuf;
 	oob_required = oob ? 1 : 0;
 
+	if (likely(ops->mode != MTD_OPS_RAW))
+		rawnand_enable_cont_reads(chip, page, readlen, col);
+
 	while (1) {
 		struct mtd_ecc_stats ecc_stats = mtd->ecc_stats;
 
@@ -3328,6 +3571,8 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 			buf += bytes;
 			max_bitflips = max_t(unsigned int, max_bitflips,
 					     chip->pagecache.bitflips);
+
+			rawnand_cont_read_skip_first_page(chip, page);
 		}
 
 		readlen -= bytes;
@@ -3358,6 +3603,9 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 	}
 	nand_deselect_target(chip);
 
+	if (WARN_ON_ONCE(chip->cont_read.ongoing))
+		chip->cont_read.ongoing = false;
+
 	ops->retlen = ops->len - (size_t) readlen;
 	if (oob)
 		ops->oobretlen = ops->ooblen - oobreadlen;
@@ -3447,9 +3695,6 @@ int nand_write_oob_std(struct nand_chip *chip, int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	return nand_prog_page_op(chip, page, mtd->writesize, chip->oob_poi,
 				 mtd->oobsize);
 }
@@ -3469,9 +3714,6 @@ static int nand_write_oob_syndrome(struct nand_chip *chip, int page)
 	int ret, i, len, pos, sndcmd = 0, steps = chip->ecc.steps;
 	const uint8_t *bufpoi = chip->oob_poi;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	/*
 	 * data-ecc-data-ecc ... ecc-oob
 	 * or
@@ -3621,6 +3863,7 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 			 struct mtd_oob_ops *ops)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_ecc_stats old_stats;
 	int ret;
 
 	ops->retlen = 0;
@@ -3630,9 +3873,9 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 	    ops->mode != MTD_OPS_RAW)
 		return -ENOTSUPP;
 
-	ret = nand_get_device(chip);
-	if (ret)
-		return ret;
+	nand_get_device(chip);
+
+	old_stats = mtd->ecc_stats;
 
 	if (!ops->datbuf)
 		ret = nand_do_read_oob(chip, from, ops);
@@ -3673,9 +3916,6 @@ int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -3714,9 +3954,6 @@ int nand_monolithic_write_page_raw(struct nand_chip *chip, const u8 *buf,
 	unsigned int size = mtd->writesize;
 	u8 *write_buf = (u8 *)buf;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	if (oob_required) {
 		size += mtd->oobsize;
 
@@ -3749,9 +3986,6 @@ static int nand_write_page_raw_syndrome(struct nand_chip *chip,
 	uint8_t *oob = chip->oob_poi;
 	int steps, size, ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3814,9 +4048,6 @@ static int nand_write_page_swecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	/* Software ECC calculation */
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
@@ -3846,9 +4077,6 @@ static int nand_write_page_hwecc(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *ecc_calc = chip->ecc.calc_buf;
 	const uint8_t *p = buf;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3900,9 +4128,6 @@ static int nand_write_subpage_hwecc(struct nand_chip *chip, uint32_t offset,
 	int oob_bytes       = mtd->oobsize / ecc_steps;
 	int step, ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -3970,9 +4195,6 @@ static int nand_write_page_syndrome(struct nand_chip *chip, const uint8_t *buf,
 	uint8_t *oob = chip->oob_poi;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_prog_page_begin_op(chip, page, 0, NULL, 0);
 	if (ret)
 		return ret;
@@ -4039,9 +4261,6 @@ static int nand_write_page(struct nand_chip *chip, uint32_t offset,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int status, subpage;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
 		chip->ecc.write_subpage)
 		subpage = offset || (data_len < mtd->writesize);
@@ -4088,15 +4307,12 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 	int ret;
 	int oob_required = oob ? 1 : 0;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ops->retlen = 0;
 	if (!writelen)
 		return 0;
 
 	/* Reject writes, which are not page aligned */
-	if (NOTALIGNED(to)) {
+	if (NOTALIGNED(to) || NOTALIGNED(ops->len)) {
 		pr_notice("%s: attempt to write non page aligned data\n",
 			   __func__);
 		return -EINVAL;
@@ -4206,16 +4422,11 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 			  struct mtd_oob_ops *ops)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
+	int ret = 0;
 
 	ops->retlen = 0;
 
-	ret = nand_get_device(chip);
-	if (ret)
-		return ret;
+	nand_get_device(chip);
 
 	switch (ops->mode) {
 	case MTD_OPS_PLACE_OOB:
@@ -4246,9 +4457,6 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
  */
 static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	return nand_erase_nand(mtd_to_nand(mtd), instr, 0);
 }
 
@@ -4264,13 +4472,9 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    int allowbbt)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
-
 	int page, pages_per_block, ret, chipnr;
 	loff_t len;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
 			__func__, (unsigned long long)instr->addr,
 			(unsigned long long)instr->len);
@@ -4279,9 +4483,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		return -EINVAL;
 
 	/* Grab the lock and see if the device is available */
-	ret = nand_get_device(chip);
-	if (ret)
-		return ret;
+	nand_get_device(chip);
 
 	/* Shift to get first page */
 	page = (int)(instr->addr >> chip->page_shift);
@@ -4305,12 +4507,14 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 	len = instr->len;
 
 	while (len) {
+		loff_t ofs = (loff_t)page << chip->page_shift;
+
 		/* Check if we have a bad block, we do not erase bad blocks! */
 		if (!mtd->allow_erasebad &&
 		    nand_block_checkbad(chip, ((loff_t) page) <<
 					chip->page_shift, allowbbt)) {
-			pr_warn("%s: attempt to erase a bad block at page 0x%08x\n",
-				    __func__, page);
+			pr_warn("%s: attempt to erase a bad block at 0x%08llx\n",
+				    __func__, (unsigned long long)ofs);
 			ret = -EIO;
 			goto erase_exit;
 		}
@@ -4328,8 +4532,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		if (ret) {
 			pr_debug("%s: failed erase, page 0x%08x\n",
 					__func__, page);
-			instr->fail_addr =
-				((loff_t)page << chip->page_shift);
+			instr->fail_addr = ofs;
 			goto erase_exit;
 		}
 
@@ -4369,7 +4572,7 @@ static void nand_sync(struct mtd_info *mtd)
 	pr_debug("%s: called\n", __func__);
 
 	/* Grab the lock and see if the device is available */
-	WARN_ON(nand_get_device(chip));
+	nand_get_device(chip);
 	/* Release it and go back */
 	nand_release_device(chip);
 }
@@ -4386,9 +4589,7 @@ static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
 	int ret;
 
 	/* Select the NAND device */
-	ret = nand_get_device(chip);
-	if (ret)
-		return ret;
+	nand_get_device(chip);
 
 	nand_select_target(chip, chipnr);
 
@@ -4409,38 +4610,15 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
 	ret = nand_block_isbad(mtd, ofs);
 	if (ret) {
 		/* If it was bad already, return success and do nothing */
 		if (ret > 0)
-			return 0;
-		return ret;
-	}
-
-	return nand_block_markbad_lowlevel(mtd_to_nand(mtd), ofs);
-}
-
-/**
- * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
- * @mtd: MTD device structure
- * @ofs: offset relative to mtd start
- */
-static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
-{
-	int ret;
-
-	ret = nand_block_isbad(mtd, ofs);
-	if (ret < 0)
+			return 0;
 		return ret;
+	}
 
-	if (!ret)
-		/* If it was good already, return success and do nothing */
-		return 0;
-
-	return nand_block_markgood_lowlevel(mtd_to_nand(mtd), ofs);
+	return nand_block_markbad_lowlevel(mtd_to_nand(mtd), ofs);
 }
 
 /**
@@ -4662,6 +4840,8 @@ static inline bool is_full_id_nand(struct nand_flash_dev *type)
 static bool find_full_id_nand(struct nand_chip *chip,
 			      struct nand_flash_dev *type)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	u8 *id_data = chip->id.data;
@@ -4683,10 +4863,11 @@ static bool find_full_id_nand(struct nand_chip *chip,
 					   memorg->pagesize *
 					   memorg->pages_per_eraseblock);
 		chip->options |= type->options;
-		chip->base.ecc.requirements.strength = NAND_ECC_STRENGTH(type);
-		chip->base.ecc.requirements.step_size = NAND_ECC_STEP(type);
+		requirements.strength = NAND_ECC_STRENGTH(type);
+		requirements.step_size = NAND_ECC_STEP(type);
+		nanddev_set_ecc_requirements(base, &requirements);
 
-		chip->parameters.model = strdup(type->name);
+		chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
 		if (!chip->parameters.model)
 			return false;
 
@@ -4755,6 +4936,67 @@ nand_manufacturer_name(const struct nand_manufacturer_desc *manufacturer_desc)
 	return manufacturer_desc ? manufacturer_desc->name : "Unknown";
 }
 
+static void rawnand_check_data_only_read_support(struct nand_chip *chip)
+{
+	/* Use an arbitrary size for the check */
+	if (!nand_read_data_op(chip, NULL, SZ_512, true, true))
+		chip->controller->supported_op.data_only_read = 1;
+}
+
+static void rawnand_early_check_supported_ops(struct nand_chip *chip)
+{
+	/* The supported_op fields should not be set by individual drivers */
+	WARN_ON_ONCE(chip->controller->supported_op.data_only_read);
+
+	if (!nand_has_exec_op(chip))
+		return;
+
+	rawnand_check_data_only_read_support(chip);
+}
+
+static void rawnand_check_cont_read_support(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	if (!chip->parameters.supports_read_cache)
+		return;
+
+	if (chip->read_retries)
+		return;
+
+	if (!nand_lp_exec_cont_read_page_op(chip, 0, 0, NULL,
+					    mtd->writesize, true))
+		chip->controller->supported_op.cont_read = 1;
+}
+
+static void rawnand_late_check_supported_ops(struct nand_chip *chip)
+{
+	/* The supported_op fields should not be set by individual drivers */
+	WARN_ON_ONCE(chip->controller->supported_op.cont_read);
+
+	/*
+	 * Too many devices do not support sequential cached reads with on-die
+	 * ECC correction enabled, so in this case refuse to perform the
+	 * automation.
+	 */
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE)
+		return;
+
+	if (!nand_has_exec_op(chip))
+		return;
+
+	/*
+	 * For now, continuous reads can only be used with the core page helpers.
+	 * This can be extended later.
+	 */
+	if (!(chip->ecc.read_page == nand_read_page_hwecc ||
+	      chip->ecc.read_page == nand_read_page_syndrome ||
+	      chip->ecc.read_page == nand_read_page_swecc))
+		return;
+
+	rawnand_check_cont_read_support(chip);
+}
+
 /*
  * Get the flash and manufacturer id and lookup if the type is supported.
  */
@@ -4787,6 +5029,8 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	/* Select the device */
 	nand_select_target(chip, 0);
 
+	rawnand_early_check_supported_ops(chip);
+
 	/* Send the command for reading device ID */
 	ret = nand_readid_op(chip, 0, id_data, 2);
 	if (ret)
@@ -4866,7 +5110,7 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	if (!type->name)
 		return -ENODEV;
 
-	chip->parameters.model = strdup(type->name);
+	chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
 	if (!chip->parameters.model)
 		return -ENOMEM;
 
@@ -4945,32 +5189,68 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	return ret;
 }
 
-static const char * const nand_ecc_algos[] = {
-	[NAND_ECC_ALGO_HAMMING]		= "hamming",
-	[NAND_ECC_ALGO_BCH]		= "bch",
-	[NAND_ECC_ALGO_RS]		= "rs",
-};
+static enum nand_ecc_engine_type
+of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
+{
+	const char * const nand_ecc_legacy_modes[] = {
+		[NAND_ECC_NONE]		= "none",
+		[NAND_ECC_SOFT]		= "soft",
+		[NAND_ECC_SOFT_BCH]	= "soft_bch",
+		[NAND_ECC_HW]		= "hw",
+		[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
+		[NAND_ECC_ON_DIE]	= "on-die",
+	};
+	enum nand_ecc_legacy_mode eng_type;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (err)
+		return NAND_ECC_ENGINE_TYPE_INVALID;
+
+	for (eng_type = NAND_ECC_NONE;
+	     eng_type < ARRAY_SIZE(nand_ecc_legacy_modes); eng_type++) {
+		if (!strcasecmp(pm, nand_ecc_legacy_modes[eng_type])) {
+			switch (eng_type) {
+			case NAND_ECC_NONE:
+				return NAND_ECC_ENGINE_TYPE_NONE;
+			case NAND_ECC_SOFT:
+			case NAND_ECC_SOFT_BCH:
+				return NAND_ECC_ENGINE_TYPE_SOFT;
+			case NAND_ECC_HW:
+			case NAND_ECC_HW_SYNDROME:
+				return NAND_ECC_ENGINE_TYPE_ON_HOST;
+			case NAND_ECC_ON_DIE:
+				return NAND_ECC_ENGINE_TYPE_ON_DIE;
+			default:
+				break;
+			}
+		}
+	}
 
-static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
+	return NAND_ECC_ENGINE_TYPE_INVALID;
+}
+
+static enum nand_ecc_placement
+of_get_rawnand_ecc_placement_legacy(struct device_node *np)
 {
-	enum nand_ecc_algo ecc_algo;
 	const char *pm;
 	int err;
 
-	err = of_property_read_string(np, "nand-ecc-algo", &pm);
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
 	if (!err) {
-		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
-		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
-		     ecc_algo++) {
-			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
-				return ecc_algo;
-		}
+		if (!strcasecmp(pm, "hw_syndrome"))
+			return NAND_ECC_PLACEMENT_INTERLEAVED;
 	}
 
-	/*
-	 * For backward compatibility we also read "nand-ecc-mode" checking
-	 * for some obsoleted values that were specifying ECC algorithm.
-	 */
+	return NAND_ECC_PLACEMENT_UNKNOWN;
+}
+
+static enum nand_ecc_algo of_get_rawnand_ecc_algo_legacy(struct device_node *np)
+{
+	const char *pm;
+	int err;
+
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
 	if (!err) {
 		if (!strcasecmp(pm, "soft"))
@@ -4982,43 +5262,66 @@ static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 	return NAND_ECC_ALGO_UNKNOWN;
 }
 
-static int nand_dt_init(struct nand_chip *chip)
+static void of_get_nand_ecc_legacy_user_config(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
-	enum nand_ecc_algo ecc_algo;
-	int ecc_mode, ecc_strength, ecc_step;
+	struct nand_ecc_props *user_conf = &chip->base.ecc.user_conf;
+
+	if (user_conf->engine_type == NAND_ECC_ENGINE_TYPE_INVALID)
+		user_conf->engine_type = of_get_rawnand_ecc_engine_type_legacy(dn);
+
+	if (user_conf->algo == NAND_ECC_ALGO_UNKNOWN)
+		user_conf->algo = of_get_rawnand_ecc_algo_legacy(dn);
+
+	if (user_conf->placement == NAND_ECC_PLACEMENT_UNKNOWN)
+		user_conf->placement = of_get_rawnand_ecc_placement_legacy(dn);
+}
+
+static int rawnand_dt_init(struct nand_chip *chip)
+{
+	struct nand_device *nand = mtd_to_nanddev(nand_to_mtd(chip));
+	struct device_node *dn = nand_get_flash_node(chip);
+	int ret;
 
 	if (!dn)
 		return 0;
 
-	if (of_get_nand_bus_width(dn) == 16)
+	ret = of_get_nand_bus_width(dn);
+	if (ret < 0)
+		return ret;
+
+	if (ret == 16)
 		chip->options |= NAND_BUSWIDTH_16;
 
 	if (of_property_read_bool(dn, "nand-is-boot-medium"))
 		chip->options |= NAND_IS_BOOT_MEDIUM;
 
-	if (of_get_nand_on_flash_bbt(dn))
+	if (of_property_read_bool(dn, "nand-on-flash-bbt"))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	ecc_mode = of_get_nand_ecc_mode(dn);
-	ecc_algo = of_get_nand_ecc_algo(dn);
-	ecc_strength = of_get_nand_ecc_strength(dn);
-	ecc_step = of_get_nand_ecc_step_size(dn);
-
-	if (ecc_mode >= 0)
-		chip->ecc.mode = ecc_mode;
+	of_get_nand_ecc_user_config(nand);
+	of_get_nand_ecc_legacy_user_config(chip);
 
-	if (ecc_algo != NAND_ECC_ALGO_UNKNOWN)
-		chip->ecc.algo = ecc_algo;
-
-	if (ecc_strength >= 0)
-		chip->ecc.strength = ecc_strength;
+	/*
+	 * If neither the user nor the NAND controller have requested a specific
+	 * ECC engine type, we will default to NAND_ECC_ENGINE_TYPE_ON_HOST.
+	 */
+	nand->ecc.defaults.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
-	if (ecc_step > 0)
-		chip->ecc.size = ecc_step;
+	/*
+	 * Use the user requested engine type, unless there is none, in this
+	 * case default to the NAND controller choice, otherwise fallback to
+	 * the raw NAND default one.
+	 */
+	if (nand->ecc.user_conf.engine_type != NAND_ECC_ENGINE_TYPE_INVALID)
+		chip->ecc.engine_type = nand->ecc.user_conf.engine_type;
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_INVALID)
+		chip->ecc.engine_type = nand->ecc.defaults.engine_type;
 
-	if (of_property_read_bool(dn, "nand-ecc-maximize"))
-		chip->ecc.options |= NAND_ECC_MAXIMIZE;
+	chip->ecc.placement = nand->ecc.user_conf.placement;
+	chip->ecc.algo = nand->ecc.user_conf.algo;
+	chip->ecc.strength = nand->ecc.user_conf.strength;
+	chip->ecc.size = nand->ecc.user_conf.step_size;
 
 	return 0;
 }
@@ -5056,11 +5359,9 @@ int nand_scan_ident(struct nand_chip *chip, unsigned int maxchips,
 	/* Enforce the right timings for reset/detection */
 	chip->current_interface_config = nand_get_reset_interface_config();
 
-	if (IS_ENABLED(CONFIG_OFTREE)) {
-		ret = nand_dt_init(chip);
-		if (ret)
-			return ret;
-	}
+	ret = rawnand_dt_init(chip);
+	if (ret)
+		return ret;
 
 	if (!mtd->name && mtd->dev.parent)
 		mtd->name = strdup(dev_name(mtd->dev.parent));
@@ -5125,21 +5426,189 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 	kfree(chip->parameters.onfi);
 }
 
+int rawnand_sw_hamming_init(struct nand_chip *chip)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf;
+	struct nand_device *base = &chip->base;
+	int ret;
+
+	base->ecc.user_conf.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+	base->ecc.user_conf.algo = NAND_ECC_ALGO_HAMMING;
+	base->ecc.user_conf.strength = chip->ecc.strength;
+	base->ecc.user_conf.step_size = chip->ecc.size;
+
+	ret = nand_ecc_sw_hamming_init_ctx(base);
+	if (ret)
+		return ret;
+
+	engine_conf = base->ecc.ctx.priv;
+
+	if (chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER)
+		engine_conf->sm_order = true;
+
+	chip->ecc.size = base->ecc.ctx.conf.step_size;
+	chip->ecc.strength = base->ecc.ctx.conf.strength;
+	chip->ecc.total = base->ecc.ctx.total;
+	chip->ecc.steps = nanddev_get_ecc_nsteps(base);
+	chip->ecc.bytes = base->ecc.ctx.total / nanddev_get_ecc_nsteps(base);
+
+	return 0;
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_init);
+
+int rawnand_sw_hamming_calculate(struct nand_chip *chip,
+				 const unsigned char *buf,
+				 unsigned char *code)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_hamming_calculate(base, buf, code);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_calculate);
+
+int rawnand_sw_hamming_correct(struct nand_chip *chip,
+			       unsigned char *buf,
+			       unsigned char *read_ecc,
+			       unsigned char *calc_ecc)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_hamming_correct(base, buf, read_ecc, calc_ecc);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_correct);
+
+void rawnand_sw_hamming_cleanup(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+
+	nand_ecc_sw_hamming_cleanup_ctx(base);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_cleanup);
+
+int rawnand_sw_bch_init(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+	const struct nand_ecc_props *ecc_conf = nanddev_get_ecc_conf(base);
+	int ret;
+
+	base->ecc.user_conf.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+	base->ecc.user_conf.algo = NAND_ECC_ALGO_BCH;
+	base->ecc.user_conf.step_size = chip->ecc.size;
+	base->ecc.user_conf.strength = chip->ecc.strength;
+
+	ret = nand_ecc_sw_bch_init_ctx(base);
+	if (ret)
+		return ret;
+
+	chip->ecc.size = ecc_conf->step_size;
+	chip->ecc.strength = ecc_conf->strength;
+	chip->ecc.total = base->ecc.ctx.total;
+	chip->ecc.steps = nanddev_get_ecc_nsteps(base);
+	chip->ecc.bytes = base->ecc.ctx.total / nanddev_get_ecc_nsteps(base);
+
+	return 0;
+}
+EXPORT_SYMBOL(rawnand_sw_bch_init);
+
+static int rawnand_sw_bch_calculate(struct nand_chip *chip,
+				    const unsigned char *buf,
+				    unsigned char *code)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_bch_calculate(base, buf, code);
+}
+
+int rawnand_sw_bch_correct(struct nand_chip *chip, unsigned char *buf,
+			   unsigned char *read_ecc, unsigned char *calc_ecc)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_bch_correct(base, buf, read_ecc, calc_ecc);
+}
+EXPORT_SYMBOL(rawnand_sw_bch_correct);
+
+void rawnand_sw_bch_cleanup(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+
+	nand_ecc_sw_bch_cleanup_ctx(base);
+}
+EXPORT_SYMBOL(rawnand_sw_bch_cleanup);
+
+static int nand_set_ecc_on_host_ops(struct nand_chip *chip)
+{
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+
+	switch (ecc->placement) {
+	case NAND_ECC_PLACEMENT_UNKNOWN:
+	case NAND_ECC_PLACEMENT_OOB:
+		/* Use standard hwecc read page function? */
+		if (!ecc->read_page)
+			ecc->read_page = nand_read_page_hwecc;
+		if (!ecc->write_page)
+			ecc->write_page = nand_write_page_hwecc;
+		if (!ecc->read_page_raw)
+			ecc->read_page_raw = nand_read_page_raw;
+		if (!ecc->write_page_raw)
+			ecc->write_page_raw = nand_write_page_raw;
+		if (!ecc->read_oob)
+			ecc->read_oob = nand_read_oob_std;
+		if (!ecc->write_oob)
+			ecc->write_oob = nand_write_oob_std;
+		if (!ecc->read_subpage)
+			ecc->read_subpage = nand_read_subpage;
+		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
+			ecc->write_subpage = nand_write_subpage_hwecc;
+		fallthrough;
+
+	case NAND_ECC_PLACEMENT_INTERLEAVED:
+		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
+		    (!ecc->read_page ||
+		     ecc->read_page == nand_read_page_hwecc ||
+		     !ecc->write_page ||
+		     ecc->write_page == nand_write_page_hwecc)) {
+			WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
+			return -EINVAL;
+		}
+		/* Use standard syndrome read/write page function? */
+		if (!ecc->read_page)
+			ecc->read_page = nand_read_page_syndrome;
+		if (!ecc->write_page)
+			ecc->write_page = nand_write_page_syndrome;
+		if (!ecc->read_page_raw)
+			ecc->read_page_raw = nand_read_page_raw_syndrome;
+		if (!ecc->write_page_raw)
+			ecc->write_page_raw = nand_write_page_raw_syndrome;
+		if (!ecc->read_oob)
+			ecc->read_oob = nand_read_oob_syndrome;
+		if (!ecc->write_oob)
+			ecc->write_oob = nand_write_oob_syndrome;
+		break;
+
+	default:
+		pr_warn("Invalid NAND_ECC_PLACEMENT %d\n",
+			ecc->placement);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	int ret;
 
-	if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SOFT))
-		return -ENOSYS;
-
-	if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
+	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_TYPE_SOFT))
 		return -EINVAL;
 
 	switch (ecc->algo) {
 	case NAND_ECC_ALGO_HAMMING:
-		ecc->calculate = nand_calculate_ecc;
-		ecc->correct = nand_correct_data;
+		ecc->calculate = rawnand_sw_hamming_calculate;
+		ecc->correct = rawnand_sw_hamming_correct;
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
@@ -5157,14 +5626,20 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		if (IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC))
 			ecc->options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 
+		ret = rawnand_sw_hamming_init(chip);
+		if (ret) {
+			WARN(1, "Hamming ECC initialization failed!\n");
+			return ret;
+		}
+
 		return 0;
 	case NAND_ECC_ALGO_BCH:
-		if (!mtd_nand_has_bch()) {
+		if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)) {
 			WARN(1, "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
 			return -EINVAL;
 		}
-		ecc->calculate = nand_bch_calculate_ecc;
-		ecc->correct = nand_bch_correct_data;
+		ecc->calculate = rawnand_sw_bch_calculate;
+		ecc->correct = rawnand_sw_bch_correct;
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
@@ -5175,56 +5650,21 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		ecc->read_oob = nand_read_oob_std;
 		ecc->write_oob = nand_write_oob_std;
 
-		/*
-		* Board driver should supply ecc.size and ecc.strength
-		* values to select how many bits are correctable.
-		* Otherwise, default to 4 bits for large page devices.
-		*/
-		if (!ecc->size && (mtd->oobsize >= 64)) {
-			ecc->size = 512;
-			ecc->strength = 4;
-		}
-
-		/*
-		 * if no ecc placement scheme was provided pickup the default
-		 * large page one.
-		 */
-		if (!mtd->ooblayout) {
-			/* handle large page devices only */
-			if (mtd->oobsize < 64) {
-				WARN(1, "OOB layout is required when using software BCH on small pages\n");
-				return -EINVAL;
-			}
-
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
-
-		}
-
 		/*
 		 * We can only maximize ECC config when the default layout is
 		 * used, otherwise we don't know how many bytes can really be
 		 * used.
 		 */
-		if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
-		    ecc->options & NAND_ECC_MAXIMIZE) {
-			int steps, bytes;
-
-			/* Always prefer 1k blocks over 512bytes ones */
-			ecc->size = 1024;
-			steps = mtd->writesize / ecc->size;
-
-			/* Reserve 2 bytes for the BBM */
-			bytes = (mtd->oobsize - 2) / steps;
-			ecc->strength = bytes * 8 / fls(8 * ecc->size);
-		}
+		if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE_STRENGTH &&
+		    mtd->ooblayout != nand_get_large_page_ooblayout())
+			nanddev->ecc.user_conf.flags &= ~NAND_ECC_MAXIMIZE_STRENGTH;
 
-		/* See nand_bch_init() for details. */
-		ecc->bytes = 0;
-		ecc->priv = nand_bch_init(mtd);
-		if (!ecc->priv) {
+		ret = rawnand_sw_bch_init(chip);
+		if (ret) {
 			WARN(1, "BCH ECC initialization failed!\n");
-			return -EINVAL;
+			return ret;
 		}
+
 		return 0;
 	default:
 		WARN(1, "Unsupported ECC algorithm!\n");
@@ -5265,7 +5705,7 @@ nand_check_ecc_caps(struct nand_chip *chip,
 
 			ecc_bytes = caps->calc_ecc_bytes(preset_step,
 							 preset_strength);
-			if (WARN_ONCE(ecc_bytes < 0, "%s: eccbytes < 0\n", __func__))
+			if (WARN_ON_ONCE(ecc_bytes < 0))
 				return ecc_bytes;
 
 			if (ecc_bytes * nsteps > oobavail) {
@@ -5300,12 +5740,14 @@ static int
 nand_match_ecc_req(struct nand_chip *chip,
 		   const struct nand_ecc_caps *caps, int oobavail)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	const struct nand_ecc_step_info *stepinfo;
-	int req_step = chip->base.ecc.requirements.step_size;
-	int req_strength = chip->base.ecc.requirements.strength;
+	int req_step = requirements->step_size;
+	int req_strength = requirements->strength;
 	int req_corr, step_size, strength, nsteps, ecc_bytes, ecc_bytes_total;
-	int best_step, best_strength, best_ecc_bytes;
+	int best_step = 0, best_strength = 0, best_ecc_bytes = 0;
 	int best_ecc_bytes_total = INT_MAX;
 	int i, j;
 
@@ -5337,7 +5779,7 @@ nand_match_ecc_req(struct nand_chip *chip,
 			nsteps = mtd->writesize / step_size;
 
 			ecc_bytes = caps->calc_ecc_bytes(step_size, strength);
-			if (WARN_ONCE(ecc_bytes < 0, "%s: eccbytes < 0\n", __func__))
+			if (WARN_ON_ONCE(ecc_bytes < 0))
 				continue;
 			ecc_bytes_total = ecc_bytes * nsteps;
 
@@ -5386,7 +5828,7 @@ nand_maximize_ecc(struct nand_chip *chip,
 	int step_size, strength, nsteps, ecc_bytes, corr;
 	int best_corr = 0;
 	int best_step = 0;
-	int best_strength, best_ecc_bytes;
+	int best_strength = 0, best_ecc_bytes = 0;
 	int i, j;
 
 	for (i = 0; i < caps->nstepinfos; i++) {
@@ -5406,7 +5848,7 @@ nand_maximize_ecc(struct nand_chip *chip,
 			nsteps = mtd->writesize / step_size;
 
 			ecc_bytes = caps->calc_ecc_bytes(step_size, strength);
-			if (WARN_ONCE(ecc_bytes < 0, "%s: eccbytes < 0\n", __func__))
+			if (WARN_ON_ONCE(ecc_bytes < 0))
 				continue;
 
 			if (ecc_bytes * nsteps > oobavail)
@@ -5444,11 +5886,12 @@ nand_maximize_ecc(struct nand_chip *chip,
  * @caps: ECC engine caps info structure
  * @oobavail: OOB size that the ECC engine can use
  *
- * Choose the ECC configuration according to following logic
+ * Choose the ECC configuration according to following logic.
  *
  * 1. If both ECC step size and ECC strength are already set (usually by DT)
  *    then check if it is supported by this controller.
- * 2. If NAND_ECC_MAXIMIZE is set, then select maximum ECC strength.
+ * 2. If the user provided the nand-ecc-maximize property, then select maximum
+ *    ECC strength.
  * 3. Otherwise, try to match the ECC step size and ECC strength closest
  *    to the chip's requirement. If available OOB size can't fit the chip
  *    requirement then fallback to the maximum ECC step size and ECC strength.
@@ -5459,6 +5902,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 
 	if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
 		return -EINVAL;
@@ -5466,7 +5910,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 	if (chip->ecc.size && chip->ecc.strength)
 		return nand_check_ecc_caps(chip, caps, oobavail);
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE_STRENGTH)
 		return nand_maximize_ecc(chip, caps, oobavail);
 
 	if (!nand_match_ecc_req(chip, caps, oobavail))
@@ -5476,41 +5920,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 }
 EXPORT_SYMBOL_GPL(nand_ecc_choose_conf);
 
-/*
- * Check if the chip configuration meet the datasheet requirements.
-
- * If our configuration corrects A bits per B bytes and the minimum
- * required correction level is X bits per Y bytes, then we must ensure
- * both of the following are true:
- *
- * (1) A / B >= X / Y
- * (2) A >= X
- *
- * Requirement (1) ensures we can correct for the required bitflip density.
- * Requirement (2) ensures we can correct even when all bitflips are clumped
- * in the same sector.
- */
-static bool nand_ecc_strength_good(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-	int corr, ds_corr;
-
-	if (ecc->size == 0 || chip->base.ecc.requirements.step_size == 0)
-		/* Not enough information */
-		return true;
-
-	/*
-	 * We get the number of corrected bits per page to compare
-	 * the correction density.
-	 */
-	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * chip->base.ecc.requirements.strength) /
-		  chip->base.ecc.requirements.step_size;
-
-	return corr >= ds_corr && ecc->strength >= chip->base.ecc.requirements.strength;
-}
-
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct nand_chip *chip = container_of(nand, struct nand_chip,
@@ -5598,15 +6007,19 @@ int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_ALGO_BCH)) {
+	    !(ecc->engine_type == NAND_ECC_ENGINE_TYPE_SOFT &&
+	      ecc->algo == NAND_ECC_ALGO_BCH) &&
+	    !(ecc->engine_type == NAND_ECC_ENGINE_TYPE_SOFT &&
+	      ecc->algo == NAND_ECC_ALGO_HAMMING)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
-			mtd_set_ooblayout(mtd, &nand_ooblayout_sp_ops);
+			mtd_set_ooblayout(mtd, nand_get_small_page_ooblayout());
 			break;
 		case 64:
 		case 128:
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_hamming_ops);
+			mtd_set_ooblayout(mtd,
+					  nand_get_large_page_hamming_ooblayout());
 			break;
 		default:
 			/*
@@ -5616,9 +6029,9 @@ int nand_scan_tail(struct nand_chip *chip)
 			 * page with ECC layout when ->oobsize <= 128 for
 			 * compatibility reasons.
 			 */
-			if (ecc->mode == NAND_ECC_NONE) {
+			if (ecc->engine_type == NAND_ECC_ENGINE_TYPE_NONE) {
 				mtd_set_ooblayout(mtd,
-						&nand_ooblayout_lp_ops);
+						  nand_get_large_page_ooblayout());
 				break;
 			}
 
@@ -5634,54 +6047,11 @@ int nand_scan_tail(struct nand_chip *chip)
 	 * selected and we have 256 byte pagesize fallback to software ECC
 	 */
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
-		/* Use standard hwecc read page function? */
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_hwecc;
-		if (!ecc->write_page)
-			ecc->write_page = nand_write_page_hwecc;
-		if (!ecc->read_page_raw)
-			ecc->read_page_raw = nand_read_page_raw;
-		if (!ecc->write_page_raw)
-			ecc->write_page_raw = nand_write_page_raw;
-		if (!ecc->read_oob)
-			ecc->read_oob = nand_read_oob_std;
-		if (!ecc->write_oob)
-			ecc->write_oob = nand_write_oob_std;
-		if (!ecc->read_subpage)
-			ecc->read_subpage = nand_read_subpage;
-		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
-			ecc->write_subpage = nand_write_subpage_hwecc;
-	case NAND_ECC_HW_SYNDROME:
-		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
-		    (!ecc->read_page ||
-		     ecc->read_page == nand_read_page_hwecc ||
-		     !ecc->write_page ||
-		     ecc->write_page == nand_write_page_hwecc)) {
-			WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
-			ret = -EINVAL;
-			goto err_nand_manuf_cleanup;
-		}
-		if (IS_ENABLED(CONFIG_NAND_ECC_HW_SYNDROME)) {
-			/* Use standard syndrome read/write page function? */
-			if (!ecc->read_page)
-				ecc->read_page = nand_read_page_syndrome;
-			if (!ecc->write_page)
-				ecc->write_page = nand_write_page_syndrome;
-			if (!ecc->read_page_raw)
-				ecc->read_page_raw = nand_read_page_raw_syndrome;
-			if (!ecc->write_page_raw)
-				ecc->write_page_raw = nand_write_page_raw_syndrome;
-			if (!ecc->read_oob)
-				ecc->read_oob = nand_read_oob_syndrome;
-			if (!ecc->write_oob)
-				ecc->write_oob = nand_write_oob_syndrome;
-		} else if (ecc->mode == NAND_ECC_HW_SYNDROME) {
-			WARN(1, "CONFIG_NAND_ECC_HW_SYNDROME not enabled\n");
-			ret = -ENOSYS;
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		ret = nand_set_ecc_on_host_ops(chip);
+		if (ret)
 			goto err_nand_manuf_cleanup;
-		}
 
 		if (mtd->writesize >= ecc->size) {
 			if (!ecc->strength) {
@@ -5693,17 +6063,17 @@ int nand_scan_tail(struct nand_chip *chip)
 		}
 		pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 			ecc->size, mtd->writesize);
-		ecc->mode = NAND_ECC_SOFT;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		ecc->algo = NAND_ECC_ALGO_HAMMING;
-	case NAND_ECC_SOFT:
+		fallthrough;
+
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
-		if (ret) {
-			ret = -EINVAL;
+		if (ret)
 			goto err_nand_manuf_cleanup;
-		}
 		break;
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
 		if (!ecc->read_page || !ecc->write_page) {
 			WARN(1, "No ECC functions supplied; on-die ECC not possible\n");
 			ret = -EINVAL;
@@ -5715,8 +6085,8 @@ int nand_scan_tail(struct nand_chip *chip)
 			ecc->write_oob = nand_write_oob_std;
 		break;
 
-	case NAND_ECC_NONE:
-		pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
+	case NAND_ECC_ENGINE_TYPE_NONE:
+		pr_warn("NAND_ECC_ENGINE_TYPE_NONE selected by board driver. This is not recommended!\n");
 		ecc->read_page = nand_read_page_raw;
 		ecc->write_page = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
@@ -5729,7 +6099,7 @@ int nand_scan_tail(struct nand_chip *chip)
 		break;
 
 	default:
-		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->mode);
+		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->engine_type);
 		ret = -EINVAL;
 		goto err_nand_manuf_cleanup;
 	}
@@ -5757,13 +6127,19 @@ int nand_scan_tail(struct nand_chip *chip)
 	 * Set the number of read / write steps for one page depending on ECC
 	 * mode.
 	 */
-	ecc->steps = mtd->writesize / ecc->size;
+	if (!ecc->steps)
+		ecc->steps = mtd->writesize / ecc->size;
 	if (ecc->steps * ecc->size != mtd->writesize) {
 		WARN(1, "Invalid ECC parameters\n");
 		ret = -EINVAL;
 		goto err_nand_manuf_cleanup;
 	}
-	ecc->total = ecc->steps * ecc->bytes;
+
+	if (!ecc->total) {
+		ecc->total = ecc->steps * ecc->bytes;
+		chip->base.ecc.ctx.total = ecc->total;
+	}
+
 	if (ecc->total > mtd->oobsize) {
 		WARN(1, "Total number of ECC bytes exceeded oobsize\n");
 		ret = -EINVAL;
@@ -5781,11 +6157,11 @@ int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_is_strong_enough(&chip->base))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name, chip->ecc.strength, chip->ecc.size,
-			chip->base.ecc.requirements.strength,
-			chip->base.ecc.requirements.step_size);
+			nanddev_get_ecc_requirements(&chip->base)->strength,
+			nanddev_get_ecc_requirements(&chip->base)->step_size);
 
 	/* Allow subpage writes up to ecc.steps. Not possible for MLC flash */
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && nand_is_slc(chip)) {
@@ -5806,8 +6182,8 @@ int nand_scan_tail(struct nand_chip *chip)
 	chip->pagecache.page = -1;
 
 	/* Large page NAND with SOFT_ECC should support subpage reads */
-	switch (ecc->mode) {
-	case NAND_ECC_SOFT:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		if (chip->page_shift > 9)
 			chip->options |= NAND_SUBPAGE_READ;
 		break;
@@ -5831,9 +6207,10 @@ int nand_scan_tail(struct nand_chip *chip)
 	mtd->_sync = nand_sync;
 	mtd->_lock = nand_lock;
 	mtd->_unlock = nand_unlock;
+	mtd->_block_isreserved = nand_block_isreserved;
 	mtd->_block_isbad = nand_block_isbad;
 	mtd->_block_markbad = nand_block_markbad;
-	mtd->_block_markgood = nand_block_markgood;
+	mtd->_max_bad_blocks = nanddev_mtd_max_bad_blocks;
 
 	/*
 	 * Initialize bitflip_threshold to its default prior scan_bbt() call.
@@ -5855,6 +6232,8 @@ int nand_scan_tail(struct nand_chip *chip)
 			goto err_free_interface_config;
 	}
 
+	rawnand_late_check_supported_ops(chip);
+
 	/* Check, if we should skip the bad block table scan */
 	if (chip->options & NAND_SKIP_BBTSCAN)
 		return 0;
@@ -5862,10 +6241,11 @@ int nand_scan_tail(struct nand_chip *chip)
 	/* Build bad block table */
 	ret = nand_create_bbt(chip);
 	if (ret)
-		goto err_free_interface_config;
+		goto err_free_secure_regions;
 
 	return 0;
 
+err_free_secure_regions:
 err_free_interface_config:
 	kfree(chip->best_interface_config);
 
@@ -5944,9 +6324,12 @@ EXPORT_SYMBOL(nand_scan_with_ids);
  */
 void nand_cleanup(struct nand_chip *chip)
 {
-	if (chip->ecc.mode == NAND_ECC_SOFT &&
-	    chip->ecc.algo == NAND_ECC_ALGO_BCH)
-		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_SOFT) {
+		if (chip->ecc.algo == NAND_ECC_ALGO_HAMMING)
+			rawnand_sw_hamming_cleanup(chip);
+		else if (chip->ecc.algo == NAND_ECC_ALGO_BCH)
+			rawnand_sw_bch_cleanup(chip);
+	}
 
 	nanddev_cleanup(&chip->base);
 
diff --git a/drivers/mtd/nand/raw/nand_bch.c b/drivers/mtd/nand/raw/nand_bch.c
deleted file mode 100644
index 45f9c5052a..0000000000
--- a/drivers/mtd/nand/raw/nand_bch.c
+++ /dev/null
@@ -1,219 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * This file provides ECC correction for more than 1 bit per block of data,
- * using binary BCH codes. It relies on the generic BCH library lib/bch.c.
- *
- * Copyright © 2011 Ivan Djelic <ivan.djelic@parrot.com>
- */
-
-#include <common.h>
-#include <malloc.h>
-#include <linux/types.h>
-#include <linux/kernel.h>
-#include <linux/bitops.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/nand_bch.h>
-#include <linux/bch.h>
-
-/**
- * struct nand_bch_control - private NAND BCH control structure
- * @bch:       BCH control structure
- * @errloc:    error location array
- * @eccmask:   XOR ecc mask, allows erased pages to be decoded as valid
- */
-struct nand_bch_control {
-	struct bch_control   *bch;
-	unsigned int         *errloc;
-	unsigned char        *eccmask;
-};
-
-/**
- * nand_bch_calculate_ecc - [NAND Interface] Calculate ECC for data block
- * @chip:	NAND chip object
- * @buf:	input buffer with raw data
- * @code:	output buffer with ECC
- */
-int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
-			   unsigned char *code)
-{
-	struct nand_bch_control *nbc = chip->ecc.priv;
-	unsigned int i;
-
-	memset(code, 0, chip->ecc.bytes);
-	bch_encode(nbc->bch, buf, chip->ecc.size, code);
-
-	/* apply mask so that an erased page is a valid codeword */
-	for (i = 0; i < chip->ecc.bytes; i++)
-		code[i] ^= nbc->eccmask[i];
-
-	return 0;
-}
-EXPORT_SYMBOL(nand_bch_calculate_ecc);
-
-/**
- * nand_bch_correct_data - [NAND Interface] Detect and correct bit error(s)
- * @chip:	NAND chip object
- * @buf:	raw data read from the chip
- * @read_ecc:	ECC from the chip
- * @calc_ecc:	the ECC calculated from raw data
- *
- * Detect and correct bit errors for a data byte block
- */
-int nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
-			  unsigned char *read_ecc, unsigned char *calc_ecc)
-{
-	struct nand_bch_control *nbc = chip->ecc.priv;
-	unsigned int *errloc = nbc->errloc;
-	int i, count;
-
-	count = bch_decode(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
-			   NULL, errloc);
-	if (count > 0) {
-		for (i = 0; i < count; i++) {
-			if (errloc[i] < (chip->ecc.size*8))
-				/* error is located in data, correct it */
-				buf[errloc[i] >> 3] ^= (1 << (errloc[i] & 7));
-			/* else error in ecc, no action needed */
-
-			pr_debug("%s: corrected bitflip %u\n", __func__,
-					errloc[i]);
-		}
-	} else if (count < 0) {
-		pr_err("ecc unrecoverable error\n");
-		count = -EBADMSG;
-	}
-	return count;
-}
-EXPORT_SYMBOL(nand_bch_correct_data);
-
-/**
- * nand_bch_init - [NAND Interface] Initialize NAND BCH error correction
- * @mtd:	MTD block structure
- *
- * Returns:
- *  a pointer to a new NAND BCH control structure, or NULL upon failure
- *
- * Initialize NAND BCH error correction. Parameters @eccsize and @eccbytes
- * are used to compute BCH parameters m (Galois field order) and t (error
- * correction capability). @eccbytes should be equal to the number of bytes
- * required to store m*t bits, where m is such that 2^m-1 > @eccsize*8.
- *
- * Example: to configure 4 bit correction per 512 bytes, you should pass
- * @eccsize = 512  (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
- * @eccbytes = 7   (7 bytes are required to store m*t = 13*4 = 52 bits)
- */
-struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
-{
-	struct nand_chip *nand = mtd_to_nand(mtd);
-	unsigned int m, t, eccsteps, i;
-	struct nand_bch_control *nbc = NULL;
-	unsigned char *erased_page;
-	unsigned int eccsize = nand->ecc.size;
-	unsigned int eccbytes = nand->ecc.bytes;
-	unsigned int eccstrength = nand->ecc.strength;
-
-	if (!eccbytes && eccstrength) {
-		eccbytes = DIV_ROUND_UP(eccstrength * fls(8 * eccsize), 8);
-		nand->ecc.bytes = eccbytes;
-	}
-
-	if (!eccsize || !eccbytes) {
-		pr_warn("ecc parameters not supplied\n");
-		goto fail;
-	}
-
-	m = fls(1+8*eccsize);
-	t = (eccbytes*8)/m;
-
-	nbc = kzalloc(sizeof(*nbc), GFP_KERNEL);
-	if (!nbc)
-		goto fail;
-
-	nbc->bch = bch_init(m, t, 0, false);
-	if (!nbc->bch)
-		goto fail;
-
-	/* verify that eccbytes has the expected value */
-	if (nbc->bch->ecc_bytes != eccbytes) {
-		pr_warn("invalid eccbytes %u, should be %u\n",
-			eccbytes, nbc->bch->ecc_bytes);
-		goto fail;
-	}
-
-	eccsteps = mtd->writesize/eccsize;
-
-	/* Check that we have an oob layout description. */
-	if (!mtd->ooblayout) {
-		pr_warn("missing oob scheme");
-		goto fail;
-	}
-
-	/* sanity checks */
-	if (8*(eccsize+eccbytes) >= (1 << m)) {
-		pr_warn("eccsize %u is too large\n", eccsize);
-		goto fail;
-	}
-
-	/*
-	 * ecc->steps and ecc->total might be used by mtd->ooblayout->ecc(),
-	 * which is called by mtd_ooblayout_count_eccbytes().
-	 * Make sure they are properly initialized before calling
-	 * mtd_ooblayout_count_eccbytes().
-	 * FIXME: we should probably rework the sequencing in nand_scan_tail()
-	 * to avoid setting those fields twice.
-	 */
-	nand->ecc.steps = eccsteps;
-	nand->ecc.total = eccsteps * eccbytes;
-	if (mtd_ooblayout_count_eccbytes(mtd) != (eccsteps*eccbytes)) {
-		pr_warn("invalid ecc layout\n");
-		goto fail;
-	}
-
-	nbc->eccmask = kzalloc(eccbytes, GFP_KERNEL);
-	nbc->errloc = kmalloc_array(t, sizeof(*nbc->errloc), GFP_KERNEL);
-	if (!nbc->eccmask || !nbc->errloc)
-		goto fail;
-	/*
-	 * compute and store the inverted ecc of an erased ecc block
-	 */
-	erased_page = kmalloc(eccsize, GFP_KERNEL);
-	if (!erased_page)
-		goto fail;
-
-	memset(erased_page, 0xff, eccsize);
-	bch_encode(nbc->bch, erased_page, eccsize, nbc->eccmask);
-	kfree(erased_page);
-
-	for (i = 0; i < eccbytes; i++)
-		nbc->eccmask[i] ^= 0xff;
-
-	if (!eccstrength)
-		nand->ecc.strength = (eccbytes * 8) / fls(8 * eccsize);
-
-	return nbc;
-fail:
-	nand_bch_free(nbc);
-	return NULL;
-}
-EXPORT_SYMBOL(nand_bch_init);
-
-/**
- * nand_bch_free - [NAND Interface] Release NAND BCH ECC resources
- * @nbc:	NAND BCH control structure
- */
-void nand_bch_free(struct nand_bch_control *nbc)
-{
-	if (nbc) {
-		bch_free(nbc->bch);
-		kfree(nbc->errloc);
-		kfree(nbc->eccmask);
-		kfree(nbc);
-	}
-}
-EXPORT_SYMBOL(nand_bch_free);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
-MODULE_DESCRIPTION("NAND software BCH ECC support");
diff --git a/drivers/mtd/nand/raw/nand_denali.c b/drivers/mtd/nand/raw/nand_denali.c
index f9896defc8..8fef992ef8 100644
--- a/drivers/mtd/nand/raw/nand_denali.c
+++ b/drivers/mtd/nand/raw/nand_denali.c
@@ -1231,7 +1231,8 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
+	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
 	chip->ecc.read_page_raw = denali_read_page_raw;
diff --git a/drivers/mtd/nand/raw/nand_esmt.c b/drivers/mtd/nand/raw/nand_esmt.c
index cd635c27ef..4412c407ae 100644
--- a/drivers/mtd/nand/raw/nand_esmt.c
+++ b/drivers/mtd/nand/raw/nand_esmt.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2018 Toradex AG
  *
@@ -10,27 +10,32 @@
 
 static void esmt_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
+
 	nand_decode_ext_id(chip);
 
 	/* Extract ECC requirements from 5th id byte. */
 	if (chip->id.len >= 5 && nand_is_slc(chip)) {
-		chip->base.ecc.requirements.step_size = 512;
+		requirements.step_size = 512;
 		switch (chip->id.data[4] & 0x3) {
 		case 0x0:
-			chip->base.ecc.requirements.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 0x1:
-			chip->base.ecc.requirements.strength = 2;
+			requirements.strength = 2;
 			break;
 		case 0x2:
-			chip->base.ecc.requirements.strength = 1;
+			requirements.strength = 1;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.ecc.requirements.step_size = 0;
+			requirements.step_size = 0;
 			break;
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int esmt_nand_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/nand_fsl_ifc.c b/drivers/mtd/nand/raw/nand_fsl_ifc.c
index 3b14b4ae15..1905e7b508 100644
--- a/drivers/mtd/nand/raw/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/raw/nand_fsl_ifc.c
@@ -300,7 +300,7 @@ static void fsl_ifc_cmdfunc(struct nand_chip *chip, uint32_t command,
 		ctrl->read_bytes = mtd->writesize + mtd->oobsize;
 		ctrl->index += column;
 
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 			ctrl->eccread = 1;
 
 		fsl_ifc_do_read(chip, 0, mtd);
@@ -322,7 +322,7 @@ static void fsl_ifc_cmdfunc(struct nand_chip *chip, uint32_t command,
 		return;
 
 	case NAND_CMD_RNDOUT:
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 			break;
 		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0);
 		set_addr(mtd, column, -1, 0);
@@ -960,10 +960,10 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 
 	/* Must also set CSOR_NAND_ECC_ENC_EN if DEC_EN set */
 	if (csor & CSOR_NAND_ECC_DEC_EN) {
-		nand->ecc.mode = NAND_ECC_HW;
+		nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
 	} else {
-		nand->ecc.mode = NAND_ECC_SOFT;
+		nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		nand->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
index fef9207495..4c0ea1ffa3 100644
--- a/drivers/mtd/nand/raw/nand_hynix.c
+++ b/drivers/mtd/nand/raw/nand_hynix.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/sizes.h>
+#include <linux/slab.h>
 
 #include "internals.h"
 
@@ -30,7 +31,6 @@ struct hynix_read_retry {
 
 /**
  * struct hynix_nand - private Hynix NAND struct
- * @nand_technology: manufacturing process expressed in picometer
  * @read_retry: read-retry information
  */
 struct hynix_nand {
@@ -494,34 +494,36 @@ static void hynix_nand_extract_oobsize(struct nand_chip *chip,
 static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 						bool valid_jedecid)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	u8 ecc_level = (chip->id.data[4] >> 4) & 0x7;
 
 	if (valid_jedecid) {
 		/* Reference: H27UCG8T2E datasheet */
-		chip->base.ecc.requirements.step_size = 1024;
+		requirements.step_size = 1024;
 
 		switch (ecc_level) {
 		case 0:
-			chip->base.ecc.requirements.step_size = 0;
-			chip->base.ecc.requirements.strength = 0;
+			requirements.step_size = 0;
+			requirements.strength = 0;
 			break;
 		case 1:
-			chip->base.ecc.requirements.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 2:
-			chip->base.ecc.requirements.strength = 24;
+			requirements.strength = 24;
 			break;
 		case 3:
-			chip->base.ecc.requirements.strength = 32;
+			requirements.strength = 32;
 			break;
 		case 4:
-			chip->base.ecc.requirements.strength = 40;
+			requirements.strength = 40;
 			break;
 		case 5:
-			chip->base.ecc.requirements.strength = 50;
+			requirements.strength = 50;
 			break;
 		case 6:
-			chip->base.ecc.requirements.strength = 60;
+			requirements.strength = 60;
 			break;
 		default:
 			/*
@@ -542,14 +544,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		if (nand_tech < 3) {
 			/* > 26nm, reference: H27UBG8T2A datasheet */
 			if (ecc_level < 5) {
-				chip->base.ecc.requirements.step_size = 512;
-				chip->base.ecc.requirements.strength = 1 << ecc_level;
+				requirements.step_size = 512;
+				requirements.strength = 1 << ecc_level;
 			} else if (ecc_level < 7) {
 				if (ecc_level == 5)
-					chip->base.ecc.requirements.step_size = 2048;
+					requirements.step_size = 2048;
 				else
-					chip->base.ecc.requirements.step_size = 1024;
-				chip->base.ecc.requirements.strength = 24;
+					requirements.step_size = 1024;
+				requirements.strength = 24;
 			} else {
 				/*
 				 * We should never reach this case, but if that
@@ -562,18 +564,20 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		} else {
 			/* <= 26nm, reference: H27UBG8T2B datasheet */
 			if (!ecc_level) {
-				chip->base.ecc.requirements.step_size = 0;
-				chip->base.ecc.requirements.strength = 0;
+				requirements.step_size = 0;
+				requirements.strength = 0;
 			} else if (ecc_level < 5) {
-				chip->base.ecc.requirements.step_size = 512;
-				chip->base.ecc.requirements.strength = 1 << (ecc_level - 1);
+				requirements.step_size = 512;
+				requirements.strength = 1 << (ecc_level - 1);
 			} else {
-				chip->base.ecc.requirements.step_size = 1024;
-				chip->base.ecc.requirements.strength = 24 +
+				requirements.step_size = 1024;
+				requirements.strength = 24 +
 							(8 * (ecc_level - 5));
 			}
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static void hynix_nand_extract_scrambling_requirements(struct nand_chip *chip,
@@ -709,8 +713,21 @@ static int hynix_nand_init(struct nand_chip *chip)
 	return ret;
 }
 
+static void hynix_fixup_onfi_param_page(struct nand_chip *chip,
+					struct nand_onfi_params *p)
+{
+	/*
+	 * Certain chips might report a 0 on sdr_timing_mode field
+	 * (bytes 129-130). This has been seen on H27U4G8F2GDA-BI.
+	 * According to ONFI specification, bit 0 of this field "shall be 1".
+	 * Forcibly set this bit.
+	 */
+	p->sdr_timing_modes |= cpu_to_le16(BIT(0));
+}
+
 const struct nand_manufacturer_ops hynix_nand_manuf_ops = {
 	.detect = hynix_nand_decode_id,
 	.init = hynix_nand_init,
 	.cleanup = hynix_nand_cleanup,
+	.fixup_onfi_param_page = hynix_fixup_onfi_param_page,
 };
diff --git a/drivers/mtd/nand/raw/nand_imx.c b/drivers/mtd/nand/raw/nand_imx.c
index 23b9c52e0f..42e864a618 100644
--- a/drivers/mtd/nand/raw/nand_imx.c
+++ b/drivers/mtd/nand/raw/nand_imx.c
@@ -436,9 +436,6 @@ static void imx_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
 	struct imx_nand_host *host = chip->priv;
 	uint16_t config1;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
-		return;
-
 	config1 = readw(host->regs + NFC_V1_V2_CONFIG1);
 
 	if (enable)
@@ -455,9 +452,6 @@ static void imx_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
 	struct imx_nand_host *host = chip->priv;
 	uint32_t config2;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
-		return;
-
 	config2 = readl(NFC_V3_CONFIG2);
 
 	if (enable)
@@ -1378,13 +1372,11 @@ static int __init imxnd_probe(struct device *dev)
 			host->correct = imx_nand_correct_data_v1;
 		else
 			host->correct = imx_nand_correct_data_v2_v3;
-		this->ecc.mode = NAND_ECC_HW;
 		this->ecc.size = 512;
 		this->ecc.read_page_raw = imx_nand_read_page_raw;
 		this->ecc.read_page = imx_nand_read_page;
 	} else {
 		this->ecc.size = 512;
-		this->ecc.mode = NAND_ECC_SOFT;
 	}
 
 	mtd_set_ecclayout(mtd, oob_smallpage);
@@ -1434,9 +1426,6 @@ static int __init imxnd_probe(struct device *dev)
 			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
 	}
 
-	if (this->ecc.mode == NAND_ECC_HW)
-		this->ecc.strength = host->eccsize;
-
 	/* second phase scan */
 	if (nand_scan_tail(this)) {
 		err = -ENXIO;
diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index bfedc789fb..7c0b2f40e3 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -6,6 +6,7 @@
  * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
  */
 
+#include <linux/slab.h>
 #include <linux/bitmap.h>
 #include "internals.h"
 
@@ -31,6 +32,16 @@
 
 #define MXIC_CMD_POWER_DOWN 0xB9
 
+#define ONFI_FEATURE_ADDR_30LFXG18AC_OTP	0x90
+#define MACRONIX_30LFXG18AC_OTP_START_PAGE	2
+#define MACRONIX_30LFXG18AC_OTP_PAGES		30
+#define MACRONIX_30LFXG18AC_OTP_PAGE_SIZE	2112
+#define MACRONIX_30LFXG18AC_OTP_SIZE_BYTES	\
+	(MACRONIX_30LFXG18AC_OTP_PAGES *	\
+	 MACRONIX_30LFXG18AC_OTP_PAGE_SIZE)
+
+#define MACRONIX_30LFXG18AC_OTP_EN		BIT(0)
+
 struct nand_onfi_vendor_macronix {
 	u8 reserved;
 	u8 reliability_func;
@@ -93,14 +104,13 @@ static void macronix_nand_onfi_init(struct nand_chip *chip)
 	struct nand_parameters *p = &chip->parameters;
 	struct nand_onfi_vendor_macronix *mxic;
 	struct device_node *dn = nand_get_flash_node(chip);
-	int rand_otp = 0;
+	int rand_otp;
 	int ret;
 
 	if (!p->onfi)
 		return;
 
-	if (of_find_property(dn, "mxic,enable-randomizer-otp", NULL))
-		rand_otp = 1;
+	rand_otp = of_property_read_bool(dn, "mxic,enable-randomizer-otp");
 
 	mxic = (struct nand_onfi_vendor_macronix *)p->onfi->vendor;
 	/* Subpage write is prohibited in randomizer operatoin */
@@ -316,6 +326,31 @@ static void macronix_nand_deep_power_down_support(struct nand_chip *chip)
 	chip->ops.resume = mxic_nand_resume;
 }
 
+static void macronix_nand_setup_otp(struct nand_chip *chip)
+{
+	static const char * const supported_otp_models[] = {
+		"MX30LF1G18AC",
+		"MX30LF2G18AC",
+		"MX30LF4G18AC",
+	};
+	struct mtd_info *mtd;
+
+	if (match_string(supported_otp_models,
+			 ARRAY_SIZE(supported_otp_models),
+			 chip->parameters.model) < 0)
+		return;
+
+	if (!chip->parameters.supports_set_get_features)
+		return;
+
+	bitmap_set(chip->parameters.get_feature_list,
+		   ONFI_FEATURE_ADDR_30LFXG18AC_OTP, 1);
+	bitmap_set(chip->parameters.set_feature_list,
+		   ONFI_FEATURE_ADDR_30LFXG18AC_OTP, 1);
+
+	mtd = nand_to_mtd(chip);
+}
+
 static int macronix_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -325,6 +360,7 @@ static int macronix_nand_init(struct nand_chip *chip)
 	macronix_nand_onfi_init(chip);
 	macronix_nand_block_protection_support(chip);
 	macronix_nand_deep_power_down_support(chip);
+	macronix_nand_setup_otp(chip);
 
 	return 0;
 }
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 758316e681..c019288190 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -6,7 +6,6 @@
  * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
  */
 
-#include <common.h>
 #include <linux/slab.h>
 
 #include "internals.h"
@@ -414,6 +413,8 @@ enum {
  */
 static int micron_supports_on_die_ecc(struct nand_chip *chip)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	u8 id[5];
 	int ret;
 
@@ -426,8 +427,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.ecc.requirements.strength != 4 &&
-	     chip->base.ecc.requirements.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	/* 0x2 means on-die ECC is available. */
@@ -468,8 +468,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.ecc.requirements.strength != 4 &&
-	     chip->base.ecc.requirements.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	return MICRON_ON_DIE_SUPPORTED;
@@ -477,6 +476,9 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 
 static int micron_nand_init(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct micron_nand *micron;
 	int ondie;
@@ -500,13 +502,13 @@ static int micron_nand_init(struct nand_chip *chip)
 	ondie = micron_supports_on_die_ecc(chip);
 
 	if (ondie == MICRON_ON_DIE_MANDATORY &&
-	    chip->ecc.mode != NAND_ECC_ON_DIE) {
+	    chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_DIE) {
 		pr_err("On-die ECC forcefully enabled, not supported\n");
 		ret = -EINVAL;
 		goto err_free_manuf_data;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_ON_DIE) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE) {
 		if (ondie == MICRON_ON_DIE_UNSUPPORTED) {
 			pr_err("On-die ECC selected but not supported\n");
 			ret = -EINVAL;
@@ -526,7 +528,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		 * That's not needed for 8-bit ECC, because the status expose
 		 * a better approximation of the number of bitflips in a page.
 		 */
-		if (chip->base.ecc.requirements.strength == 4) {
+		if (requirements->strength == 4) {
 			micron->ecc.rawbuf = kmalloc(mtd->writesize +
 						     mtd->oobsize,
 						     GFP_KERNEL);
@@ -536,16 +538,16 @@ static int micron_nand_init(struct nand_chip *chip)
 			}
 		}
 
-		if (chip->base.ecc.requirements.strength == 4)
+		if (requirements->strength == 4)
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_4_ooblayout_ops);
 		else
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_8_ooblayout_ops);
 
-		chip->ecc.bytes = chip->base.ecc.requirements.strength * 2;
+		chip->ecc.bytes = requirements->strength * 2;
 		chip->ecc.size = 512;
-		chip->ecc.strength = chip->base.ecc.requirements.strength;
+		chip->ecc.strength = requirements->strength;
 		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
diff --git a/drivers/mtd/nand/raw/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
index 27ca4456c8..0e2a2b639a 100644
--- a/drivers/mtd/nand/raw/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
@@ -932,7 +932,7 @@ static int pxa_ecc_strength1(struct mrvl_nand_host *host,
 		host->spare_size = 40;
 		host->ecc_size = 24;
 		host->ecc_bch = 0;
-		ecc->mode = NAND_ECC_HW;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		ecc->size = 512;
 		ecc->strength = 1;
 		mtd_set_ecclayout(mtd, &ecc_layout_2KB_hwecc);
@@ -944,7 +944,7 @@ static int pxa_ecc_strength1(struct mrvl_nand_host *host,
 		host->spare_size = 8;
 		host->ecc_size = 8;
 		host->ecc_bch = 0;
-		ecc->mode = NAND_ECC_HW;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		ecc->size = 512;
 		mtd_set_ecclayout(mtd, &ecc_layout_512B_hwecc);
 		ecc->strength = 1;
@@ -972,7 +972,7 @@ static int pxa_ecc_strength4(struct mrvl_nand_host *host,
 		host->spare_size = 32;
 		host->ecc_size = 32;
 		host->ecc_bch = 1;
-		ecc->mode = NAND_ECC_HW;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		ecc->size = 2048;
 		mtd_set_ecclayout(mtd, &ecc_layout_2KB_bch4bit);
 		ecc->strength = 16;
@@ -984,7 +984,7 @@ static int pxa_ecc_strength4(struct mrvl_nand_host *host,
 		host->spare_size = 32;
 		host->ecc_size = 32;
 		host->ecc_bch = 1;
-		ecc->mode = NAND_ECC_HW;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		ecc->size = 2048;
 		mtd_set_ecclayout(mtd, &ecc_layout_4KB_bch4bit);
 		ecc->strength = 16;
@@ -1012,7 +1012,7 @@ static int pxa_ecc_strength8(struct mrvl_nand_host *host,
 		host->spare_size = 0;
 		host->ecc_size = 32;
 		host->ecc_bch = 1;
-		ecc->mode = NAND_ECC_HW;
+		ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		ecc->size = 1024;
 		mtd_set_ecclayout(mtd, &ecc_layout_4KB_bch8bit);
 		ecc->strength = 16;
diff --git a/drivers/mtd/nand/raw/nand_mxs.c b/drivers/mtd/nand/raw/nand_mxs.c
index c2a7d036d6..ca3471a226 100644
--- a/drivers/mtd/nand/raw/nand_mxs.c
+++ b/drivers/mtd/nand/raw/nand_mxs.c
@@ -2242,7 +2242,7 @@ static int mxs_nand_probe(struct device *dev)
 	chip->ecc.read_oob	= mxs_nand_ecc_read_oob;
 	chip->ecc.write_oob	= mxs_nand_ecc_write_oob;
 
-	chip->ecc.mode		= NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	/* first scan to find the device and get the page size */
 	err = nand_scan_ident(chip, 4, NULL);
diff --git a/drivers/mtd/nand/raw/nand_omap_gpmc.c b/drivers/mtd/nand/raw/nand_omap_gpmc.c
index ab36183005..2b1fb07f93 100644
--- a/drivers/mtd/nand/raw/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/raw/nand_omap_gpmc.c
@@ -1054,7 +1054,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		nand->ecc.write_page = NULL;
 		nand->ecc.read_oob = NULL;
 		nand->ecc.write_oob = NULL;
-		nand->ecc.mode = NAND_ECC_HW;
+		nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		nand->options &= ~NAND_SUBPAGE_READ;
 	}
 
@@ -1138,7 +1138,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		break;
 	case OMAP_ECC_SOFT:
 		minfo->ecclayout = NULL;
-		nand->ecc.mode = NAND_ECC_SOFT;
+		nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+		nand->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		oinfo->nand.ecc.strength = 1;
 		break;
 	default:
diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 5dd29ba6ba..9dc2ee5fcf 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  Copyright (C) 2000 Steven J. Hill (sjhill@realitydiluted.com)
  *		  2002-2006 Thomas Gleixner (tglx@linutronix.de)
@@ -35,6 +35,8 @@ u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
 static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 					    struct nand_onfi_params *p)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements;
 	struct onfi_ext_param_page *ep;
 	struct onfi_ext_section *s;
 	struct onfi_ext_ecc_info *ecc;
@@ -95,8 +97,10 @@ static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 		goto ext_out;
 	}
 
-	chip->base.ecc.requirements.strength = ecc->ecc_bits;
-	chip->base.ecc.requirements.step_size = 1 << ecc->codeword_size;
+	requirements.strength = ecc->ecc_bits;
+	requirements.step_size = 1 << ecc->codeword_size;
+	nanddev_set_ecc_requirements(base, &requirements);
+
 	ret = 0;
 
 ext_out:
@@ -140,6 +144,7 @@ static void nand_bit_wise_majority(const void **srcbufs,
  */
 int nand_onfi_detect(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	struct nand_onfi_params *p = NULL, *pbuf;
@@ -162,8 +167,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 	if (!pbuf)
 		return -ENOMEM;
 
-	if (!nand_has_exec_op(chip) ||
-	    !nand_read_data_op(chip, &pbuf[0], sizeof(*pbuf), true, true))
+	if (!nand_has_exec_op(chip) || chip->controller->supported_op.data_only_read)
 		use_datain = true;
 
 	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
@@ -232,7 +236,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 
 	sanitize_string(p->manufacturer, sizeof(p->manufacturer));
 	sanitize_string(p->model, sizeof(p->model));
-	chip->parameters.model = strdup(p->model);
+	chip->parameters.model = kstrdup(p->model, GFP_KERNEL);
 	if (!chip->parameters.model) {
 		ret = -ENOMEM;
 		goto free_onfi_param_page;
@@ -266,8 +270,12 @@ int nand_onfi_detect(struct nand_chip *chip)
 		chip->options |= NAND_BUSWIDTH_16;
 
 	if (p->ecc_bits != 0xff) {
-		chip->base.ecc.requirements.strength = p->ecc_bits;
-		chip->base.ecc.requirements.step_size = 512;
+		struct nand_ecc_props requirements = {
+			.strength = p->ecc_bits,
+			.step_size = 512,
+		};
+
+		nanddev_set_ecc_requirements(base, &requirements);
 	} else if (onfi_version >= 21 &&
 		(le16_to_cpu(p->features) & ONFI_FEATURE_EXT_PARAM_PAGE)) {
 
@@ -296,6 +304,9 @@ int nand_onfi_detect(struct nand_chip *chip)
 			   ONFI_FEATURE_ADDR_TIMING_MODE, 1);
 	}
 
+	if (le16_to_cpu(p->opt_cmd) & ONFI_OPT_CMD_READ_CACHE)
+		chip->parameters.supports_read_cache = true;
+
 	onfi = kzalloc(sizeof(*onfi), GFP_KERNEL);
 	if (!onfi) {
 		ret = -ENOMEM;
@@ -307,7 +318,10 @@ int nand_onfi_detect(struct nand_chip *chip)
 	onfi->tBERS = le16_to_cpu(p->t_bers);
 	onfi->tR = le16_to_cpu(p->t_r);
 	onfi->tCCS = le16_to_cpu(p->t_ccs);
-	onfi->async_timing_mode = le16_to_cpu(p->async_timing_mode);
+	onfi->fast_tCAD = le16_to_cpu(p->nvddr_nvddr2_features) & BIT(0);
+	onfi->sdr_timing_modes = le16_to_cpu(p->sdr_timing_modes);
+	if (le16_to_cpu(p->features) & ONFI_FEATURE_NV_DDR)
+		onfi->nvddr_timing_modes = le16_to_cpu(p->nvddr_timing_modes);
 	onfi->vendor_revision = le16_to_cpu(p->vendor_revision);
 	memcpy(onfi->vendor, p->vendor, sizeof(p->vendor));
 	chip->parameters.onfi = onfi;
diff --git a/drivers/mtd/nand/raw/nand_orion.c b/drivers/mtd/nand/raw/nand_orion.c
index ff3642939a..c7fa4a08e9 100644
--- a/drivers/mtd/nand/raw/nand_orion.c
+++ b/drivers/mtd/nand/raw/nand_orion.c
@@ -117,7 +117,8 @@ static int orion_nand_probe(struct device *dev)
 	chip->legacy.IO_ADDR_R = chip->legacy.IO_ADDR_W = io_base;
 	chip->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	chip->legacy.read_buf = orion_nand_read_buf;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
+	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	WARN(width > 16, "%d bit bus width out of range", width);
 	if (width == 16)
diff --git a/drivers/mtd/nand/raw/nand_samsung.c b/drivers/mtd/nand/raw/nand_samsung.c
index ee993af1e5..0be6b75638 100644
--- a/drivers/mtd/nand/raw/nand_samsung.c
+++ b/drivers/mtd/nand/raw/nand_samsung.c
@@ -10,6 +10,8 @@
 
 static void samsung_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -71,23 +73,23 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 		/* Extract ECC requirements from 5th id byte*/
 		extid = (chip->id.data[4] >> 4) & 0x07;
 		if (extid < 5) {
-			chip->base.ecc.requirements.step_size = 512;
-			chip->base.ecc.requirements.strength = 1 << extid;
+			requirements.step_size = 512;
+			requirements.strength = 1 << extid;
 		} else {
-			chip->base.ecc.requirements.step_size = 1024;
+			requirements.step_size = 1024;
 			switch (extid) {
 			case 5:
-				chip->base.ecc.requirements.strength = 24;
+				requirements.strength = 24;
 				break;
 			case 6:
-				chip->base.ecc.requirements.strength = 40;
+				requirements.strength = 40;
 				break;
 			case 7:
-				chip->base.ecc.requirements.strength = 60;
+				requirements.strength = 60;
 				break;
 			default:
 				WARN(1, "Could not decode ECC info");
-				chip->base.ecc.requirements.step_size = 0;
+				requirements.step_size = 0;
 			}
 		}
 	} else {
@@ -97,8 +99,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			switch (chip->id.data[1]) {
 			/* K9F4G08U0D-S[I|C]B0(T00) */
 			case 0xDC:
-				chip->base.ecc.requirements.step_size = 512;
-				chip->base.ecc.requirements.strength = 1;
+				requirements.step_size = 512;
+				requirements.strength = 1;
 				break;
 
 			/* K9F1G08U0E 21nm chips do not support subpage write */
@@ -112,6 +114,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			}
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int samsung_nand_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index 1338133e81..a10dad927e 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -292,6 +292,261 @@ static const struct nand_interface_config onfi_sdr_timings[] = {
 	},
 };
 
+static const struct nand_interface_config onfi_nvddr_timings[] = {
+	/* Mode 0 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 0,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 10000,
+			.tCALH_min = 10000,
+			.tCALS_min = 10000,
+			.tCAS_min = 10000,
+			.tCEH_min = 20000,
+			.tCH_min = 10000,
+			.tCK_min = 50000,
+			.tCS_min = 35000,
+			.tDH_min = 5000,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 5000,
+			.tDS_min = 5000,
+			.tDSC_min = 50000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 6000,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+	/* Mode 1 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 1,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 5000,
+			.tCALH_min = 5000,
+			.tCALS_min = 5000,
+			.tCAS_min = 5000,
+			.tCEH_min = 20000,
+			.tCH_min = 5000,
+			.tCK_min = 30000,
+			.tCS_min = 25000,
+			.tDH_min = 2500,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 2500,
+			.tDS_min = 3000,
+			.tDSC_min = 30000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 3000,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+	/* Mode 2 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 2,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 4000,
+			.tCALH_min = 4000,
+			.tCALS_min = 4000,
+			.tCAS_min = 4000,
+			.tCEH_min = 20000,
+			.tCH_min = 4000,
+			.tCK_min = 20000,
+			.tCS_min = 15000,
+			.tDH_min = 1700,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 1700,
+			.tDS_min = 2000,
+			.tDSC_min = 20000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 2000,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+	/* Mode 3 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 3,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 3000,
+			.tCALH_min = 3000,
+			.tCALS_min = 3000,
+			.tCAS_min = 3000,
+			.tCEH_min = 20000,
+			.tCH_min = 3000,
+			.tCK_min = 15000,
+			.tCS_min = 15000,
+			.tDH_min = 1300,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 1300,
+			.tDS_min = 1500,
+			.tDSC_min = 15000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 1500,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+	/* Mode 4 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 4,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 2500,
+			.tCALH_min = 2500,
+			.tCALS_min = 2500,
+			.tCAS_min = 2500,
+			.tCEH_min = 20000,
+			.tCH_min = 2500,
+			.tCK_min = 12000,
+			.tCS_min = 15000,
+			.tDH_min = 1100,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 1000,
+			.tDS_min = 1100,
+			.tDSC_min = 12000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 1200,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+	/* Mode 5 */
+	{
+		.type = NAND_NVDDR_IFACE,
+		.timings.mode = 5,
+		.timings.nvddr = {
+			.tCCS_min = 500000,
+			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tAC_min = 3000,
+			.tAC_max = 25000,
+			.tADL_min = 400000,
+			.tCAD_min = 45000,
+			.tCAH_min = 2000,
+			.tCALH_min = 2000,
+			.tCALS_min = 2000,
+			.tCAS_min = 2000,
+			.tCEH_min = 20000,
+			.tCH_min = 2000,
+			.tCK_min = 10000,
+			.tCS_min = 15000,
+			.tDH_min = 900,
+			.tDQSCK_min = 3000,
+			.tDQSCK_max = 25000,
+			.tDQSD_min = 0,
+			.tDQSD_max = 18000,
+			.tDQSHZ_max = 20000,
+			.tDQSQ_max = 850,
+			.tDS_min = 900,
+			.tDSC_min = 10000,
+			.tFEAT_max = 1000000,
+			.tITC_max = 1000000,
+			.tQHS_max = 1000,
+			.tRHW_min = 100000,
+			.tRR_min = 20000,
+			.tRST_max = 500000000,
+			.tWB_max = 100000,
+			.tWHR_min = 80000,
+			.tWRCK_min = 20000,
+			.tWW_min = 100000,
+		},
+	},
+};
+
 /* All NAND chips share the same reset data interface: SDR mode 0 */
 const struct nand_interface_config *nand_get_reset_interface_config(void)
 {
@@ -346,23 +601,60 @@ onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings)
 }
 
 /**
- * onfi_fill_interface_config - Initialize an interface config from a given
- *                              ONFI mode
+ * onfi_find_closest_nvddr_mode - Derive the closest ONFI NVDDR timing mode
+ *                                given a set of timings
+ * @spec_timings: the timings to challenge
+ */
+unsigned int
+onfi_find_closest_nvddr_mode(const struct nand_nvddr_timings *spec_timings)
+{
+	const struct nand_nvddr_timings *onfi_timings;
+	int mode;
+
+	for (mode = ARRAY_SIZE(onfi_nvddr_timings) - 1; mode > 0; mode--) {
+		onfi_timings = &onfi_nvddr_timings[mode].timings.nvddr;
+
+		if (spec_timings->tCCS_min <= onfi_timings->tCCS_min &&
+		    spec_timings->tAC_min <= onfi_timings->tAC_min &&
+		    spec_timings->tADL_min <= onfi_timings->tADL_min &&
+		    spec_timings->tCAD_min <= onfi_timings->tCAD_min &&
+		    spec_timings->tCAH_min <= onfi_timings->tCAH_min &&
+		    spec_timings->tCALH_min <= onfi_timings->tCALH_min &&
+		    spec_timings->tCALS_min <= onfi_timings->tCALS_min &&
+		    spec_timings->tCAS_min <= onfi_timings->tCAS_min &&
+		    spec_timings->tCEH_min <= onfi_timings->tCEH_min &&
+		    spec_timings->tCH_min <= onfi_timings->tCH_min &&
+		    spec_timings->tCK_min <= onfi_timings->tCK_min &&
+		    spec_timings->tCS_min <= onfi_timings->tCS_min &&
+		    spec_timings->tDH_min <= onfi_timings->tDH_min &&
+		    spec_timings->tDQSCK_min <= onfi_timings->tDQSCK_min &&
+		    spec_timings->tDQSD_min <= onfi_timings->tDQSD_min &&
+		    spec_timings->tDS_min <= onfi_timings->tDS_min &&
+		    spec_timings->tDSC_min <= onfi_timings->tDSC_min &&
+		    spec_timings->tRHW_min <= onfi_timings->tRHW_min &&
+		    spec_timings->tRR_min <= onfi_timings->tRR_min &&
+		    spec_timings->tWHR_min <= onfi_timings->tWHR_min &&
+		    spec_timings->tWRCK_min <= onfi_timings->tWRCK_min &&
+		    spec_timings->tWW_min <= onfi_timings->tWW_min)
+			return mode;
+	}
+
+	return 0;
+}
+
+/*
+ * onfi_fill_sdr_interface_config - Initialize a SDR interface config from a
+ *                                  given ONFI mode
  * @chip: The NAND chip
  * @iface: The interface configuration to fill
- * @type: The interface type
  * @timing_mode: The ONFI timing mode
  */
-void onfi_fill_interface_config(struct nand_chip *chip,
-				struct nand_interface_config *iface,
-				enum nand_interface_type type,
-				unsigned int timing_mode)
+static void onfi_fill_sdr_interface_config(struct nand_chip *chip,
+					   struct nand_interface_config *iface,
+					   unsigned int timing_mode)
 {
 	struct onfi_params *onfi = chip->parameters.onfi;
 
-	if (WARN_ON(type != NAND_SDR_IFACE))
-		return;
-
 	if (WARN_ON(timing_mode >= ARRAY_SIZE(onfi_sdr_timings)))
 		return;
 
@@ -386,6 +678,64 @@ void onfi_fill_interface_config(struct nand_chip *chip,
 	}
 }
 
+/**
+ * onfi_fill_nvddr_interface_config - Initialize a NVDDR interface config from a
+ *                                    given ONFI mode
+ * @chip: The NAND chip
+ * @iface: The interface configuration to fill
+ * @timing_mode: The ONFI timing mode
+ */
+static void onfi_fill_nvddr_interface_config(struct nand_chip *chip,
+					     struct nand_interface_config *iface,
+					     unsigned int timing_mode)
+{
+	struct onfi_params *onfi = chip->parameters.onfi;
+
+	if (WARN_ON(timing_mode >= ARRAY_SIZE(onfi_nvddr_timings)))
+		return;
+
+	*iface = onfi_nvddr_timings[timing_mode];
+
+	/*
+	 * Initialize timings that cannot be deduced from timing mode:
+	 * tPROG, tBERS, tR, tCCS and tCAD.
+	 * These information are part of the ONFI parameter page.
+	 */
+	if (onfi) {
+		struct nand_nvddr_timings *timings = &iface->timings.nvddr;
+
+		/* microseconds -> picoseconds */
+		timings->tPROG_max = 1000000ULL * onfi->tPROG;
+		timings->tBERS_max = 1000000ULL * onfi->tBERS;
+		timings->tR_max = 1000000ULL * onfi->tR;
+
+		/* nanoseconds -> picoseconds */
+		timings->tCCS_min = 1000UL * onfi->tCCS;
+
+		if (onfi->fast_tCAD)
+			timings->tCAD_min = 25000;
+	}
+}
+
+/**
+ * onfi_fill_interface_config - Initialize an interface config from a given
+ *                              ONFI mode
+ * @chip: The NAND chip
+ * @iface: The interface configuration to fill
+ * @type: The interface type
+ * @timing_mode: The ONFI timing mode
+ */
+void onfi_fill_interface_config(struct nand_chip *chip,
+				struct nand_interface_config *iface,
+				enum nand_interface_type type,
+				unsigned int timing_mode)
+{
+	if (type == NAND_SDR_IFACE)
+		return onfi_fill_sdr_interface_config(chip, iface, timing_mode);
+	else
+		return onfi_fill_nvddr_interface_config(chip, iface, timing_mode);
+}
+
 /**
  * onfi_async_timing_mode_to_sdr_timings - [NAND Interface] Retrieve NAND
  * timings according to the given ONFI timing mode
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 3fe0347bfd..5b38fa7bdb 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -145,6 +145,8 @@ static void toshiba_nand_benand_init(struct nand_chip *chip)
 
 static void toshiba_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -175,23 +177,25 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	 *  - 24nm: 8 bit ECC for each 512Byte is required.
 	 */
 	if (chip->id.len >= 6 && nand_is_slc(chip)) {
-		chip->base.ecc.requirements.step_size = 512;
+		requirements.step_size = 512;
 		switch (chip->id.data[5] & 0x7) {
 		case 0x4:
-			chip->base.ecc.requirements.strength = 1;
+			requirements.strength = 1;
 			break;
 		case 0x5:
-			chip->base.ecc.requirements.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 0x6:
-			chip->base.ecc.requirements.strength = 8;
+			requirements.strength = 8;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.ecc.requirements.step_size = 0;
+			requirements.step_size = 0;
 			break;
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int
@@ -252,17 +256,18 @@ static int toshiba_nand_init(struct nand_chip *chip)
 		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;
 
 	/* Check that chip is BENAND and ECC mode is on-die */
-	if (nand_is_slc(chip) && chip->ecc.mode == NAND_ECC_ON_DIE &&
+	if (nand_is_slc(chip) &&
+	    chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE &&
 	    chip->id.data[4] & TOSHIBA_NAND_ID4_IS_BENAND)
 		toshiba_nand_benand_init(chip);
 
-	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
-		return -EINVAL; /* MLC, not yet supported in barebox */
 	if (!strncmp("TC58NVG0S3E", chip->parameters.model,
 		     sizeof("TC58NVG0S3E") - 1))
 		tc58nvg0s3e_init(chip);
-	if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model,
-		     sizeof("TH58NVG2S3HBAI4") - 1))
+	if ((!strncmp("TH58NVG2S3HBAI4", chip->parameters.model,
+		     sizeof("TH58NVG2S3HBAI4") - 1)) ||
+	    (!strncmp("TH58NVG3S0HBAI4", chip->parameters.model,
+		     sizeof("TH58NVG3S0HBAI4") - 1)))
 		th58nvg2s3hbai4_init(chip);
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/nomadik_nand.c b/drivers/mtd/nand/raw/nomadik_nand.c
index 940ed9809e..1be3021e99 100644
--- a/drivers/mtd/nand/raw/nomadik_nand.c
+++ b/drivers/mtd/nand/raw/nomadik_nand.c
@@ -198,7 +198,7 @@ static int nomadik_nand_probe(struct device *dev)
 		return PTR_ERR(nand->legacy.IO_ADDR_W);
 	nand->legacy.cmd_ctrl = nomadik_cmd_ctrl;
 
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	mtd_set_ecclayout(mtd, &nomadik_ecc_layout);
 	nand->ecc.calculate = nomadik_ecc512_calc;
 	nand->ecc.correct = nomadik_ecc512_correct;
diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 47b012cc9e..279b864970 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1310,7 +1310,7 @@ static int __init stm32_fmc2_nfc_probe(struct device *dev)
 	chip->options |= NAND_BUSWIDTH_AUTO | NAND_NO_SUBPAGE_WRITE;
 
 	/* Default ECC settings */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = FMC2_ECC_STEP_SIZE;
 	chip->ecc.strength = FMC2_ECC_BCH8;
 
diff --git a/drivers/of/of_mtd.c b/drivers/of/of_mtd.c
index d28f5109b1..fa2c778138 100644
--- a/drivers/of/of_mtd.c
+++ b/drivers/of/of_mtd.c
@@ -21,7 +21,6 @@ static const char *nand_ecc_modes[] = {
 	[NAND_ECC_HW]		= "hw",
 	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
 	[NAND_ECC_ON_DIE]	= "on-die",
-	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
 	[NAND_ECC_SOFT_BCH]	= "soft_bch",
 };
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 530f743e68..8d99dff27f 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -200,11 +200,14 @@ struct mtd_info {
 	/* Chip-supported device locking */
 	int (*_lock) (struct mtd_info *mtd, loff_t ofs, uint64_t len);
 	int (*_unlock) (struct mtd_info *mtd, loff_t ofs, uint64_t len);
+	int (*_is_locked) (struct mtd_info *mtd, loff_t ofs, uint64_t len);
+	int (*_block_isreserved) (struct mtd_info *mtd, loff_t ofs);
 
 	/* Bad block management functions */
 	int (*_block_isbad) (struct mtd_info *mtd, loff_t ofs);
 	int (*_block_markbad) (struct mtd_info *mtd, loff_t ofs);
 	int (*_block_markgood) (struct mtd_info *mtd, loff_t ofs);
+	int (*_max_bad_blocks) (struct mtd_info *mtd, loff_t ofs, size_t len);
 
 	int (*of_fixup)(struct mtd_info *mtd, struct device_node *root);
 
diff --git a/include/linux/mtd/nand-ecc-sw-bch.h b/include/linux/mtd/nand-ecc-sw-bch.h
new file mode 100644
index 0000000000..9da9969505
--- /dev/null
+++ b/include/linux/mtd/nand-ecc-sw-bch.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright © 2011 Ivan Djelic <ivan.djelic@parrot.com>
+ *
+ * This file is the header for the NAND BCH ECC implementation.
+ */
+
+#ifndef __MTD_NAND_ECC_SW_BCH_H__
+#define __MTD_NAND_ECC_SW_BCH_H__
+
+#include <linux/mtd/nand.h>
+#include <linux/bch.h>
+
+/**
+ * struct nand_ecc_sw_bch_conf - private software BCH ECC engine structure
+ * @req_ctx: Save request context and tweak the original request to fit the
+ *           engine needs
+ * @code_size: Number of bytes needed to store a code (one code per step)
+ * @calc_buf: Buffer to use when calculating ECC bytes
+ * @code_buf: Buffer to use when reading (raw) ECC bytes from the chip
+ * @bch: BCH control structure
+ * @errloc: error location array
+ * @eccmask: XOR ecc mask, allows erased pages to be decoded as valid
+ */
+struct nand_ecc_sw_bch_conf {
+	struct nand_ecc_req_tweak_ctx req_ctx;
+	unsigned int code_size;
+	u8 *calc_buf;
+	u8 *code_buf;
+	struct bch_control *bch;
+	unsigned int *errloc;
+	unsigned char *eccmask;
+};
+
+#if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)
+
+int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+			      const unsigned char *buf, unsigned char *code);
+int nand_ecc_sw_bch_correct(struct nand_device *nand, unsigned char *buf,
+			    unsigned char *read_ecc, unsigned char *calc_ecc);
+int nand_ecc_sw_bch_init_ctx(struct nand_device *nand);
+void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void);
+
+#else /* !CONFIG_MTD_NAND_ECC_SW_BCH */
+
+static inline int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+					    const unsigned char *buf,
+					    unsigned char *code)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_bch_correct(struct nand_device *nand,
+					  unsigned char *buf,
+					  unsigned char *read_ecc,
+					  unsigned char *calc_ecc)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_bch_init_ctx(struct nand_device *nand)
+{
+	return -ENOTSUPP;
+}
+
+static inline void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand) {}
+
+#endif /* CONFIG_MTD_NAND_ECC_SW_BCH */
+
+#endif /* __MTD_NAND_ECC_SW_BCH_H__ */
diff --git a/include/linux/mtd/nand-ecc-sw-hamming.h b/include/linux/mtd/nand-ecc-sw-hamming.h
new file mode 100644
index 0000000000..c6c71894c5
--- /dev/null
+++ b/include/linux/mtd/nand-ecc-sw-hamming.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *  Copyright (C) 2000-2010 Steven J. Hill <sjhill@realitydiluted.com>
+ *			    David Woodhouse <dwmw2@infradead.org>
+ *			    Thomas Gleixner <tglx@linutronix.de>
+ *
+ * This file is the header for the NAND Hamming ECC implementation.
+ */
+
+#ifndef __MTD_NAND_ECC_SW_HAMMING_H__
+#define __MTD_NAND_ECC_SW_HAMMING_H__
+
+#include <linux/mtd/nand.h>
+
+/**
+ * struct nand_ecc_sw_hamming_conf - private software Hamming ECC engine structure
+ * @req_ctx: Save request context and tweak the original request to fit the
+ *           engine needs
+ * @code_size: Number of bytes needed to store a code (one code per step)
+ * @calc_buf: Buffer to use when calculating ECC bytes
+ * @code_buf: Buffer to use when reading (raw) ECC bytes from the chip
+ * @sm_order: Smart Media special ordering
+ */
+struct nand_ecc_sw_hamming_conf {
+	struct nand_ecc_req_tweak_ctx req_ctx;
+	unsigned int code_size;
+	u8 *calc_buf;
+	u8 *code_buf;
+	unsigned int sm_order;
+};
+
+#if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING)
+
+int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand);
+void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand);
+int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
+			     unsigned char *code, bool sm_order);
+int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+				  const unsigned char *buf,
+				  unsigned char *code);
+int ecc_sw_hamming_correct(unsigned char *buf, unsigned char *read_ecc,
+			   unsigned char *calc_ecc, unsigned int step_size,
+			   bool sm_order);
+int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
+				unsigned char *read_ecc,
+				unsigned char *calc_ecc);
+
+#else /* !CONFIG_MTD_NAND_ECC_SW_HAMMING */
+
+static inline int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand)
+{
+	return -ENOTSUPP;
+}
+
+static inline void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand) {}
+
+static inline int ecc_sw_hamming_calculate(const unsigned char *buf,
+					   unsigned int step_size,
+					   unsigned char *code, bool sm_order)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+						const unsigned char *buf,
+						unsigned char *code)
+{
+	return -ENOTSUPP;
+}
+
+static inline int ecc_sw_hamming_correct(unsigned char *buf,
+					 unsigned char *read_ecc,
+					 unsigned char *calc_ecc,
+					 unsigned int step_size, bool sm_order)
+{
+	return -ENOTSUPP;
+}
+
+static inline int nand_ecc_sw_hamming_correct(struct nand_device *nand,
+					      unsigned char *buf,
+					      unsigned char *read_ecc,
+					      unsigned char *calc_ecc)
+{
+	return -ENOTSUPP;
+}
+
+#endif /* CONFIG_MTD_NAND_ECC_SW_HAMMING */
+
+#endif /* __MTD_NAND_ECC_SW_HAMMING_H__ */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 6ce5c1d041..ef2546490d 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -19,8 +19,8 @@ struct nand_device;
  * is supported now. If you add a chip with bigger oobsize/page
  * adjust this accordingly.
  */
-#define NAND_MAX_OOBSIZE        640
-#define NAND_MAX_PAGESIZE       8192
+#define NAND_MAX_OOBSIZE	640
+#define NAND_MAX_PAGESIZE	8192
 
 /**
  * struct nand_memory_organization - Memory organization structure
@@ -90,8 +90,19 @@ struct nand_pos {
 	unsigned int page;
 };
 
+/**
+ * enum nand_page_io_req_type - Direction of an I/O request
+ * @NAND_PAGE_READ: from the chip, to the controller
+ * @NAND_PAGE_WRITE: from the controller, to the chip
+ */
+enum nand_page_io_req_type {
+	NAND_PAGE_READ = 0,
+	NAND_PAGE_WRITE,
+};
+
 /**
  * struct nand_page_io_req - NAND I/O request object
+ * @type: the type of page I/O: read or write
  * @pos: the position this I/O request is targeting
  * @dataoffs: the offset within the page
  * @datalen: number of data bytes to read from/write to this page
@@ -107,6 +118,7 @@ struct nand_pos {
  * specific commands/operations.
  */
 struct nand_page_io_req {
+	enum nand_page_io_req_type type;
 	struct nand_pos pos;
 	unsigned int dataoffs;
 	unsigned int datalen;
@@ -123,18 +135,77 @@ struct nand_page_io_req {
 	int mode;
 };
 
+const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void);
+const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void);
+const struct mtd_ooblayout_ops *nand_get_large_page_hamming_ooblayout(void);
+
+/**
+ * enum nand_ecc_engine_type - NAND ECC engine type
+ * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
+ * @NAND_ECC_ENGINE_TYPE_NONE: No ECC correction
+ * @NAND_ECC_ENGINE_TYPE_SOFT: Software ECC correction
+ * @NAND_ECC_ENGINE_TYPE_ON_HOST: On host hardware ECC correction
+ * @NAND_ECC_ENGINE_TYPE_ON_DIE: On chip hardware ECC correction
+ */
+enum nand_ecc_engine_type {
+	NAND_ECC_ENGINE_TYPE_INVALID,
+	NAND_ECC_ENGINE_TYPE_NONE,
+	NAND_ECC_ENGINE_TYPE_SOFT,
+	NAND_ECC_ENGINE_TYPE_ON_HOST,
+	NAND_ECC_ENGINE_TYPE_ON_DIE,
+};
+
+/**
+ * enum nand_ecc_placement - NAND ECC bytes placement
+ * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
+ * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
+ * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
+ *                                  interleaved with regular data in the main
+ *                                  area
+ */
+enum nand_ecc_placement {
+	NAND_ECC_PLACEMENT_UNKNOWN,
+	NAND_ECC_PLACEMENT_OOB,
+	NAND_ECC_PLACEMENT_INTERLEAVED,
+};
+
+/**
+ * enum nand_ecc_algo - NAND ECC algorithm
+ * @NAND_ECC_ALGO_UNKNOWN: Unknown algorithm
+ * @NAND_ECC_ALGO_HAMMING: Hamming algorithm
+ * @NAND_ECC_ALGO_BCH: Bose-Chaudhuri-Hocquenghem algorithm
+ * @NAND_ECC_ALGO_RS: Reed-Solomon algorithm
+ */
+enum nand_ecc_algo {
+	NAND_ECC_ALGO_UNKNOWN,
+	NAND_ECC_ALGO_HAMMING,
+	NAND_ECC_ALGO_BCH,
+	NAND_ECC_ALGO_RS,
+};
+
 /**
  * struct nand_ecc_props - NAND ECC properties
+ * @engine_type: ECC engine type
+ * @placement: OOB placement (if relevant)
+ * @algo: ECC algorithm (if relevant)
  * @strength: ECC strength
  * @step_size: Number of bytes per step
+ * @flags: Misc properties
  */
 struct nand_ecc_props {
+	enum nand_ecc_engine_type engine_type;
+	enum nand_ecc_placement placement;
+	enum nand_ecc_algo algo;
 	unsigned int strength;
 	unsigned int step_size;
+	unsigned int flags;
 };
 
 #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }
 
+/* NAND ECC misc flags */
+#define NAND_ECC_MAXIMIZE_STRENGTH BIT(0)
+
 /**
  * struct nand_bbt - bad block table object
  * @cache: in memory BBT cache
@@ -165,19 +236,178 @@ struct nand_ops {
 	bool (*isbad)(struct nand_device *nand, const struct nand_pos *pos);
 };
 
+/**
+ * struct nand_ecc_context - Context for the ECC engine
+ * @conf: basic ECC engine parameters
+ * @nsteps: number of ECC steps
+ * @total: total number of bytes used for storing ECC codes, this is used by
+ *         generic OOB layouts
+ * @priv: ECC engine driver private data
+ */
+struct nand_ecc_context {
+	struct nand_ecc_props conf;
+	unsigned int nsteps;
+	unsigned int total;
+	void *priv;
+};
+
+/**
+ * struct nand_ecc_engine_ops - ECC engine operations
+ * @init_ctx: given a desired user configuration for the pointed NAND device,
+ *            requests the ECC engine driver to setup a configuration with
+ *            values it supports.
+ * @cleanup_ctx: clean the context initialized by @init_ctx.
+ * @prepare_io_req: is called before reading/writing a page to prepare the I/O
+ *                  request to be performed with ECC correction.
+ * @finish_io_req: is called after reading/writing a page to terminate the I/O
+ *                 request and ensure proper ECC correction.
+ */
+struct nand_ecc_engine_ops {
+	int (*init_ctx)(struct nand_device *nand);
+	void (*cleanup_ctx)(struct nand_device *nand);
+	int (*prepare_io_req)(struct nand_device *nand,
+			      struct nand_page_io_req *req);
+	int (*finish_io_req)(struct nand_device *nand,
+			     struct nand_page_io_req *req);
+};
+
+/**
+ * enum nand_ecc_engine_integration - How the NAND ECC engine is integrated
+ * @NAND_ECC_ENGINE_INTEGRATION_INVALID: Invalid value
+ * @NAND_ECC_ENGINE_INTEGRATION_PIPELINED: Pipelined engine, performs on-the-fly
+ *                                         correction, does not need to copy
+ *                                         data around
+ * @NAND_ECC_ENGINE_INTEGRATION_EXTERNAL: External engine, needs to bring the
+ *                                        data into its own area before use
+ */
+enum nand_ecc_engine_integration {
+	NAND_ECC_ENGINE_INTEGRATION_INVALID,
+	NAND_ECC_ENGINE_INTEGRATION_PIPELINED,
+	NAND_ECC_ENGINE_INTEGRATION_EXTERNAL,
+};
+
+/**
+ * struct nand_ecc_engine - ECC engine abstraction for NAND devices
+ * @dev: Host device
+ * @node: Private field for registration time
+ * @ops: ECC engine operations
+ * @integration: How the engine is integrated with the host
+ *               (only relevant on %NAND_ECC_ENGINE_TYPE_ON_HOST engines)
+ * @priv: Private data
+ */
+struct nand_ecc_engine {
+	struct device *dev;
+	struct list_head node;
+	struct nand_ecc_engine_ops *ops;
+	enum nand_ecc_engine_integration integration;
+	void *priv;
+};
+
+void of_get_nand_ecc_user_config(struct nand_device *nand);
+int nand_ecc_init_ctx(struct nand_device *nand);
+void nand_ecc_cleanup_ctx(struct nand_device *nand);
+int nand_ecc_prepare_io_req(struct nand_device *nand,
+			    struct nand_page_io_req *req);
+int nand_ecc_finish_io_req(struct nand_device *nand,
+			   struct nand_page_io_req *req);
+bool nand_ecc_is_strong_enough(struct nand_device *nand);
+
+#if IS_REACHABLE(CONFIG_MTD_NAND_CORE)
+int nand_ecc_register_on_host_hw_engine(struct nand_ecc_engine *engine);
+int nand_ecc_unregister_on_host_hw_engine(struct nand_ecc_engine *engine);
+#else
+static inline int
+nand_ecc_register_on_host_hw_engine(struct nand_ecc_engine *engine)
+{
+	return -ENOTSUPP;
+}
+static inline int
+nand_ecc_unregister_on_host_hw_engine(struct nand_ecc_engine *engine)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_get_on_die_hw_engine(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_get_on_host_hw_engine(struct nand_device *nand);
+void nand_ecc_put_on_host_hw_engine(struct nand_device *nand);
+struct device *nand_ecc_get_engine_dev(struct device *host);
+
+#if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING)
+struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void);
+#else
+static inline struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void)
+{
+	return NULL;
+}
+#endif /* CONFIG_MTD_NAND_ECC_SW_HAMMING */
+
+#if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)
+struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void);
+#else
+static inline struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void)
+{
+	return NULL;
+}
+#endif /* CONFIG_MTD_NAND_ECC_SW_BCH */
+
+/**
+ * struct nand_ecc_req_tweak_ctx - Help for automatically tweaking requests
+ * @orig_req: Pointer to the original IO request
+ * @nand: Related NAND device, to have access to its memory organization
+ * @page_buffer_size: Real size of the page buffer to use (can be set by the
+ *                    user before the tweaking mechanism initialization)
+ * @oob_buffer_size: Real size of the OOB buffer to use (can be set by the
+ *                   user before the tweaking mechanism initialization)
+ * @spare_databuf: Data bounce buffer
+ * @spare_oobbuf: OOB bounce buffer
+ * @bounce_data: Flag indicating a data bounce buffer is used
+ * @bounce_oob: Flag indicating an OOB bounce buffer is used
+ */
+struct nand_ecc_req_tweak_ctx {
+	struct nand_page_io_req orig_req;
+	struct nand_device *nand;
+	unsigned int page_buffer_size;
+	unsigned int oob_buffer_size;
+	void *spare_databuf;
+	void *spare_oobbuf;
+	bool bounce_data;
+	bool bounce_oob;
+};
+
+int nand_ecc_init_req_tweaking(struct nand_ecc_req_tweak_ctx *ctx,
+			       struct nand_device *nand);
+void nand_ecc_cleanup_req_tweaking(struct nand_ecc_req_tweak_ctx *ctx);
+void nand_ecc_tweak_req(struct nand_ecc_req_tweak_ctx *ctx,
+			struct nand_page_io_req *req);
+void nand_ecc_restore_req(struct nand_ecc_req_tweak_ctx *ctx,
+			  struct nand_page_io_req *req);
+
 /**
  * struct nand_ecc - Information relative to the ECC
+ * @defaults: Default values, depend on the underlying subsystem
  * @requirements: ECC requirements from the NAND chip perspective
+ * @user_conf: User desires in terms of ECC parameters
+ * @ctx: ECC context for the ECC engine, derived from the device @requirements
+ *       the @user_conf and the @defaults
+ * @ondie_engine: On-die ECC engine reference, if any
+ * @engine: ECC engine actually bound
  */
 struct nand_ecc {
+	struct nand_ecc_props defaults;
 	struct nand_ecc_props requirements;
+	struct nand_ecc_props user_conf;
+	struct nand_ecc_context ctx;
+	struct nand_ecc_engine *ondie_engine;
+	struct nand_ecc_engine *engine;
 };
 
 /**
  * struct nand_device - NAND device
  * @mtd: MTD instance attached to the NAND device
  * @memorg: memory layout
- * @ecc: ECC information
+ * @ecc: NAND ECC object attached to the NAND device
  * @rowconv: position to row address converter
  * @bbt: bad block table info
  * @ops: NAND operations attached to the NAND device
@@ -185,7 +415,7 @@ struct nand_ecc {
  * Generic NAND object. Specialized NAND layers (raw NAND, SPI NAND, OneNAND)
  * should declare their own NAND object embedding a nand_device struct (that's
  * how inheritance is done).
- * struct_nand_device->memorg and struct_nand_device->ecc.requirement should
+ * struct_nand_device->memorg and struct_nand_device->ecc.requirements should
  * be filled at device detection time to reflect the NAND device
  * capabilities/requirements. Once this is done nanddev_init() can be called.
  * It will take care of converting NAND information into MTD ones, which means
@@ -399,9 +629,35 @@ nanddev_get_memorg(struct nand_device *nand)
 	return &nand->memorg;
 }
 
-int nanddev_init(struct nand_device *nand, const struct nand_ops *ops,
-		 struct module *owner);
-void nanddev_cleanup(struct nand_device *nand);
+/**
+ * nanddev_get_ecc_conf() - Extract the ECC configuration from a NAND device
+ * @nand: NAND device
+ */
+static inline const struct nand_ecc_props *
+nanddev_get_ecc_conf(struct nand_device *nand)
+{
+	return &nand->ecc.ctx.conf;
+}
+
+/**
+ * nanddev_get_ecc_nsteps() - Extract the number of ECC steps
+ * @nand: NAND device
+ */
+static inline unsigned int
+nanddev_get_ecc_nsteps(struct nand_device *nand)
+{
+	return nand->ecc.ctx.nsteps;
+}
+
+/**
+ * nanddev_get_ecc_bytes_per_step() - Extract the number of ECC bytes per step
+ * @nand: NAND device
+ */
+static inline unsigned int
+nanddev_get_ecc_bytes_per_step(struct nand_device *nand)
+{
+	return nand->ecc.ctx.total / nand->ecc.ctx.nsteps;
+}
 
 /**
  * nanddev_get_ecc_requirements() - Extract the ECC requirements from a NAND
@@ -414,6 +670,47 @@ nanddev_get_ecc_requirements(struct nand_device *nand)
 	return &nand->ecc.requirements;
 }
 
+/**
+ * nanddev_set_ecc_requirements() - Assign the ECC requirements of a NAND
+ *                                  device
+ * @nand: NAND device
+ * @reqs: Requirements
+ */
+static inline void
+nanddev_set_ecc_requirements(struct nand_device *nand,
+			     const struct nand_ecc_props *reqs)
+{
+	nand->ecc.requirements = *reqs;
+}
+
+int nanddev_init(struct nand_device *nand, const struct nand_ops *ops,
+		 struct module *owner);
+void nanddev_cleanup(struct nand_device *nand);
+
+/**
+ * nanddev_set_of_node() - Attach a DT node to a NAND device
+ * @nand: NAND device
+ * @np: DT node
+ *
+ * Attach a DT node to a NAND device.
+ */
+static inline void nanddev_set_of_node(struct nand_device *nand,
+				       struct device_node *np)
+{
+	mtd_set_of_node(&nand->mtd, np);
+}
+
+/**
+ * nanddev_get_of_node() - Retrieve the DT node attached to a NAND device
+ * @nand: NAND device
+ *
+ * Return: the DT node attached to @nand.
+ */
+static inline struct device_node *nanddev_get_of_node(struct nand_device *nand)
+{
+	return mtd_get_of_node(&nand->mtd);
+}
+
 /**
  * nanddev_offs_to_pos() - Convert an absolute NAND offset into a NAND position
  * @nand: NAND device
@@ -597,11 +894,13 @@ static inline void nanddev_pos_next_page(struct nand_device *nand,
  * layer.
  */
 static inline void nanddev_io_iter_init(struct nand_device *nand,
+					enum nand_page_io_req_type reqtype,
 					loff_t offs, struct mtd_oob_ops *req,
 					struct nand_io_iter *iter)
 {
 	struct mtd_info *mtd = nanddev_to_mtd(nand);
 
+	iter->req.type = reqtype;
 	iter->req.mode = req->mode;
 	iter->req.dataoffs = nanddev_offs_to_pos(nand, offs, &iter->req.pos);
 	iter->req.ooboffs = req->ooboffs;
@@ -671,16 +970,24 @@ static inline bool nanddev_io_iter_end(struct nand_device *nand,
  *
  * Should be used for iterate over pages that are contained in an MTD request.
  */
-#define nanddev_io_for_each_page(nand, start, req, iter)		\
-	for (nanddev_io_iter_init(nand, start, req, iter);		\
+#define nanddev_io_for_each_page(nand, type, start, req, iter)		\
+	for (nanddev_io_iter_init(nand, type, start, req, iter);	\
 	     !nanddev_io_iter_end(nand, iter);				\
 	     nanddev_io_iter_next_page(nand, iter))
 
 bool nanddev_isbad(struct nand_device *nand, const struct nand_pos *pos);
 bool nanddev_isreserved(struct nand_device *nand, const struct nand_pos *pos);
-int nanddev_erase(struct nand_device *nand, const struct nand_pos *pos);
 int nanddev_markbad(struct nand_device *nand, const struct nand_pos *pos);
 
+/* ECC related functions */
+int nanddev_ecc_engine_init(struct nand_device *nand);
+void nanddev_ecc_engine_cleanup(struct nand_device *nand);
+
+static inline void *nand_to_ecc_ctx(struct nand_device *nand)
+{
+	return nand->ecc.ctx.priv;
+}
+
 /* BBT related functions */
 enum nand_bbt_block_status {
 	NAND_BBT_BLOCK_STATUS_UNKNOWN,
diff --git a/include/linux/mtd/onfi.h b/include/linux/mtd/onfi.h
index 339ac79856..55ab2e4d62 100644
--- a/include/linux/mtd/onfi.h
+++ b/include/linux/mtd/onfi.h
@@ -11,6 +11,7 @@
 #define __LINUX_MTD_ONFI_H
 
 #include <linux/types.h>
+#include <linux/bitfield.h>
 
 /* ONFI version bits */
 #define ONFI_VERSION_1_0		BIT(1)
@@ -24,17 +25,22 @@
 #define ONFI_VERSION_4_0		BIT(9)
 
 /* ONFI features */
-#define ONFI_FEATURE_16_BIT_BUS		(1 << 0)
-#define ONFI_FEATURE_EXT_PARAM_PAGE	(1 << 7)
+#define ONFI_FEATURE_16_BIT_BUS		BIT(0)
+#define ONFI_FEATURE_NV_DDR		BIT(5)
+#define ONFI_FEATURE_EXT_PARAM_PAGE	BIT(7)
 
 /* ONFI timing mode, used in both asynchronous and synchronous mode */
-#define ONFI_TIMING_MODE_0		(1 << 0)
-#define ONFI_TIMING_MODE_1		(1 << 1)
-#define ONFI_TIMING_MODE_2		(1 << 2)
-#define ONFI_TIMING_MODE_3		(1 << 3)
-#define ONFI_TIMING_MODE_4		(1 << 4)
-#define ONFI_TIMING_MODE_5		(1 << 5)
-#define ONFI_TIMING_MODE_UNKNOWN	(1 << 6)
+#define ONFI_DATA_INTERFACE_SDR		0
+#define ONFI_DATA_INTERFACE_NVDDR	BIT(4)
+#define ONFI_DATA_INTERFACE_NVDDR2	BIT(5)
+#define ONFI_TIMING_MODE_0		BIT(0)
+#define ONFI_TIMING_MODE_1		BIT(1)
+#define ONFI_TIMING_MODE_2		BIT(2)
+#define ONFI_TIMING_MODE_3		BIT(3)
+#define ONFI_TIMING_MODE_4		BIT(4)
+#define ONFI_TIMING_MODE_5		BIT(5)
+#define ONFI_TIMING_MODE_UNKNOWN	BIT(6)
+#define ONFI_TIMING_MODE_PARAM(x)	FIELD_GET(GENMASK(3, 0), (x))
 
 /* ONFI feature number/address */
 #define ONFI_FEATURE_NUMBER		256
@@ -49,7 +55,8 @@
 #define ONFI_SUBFEATURE_PARAM_LEN	4
 
 /* ONFI optional commands SET/GET FEATURES supported? */
-#define ONFI_OPT_CMD_SET_GET_FEATURES	(1 << 2)
+#define ONFI_OPT_CMD_READ_CACHE		BIT(1)
+#define ONFI_OPT_CMD_SET_GET_FEATURES	BIT(2)
 
 struct nand_onfi_params {
 	/* rev info and features block */
@@ -93,14 +100,15 @@ struct nand_onfi_params {
 
 	/* electrical parameter block */
 	u8 io_pin_capacitance_max;
-	__le16 async_timing_mode;
+	__le16 sdr_timing_modes;
 	__le16 program_cache_timing_mode;
 	__le16 t_prog;
 	__le16 t_bers;
 	__le16 t_r;
 	__le16 t_ccs;
-	__le16 src_sync_timing_mode;
-	u8 src_ssync_features;
+	u8 nvddr_timing_modes;
+	u8 nvddr2_timing_modes;
+	u8 nvddr_nvddr2_features;
 	__le16 clk_pin_capacitance_typ;
 	__le16 io_pin_capacitance_typ;
 	__le16 input_pin_capacitance_typ;
@@ -160,7 +168,9 @@ struct onfi_ext_param_page {
  * @tBERS: Block erase time
  * @tR: Page read time
  * @tCCS: Change column setup time
- * @async_timing_mode: Supported asynchronous timing mode
+ * @fast_tCAD: Command/Address/Data slow or fast delay (NV-DDR only)
+ * @sdr_timing_modes: Supported asynchronous/SDR timing modes
+ * @nvddr_timing_modes: Supported source synchronous/NV-DDR timing modes
  * @vendor_revision: Vendor specific revision number
  * @vendor: Vendor specific data
  */
@@ -170,7 +180,9 @@ struct onfi_params {
 	u16 tBERS;
 	u16 tR;
 	u16 tCCS;
-	u16 async_timing_mode;
+	bool fast_tCAD;
+	u16 sdr_timing_modes;
+	u16 nvddr_timing_modes;
 	u16 vendor_revision;
 	u8 vendor[88];
 };
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 54a788cc18..585397aa9a 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -14,17 +14,17 @@
 #define __LINUX_MTD_RAWNAND_H
 
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/flashchip.h>
 #include <linux/mtd/bbm.h>
 #include <linux/mtd/jedec.h>
-#include <linux/mtd/nand.h>
 #include <linux/mtd/onfi.h>
-#include <linux/bitmap.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <common.h>
 
 struct nand_chip;
+struct gpio_desc;
 
 /* The maximum number of NAND chips in an array */
 #define NAND_MAX_CHIPS		8
@@ -67,6 +67,8 @@ struct nand_chip;
 
 /* Extended commands for large page devices */
 #define NAND_CMD_READSTART	0x30
+#define NAND_CMD_READCACHESEQ	0x31
+#define NAND_CMD_READCACHEEND	0x3f
 #define NAND_CMD_RNDOUTSTART	0xE0
 #define NAND_CMD_CACHEDPROG	0x15
 
@@ -84,38 +86,14 @@ struct nand_chip;
 /*
  * Constants for ECC_MODES
  */
-enum nand_ecc_mode {
+enum nand_ecc_legacy_mode {
 	NAND_ECC_INVALID,
 	NAND_ECC_NONE,
 	NAND_ECC_SOFT,
+	NAND_ECC_SOFT_BCH,
 	NAND_ECC_HW,
 	NAND_ECC_HW_SYNDROME,
 	NAND_ECC_ON_DIE,
-	NAND_ECC_HW_OOB_FIRST,
-	NAND_ECC_SOFT_BCH
-};
-
-/**
- * enum nand_ecc_engine_type - NAND ECC engine type
- * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
- * @NAND_ECC_ENGINE_TYPE_NONE: No ECC correction
- * @NAND_ECC_ENGINE_TYPE_SOFT: Software ECC correction
- * @NAND_ECC_ENGINE_TYPE_ON_HOST: On host hardware ECC correction
- * @NAND_ECC_ENGINE_TYPE_ON_DIE: On chip hardware ECC correction
- */
-enum nand_ecc_engine_type {
-	NAND_ECC_ENGINE_TYPE_INVALID,
-	NAND_ECC_ENGINE_TYPE_NONE,
-	NAND_ECC_ENGINE_TYPE_SOFT,
-	NAND_ECC_ENGINE_TYPE_ON_HOST,
-	NAND_ECC_ENGINE_TYPE_ON_DIE,
-};
-
-enum nand_ecc_algo {
-	NAND_ECC_ALGO_UNKNOWN,
-	NAND_ECC_ALGO_HAMMING,
-	NAND_ECC_ALGO_BCH,
-	NAND_ECC_ALGO_RS,
 };
 
 /*
@@ -135,7 +113,6 @@ enum nand_ecc_algo {
  * pages and you want to rely on the default implementation.
  */
 #define NAND_ECC_GENERIC_ERASED_CHECK	BIT(0)
-#define NAND_ECC_MAXIMIZE		BIT(1)
 
 /*
  * Option constants for bizarre disfunctionality and real
@@ -261,6 +238,7 @@ enum nand_ecc_algo {
  * struct nand_parameters - NAND generic parameters from the parameter page
  * @model: Model name
  * @supports_set_get_features: The NAND chip supports setting/getting features
+ * @supports_read_cache: The NAND chip supports read cache operations
  * @set_feature_list: Bitmap of features that can be set
  * @get_feature_list: Bitmap of features that can be get
  * @onfi: ONFI specific parameters
@@ -269,6 +247,7 @@ struct nand_parameters {
 	/* Generic parameters */
 	const char *model;
 	bool supports_set_get_features;
+	bool supports_read_cache;
 	DECLARE_BITMAP(set_feature_list, ONFI_FEATURE_NUMBER);
 	DECLARE_BITMAP(get_feature_list, ONFI_FEATURE_NUMBER);
 
@@ -330,7 +309,7 @@ static const struct nand_ecc_caps __name = {			\
 /**
  * struct nand_ecc_ctrl - Control structure for ECC
  * @engine_type: ECC engine type
- * @mode:	ECC mode
+ * @placement:	OOB bytes placement
  * @algo:	ECC algorithm
  * @steps:	number of ECC steps per page
  * @size:	data bytes per ECC step
@@ -340,7 +319,6 @@ static const struct nand_ecc_caps __name = {			\
  * @prepad:	padding information for syndrome based ECC generators
  * @postpad:	padding information for syndrome based ECC generators
  * @options:	ECC specific options (see NAND_ECC_XXX flags defined above)
- * @priv:	pointer to private ECC control data
  * @calc_buf:	buffer for calculated ECC, size is oobsize.
  * @code_buf:	buffer for ECC read from flash, size is oobsize.
  * @hwctl:	function to control hardware ECC generator. Must only
@@ -358,7 +336,7 @@ static const struct nand_ecc_caps __name = {			\
  *			controller and always return contiguous in-band and
  *			out-of-band data even if they're not stored
  *			contiguously on the NAND chip (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_PLACEMENT_INTERLEAVED interleaves in-band and
  *			out-of-band data).
  * @write_page_raw:	function to write a raw page without ECC. This function
  *			should hide the specific layout used by the ECC
@@ -366,7 +344,7 @@ static const struct nand_ecc_caps __name = {			\
  *			in-band and out-of-band data. ECC controller is
  *			responsible for doing the appropriate transformations
  *			to adapt to its specific layout (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_PLACEMENT_INTERLEAVED interleaves in-band and
  *			out-of-band data).
  * @read_page:	function to read a page according to the ECC generator
  *		requirements; returns maximum number of bitflips corrected in
@@ -383,7 +361,7 @@ static const struct nand_ecc_caps __name = {			\
  */
 struct nand_ecc_ctrl {
 	enum nand_ecc_engine_type engine_type;
-	enum nand_ecc_mode mode;
+	enum nand_ecc_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
 	int size;
@@ -393,7 +371,6 @@ struct nand_ecc_ctrl {
 	int prepad;
 	int postpad;
 	unsigned int options;
-	void *priv;
 	u8 *calc_buf;
 	u8 *code_buf;
 	void (*hwctl)(struct nand_chip *chip, int mode);
@@ -426,8 +403,8 @@ struct nand_ecc_ctrl {
  * This struct defines the timing requirements of a SDR NAND chip.
  * These information can be found in every NAND datasheets and the timings
  * meaning are described in the ONFI specifications:
- * www.onfi.org/~/media/ONFI/specs/onfi_3_1_spec.pdf (chapter 4.15 Timing
- * Parameters)
+ * https://media-www.micron.com/-/media/client/onfi/specs/onfi_3_1_spec.pdf
+ * (chapter 4.15 Timing Parameters)
  *
  * All these timings are expressed in picoseconds.
  *
@@ -512,12 +489,128 @@ struct nand_sdr_timings {
 	u32 tWW_min;
 };
 
+/**
+ * struct nand_nvddr_timings - NV-DDR NAND chip timings
+ *
+ * This struct defines the timing requirements of a NV-DDR NAND data interface.
+ * These information can be found in every NAND datasheets and the timings
+ * meaning are described in the ONFI specifications:
+ * https://media-www.micron.com/-/media/client/onfi/specs/onfi_4_1_gold.pdf
+ * (chapter 4.18.2 NV-DDR)
+ *
+ * All these timings are expressed in picoseconds.
+ *
+ * @tBERS_max: Block erase time
+ * @tCCS_min: Change column setup time
+ * @tPROG_max: Page program time
+ * @tR_max: Page read time
+ * @tAC_min: Access window of DQ[7:0] from CLK
+ * @tAC_max: Access window of DQ[7:0] from CLK
+ * @tADL_min: ALE to data loading time
+ * @tCAD_min: Command, Address, Data delay
+ * @tCAH_min: Command/Address DQ hold time
+ * @tCALH_min: W/R_n, CLE and ALE hold time
+ * @tCALS_min: W/R_n, CLE and ALE setup time
+ * @tCAS_min: Command/address DQ setup time
+ * @tCEH_min: CE# high hold time
+ * @tCH_min:  CE# hold time
+ * @tCK_min: Average clock cycle time
+ * @tCS_min: CE# setup time
+ * @tDH_min: Data hold time
+ * @tDQSCK_min: Start of the access window of DQS from CLK
+ * @tDQSCK_max: End of the access window of DQS from CLK
+ * @tDQSD_min: Min W/R_n low to DQS/DQ driven by device
+ * @tDQSD_max: Max W/R_n low to DQS/DQ driven by device
+ * @tDQSHZ_max: W/R_n high to DQS/DQ tri-state by device
+ * @tDQSQ_max: DQS-DQ skew, DQS to last DQ valid, per access
+ * @tDS_min: Data setup time
+ * @tDSC_min: DQS cycle time
+ * @tFEAT_max: Busy time for Set Features and Get Features
+ * @tITC_max: Interface and Timing Mode Change time
+ * @tQHS_max: Data hold skew factor
+ * @tRHW_min: Data output cycle to command, address, or data input cycle
+ * @tRR_min: Ready to RE# low (data only)
+ * @tRST_max: Device reset time, measured from the falling edge of R/B# to the
+ *	      rising edge of R/B#.
+ * @tWB_max: WE# high to SR[6] low
+ * @tWHR_min: WE# high to RE# low
+ * @tWRCK_min: W/R_n low to data output cycle
+ * @tWW_min: WP# transition to WE# low
+ */
+struct nand_nvddr_timings {
+	u64 tBERS_max;
+	u32 tCCS_min;
+	u64 tPROG_max;
+	u64 tR_max;
+	u32 tAC_min;
+	u32 tAC_max;
+	u32 tADL_min;
+	u32 tCAD_min;
+	u32 tCAH_min;
+	u32 tCALH_min;
+	u32 tCALS_min;
+	u32 tCAS_min;
+	u32 tCEH_min;
+	u32 tCH_min;
+	u32 tCK_min;
+	u32 tCS_min;
+	u32 tDH_min;
+	u32 tDQSCK_min;
+	u32 tDQSCK_max;
+	u32 tDQSD_min;
+	u32 tDQSD_max;
+	u32 tDQSHZ_max;
+	u32 tDQSQ_max;
+	u32 tDS_min;
+	u32 tDSC_min;
+	u32 tFEAT_max;
+	u32 tITC_max;
+	u32 tQHS_max;
+	u32 tRHW_min;
+	u32 tRR_min;
+	u32 tRST_max;
+	u32 tWB_max;
+	u32 tWHR_min;
+	u32 tWRCK_min;
+	u32 tWW_min;
+};
+
+/*
+ * While timings related to the data interface itself are mostly different
+ * between SDR and NV-DDR, timings related to the internal chip behavior are
+ * common. IOW, the following entries which describe the internal delays have
+ * the same definition and are shared in both SDR and NV-DDR timing structures:
+ * - tADL_min
+ * - tBERS_max
+ * - tCCS_min
+ * - tFEAT_max
+ * - tPROG_max
+ * - tR_max
+ * - tRR_min
+ * - tRST_max
+ * - tWB_max
+ *
+ * The below macros return the value of a given timing, no matter the interface.
+ */
+#define NAND_COMMON_TIMING_PS(conf, timing_name)		\
+	nand_interface_is_sdr(conf) ?				\
+		nand_get_sdr_timings(conf)->timing_name :	\
+		nand_get_nvddr_timings(conf)->timing_name
+
+#define NAND_COMMON_TIMING_MS(conf, timing_name) \
+	PSEC_TO_MSEC(NAND_COMMON_TIMING_PS((conf), timing_name))
+
+#define NAND_COMMON_TIMING_NS(conf, timing_name) \
+	PSEC_TO_NSEC(NAND_COMMON_TIMING_PS((conf), timing_name))
+
 /**
  * enum nand_interface_type - NAND interface type
  * @NAND_SDR_IFACE:	Single Data Rate interface
+ * @NAND_NVDDR_IFACE:	Double Data Rate interface
  */
 enum nand_interface_type {
 	NAND_SDR_IFACE,
+	NAND_NVDDR_IFACE,
 };
 
 /**
@@ -526,6 +619,7 @@ enum nand_interface_type {
  * @timings:	 The timing information
  * @timings.mode: Timing mode as defined in the specification
  * @timings.sdr: Use it when @type is %NAND_SDR_IFACE.
+ * @timings.nvddr: Use it when @type is %NAND_NVDDR_IFACE.
  */
 struct nand_interface_config {
 	enum nand_interface_type type;
@@ -533,6 +627,7 @@ struct nand_interface_config {
 		unsigned int mode;
 		union {
 			struct nand_sdr_timings sdr;
+			struct nand_nvddr_timings nvddr;
 		};
 	} timings;
 };
@@ -546,6 +641,15 @@ static bool nand_interface_is_sdr(const struct nand_interface_config *conf)
 	return conf->type == NAND_SDR_IFACE;
 }
 
+/**
+ * nand_interface_is_nvddr - get the interface type
+ * @conf:	The data interface
+ */
+static bool nand_interface_is_nvddr(const struct nand_interface_config *conf)
+{
+	return conf->type == NAND_NVDDR_IFACE;
+}
+
 /**
  * nand_get_sdr_timings - get SDR timing from data interface
  * @conf:	The data interface
@@ -559,6 +663,19 @@ nand_get_sdr_timings(const struct nand_interface_config *conf)
 	return &conf->timings.sdr;
 }
 
+/**
+ * nand_get_nvddr_timings - get NV-DDR timing from data interface
+ * @conf:	The data interface
+ */
+static inline const struct nand_nvddr_timings *
+nand_get_nvddr_timings(const struct nand_interface_config *conf)
+{
+	if (!nand_interface_is_nvddr(conf))
+		return ERR_PTR(-EINVAL);
+
+	return &conf->timings.nvddr;
+}
+
 /**
  * struct nand_op_cmd_instr - Definition of a command instruction
  * @opcode: the command to issue in one cycle
@@ -899,6 +1016,8 @@ struct nand_op_parser {
 /**
  * struct nand_operation - NAND operation descriptor
  * @cs: the CS line to select for this NAND operation
+ * @deassert_wp: set to true when the operation requires the WP pin to be
+ *		 de-asserted (ERASE, PROG, ...)
  * @instrs: array of instructions to execute
  * @ninstrs: length of the @instrs array
  *
@@ -906,6 +1025,7 @@ struct nand_op_parser {
  */
 struct nand_operation {
 	unsigned int cs;
+	bool deassert_wp;
 	const struct nand_op_instr *instrs;
 	unsigned int ninstrs;
 };
@@ -917,6 +1037,14 @@ struct nand_operation {
 		.ninstrs = ARRAY_SIZE(_instrs),			\
 	}
 
+#define NAND_DESTRUCTIVE_OPERATION(_cs, _instrs)		\
+	{							\
+		.cs = _cs,					\
+		.deassert_wp = true,				\
+		.instrs = _instrs,				\
+		.ninstrs = ARRAY_SIZE(_instrs),			\
+	}
+
 int nand_op_parser_exec_op(struct nand_chip *chip,
 			   const struct nand_op_parser *parser,
 			   const struct nand_operation *op, bool check_only);
@@ -973,7 +1101,7 @@ static inline void nand_op_trace(const char *prefix,
  * @exec_op:	 controller specific method to execute NAND operations.
  *		 This method replaces chip->legacy.cmdfunc(),
  *		 chip->legacy.{read,write}_{buf,byte,word}(),
- *		 chip->legacy.dev_ready() and chip->legacy.waifunc().
+ *		 chip->legacy.dev_ready() and chip->legacy.waitfunc().
  * @setup_interface: setup the data interface and timing. If chipnr is set to
  *		     %NAND_DATA_IFACE_CHECK_ONLY this means the configuration
  *		     should not be applied but only checked.
@@ -994,10 +1122,22 @@ struct nand_controller_ops {
  *
  * @lock:		lock used to serialize accesses to the NAND controller
  * @ops:		NAND controller operations.
+ * @supported_op:	NAND controller known-to-be-supported operations,
+ *			only writable by the core after initial checking.
+ * @supported_op.data_only_read: The controller supports reading more data from
+ *			the bus without restarting an entire read operation nor
+ *			changing the column.
+ * @supported_op.cont_read: The controller supports sequential cache reads.
+ * @controller_wp:	the controller is in charge of handling the WP pin.
  */
 struct nand_controller {
 	struct mutex lock;
 	const struct nand_controller_ops *ops;
+	struct {
+		unsigned int data_only_read: 1;
+		unsigned int cont_read: 1;
+	} supported_op;
+	bool controller_wp;
 };
 
 static inline void nand_controller_init(struct nand_controller *nfc)
@@ -1086,6 +1226,16 @@ struct nand_manufacturer {
 	void *priv;
 };
 
+/**
+ * struct nand_secure_region - NAND secure region structure
+ * @offset: Offset of the start of the secure region
+ * @size: Size of the secure region
+ */
+struct nand_secure_region {
+	u64 offset;
+	u64 size;
+};
+
 /**
  * struct nand_chip - NAND Private Flash Chip Data
  * @base: Inherit from the generic NAND device
@@ -1131,11 +1281,19 @@ struct nand_manufacturer {
  * @lock: Lock protecting the suspended field. Also used to serialize accesses
  *        to the NAND device
  * @suspended: Set to 1 when the device is suspended, 0 when it's not
+ * @resume_wq: wait queue to sleep if rawnand is in suspended state.
  * @cur_cs: Currently selected target. -1 means no target selected, otherwise we
  *          should always have cur_cs >= 0 && cur_cs < nanddev_ntargets().
  *          NAND Controller drivers should not modify this value, but they're
  *          allowed to read it.
  * @read_retries: The number of read retry modes supported
+ * @secure_regions: Structure containing the secure regions info
+ * @nr_secure_regions: Number of secure regions
+ * @cont_read: Sequential page read internals
+ * @cont_read.ongoing: Whether a continuous read is ongoing or not
+ * @cont_read.first_page: Start of the continuous read operation
+ * @cont_read.pause_page: End of the current sequential cache read operation
+ * @cont_read.last_page: End of the continuous read operation
  * @controller: The hardware controller	structure which is shared among multiple
  *              independent devices
  * @ecc: The ECC controller structure
@@ -1185,6 +1343,14 @@ struct nand_chip {
 	unsigned int suspended : 1;
 	int cur_cs;
 	int read_retries;
+	struct nand_secure_region *secure_regions;
+	u8 nr_secure_regions;
+	struct {
+		bool ongoing;
+		unsigned int first_page;
+		unsigned int pause_page;
+		unsigned int last_page;
+	} cont_read;
 
 	/* Externals */
 	struct nand_controller *controller;
@@ -1195,9 +1361,6 @@ struct nand_chip {
 	unsigned int bbt_type;
 };
 
-const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void);
-const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void);
-
 static inline struct nand_chip *mtd_to_nand(struct mtd_info *mtd)
 {
 	return container_of(mtd, struct nand_chip, base.mtd);
@@ -1340,7 +1503,8 @@ static inline bool nand_is_slc(struct nand_chip *chip)
 }
 
 /**
- * Check if the opcode's address should be sent only on the lower 8 bits
+ * nand_opcode_8bits - Check if the opcode's address should be sent only on the
+ *	lower 8 bits
  * @command: opcode to check
  */
 static inline int nand_opcode_8bits(unsigned int command)
@@ -1357,6 +1521,20 @@ static inline int nand_opcode_8bits(unsigned int command)
 	return 0;
 }
 
+int rawnand_sw_hamming_init(struct nand_chip *chip);
+int rawnand_sw_hamming_calculate(struct nand_chip *chip,
+				 const unsigned char *buf,
+				 unsigned char *code);
+int rawnand_sw_hamming_correct(struct nand_chip *chip,
+			       unsigned char *buf,
+			       unsigned char *read_ecc,
+			       unsigned char *calc_ecc);
+void rawnand_sw_hamming_cleanup(struct nand_chip *chip);
+int rawnand_sw_bch_init(struct nand_chip *chip);
+int rawnand_sw_bch_correct(struct nand_chip *chip, unsigned char *buf,
+			   unsigned char *read_ecc, unsigned char *calc_ecc);
+void rawnand_sw_bch_cleanup(struct nand_chip *chip);
+
 int nand_check_erased_ecc_chunk(void *data, int datalen,
 				void *ecc, int ecclen,
 				void *extraoob, int extraooblen,
@@ -1395,6 +1573,7 @@ int nand_reset_op(struct nand_chip *chip);
 int nand_readid_op(struct nand_chip *chip, u8 addr, void *buf,
 		   unsigned int len);
 int nand_status_op(struct nand_chip *chip, u8 *status);
+int nand_exit_status_op(struct nand_chip *chip);
 int nand_erase_op(struct nand_chip *chip, unsigned int eraseblock);
 int nand_read_page_op(struct nand_chip *chip, unsigned int page,
 		      unsigned int offset_in_page, void *buf, unsigned int len);
@@ -1417,6 +1596,8 @@ int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
 		      bool force_8bit, bool check_only);
 int nand_write_data_op(struct nand_chip *chip, const void *buf,
 		       unsigned int len, bool force_8bit);
+int nand_read_page_hwecc_oob_first(struct nand_chip *chip, uint8_t *buf,
+				   int oob_required, int page);
 
 /* Scan and identify a NAND device */
 int nand_scan_with_ids(struct nand_chip *chip, unsigned int max_chips,
@@ -1436,14 +1617,12 @@ void nand_wait_ready(struct nand_chip *chip);
  */
 void nand_cleanup(struct nand_chip *chip);
 
-struct gpio_desc;
-
 /*
  * External helper for controller drivers that have to implement the WAITRDY
  * instruction and have no physical pin to check it.
  */
 int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms);
-int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpio,
+int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpiod,
 		      unsigned long timeout_ms);
 
 /* Select/deselect a NAND target. */
@@ -1475,6 +1654,10 @@ static inline void *nand_get_data_buf(struct nand_chip *chip)
 	return chip->data_buf;
 }
 
+/* Parse the gpio-cs property */
+int rawnand_dt_parse_gpio_cs(struct device *dev, struct gpio_desc ***cs_array,
+			     unsigned int *ncs_array);
+
 int nand_scan_ident(struct nand_chip *chip, unsigned int max_chips,
 		    struct nand_flash_dev *table);
 int nand_scan_tail(struct nand_chip *chip);
@@ -1486,7 +1669,7 @@ static inline int onfi_get_async_timing_mode(struct nand_chip *chip)
 {
 	if (!chip->parameters.onfi)
 		return ONFI_TIMING_MODE_UNKNOWN;
-	return chip->parameters.onfi->async_timing_mode;
+	return chip->parameters.onfi->sdr_timing_modes;
 }
 
 const struct nand_sdr_timings *onfi_async_timing_mode_to_sdr_timings(int mode);
-- 
2.39.2



