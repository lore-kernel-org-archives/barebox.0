Delivery-date: Fri, 10 Nov 2023 13:59:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6n-005rTI-0s
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6l-0003Dl-RG
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ntyPjHMGS35er6bEEei0RzQjSRHYQNtvWhVn7S52CtI=; b=dGG40K8dgXZkQO0/SyxAF5Lfx4
	NHOBTmi2QyqO3okUs7/Um9uQLFkBI9tkm/RyEMdaLW9YZG92LbaMeX4dUd2aIkXA6ouD7mvzsaU/2
	QV7vB7fEbHXC3jssusbWnqB1miFODnImkhm/eKvEANeYwRdJAPkLvIKbosd6TQKAO/N4YxZpBZP1Z
	SflPayzLWRRLOtUMdzMUzTVHVpGG+Mw6Eh2qVF2NhSW+rTSflT64Hv4v1lCf7cC01jrH3JyeM6U7g
	BUiYE4TWfBqIGv8BFiKXOPOWWjaxAeBvdzaufVfoKc9gvYKczn7XA4jmty40I8SY2EB/zQiARSj32
	IF6ftPjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5V-008jvc-02;
	Fri, 10 Nov 2023 12:58:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008jo8-33
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026O-DV; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081X5-Nl; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008ryv-2C;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:38 +0100
Message-Id: <20231110125800.1901232-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045806_140832_C40A88F6 
X-CRM114-Status: GOOD (  23.98  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/25] ARM: i.MX: Add i.MX93 trdc support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile     |   2 +-
 arch/arm/mach-imx/imx93-trdc.c | 364 +++++++++++++++++++++++++++++++++
 include/soc/imx9/trdc.h        |  11 +
 3 files changed, 376 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/imx93-trdc.c
 create mode 100644 include/soc/imx9/trdc.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 4efac08ee8..8a1ccabe15 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -33,4 +33,4 @@ obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
 pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
 pbl-y += xload-qspi.o
-pbl-$(CONFIG_ARCH_IMX93) += imx93-s4mu.o
+pbl-$(CONFIG_ARCH_IMX93) += imx93-s4mu.o imx93-trdc.o
diff --git a/arch/arm/mach-imx/imx93-trdc.c b/arch/arm/mach-imx/imx93-trdc.c
new file mode 100644
index 0000000000..a1c7d49515
--- /dev/null
+++ b/arch/arm/mach-imx/imx93-trdc.c
@@ -0,0 +1,364 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2022 NXP
+ */
+#define pr_fmt(fmt) "trdc: " fmt
+
+#include <common.h>
+#include <io.h>
+#include <soc/imx9/mu_hal.h>
+#include <soc/imx9/s400_api.h>
+#include <soc/imx9/trdc.h>
+#include <mach/imx/imx9-regs.h>
+
+#define DID_NUM 16
+#define MBC_MAX_NUM 4
+#define MRC_MAX_NUM 2
+#define MBC_NUM(HWCFG) ((HWCFG >> 16) & 0xF)
+#define MRC_NUM(HWCFG) ((HWCFG >> 24) & 0x1F)
+
+struct mbc_mem_dom {
+	u32 mem_glbcfg[4];
+	u32 nse_blk_index;
+	u32 nse_blk_set;
+	u32 nse_blk_clr;
+	u32 nsr_blk_clr_all;
+	u32 memn_glbac[8];
+	/* The upper only existed in the beginning of each MBC */
+	u32 mem0_blk_cfg_w[64];
+	u32 mem0_blk_nse_w[16];
+	u32 mem1_blk_cfg_w[8];
+	u32 mem1_blk_nse_w[2];
+	u32 mem2_blk_cfg_w[8];
+	u32 mem2_blk_nse_w[2];
+	u32 mem3_blk_cfg_w[8];
+	u32 mem3_blk_nse_w[2];/*0x1F0, 0x1F4 */
+	u32 reserved[2];
+};
+
+struct mrc_rgn_dom {
+	u32 mrc_glbcfg[4];
+	u32 nse_rgn_indirect;
+	u32 nse_rgn_set;
+	u32 nse_rgn_clr;
+	u32 nse_rgn_clr_all;
+	u32 memn_glbac[8];
+	/* The upper only existed in the beginning of each MRC */
+	u32 rgn_desc_words[16][2]; /* 16  regions at max, 2 words per region */
+	u32 rgn_nse;
+	u32 reserved2[15];
+};
+
+struct mda_inst {
+	u32 mda_w[8];
+};
+
+struct trdc_mgr {
+	u32 trdc_cr;
+	u32 res0[59];
+	u32 trdc_hwcfg0;
+	u32 trdc_hwcfg1;
+	u32 res1[450];
+	struct mda_inst mda[8];
+	u32 res2[15808];
+};
+
+struct trdc_mbc {
+	struct mbc_mem_dom mem_dom[DID_NUM];
+};
+
+struct trdc_mrc {
+	struct mrc_rgn_dom mrc_dom[DID_NUM];
+};
+
+static void *trdc_get_mbc_base(ulong trdc_reg, u32 mbc_x)
+{
+	struct trdc_mgr *trdc_base = (struct trdc_mgr *)trdc_reg;
+	u32 mbc_num = MBC_NUM(trdc_base->trdc_hwcfg0);
+
+	if (mbc_x >= mbc_num)
+		return 0;
+
+	return (void *)trdc_reg + 0x10000 + 0x2000 * mbc_x;
+}
+
+static void *trdc_get_mrc_base(ulong trdc_reg, u32 mrc_x)
+{
+	struct trdc_mgr *trdc_base = (struct trdc_mgr *)trdc_reg;
+	u32 mbc_num = MBC_NUM(trdc_base->trdc_hwcfg0);
+	u32 mrc_num = MRC_NUM(trdc_base->trdc_hwcfg0);
+
+	if (mrc_x >= mrc_num)
+		return 0;
+
+	return (void *)trdc_reg + 0x10000 + 0x2000 * mbc_num + 0x1000 * mrc_x;
+}
+
+static int trdc_mbc_set_control(ulong trdc_reg, u32 mbc_x, u32 glbac_id,
+			 u32 glbac_val)
+{
+	struct trdc_mbc *mbc_base = trdc_get_mbc_base(trdc_reg, mbc_x);
+	struct mbc_mem_dom *mbc_dom;
+
+	if (mbc_base == 0 || glbac_id >= 8)
+		return -EINVAL;
+
+	/* only first dom has the glbac */
+	mbc_dom = &mbc_base->mem_dom[0];
+
+	writel(glbac_val, &mbc_dom->memn_glbac[glbac_id]);
+
+	return 0;
+}
+
+static int trdc_mbc_blk_config(ulong trdc_reg, u32 mbc_x, u32 dom_x, u32 mem_x,
+			u32 blk_x, bool sec_access, u32 glbac_id)
+{
+	struct trdc_mbc *mbc_base = trdc_get_mbc_base(trdc_reg, mbc_x);
+	struct mbc_mem_dom *mbc_dom;
+	u32 *cfg_w, *nse_w;
+	u32 index, offset, val;
+
+	if (mbc_base == 0 || glbac_id >= 8)
+		return -EINVAL;
+
+	mbc_dom = &mbc_base->mem_dom[dom_x];
+
+	switch (mem_x) {
+	case 0:
+		cfg_w = &mbc_dom->mem0_blk_cfg_w[blk_x / 8];
+		nse_w = &mbc_dom->mem0_blk_nse_w[blk_x / 32];
+		break;
+	case 1:
+		cfg_w = &mbc_dom->mem1_blk_cfg_w[blk_x / 8];
+		nse_w = &mbc_dom->mem1_blk_nse_w[blk_x / 32];
+		break;
+	case 2:
+		cfg_w = &mbc_dom->mem2_blk_cfg_w[blk_x / 8];
+		nse_w = &mbc_dom->mem2_blk_nse_w[blk_x / 32];
+		break;
+	case 3:
+		cfg_w = &mbc_dom->mem3_blk_cfg_w[blk_x / 8];
+		nse_w = &mbc_dom->mem3_blk_nse_w[blk_x / 32];
+		break;
+	default:
+		return -EINVAL;
+	};
+
+	index = blk_x % 8;
+	offset = index * 4;
+
+	val = readl((void __iomem *)cfg_w);
+
+	val &= ~(0xFU << offset);
+
+	/* MBC0-3
+	 *  Global 0, 0x7777 secure pri/user read/write/execute, S400 has already set it.
+	 *  So select MBC0_MEMN_GLBAC0
+	 */
+	if (sec_access) {
+		val |= ((0x0 | (glbac_id & 0x7)) << offset);
+		writel(val, (void __iomem *)cfg_w);
+	} else {
+		val |= ((0x8 | (glbac_id & 0x7)) << offset); /* nse bit set */
+		writel(val, (void __iomem *)cfg_w);
+	}
+
+	return 0;
+}
+
+static int trdc_mrc_set_control(ulong trdc_reg, u32 mrc_x, u32 glbac_id, u32 glbac_val)
+{
+	struct trdc_mrc *mrc_base = trdc_get_mrc_base(trdc_reg, mrc_x);
+	struct mrc_rgn_dom *mrc_dom;
+
+	if (mrc_base == 0 || glbac_id >= 8)
+		return -EINVAL;
+
+	/* only first dom has the glbac */
+	mrc_dom = &mrc_base->mrc_dom[0];
+
+	pr_vdebug("mrc_dom 0x%lx\n", (ulong)mrc_dom);
+
+	writel(glbac_val, &mrc_dom->memn_glbac[glbac_id]);
+
+	return 0;
+}
+
+static int trdc_mrc_region_config(ulong trdc_reg, u32 mrc_x, u32 dom_x, u32 addr_start,
+			   u32 addr_end, bool sec_access, u32 glbac_id)
+{
+	struct trdc_mrc *mrc_base = trdc_get_mrc_base(trdc_reg, mrc_x);
+	struct mrc_rgn_dom *mrc_dom;
+	u32 *desc_w;
+	u32 start, end;
+	u32 i, free = 8;
+	bool vld, hit = false;
+
+	if (mrc_base == 0 || glbac_id >= 8)
+		return -EINVAL;
+
+	mrc_dom = &mrc_base->mrc_dom[dom_x];
+
+	addr_start &= ~0x3fff;
+	addr_end &= ~0x3fff;
+
+	for (i = 0; i < 8; i++) {
+		desc_w = &mrc_dom->rgn_desc_words[i][0];
+
+		start = readl((void __iomem *)desc_w) & (~0x3fff);
+		end = readl((void __iomem *)(desc_w + 1));
+		vld = end & 0x1;
+		end = end & (~0x3fff);
+
+		if (start == 0 && end == 0 && !vld && free >= 8)
+			free = i;
+
+		/* Check all the region descriptors, even overlap */
+		if (addr_start >= end || addr_end <= start || !vld)
+			continue;
+
+		/* MRC0,1
+		 *  Global 0, 0x7777 secure pri/user read/write/execute, S400 has already set it.
+		 *  So select MRCx_MEMN_GLBAC0
+		 */
+		if (sec_access) {
+			writel(start | (glbac_id & 0x7), (void __iomem *)desc_w);
+			writel(end | 0x1, (void __iomem *)(desc_w + 1));
+		} else {
+			writel(start | (glbac_id & 0x7), (void __iomem *)desc_w);
+			writel(end | 0x1 | 0x10, (void __iomem *)(desc_w + 1));
+		}
+
+		if (addr_start >= start && addr_end <= end)
+			hit = true;
+	}
+
+	if (!hit) {
+		if (free >= 8)
+			return -EFAULT;
+
+		desc_w = &mrc_dom->rgn_desc_words[free][0];
+
+		if (sec_access) {
+			writel(addr_start | (glbac_id & 0x7), (void __iomem *)desc_w);
+			writel(addr_end | 0x1, (void __iomem *)(desc_w + 1));
+		} else {
+			writel(addr_start | (glbac_id & 0x7), (void __iomem *)desc_w);
+			writel((addr_end | 0x1 | 0x10), (void __iomem *)(desc_w + 1));
+		}
+	}
+
+	return 0;
+}
+
+static bool trdc_mrc_enabled(ulong trdc_base)
+{
+	return (!!(readl((void __iomem *)trdc_base) & 0x8000));
+}
+
+static int release_rdc(u8 xrdc)
+{
+	ulong s_mu_base = 0x47520000UL;
+	struct sentinel_msg msg;
+	int ret;
+	u32 rdc_id;
+
+	switch (xrdc) {
+	case 0:
+		rdc_id = 0x74;
+		break;
+	case 1:
+		rdc_id = 0x78;
+		break;
+	case 2:
+		rdc_id = 0x82;
+		break;
+	case 3:
+		rdc_id = 0x86;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	msg.version = AHAB_VERSION;
+	msg.tag = AHAB_CMD_TAG;
+	msg.size = 2;
+	msg.command = ELE_RELEASE_RDC_REQ;
+	msg.data[0] = (rdc_id << 8) | 0x2; /* A55 */
+
+	mu_hal_init(s_mu_base);
+	mu_hal_sendmsg(s_mu_base, 0, *((u32 *)&msg));
+	mu_hal_sendmsg(s_mu_base, 1, msg.data[0]);
+
+	ret = mu_hal_receivemsg(s_mu_base, 0, (u32 *)&msg);
+	if (ret)
+		return ret;
+
+	ret = mu_hal_receivemsg(s_mu_base, 1, &msg.data[0]);
+	if (ret)
+		return -EIO;
+
+	if ((msg.data[0] & 0xff) == 0xd6)
+		return 0;
+
+	return -EIO;
+}
+
+void imx9_trdc_init(void)
+{
+	unsigned long base = MX9_TRDC_NICMIX_BASE_ADDR;
+	int ret = 0, i;
+
+	ret |= release_rdc(0);
+	ret |= release_rdc(2);
+	ret |= release_rdc(1);
+	ret |= release_rdc(3);
+
+	if (ret)
+		return;
+
+	/* Set OCRAM to RWX for secure, when OEM_CLOSE, the image is RX only */
+	trdc_mbc_set_control(base, 3, 0, 0x7700);
+
+	for (i = 0; i < 40; i++)
+		trdc_mbc_blk_config(base, 3, 3, 0, i, true, 0);
+
+	for (i = 0; i < 40; i++)
+		trdc_mbc_blk_config(base, 3, 3, 1, i, true, 0);
+
+	for (i = 0; i < 40; i++)
+		trdc_mbc_blk_config(base, 3, 0, 0, i, true, 0);
+
+	for (i = 0; i < 40; i++)
+		trdc_mbc_blk_config(base, 3, 0, 1, i, true, 0);
+
+	/* TRDC mega */
+	if (!trdc_mrc_enabled(base))
+		return;
+
+	/* DDR */
+	trdc_mrc_set_control(base, 0, 0, 0x7777);
+	/* S400*/
+	trdc_mrc_region_config(base, 0, 0, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* MTR */
+	trdc_mrc_region_config(base, 0, 1, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* M33 */
+	trdc_mrc_region_config(base, 0, 2, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* A55*/
+	trdc_mrc_region_config(base, 0, 3, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* For USDHC1 to DDR, USDHC1 is default force to non-secure */
+	trdc_mrc_region_config(base, 0, 5, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* For USDHC2 to DDR, USDHC2 is default force to non-secure */
+	trdc_mrc_region_config(base, 0, 6, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* eDMA */
+	trdc_mrc_region_config(base, 0, 7, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* CoreSight, TestPort */
+	trdc_mrc_region_config(base, 0, 8, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* DAP */
+	trdc_mrc_region_config(base, 0, 9, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* SoC masters */
+	trdc_mrc_region_config(base, 0, 10, 0x80000000, 0xFFFFFFFF, false, 0);
+	/* USB */
+	trdc_mrc_region_config(base, 0, 11, 0x80000000, 0xFFFFFFFF, false, 0);
+}
diff --git a/include/soc/imx9/trdc.h b/include/soc/imx9/trdc.h
new file mode 100644
index 0000000000..624e267ab6
--- /dev/null
+++ b/include/soc/imx9/trdc.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2022 NXP
+ */
+
+#ifndef __ASM_ARCH_IMX9_TRDC_H
+#define __ASM_ARCH_IMX9_TRDC_H
+
+void imx9_trdc_init(void);
+
+#endif
-- 
2.39.2



