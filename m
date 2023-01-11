Delivery-date: Wed, 11 Jan 2023 09:02:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3y-008dp7-ED
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:02:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3u-0000B9-Ta
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:02:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IRNA9MM2Od9k4gYj2i/HZHqcdbPm6qbFArdUwLsK/QM=; b=pkne/1pmW+i5XbRv5Qtg3fWuca
	Sj9XXpPxcAv9MZUgCDAoI6XRLHOcDaGSh/CAff9Azyu6KB+vx5oQlidnywfmokMKWP1KRHg4xfk5q
	ZWAfLmQJ5pdTMVu8rpK5NdDOLfhfwLz9Mm+2V615UJs3ZnaSV4nkjmYKWo1bK3RgnJx9Pmfbx5hAT
	1VhlHEgHDgeYWxqE/end2j1B5TbeTXKlHZbz41jVBO/yVC6O3hue6xbMhi6kICuHPPttmRuBo8fDy
	C0kqAj/GXzrqvouJe1SfK+xX+UYW3f9ng8sWIvoQYFNdwvZQULSbWAjv0ljEVE8Ku0oqAhiXLB83n
	5kqrlcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW2K-00ADwR-Sh; Wed, 11 Jan 2023 08:00:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1T-00ADTT-Tb
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007YE-Je; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-005FcK-19; Wed, 11 Jan 2023 08:59:46 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWU-GQ; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:38 +0100
Message-Id: <20230111075940.922817-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235948_337200_E587E1B9 
X-CRM114-Status: GOOD (  37.74  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] crypto: caam - implement early PBL init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the CAAM is TrustZone aware, Linux and OP-TEE drivers are not
necessarily so:

  - Linux running in normal world will attempt to set up RNG
    via DECO, which can be restricted to secure world

  - OP-TEE may depend on RNG being set up by BL2

While the proper solution would be to teach their drivers how to
instantiate the RNG via SHs, we'll want to support existing firmware, so
take the easy way out and just set up RNG4 SH0 and SH1 in barebox.

We already do that for the i.MX6, but the setup there happens in barebox
proper. For security reasons, we want to install OP-TEE as early as
possible while running the prebootloader, so we replicate the setup for
PBL. This has been tested with the i.MX8MM and i.MX8MN.

Note that barebox itself does not yet benefit from this setup and that
the barebox proper driver for CAAM is unaffected by this change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/Makefile        |   2 +-
 drivers/crypto/caam/Kconfig    |   2 +
 drivers/crypto/caam/Makefile   |   1 +
 drivers/crypto/caam/desc.h     |   3 +
 drivers/crypto/caam/detect.h   |  19 ++
 drivers/crypto/caam/pbl-init.c | 491 +++++++++++++++++++++++++++++++++
 drivers/crypto/caam/regs.h     |  20 +-
 include/soc/fsl/caam.h         |  17 ++
 8 files changed, 552 insertions(+), 3 deletions(-)
 create mode 100644 drivers/crypto/caam/detect.h
 create mode 100644 drivers/crypto/caam/pbl-init.c
 create mode 100644 include/soc/fsl/caam.h

diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 475dcf2defcb..8b600b8d40f7 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += caam/
+obj-y += caam/
 obj-$(CONFIG_CRYPTO_DEV_MXC_SCC) += imx-scc/
diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index 0d2554e58679..33d7b0fb8329 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -35,3 +35,5 @@ config CRYPTO_DEV_FSL_CAAM_RNG
 	help
 	  Selecting this will register the SEC4 hardware rng.
 
+config FSL_CAAM_RNG_PBL_INIT
+	bool
diff --git a/drivers/crypto/caam/Makefile b/drivers/crypto/caam/Makefile
index 2d5079b4a52b..5ab7892d953d 100644
--- a/drivers/crypto/caam/Makefile
+++ b/drivers/crypto/caam/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += ctrl.o error.o jr.o
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG) += caamrng.o
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += rng_self_test.o
 obj-$(CONFIG_BLOBGEN) += caam-blobgen.o
+pbl-$(CONFIG_FSL_CAAM_RNG_PBL_INIT) += pbl-init.o
diff --git a/drivers/crypto/caam/desc.h b/drivers/crypto/caam/desc.h
index 523f2d15f0bd..1e68bc4f0b54 100644
--- a/drivers/crypto/caam/desc.h
+++ b/drivers/crypto/caam/desc.h
@@ -1182,6 +1182,7 @@
 /* RNG4 AAI set */
 #define OP_ALG_AAI_RNG4_SH_0	(0x00 << OP_ALG_AAI_SHIFT)
 #define OP_ALG_AAI_RNG4_SH_1	(0x01 << OP_ALG_AAI_SHIFT)
+#define OP_ALG_AAI_RNG4_SH_MASK	(0x03 << OP_ALG_AAI_SHIFT)
 #define OP_ALG_AAI_RNG4_PS	(0x40 << OP_ALG_AAI_SHIFT)
 #define OP_ALG_AAI_RNG4_AI	(0x80 << OP_ALG_AAI_SHIFT)
 #define OP_ALG_AAI_RNG4_SK	(0x100 << OP_ALG_AAI_SHIFT)
@@ -1218,6 +1219,8 @@
 #define OP_ALG_ICV_OFF		(0 << OP_ALG_ICV_SHIFT)
 #define OP_ALG_ICV_ON		(1 << OP_ALG_ICV_SHIFT)
 
+#define OP_ALG_PR_ON		BIT(1)
+
 #define OP_ALG_DIR_SHIFT	0
 #define OP_ALG_DIR_MASK		1
 #define OP_ALG_DECRYPT		0
diff --git a/drivers/crypto/caam/detect.h b/drivers/crypto/caam/detect.h
new file mode 100644
index 000000000000..f621ce91e9c3
--- /dev/null
+++ b/drivers/crypto/caam/detect.h
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+#ifndef __CAAM_DETECT_H__
+#define __CAAM_DETECT_H__
+
+#include "regs.h"
+
+static inline int caam_is_64bit(struct caam_ctrl __iomem *ctrl)
+{
+	return	(rd_reg32(&ctrl->perfmon.comp_parms_ms) & CTPR_MS_PS) &&
+		(rd_reg32(&ctrl->mcr) & MCFGR_LONG_PTR);
+}
+
+static inline bool caam_is_big_endian(struct caam_ctrl *ctrl)
+{
+	return rd_reg32(&ctrl->perfmon.status) & (CSTA_PLEND | CSTA_ALT_PLEND);
+}
+
+#endif
diff --git a/drivers/crypto/caam/pbl-init.c b/drivers/crypto/caam/pbl-init.c
new file mode 100644
index 000000000000..3bc6cfaaeea1
--- /dev/null
+++ b/drivers/crypto/caam/pbl-init.c
@@ -0,0 +1,491 @@
+// SPDX-License-Identifier: BSD-3-Clause
+// SPDX-FileCopyrightText: 2012-2016, Freescale Semiconductor, Inc.
+//
+// Best practice is to load OP-TEE early within prebootloader and
+// run most of barebox in the normal world. OP-TEE, in at least
+// some versions, relies on barebox however to setup the CAAM RNG.
+// Similiarly, Linux, as of v6.1, can only initialize the CAAM
+// via DECO, but this memory region may be reserved by OP-TEE for
+// its own use. While the latter should be rather fixed by switching
+// Linux to SH use, the former is a strong reason to poke the
+// necessary bits here.
+
+#define pr_fmt(fmt) "caam-pbl-init: " fmt
+
+#include <io.h>
+#include <dma.h>
+#include <linux/printk.h>
+#include <linux/bitfield.h>
+#include <linux/iopoll.h>
+#include <errno.h>
+#include <pbl.h>
+#include <string.h>
+#include <soc/fsl/caam.h>
+#include <asm/mmu.h>
+
+#include "detect.h"
+#include "regs.h"
+#include "jr.h"
+#include "desc.h"
+#include "desc_constr.h"
+
+#define rd_reg32_poll(addr, val, cond, tries) \
+({ \
+	int __tries = tries, __tmp; \
+	__tmp = read_poll_timeout(rd_reg32, val, (cond) || __tries--, \
+			0, (addr)); \
+	__tries ? __tmp : -ETIMEDOUT; \
+})
+
+static struct caam_ctrl *caam;
+
+struct jr_data_st {
+	u8 inrings[16];
+	u8 outrings[16];
+	u32 desc[3 * MAX_CAAM_DESCSIZE / sizeof(u32)];
+} __aligned(8);
+
+static struct jr_data_st *g_jrdata;
+
+static void dump_error(void)
+{
+	struct rng4tst __iomem *r4tst = &caam->r4tst[0];
+	int i;
+
+	pr_debug("Dump CAAM Error\n");
+	pr_debug("MCFGR    0x%08x\n", rd_reg32(&caam->mcr));
+	pr_debug("FAR      0x%08x\n", rd_reg32(&caam->perfmon.faultaddr));
+	pr_debug("FAMR     0x%08x\n", rd_reg32(&caam->perfmon.faultliodn));
+	pr_debug("FADR     0x%08x\n", rd_reg32(&caam->perfmon.faultdetail));
+	pr_debug("CSTA     0x%08x\n", rd_reg32(&caam->perfmon.status));
+	pr_debug("RTMCTL   0x%08x\n", rd_reg32(&r4tst->rtmctl));
+	pr_debug("RTSTATUS 0x%08x\n", rd_reg32(&r4tst->rtstatus));
+	pr_debug("RDSTA    0x%08x\n", rd_reg32(&r4tst->rdsta));
+
+	for (i = 0; i < desc_len(g_jrdata->desc); i++)
+		pr_debug("desc[%2d] 0x%08x\n", i, g_jrdata->desc[i]);
+}
+
+#define CAAM_JUMP_OFFSET(x) ((x) & JUMP_OFFSET_MASK)
+
+/* Descriptors to instantiate SH0, SH1, load the keys */
+static const u32 rng_inst_sh0_desc[] = {
+	/* Header, don't setup the size */
+	CMD_DESC_HDR | IMMEDIATE,
+	/* Operation instantiation (sh0) */
+	CMD_OPERATION | OP_ALG_ALGSEL_RNG | OP_ALG_TYPE_CLASS1 | OP_ALG_AAI_RNG4_SH_0
+		| OP_ALG_AS_INIT | OP_ALG_PR_ON,
+};
+
+static const u32 rng_inst_sh1_desc[] = {
+	/* wait for done - Jump to next entry */
+	CMD_JUMP | CLASS_1 | JUMP_TEST_ALL | CAAM_JUMP_OFFSET(1),
+	/* Clear written register (write 1) */
+	CMD_LOAD | LDST_IMM | LDST_SRCDST_WORD_CLRW | sizeof(u32),
+	0x00000001,
+	/* Operation instantiation (sh1) */
+	CMD_OPERATION | OP_ALG_ALGSEL_RNG | OP_ALG_TYPE_CLASS1 | OP_ALG_AAI_RNG4_SH_1
+		| OP_ALG_AS_INIT | OP_ALG_PR_ON,
+};
+
+static const u32 rng_inst_load_keys[] = {
+	/* wait for done - Jump to next entry */
+	CMD_JUMP | CLASS_1 | JUMP_TEST_ALL | CAAM_JUMP_OFFSET(1),
+	/* Clear written register (write 1) */
+	CMD_LOAD | LDST_IMM | LDST_SRCDST_WORD_CLRW | sizeof(u32),
+	0x00000001,
+	/* Generate the Key */
+	CMD_OPERATION | OP_ALG_ALGSEL_RNG | OP_ALG_TYPE_CLASS1 | OP_ALG_AAI_RNG4_SK,
+};
+
+static int do_job(struct caam_job_ring __iomem *jr, u32 *desc, u32 *ecode)
+{
+	phys_addr_t p_desc = cpu_to_caam_dma((dma_addr_t)desc);
+	u32 status;
+	int ret = 0;
+
+	if (rd_reg32(&jr->inpring_avail) == 0)
+		return -EBUSY;
+
+	jr_inpentry_set(g_jrdata->inrings, 0, p_desc);
+
+	barrier();
+
+	/* Inform HW that a new JR is available */
+	wr_reg32(&jr->inpring_jobadd, 1);
+	while (rd_reg32(&jr->outring_used) == 0)
+		;
+
+	if (p_desc == jr_outentry_desc(g_jrdata->outrings, 0)) {
+		status = caam32_to_cpu(jr_outentry_jrstatus(g_jrdata->outrings, 0));
+		if (ecode)
+			*ecode = status;
+	} else {
+		dump_error();
+		ret = -ENODATA;
+	}
+
+	/* Acknowledge interrupt */
+	setbits_le32(&jr->jrintstatus, JRINT_JR_INT);
+	/* Remove the JR from the output list even if no JR caller found */
+	wr_reg32(&jr->outring_rmvd, 1);
+
+	return ret;
+}
+
+static int do_cfg_jrqueue(struct caam_job_ring __iomem *jr)
+{
+	u32 value = 0;
+	phys_addr_t ip_base;
+	phys_addr_t op_base;
+
+	/* Configure the HW Job Rings */
+	ip_base = cpu_to_caam_dma((dma_addr_t)g_jrdata->inrings);
+	op_base = cpu_to_caam_dma((dma_addr_t)g_jrdata->outrings);
+
+	wr_reg64(&jr->inpring_base, ip_base);
+	wr_reg32(&jr->inpring_size, 1);
+
+	wr_reg64(&jr->outring_base, op_base);
+	wr_reg32(&jr->outring_size, 1);
+
+	setbits_le32(&jr->jrintstatus, JRINT_JR_INT);
+
+	/*
+	 * Configure interrupts but disable it:
+	 * Optimization to generate an interrupt either when there are
+	 * half of the job done or when there is a job done and
+	 * 10 clock cycles elapse without new job complete
+	 */
+	value = 10 << JRCFG_ICTT_SHIFT;
+	value |= 1 << JRCFG_ICDCT_SHIFT;
+	value |= JRCFG_ICEN;
+	value |= JRCFG_IMSK;
+	wr_reg32(&jr->rconfig_lo, value);
+
+	/* Enable deco watchdog */
+	setbits_le32(&caam->mcr, MCFGR_WDENABLE);
+
+	return 0;
+}
+
+static void do_clear_rng_error(struct rng4tst __iomem *r4tst)
+{
+	if (rd_reg32(&r4tst->rtmctl) & (RTMCTL_ERR | RTMCTL_FCT_FAIL)) {
+		setbits_le32(&r4tst->rtmctl, RTMCTL_ERR);
+		(void)rd_reg32(&r4tst->rtmctl);
+	}
+}
+
+static void do_inst_desc(u32 *desc, u32 status)
+{
+	u32 *pdesc = desc;
+	u8  desc_len;
+	bool add_sh0   = false;
+	bool add_sh1   = false;
+	bool load_keys = false;
+
+	/*
+	 * Modify the the descriptor to remove if necessary:
+	 *  - The key loading
+	 *  - One of the SH already instantiated
+	 */
+	desc_len = sizeof(rng_inst_sh0_desc);
+	if ((status & RDSTA_IF0) != RDSTA_IF0)
+		add_sh0 = true;
+
+	if ((status & RDSTA_IF1) != RDSTA_IF1) {
+		add_sh1 = true;
+		if (add_sh0)
+			desc_len += sizeof(rng_inst_sh0_desc);
+	}
+
+	if ((status & RDSTA_SKVN) != RDSTA_SKVN) {
+		load_keys = true;
+		desc_len += sizeof(rng_inst_load_keys);
+	}
+
+	/* Copy the SH0 descriptor anyway */
+	memcpy(pdesc, rng_inst_sh0_desc, sizeof(rng_inst_sh0_desc));
+	pdesc += ARRAY_SIZE(rng_inst_sh0_desc);
+
+	if (load_keys) {
+		pr_debug("RNG - Load keys\n");
+		memcpy(pdesc, rng_inst_load_keys, sizeof(rng_inst_load_keys));
+		pdesc += ARRAY_SIZE(rng_inst_load_keys);
+	}
+
+	if (add_sh1) {
+		if (add_sh0) {
+			pr_debug("RNG - Instantiation of SH0 and SH1\n");
+			/* Add the sh1 descriptor */
+			memcpy(pdesc, rng_inst_sh1_desc,
+				sizeof(rng_inst_sh1_desc));
+		} else {
+			pr_debug("RNG - Instantiation of SH1 only\n");
+			/* Modify the SH0 descriptor to instantiate only SH1 */
+			desc[1] &= ~OP_ALG_AAI_RNG4_SH_MASK;
+			desc[1] |= OP_ALG_AAI_RNG4_SH_1;
+		}
+	}
+
+	/* Setup the descriptor size */
+	desc[0] &= ~HDR_DESCLEN_SHR_MASK;
+	desc[0] |= desc_len & HDR_DESCLEN_SHR_MASK;
+}
+
+static void kick_trng(struct rng4tst __iomem *r4tst, u32 ent_delay)
+{
+	u32 samples  = 512; /* number of bits to generate and test */
+	u32 mono_min = 195;
+	u32 mono_max = 317;
+	u32 mono_range  = mono_max - mono_min;
+	u32 poker_min = 1031;
+	u32 poker_max = 1600;
+	u32 poker_range = poker_max - poker_min + 1;
+	u32 retries    = 2;
+	u32 lrun_max   = 32;
+	s32 run_1_min   = 27;
+	s32 run_1_max   = 107;
+	s32 run_1_range = run_1_max - run_1_min;
+	s32 run_2_min   = 7;
+	s32 run_2_max   = 62;
+	s32 run_2_range = run_2_max - run_2_min;
+	s32 run_3_min   = 0;
+	s32 run_3_max   = 39;
+	s32 run_3_range = run_3_max - run_3_min;
+	s32 run_4_min   = -1;
+	s32 run_4_max   = 26;
+	s32 run_4_range = run_4_max - run_4_min;
+	s32 run_5_min   = -1;
+	s32 run_5_max   = 18;
+	s32 run_5_range = run_5_max - run_5_min;
+	s32 run_6_min   = -1;
+	s32 run_6_max   = 17;
+	s32 run_6_range = run_6_max - run_6_min;
+	u32 val;
+
+	/* Put RNG in program mode */
+	/* Setting both RTMCTL:PRGM and RTMCTL:TRNG_ACC causes TRNG to
+	 * properly invalidate the entropy in the entropy register and
+	 * force re-generation.
+	 */
+	setbits_le32(&r4tst->rtmctl, RTMCTL_PRGM | RTMCTL_ACC);
+
+	/* Configure the RNG Entropy Delay
+	 * Performance-wise, it does not make sense to
+	 * set the delay to a value that is lower
+	 * than the last one that worked (i.e. the state handles
+	 * were instantiated properly. Thus, instead of wasting
+	 * time trying to set the values controlling the sample
+	 * frequency, the function simply returns.
+	 */
+	val = rd_reg32(&r4tst->rtsdctl);
+	if (ent_delay < FIELD_GET(RTSDCTL_ENT_DLY_MASK, val)) {
+		/* Put RNG4 into run mode */
+		clrbits_le32(&r4tst->rtmctl, RTMCTL_PRGM | RTMCTL_ACC);
+		return;
+	}
+
+	val = (ent_delay << RTSDCTL_ENT_DLY_SHIFT) | samples;
+	wr_reg32(&r4tst->rtsdctl, val);
+
+	/* min. freq. count, equal to 1/2 of the entropy sample length */
+	wr_reg32(&r4tst->rtfrqmin, ent_delay >> 1);
+
+	/* max. freq. count, equal to 32 times the entropy sample length */
+	wr_reg32(&r4tst->rtfrqmax, ent_delay << 5);
+
+	wr_reg32(&r4tst->rtscmisc, (retries << 16) | lrun_max);
+	wr_reg32(&r4tst->rtpkrmax, poker_max);
+	wr_reg32(&r4tst->rtpkrrng, poker_range);
+	wr_reg32(&r4tst->rtscml, (mono_range << 16) | mono_max);
+	wr_reg32(&r4tst->rtscr1l, (run_1_range << 16) | run_1_max);
+	wr_reg32(&r4tst->rtscr2l, (run_2_range << 16) | run_2_max);
+	wr_reg32(&r4tst->rtscr3l, (run_3_range << 16) | run_3_max);
+	wr_reg32(&r4tst->rtscr4l, (run_4_range << 16) | run_4_max);
+	wr_reg32(&r4tst->rtscr5l, (run_5_range << 16) | run_5_max);
+	wr_reg32(&r4tst->rtscr6pl, (run_6_range << 16) | run_6_max);
+
+	/*
+	 * select raw sampling in both entropy shifter
+	 * and statistical checker; ; put RNG4 into run mode
+	 */
+	clrsetbits_32(&r4tst->rtmctl, RTMCTL_PRGM | RTMCTL_ACC | RTMCTL_SAMP_MODE_MASK,
+		      RTMCTL_SAMP_MODE_RAW_ES_SC);
+
+	/* Clear the ERR bit in RTMCTL if set. The TRNG error can occur when the
+	 * RNG clock is not within 1/2x to 8x the system clock.
+	 * This error is possible if ROM code does not initialize the system PLLs
+	 * immediately after PoR.
+	 */
+	/* setbits_le32(&r4tst->rtmctl, RTMCTL_ERR); */
+}
+
+static int do_instantiation(struct caam_job_ring __iomem *jr,
+			    struct rng4tst __iomem *r4tst)
+{
+	struct caam_perfmon __iomem *perfmon = &caam->perfmon;
+	int ret;
+	u32 cha_vid_ls, rng_vid;
+	u32 ent_delay;
+	u32 status;
+
+	if (!g_jrdata->desc) {
+		pr_err("descriptor allocation failed\n");
+		return -ENODEV;
+	}
+
+	cha_vid_ls = rd_reg32(&perfmon->cha_id_ls);
+
+	/*
+	 * If SEC has RNG version >= 4 and RNG state handle has not been
+	 * already instantiated, do RNG instantiation
+	 */
+	rng_vid = FIELD_GET(CHAVID_LS_RNGVID_MASK, cha_vid_ls);
+	if (rng_vid < 4) {
+		pr_info("RNG (VID=%u) already instantiated.\n", rng_vid);
+		return 0;
+	}
+
+	ent_delay = RTSDCTL_ENT_DLY_MIN;
+
+	do {
+		/* Read the CAAM RNG status */
+		status = rd_reg32(&r4tst->rdsta);
+
+		if ((status & RDSTA_IF0) != RDSTA_IF0) {
+			/* Configure the RNG entropy delay */
+			kick_trng(r4tst, ent_delay);
+			ent_delay += 400;
+		}
+
+		do_clear_rng_error(r4tst);
+
+		if ((status & (RDSTA_IF0 | RDSTA_IF1)) != (RDSTA_IF0 | RDSTA_IF1)) {
+			do_inst_desc(g_jrdata->desc, status);
+
+			ret = do_job(jr, g_jrdata->desc, NULL);
+			if (ret < 0) {
+				pr_err("RNG Instantiation failed\n");
+				goto end_instantation;
+			}
+		} else {
+			ret = 0;
+			pr_debug("RNG instantiation done (%d)\n", ent_delay);
+			goto end_instantation;
+		}
+	} while (ent_delay < RTSDCTL_ENT_DLY_MAX);
+
+	pr_err("RNG Instantation Failure - Entropy delay (%d)\n", ent_delay);
+	ret = -ETIMEDOUT;
+
+end_instantation:
+	return ret;
+}
+
+static int jr_reset(struct caam_job_ring __iomem *jr)
+{
+	int ret;
+	u32 val;
+
+	/* Mask interrupts to poll for reset completion status */
+	setbits_le32(&jr->rconfig_lo, JRCFG_IMSK);
+
+	/* Initiate flush of all pending jobs (required prior to reset) */
+	wr_reg32(&jr->jrcommand, JRCR_RESET);
+
+	ret = rd_reg32_poll(&jr->jrintstatus, val,
+			    val != JRINT_ERR_HALT_INPROGRESS, 10000);
+
+	if (ret || val != JRINT_ERR_HALT_COMPLETE) {
+		pr_err("failed to flush job ring\n");
+		return ret ?: -EIO;
+	}
+
+	/* Initiate reset by setting reset bit a second time */
+	wr_reg32(&jr->jrcommand, JRCR_RESET);
+
+	ret = rd_reg32_poll(&jr->jrcommand, val, !(val & JRCR_RESET), 100);
+	if (ret) {
+		pr_err("failed to reset job ring\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+
+static int rng_init(struct caam_job_ring __iomem *jr,
+		    struct rng4tst __iomem *r4tst)
+{
+	int  ret;
+
+	ret = jr_reset(jr);
+	if (ret)
+		return ret;
+
+	ret = do_instantiation(jr, r4tst);
+	if (ret)
+		return ret;
+
+	jr_reset(jr);
+	return 0;
+}
+
+bool caam_little_end;
+bool caam_imx;
+size_t caam_ptr_sz;
+
+int early_caam_init(struct caam_ctrl __iomem *_caam, bool is_imx)
+{
+	static struct jr_data_st pbl_jrdata;
+	struct caam_job_ring __iomem *jr;
+	struct rng4tst __iomem *r4tst;
+	u32 temp_reg;
+	int ret;
+
+	caam = _caam;
+	caam_imx = is_imx;
+	caam_little_end = !caam_is_big_endian(caam);
+	caam_ptr_sz = caam_is_64bit(caam) ? sizeof(u64) : sizeof(u32);
+
+	/*
+	 * PBL will only enable MMU right before unpacking, so all memory
+	 * is uncached and thus coherent here
+	 */
+	if (IN_PBL)
+		g_jrdata = &pbl_jrdata;
+	else
+		g_jrdata = dma_alloc_coherent(sizeof(*g_jrdata), NULL);
+
+	jr = IOMEM(caam) + 0x1000;
+	r4tst = &caam->r4tst[0];
+
+	pr_debug("Detected %zu-bit %s-endian %sCAAM\n", caam_ptr_sz * 8,
+		 caam_little_end ? "little" : "big", caam_imx ? "i.MX " : "");
+
+	/* reset the CAAM */
+	temp_reg = rd_reg32(&caam->mcr) | MCFGR_DMA_RESET | MCFGR_SWRESET;
+	wr_reg32(&caam->mcr, temp_reg);
+
+	while (rd_reg32(&caam->mcr) & MCFGR_DMA_RESET)
+		;
+
+	jr_reset(jr);
+
+	ret = do_cfg_jrqueue(jr);
+	if (ret) {
+		pr_err("job ring init failed\n");
+		return ret;
+	}
+
+	/* Check if the RNG is already instantiated */
+	temp_reg = rd_reg32(&r4tst->rdsta);
+	if (temp_reg == (RDSTA_IF0 | RDSTA_IF1 | RDSTA_SKVN)) {
+		pr_notice("RNG already instantiated 0x%x\n", temp_reg);
+		return 0;
+	}
+
+	return rng_init(jr, r4tst);
+}
diff --git a/drivers/crypto/caam/regs.h b/drivers/crypto/caam/regs.h
index 76ccb3006a2c..c2eea8d1a587 100644
--- a/drivers/crypto/caam/regs.h
+++ b/drivers/crypto/caam/regs.h
@@ -431,6 +431,7 @@ struct caam_perfmon {
 #define CRNR_LS_RNGRN_SHIFT	16
 #define CRNR_LS_RNGRN_MASK	(0xfull << CRNR_LS_RNGRN_SHIFT)
 	u32 cha_rev_ls;		/* CRNR - CHA Rev No. Least significant half*/
+#define CTPR_MS_PS		BIT(17)
 #define CTPR_MS_QI_SHIFT	25
 #define CTPR_MS_QI_MASK		(0x1ull << CTPR_MS_QI_SHIFT)
 #define CTPR_MS_VIRT_EN_INCL	0x00000001
@@ -582,7 +583,10 @@ struct rngtst {
 
 /* RNG4 TRNG test registers */
 struct rng4tst {
-#define RTMCTL_PRGM	0x00010000	/* 1 -> program mode, 0 -> run mode */
+#define RTMCTL_ACC		BIT(5)  /* TRNG access mode */
+#define RTMCTL_FCT_FAIL		BIT(8)
+#define RTMCTL_ERR		BIT(12)
+#define RTMCTL_PRGM		BIT(16) /* 1 -> program mode, 0 -> run mode */
 #define RTMCTL_SAMP_MODE_VON_NEUMANN_ES_SC	0 /* use von Neumann data in
 						     both entropy shifter and
 						     statistical checker */
@@ -593,6 +597,7 @@ struct rng4tst {
 						     entropy shifter, raw data
 						     in statistical checker */
 #define RTMCTL_SAMP_MODE_INVALID		3 /* invalid combination */
+#define RTMCTL_SAMP_MODE_MASK			3
 	u32 rtmctl;		/* misc. control register */
 	u32 rtscmisc;		/* statistical check misc. register */
 	u32 rtpkrrng;		/* poker range register */
@@ -615,12 +620,23 @@ struct rng4tst {
 		u32 rtfrqmax;	/* PRGM=1: freq. count max. limit register */
 		u32 rtfrqcnt;	/* PRGM=0: freq. count register */
 	};
-	u32 rsvd1[40];
+	u32 rtscml;
+	u32 rtscr1l;
+	u32 rtscr2l;
+	u32 rtscr3l;
+	u32 rtscr4l;
+	u32 rtscr5l;
+	u32 rtscr6pl;
+	u32 rtstatus;
+	u32 rsvd1[32];
 #define RDSTA_SKVT 0x80000000
 #define RDSTA_SKVN 0x40000000
+#define RDSTA_PR0 BIT(4)
+#define RDSTA_PR1 BIT(5)
 #define RDSTA_IF0 0x00000001
 #define RDSTA_IF1 0x00000002
 #define RDSTA_IFMASK (RDSTA_IF1 | RDSTA_IF0)
+#define RDSTA_MASK (RDSTA_PR1 | RDSTA_PR0 | RDSTA_IF1 | RDSTA_IF0)
 	u32 rdsta;
 	u32 rsvd2[15];
 };
diff --git a/include/soc/fsl/caam.h b/include/soc/fsl/caam.h
new file mode 100644
index 000000000000..a919a114e86f
--- /dev/null
+++ b/include/soc/fsl/caam.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: BSD-3-Clause
+#ifndef __SOC_FSL_CAAM_H_
+#define __SOC_FSL_CAAM_H_
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+struct caam_ctrl;
+
+int early_caam_init(struct caam_ctrl __iomem *caam, bool is_imx);
+
+static inline int imx_early_caam_init(struct caam_ctrl __iomem *caam)
+{
+	return early_caam_init(caam, true);
+}
+
+#endif
-- 
2.30.2



