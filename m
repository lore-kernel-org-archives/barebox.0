Delivery-date: Tue, 28 Mar 2023 10:19:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4YY-00HP5s-WB
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 10:19:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph4YY-0006vY-A3
	for lore@pengutronix.de; Tue, 28 Mar 2023 10:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d1lMUeaEext5Tzbz2zFmrPr6Sv0tDScn+MZk4j9N1nE=; b=nRKsMTrkThRLPXs8+IN9RBsjEA
	OeG3s1538DhfbsFUcbKQeBy0sM6vw87H9ED6Q2TW4hxcAGSGu+NinF8nbuw+b+12v32WYXUPJfmau
	6GAQiUqSI9V1YG2d8KDmpeTG8JZjy+7UP+57y1hU7dEt0TqKC7ZwV7cAReDckSve4gj6hFP1LgBdb
	nCorS0e9gytEAy20Hg0vUmhP4wiK9ZINhHUljALLxNHuJzOZcvjYlpjzyCZpSHCzCvZ9XPX0fab9Y
	yU0R7MJOvF1a8NstNxEb21n0eoQf4oZ7o2fS8l7XYfDrhYofy0dhaKhHcTrVPBpT4qVOkf/ArzI2P
	yLoV2Kfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4XD-00DZO3-1m;
	Tue, 28 Mar 2023 08:18:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph4X9-00DZNU-0K
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 08:18:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4X7-0006q8-7C; Tue, 28 Mar 2023 10:18:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph4X4-0002Xc-VC; Tue, 28 Mar 2023 10:18:18 +0200
Date: Tue, 28 Mar 2023 10:18:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20230328081818.GE15436@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230328_011823_526175_75992C05 
X-CRM114-Status: GOOD (  40.45  )
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
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/Makefile     |   1 +
>  arch/arm/mach-rockchip/dmc.c        | 232 ++++++++++++++++++++++++++++
>  include/linux/sizes.h               |   3 +
>  include/mach/rockchip/dmc.h         |  86 +++++++++++
>  include/mach/rockchip/rk3399-regs.h |   1 +
>  include/mach/rockchip/rk3568-regs.h |   1 +
>  6 files changed, 324 insertions(+)
>  create mode 100644 arch/arm/mach-rockchip/dmc.c
>  create mode 100644 include/mach/rockchip/dmc.h
> 
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index 2529af7c7e..f6c575854e 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -6,4 +6,5 @@ obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
>  obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
>  obj-$(CONFIG_ARCH_ROCKCHIP_V8) += bootm.o
> +obj-pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += dmc.o
>  obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
> diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
> new file mode 100644
> index 0000000000..97968b0544
> --- /dev/null
> +++ b/arch/arm/mach-rockchip/dmc.c
> @@ -0,0 +1,232 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#define pr_fmt(fmt) "rockchip-dmc: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/memory.h>
> +#include <pbl.h>
> +#include <io.h>
> +#include <regmap.h>
> +#include <mfd/syscon.h>
> +#include <mach/rockchip/dmc.h>
> +#include <mach/rockchip/rk3399-regs.h>
> +#include <mach/rockchip/rk3568-regs.h>
> +
> +#define RK3399_PMUGRF_OS_REG2		0x308
> +#define RK3399_PMUGRF_OS_REG3		0x30C
> +
> +#define RK3568_PMUGRF_OS_REG2           0x208
> +#define RK3568_PMUGRF_OS_REG3           0x20c
> +
> +struct rockchip_dmc_region {
> +	resource_size_t base, size;
> +};
> +
> +struct rockchip_dmc_drvdata {
> +	unsigned int os_reg2;
> +	unsigned int os_reg3;
> +	const struct rockchip_dmc_region *regions;
> +};
> +
> +static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
> +{
> +	u32 rank, cs0_col, bk, cs0_row, cs1_row, bw, row_3_4;
> +	resource_size_t chipsize_mb, size_mb = 0;
> +	u32 ch;
> +	u32 cs1_col;
> +	u32 bg = 0;
> +	u32 dbw, dram_type;
> +	u32 ch_num = 1 + FIELD_GET(SYS_REG_NUM_CH, sys_reg2);
> +	u32 version = FIELD_GET(SYS_REG_VERSION, sys_reg3);
> +
> +	pr_debug("%s(reg2=%x, reg3=%x)\n", __func__, sys_reg2, sys_reg3);
> +
> +	dram_type = FIELD_GET(SYS_REG_DDRTYPE, sys_reg2);
> +
> +	if (version >= 3)
> +		dram_type |= FIELD_GET(SYS_REG_EXTEND_DDRTYPE, sys_reg3) << 3;
> +
> +	for (ch = 0; ch < ch_num; ch++) {
> +		rank = 1 + (sys_reg2 >> SYS_REG_RANK_SHIFT(ch) & SYS_REG_RANK_MASK);
> +		cs0_col = 9 + (sys_reg2 >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
> +		cs1_col = cs0_col;
> +
> +		bk = 3 - ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
> +
> +		cs0_row = sys_reg2 >> SYS_REG_CS0_ROW_SHIFT(ch) & SYS_REG_CS0_ROW_MASK;
> +		cs1_row = sys_reg2 >> SYS_REG_CS1_ROW_SHIFT(ch) & SYS_REG_CS1_ROW_MASK;
> +
> +		if (version >= 2) {
> +			cs1_col = 9 + (sys_reg3 >> SYS_REG_CS1_COL_SHIFT(ch) &
> +				  SYS_REG_CS1_COL_MASK);
> +
> +			cs0_row |= (sys_reg3 >> SYS_REG_EXTEND_CS0_ROW_SHIFT(ch) &
> +					SYS_REG_EXTEND_CS0_ROW_MASK) << 2;
> +
> +			if (cs0_row == 7)
> +				cs0_row = 12;
> +			else
> +				cs0_row += 13;
> +
> +			cs1_row |= (sys_reg3 >> SYS_REG_EXTEND_CS1_ROW_SHIFT(ch) &
> +					SYS_REG_EXTEND_CS1_ROW_MASK) << 2;
> +
> +			if (cs1_row == 7)
> +				cs1_row = 12;
> +			else
> +				cs1_row += 13;
> +		} else {
> +			cs0_row += 13;
> +			cs1_row += 13;
> +		}
> +
> +		bw = (2 >> ((sys_reg2 >> SYS_REG_BW_SHIFT(ch)) & SYS_REG_BW_MASK));
> +		row_3_4 = sys_reg2 >> SYS_REG_ROW_3_4_SHIFT(ch) & SYS_REG_ROW_3_4_MASK;
> +
> +		if (dram_type == DDR4) {
> +			dbw = (sys_reg2 >> SYS_REG_DBW_SHIFT(ch)) & SYS_REG_DBW_MASK;
> +			bg = (dbw == 2) ? 2 : 1;
> +		}
> +
> +		chipsize_mb = (1 << (cs0_row + cs0_col + bk + bg + bw - 20));
> +
> +		if (rank > 1)
> +			chipsize_mb += chipsize_mb >> ((cs0_row - cs1_row) +
> +				       (cs0_col - cs1_col));
> +		if (row_3_4)
> +			chipsize_mb = chipsize_mb * 3 / 4;
> +
> +		size_mb += chipsize_mb;
> +
> +		if (rank > 1)
> +			pr_debug("rank %d cs0_col %d cs1_col %d bk %d cs0_row %d "
> +				 "cs1_row %d bw %d row_3_4 %d\n",
> +				 rank, cs0_col, cs1_col, bk, cs0_row,
> +				 cs1_row, bw, row_3_4);
> +		else
> +			pr_debug("rank %d cs0_col %d bk %d cs0_row %d "
> +				 "bw %d row_3_4 %d\n",
> +				 rank, cs0_col, bk, cs0_row,
> +				 bw, row_3_4);
> +	}
> +
> +	return (resource_size_t)size_mb << 20;
> +}
> +
> +resource_size_t rk3399_ram0_size(void)
> +{
> +	void __iomem *pmugrf = IOMEM(RK3399_PMUGRF_BASE);
> +	u32 sys_reg2, sys_reg3;
> +	resource_size_t size;
> +
> +	sys_reg2 = readl(pmugrf + RK3399_PMUGRF_OS_REG2);
> +	sys_reg3 = readl(pmugrf + RK3399_PMUGRF_OS_REG3);
> +
> +	size = rockchip_sdram_size(sys_reg2, sys_reg3);
> +	size = min_t(resource_size_t, SZ_4G - SZ_128M, size);
> +
> +	pr_debug("%s() = %llu\n", __func__, (u64)size);
> +
> +	return size;
> +}
> +
> +resource_size_t rk3568_ram0_size(void)
> +{
> +	void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
> +	u32 sys_reg2, sys_reg3;
> +	resource_size_t size;
> +
> +	sys_reg2 = readl(pmugrf + RK3568_PMUGRF_OS_REG2);
> +	sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
> +
> +	size = rockchip_sdram_size(sys_reg2, sys_reg3);
> +	size = min_t(resource_size_t, SZ_4G - SZ_128M, size);

I should have added a define immediately when I first noticed this value
is used multiple times in this patch.

Sascha

-------------------------8<----------------------------

>From 13751c530ea4fe6c9f3f85afde0be290383491fa Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Mar 2023 10:14:28 +0200
Subject: [PATCH] fixup! ARM: Rockchip: implement memory read out from
 controller

---
 arch/arm/mach-rockchip/dmc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 97968b0544..02dc26b7b5 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -23,6 +23,9 @@
 #define RK3568_PMUGRF_OS_REG2           0x208
 #define RK3568_PMUGRF_OS_REG3           0x20c
 
+#define RK3399_MEM0_END		0xf0000000
+#define RK3568_MEM0_END		RK3399_MEM0_END
+
 struct rockchip_dmc_region {
 	resource_size_t base, size;
 };
@@ -128,7 +131,7 @@ resource_size_t rk3399_ram0_size(void)
 	sys_reg3 = readl(pmugrf + RK3399_PMUGRF_OS_REG3);
 
 	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	size = min_t(resource_size_t, SZ_4G - SZ_128M, size);
+	size = min_t(resource_size_t, RK3399_MEM0_END, size);
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
@@ -145,7 +148,7 @@ resource_size_t rk3568_ram0_size(void)
 	sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
 
 	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	size = min_t(resource_size_t, SZ_4G - SZ_128M, size);
+	size = min_t(resource_size_t, RK3568_MEM0_END, size);
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
@@ -193,7 +196,7 @@ static int rockchip_dmc_probe(struct device *dev)
 static const struct rockchip_dmc_region rk3399_regions[] = {
 	{
 		.base = 0x0,
-		.size = 0xf0000000,
+		.size = RK3399_MEM0_END,
 	}, {
 		.base = SZ_4G,
 		.size = SZ_32G,
-- 
2.39.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


