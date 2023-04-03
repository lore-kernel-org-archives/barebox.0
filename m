Delivery-date: Mon, 03 Apr 2023 21:45:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjQ7I-008qdq-45
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 21:45:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjQ7H-0003Lq-BU
	for lore@pengutronix.de; Mon, 03 Apr 2023 21:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PIakvsyNfuVJpZDtqVT2Or5mmclAPHsR4Rxq+XJ8PBI=; b=BFVNfkAPE5PPq/LtiBMkTeTaIS
	aeIx6xuE3FQi51HpuMoC79GrhFfzpAm3nFAi8i5886q7dxT/VK3zpJU1ePkKJjXKUlGWSLCwQ3S7f
	b1cJ3NOt7k6cgGRV+CmDiIVlzYwh1Pw9HjZKWtKvcSzaP36b87bTywH5Mppn8ShW6/VF2lMop/sjH
	J0/AKjMN8Z1ePLS8sDNbIkUi8Z/C6+BDTXbC2K7v3DIB12T3EPBQKJb1KS1fkxdF498DLpRYhB/Cv
	h2Z0HIfVS8cWpj5BwajrsrGiagZy4uR5cCTr7g9Bq7qoDMhpgDiprMSEyqutls+uETxMvr4nn7QDn
	xSsxqGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQ5m-00GRbO-1E;
	Mon, 03 Apr 2023 19:43:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQ5h-00GRZi-1b
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 19:43:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjQ5c-00037R-IW; Mon, 03 Apr 2023 21:43:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjQ5b-0007Cl-Or; Mon, 03 Apr 2023 21:43:39 +0200
Date: Mon, 3 Apr 2023 21:43:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <20230403194339.GH15436@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
 <20230328074037.1202993-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328074037.1202993-3-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_124345_858443_966EF659 
X-CRM114-Status: GOOD (  38.21  )
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
Subject: Re: [PATCH v2 2/6] ARM: Rockchip: implement memory read out from
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 28, 2023 at 09:40:33AM +0200, Sascha Hauer wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> Add a driver to read out the amount of memory from the DDR controller.
> The decoding of the registers has been taken from U-Boot. Currently
> supported are the RK3399 and the RK3568, but decoding should work on
> other Rockchip SoCs as well.
> 

This patch needs an update. The RAM is divided into two parts, one below
the SoC internal register space and one starting at 4GiB up to the end.
The previous version assumed that the RAM address decoding skips
the internal register space, but it seems the internal register space
shadows the RAM behind it, so a board with 8GiB of memory has the
last address on 0x200000000-1 instead of 0x210000000-1 like the previous
version assumed.

----------------------------------8<----------------------------

>From bc9baa7ac71c4a8e75d000317d85d6bf6a85a8e4 Mon Sep 17 00:00:00 2001
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 5 Jan 2023 08:34:40 +0100
Subject: [PATCH] ARM: Rockchip: implement memory read out from controller

Add a driver to read out the amount of memory from the DDR controller.
The decoding of the registers has been taken from U-Boot. Currently
supported are the RK3399 and the RK3568, but decoding should work on
other Rockchip SoCs as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Makefile     |   1 +
 arch/arm/mach-rockchip/dmc.c        | 219 ++++++++++++++++++++++++++++
 include/linux/sizes.h               |   3 +
 include/mach/rockchip/dmc.h         |  86 +++++++++++
 include/mach/rockchip/rk3399-regs.h |   1 +
 include/mach/rockchip/rk3568-regs.h |   1 +
 6 files changed, 311 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/dmc.c
 create mode 100644 include/mach/rockchip/dmc.h

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 2529af7c7e..f6c575854e 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -6,4 +6,5 @@ obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
 obj-$(CONFIG_ARCH_ROCKCHIP_V8) += bootm.o
+obj-pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += dmc.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
new file mode 100644
index 0000000000..dd60db5830
--- /dev/null
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
+ */
+
+#define pr_fmt(fmt) "rockchip-dmc: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <asm/barebox-arm.h>
+#include <asm/memory.h>
+#include <pbl.h>
+#include <io.h>
+#include <regmap.h>
+#include <mfd/syscon.h>
+#include <mach/rockchip/dmc.h>
+#include <mach/rockchip/rk3399-regs.h>
+#include <mach/rockchip/rk3568-regs.h>
+
+#define RK3399_PMUGRF_OS_REG2		0x308
+#define RK3399_PMUGRF_OS_REG3		0x30C
+
+#define RK3568_PMUGRF_OS_REG2           0x208
+#define RK3568_PMUGRF_OS_REG3           0x20c
+
+#define RK3399_INT_REG_START		0xf0000000
+#define RK3568_INT_REG_START		RK3399_INT_REG_START
+
+struct rockchip_dmc_drvdata {
+	unsigned int os_reg2;
+	unsigned int os_reg3;
+	resource_size_t internal_registers_start;
+};
+
+static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
+{
+	u32 rank, cs0_col, bk, cs0_row, cs1_row, bw, row_3_4;
+	resource_size_t chipsize_mb, size_mb = 0;
+	u32 ch;
+	u32 cs1_col;
+	u32 bg = 0;
+	u32 dbw, dram_type;
+	u32 ch_num = 1 + FIELD_GET(SYS_REG_NUM_CH, sys_reg2);
+	u32 version = FIELD_GET(SYS_REG_VERSION, sys_reg3);
+
+	pr_debug("%s(reg2=%x, reg3=%x)\n", __func__, sys_reg2, sys_reg3);
+
+	dram_type = FIELD_GET(SYS_REG_DDRTYPE, sys_reg2);
+
+	if (version >= 3)
+		dram_type |= FIELD_GET(SYS_REG_EXTEND_DDRTYPE, sys_reg3) << 3;
+
+	for (ch = 0; ch < ch_num; ch++) {
+		rank = 1 + (sys_reg2 >> SYS_REG_RANK_SHIFT(ch) & SYS_REG_RANK_MASK);
+		cs0_col = 9 + (sys_reg2 >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
+		cs1_col = cs0_col;
+
+		bk = 3 - ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
+
+		cs0_row = sys_reg2 >> SYS_REG_CS0_ROW_SHIFT(ch) & SYS_REG_CS0_ROW_MASK;
+		cs1_row = sys_reg2 >> SYS_REG_CS1_ROW_SHIFT(ch) & SYS_REG_CS1_ROW_MASK;
+
+		if (version >= 2) {
+			cs1_col = 9 + (sys_reg3 >> SYS_REG_CS1_COL_SHIFT(ch) &
+				  SYS_REG_CS1_COL_MASK);
+
+			cs0_row |= (sys_reg3 >> SYS_REG_EXTEND_CS0_ROW_SHIFT(ch) &
+					SYS_REG_EXTEND_CS0_ROW_MASK) << 2;
+
+			if (cs0_row == 7)
+				cs0_row = 12;
+			else
+				cs0_row += 13;
+
+			cs1_row |= (sys_reg3 >> SYS_REG_EXTEND_CS1_ROW_SHIFT(ch) &
+					SYS_REG_EXTEND_CS1_ROW_MASK) << 2;
+
+			if (cs1_row == 7)
+				cs1_row = 12;
+			else
+				cs1_row += 13;
+		} else {
+			cs0_row += 13;
+			cs1_row += 13;
+		}
+
+		bw = (2 >> ((sys_reg2 >> SYS_REG_BW_SHIFT(ch)) & SYS_REG_BW_MASK));
+		row_3_4 = sys_reg2 >> SYS_REG_ROW_3_4_SHIFT(ch) & SYS_REG_ROW_3_4_MASK;
+
+		if (dram_type == DDR4) {
+			dbw = (sys_reg2 >> SYS_REG_DBW_SHIFT(ch)) & SYS_REG_DBW_MASK;
+			bg = (dbw == 2) ? 2 : 1;
+		}
+
+		chipsize_mb = (1 << (cs0_row + cs0_col + bk + bg + bw - 20));
+
+		if (rank > 1)
+			chipsize_mb += chipsize_mb >> ((cs0_row - cs1_row) +
+				       (cs0_col - cs1_col));
+		if (row_3_4)
+			chipsize_mb = chipsize_mb * 3 / 4;
+
+		size_mb += chipsize_mb;
+
+		if (rank > 1)
+			pr_debug("rank %d cs0_col %d cs1_col %d bk %d cs0_row %d "
+				 "cs1_row %d bw %d row_3_4 %d\n",
+				 rank, cs0_col, cs1_col, bk, cs0_row,
+				 cs1_row, bw, row_3_4);
+		else
+			pr_debug("rank %d cs0_col %d bk %d cs0_row %d "
+				 "bw %d row_3_4 %d\n",
+				 rank, cs0_col, bk, cs0_row,
+				 bw, row_3_4);
+	}
+
+	return (resource_size_t)size_mb << 20;
+}
+
+resource_size_t rk3399_ram0_size(void)
+{
+	void __iomem *pmugrf = IOMEM(RK3399_PMUGRF_BASE);
+	u32 sys_reg2, sys_reg3;
+	resource_size_t size;
+
+	sys_reg2 = readl(pmugrf + RK3399_PMUGRF_OS_REG2);
+	sys_reg3 = readl(pmugrf + RK3399_PMUGRF_OS_REG3);
+
+	size = rockchip_sdram_size(sys_reg2, sys_reg3);
+	size = min_t(resource_size_t, RK3399_INT_REG_START, size);
+
+	pr_debug("%s() = %llu\n", __func__, (u64)size);
+
+	return size;
+}
+
+resource_size_t rk3568_ram0_size(void)
+{
+	void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
+	u32 sys_reg2, sys_reg3;
+	resource_size_t size;
+
+	sys_reg2 = readl(pmugrf + RK3568_PMUGRF_OS_REG2);
+	sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
+
+	size = rockchip_sdram_size(sys_reg2, sys_reg3);
+	size = min_t(resource_size_t, RK3568_INT_REG_START, size);
+
+	pr_debug("%s() = %llu\n", __func__, (u64)size);
+
+	return size;
+}
+
+static int rockchip_dmc_probe(struct device *dev)
+{
+	const struct rockchip_dmc_drvdata *drvdata;
+	resource_size_t membase, memsize;
+	struct regmap *regmap;
+	u32 sys_reg2, sys_reg3;
+
+	regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	drvdata = device_get_match_data(dev);
+	if (!drvdata)
+		return -ENOENT;
+
+	regmap_read(regmap, drvdata->os_reg2, &sys_reg2);
+	regmap_read(regmap, drvdata->os_reg3, &sys_reg3);
+
+	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
+
+	dev_info(dev, "Detected memory size: %pa\n", &memsize);
+
+	/* lowest 10M are shaved off for secure world firmware */
+	membase = 0xa00000;
+
+	/* ram0, from 0xa00000 up to SoC internal register space start */
+	arm_add_mem_device("ram0", membase,
+		min_t(resource_size_t, drvdata->internal_registers_start, memsize) - membase);
+
+	/* ram1, remaining RAM beyond 32bit space */
+	if (memsize > SZ_4G)
+		arm_add_mem_device("ram1", SZ_4G, memsize - SZ_4G);
+
+	return 0;
+}
+
+static const struct rockchip_dmc_drvdata rk3399_drvdata = {
+	.os_reg2 = RK3399_PMUGRF_OS_REG2,
+	.os_reg3 = RK3399_PMUGRF_OS_REG3,
+	.internal_registers_start = RK3399_INT_REG_START,
+};
+
+static const struct rockchip_dmc_drvdata rk3568_drvdata = {
+	.os_reg2 = RK3568_PMUGRF_OS_REG2,
+	.os_reg3 = RK3568_PMUGRF_OS_REG3,
+	.internal_registers_start = RK3568_INT_REG_START,
+};
+
+static struct of_device_id rockchip_dmc_dt_ids[] = {
+	{
+		.compatible = "rockchip,rk3399-dmc",
+		.data = &rk3399_drvdata,
+	},
+	{
+		.compatible = "rockchip,rk3568-dmc",
+		.data = &rk3568_drvdata,
+	},
+	{ /* sentinel */ }
+};
+
+static struct driver rockchip_dmc_driver = {
+	.name   = "rockchip-dmc",
+	.probe  = rockchip_dmc_probe,
+	.of_compatible = rockchip_dmc_dt_ids,
+};
+mem_platform_driver(rockchip_dmc_driver);
diff --git a/include/linux/sizes.h b/include/linux/sizes.h
index fbde0bc7e8..1d222daeab 100644
--- a/include/linux/sizes.h
+++ b/include/linux/sizes.h
@@ -47,5 +47,8 @@
 #define SZ_2G				0x80000000
 
 #define SZ_4G				_AC(0x100000000, ULL)
+#define SZ_8G				_AC(0x200000000, ULL)
+#define SZ_16G				_AC(0x400000000, ULL)
+#define SZ_32G				_AC(0x800000000, ULL)
 
 #endif /* __LINUX_SIZES_H__ */
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
new file mode 100644
index 0000000000..ff197d50a0
--- /dev/null
+++ b/include/mach/rockchip/dmc.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
+ */
+
+#ifndef _MACH_ROCKCHIP_DMC_H
+#define _MACH_ROCKCHIP_DMC_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/bitfield.h>
+
+enum {
+	DDR4 = 0,
+	DDR3 = 0x3,
+	LPDDR2 = 0x5,
+	LPDDR3 = 0x6,
+	LPDDR4 = 0x7,
+	UNUSED = 0xFF
+};
+
+/*
+ * sys_reg2 bitfield struct
+ * [31]		row_3_4_ch1
+ * [30]		row_3_4_ch0
+ * [29:28]	chinfo
+ * [27]		rank_ch1
+ * [26:25]	col_ch1
+ * [24]		bk_ch1
+ * [23:22]	low bits of cs0_row_ch1
+ * [21:20]	low bits of cs1_row_ch1
+ * [19:18]	bw_ch1
+ * [17:16]	dbw_ch1;
+ * [15:13]	ddrtype
+ * [12]		channelnum
+ * [11]		rank_ch0
+ * [10:9]	col_ch0,
+ * [8]		bk_ch0
+ * [7:6]	low bits of cs0_row_ch0
+ * [5:4]	low bits of cs1_row_ch0
+ * [3:2]	bw_ch0
+ * [1:0]	dbw_ch0
+ */
+
+#define SYS_REG_DDRTYPE			GENMASK(15, 13)
+#define SYS_REG_NUM_CH			BIT(12)
+#define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
+#define SYS_REG_ROW_3_4_MASK		1
+#define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
+#define SYS_REG_RANK_MASK		1
+#define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
+#define SYS_REG_COL_MASK		3
+#define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
+#define SYS_REG_BK_MASK			1
+#define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
+#define SYS_REG_CS0_ROW_MASK		3
+#define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
+#define SYS_REG_CS1_ROW_MASK		3
+#define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
+#define SYS_REG_BW_MASK			3
+#define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
+#define SYS_REG_DBW_MASK		3
+
+/*
+ * sys_reg3 bitfield struct
+ * [7]		high bit of cs0_row_ch1
+ * [6]		high bit of cs1_row_ch1
+ * [5]		high bit of cs0_row_ch0
+ * [4]		high bit of cs1_row_ch0
+ * [3:2]	cs1_col_ch1
+ * [1:0]	cs1_col_ch0
+ */
+#define SYS_REG_VERSION				GENMASK(31, 28)
+#define SYS_REG_EXTEND_DDRTYPE			GENMASK(13, 12)
+#define SYS_REG_EXTEND_CS0_ROW_SHIFT(ch)	(5 + (ch) * 2)
+#define SYS_REG_EXTEND_CS0_ROW_MASK		1
+#define SYS_REG_EXTEND_CS1_ROW_SHIFT(ch)	(4 + (ch) * 2)
+#define SYS_REG_EXTEND_CS1_ROW_MASK		1
+#define SYS_REG_CS1_COL_SHIFT(ch)		(0 + (ch) * 2)
+#define SYS_REG_CS1_COL_MASK			3
+
+resource_size_t rk3399_ram0_size(void);
+resource_size_t rk3568_ram0_size(void);
+
+#endif
diff --git a/include/mach/rockchip/rk3399-regs.h b/include/mach/rockchip/rk3399-regs.h
index 57033b6510..6db082da9b 100644
--- a/include/mach/rockchip/rk3399-regs.h
+++ b/include/mach/rockchip/rk3399-regs.h
@@ -10,6 +10,7 @@
 #define RK3399_UART3_BASE	0xff1b0000
 #define RK3399_UART4_BASE	0xff370000
 
+#define RK3399_PMUGRF_BASE	0xff320000
 #define RK3399_IRAM_BASE	0xff8c0000
 #define RK3399_STIMER_BASE	0xff8680a0
 
diff --git a/include/mach/rockchip/rk3568-regs.h b/include/mach/rockchip/rk3568-regs.h
index edd5ee268d..55d28790dd 100644
--- a/include/mach/rockchip/rk3568-regs.h
+++ b/include/mach/rockchip/rk3568-regs.h
@@ -16,5 +16,6 @@
 #define RK3568_UART9_BASE	0xfe6d0000
 
 #define RK3568_IRAM_BASE	0xfdcc0000
+#define RK3568_PMUGRF_BASE	0xfdc20000
 
 #endif /* __MACH_RK3568_REGS_H */
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


