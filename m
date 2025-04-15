Delivery-date: Tue, 15 Apr 2025 10:04:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4bH6-000yal-1m
	for lore@lore.pengutronix.de;
	Tue, 15 Apr 2025 10:04:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4bH5-0007tP-FX
	for lore@pengutronix.de; Tue, 15 Apr 2025 10:04:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iwYLhOWnqeOccIdcxcb5+yyAn9pmTxkTlCpfzOj/g6I=; b=PfLu8ue6wcIEidnDfpAbmEWWq6
	pnlSqkioi20FQrfEPehUQcpKnFlOyM3JPIvHIb50wGH63a/F0IWLfFvtLjSBtmQswMNbZL1WxYmzX
	4Bfr0ZOvGyoXMFyk7jU59Et8Fj/fQGhcuVAVy7H0tX0SMCdCkjhPVZsJllK5j7Ra9lC09UCtlILF1
	p3k8wbeshsv5mS2SABx2vvJGFjA0qHTEyGMsfP7Y7qhj3y224nZE5qRYQQqBL1QZI5Uwwk8y1XwNi
	6OftNNAbDvkr9kc13NP/WfjjvN/RfP9Wpw2AukL4tuvzfjf5jdbGHh5d5b6IZn8HbL8rhRHKVg/kZ
	OReOEfCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4bGA-00000004v5F-12K9;
	Tue, 15 Apr 2025 08:03:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4b2O-00000004rhv-2kRi
	for barebox@lists.infradead.org;
	Tue, 15 Apr 2025 07:48:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4b2N-0004gy-Dc; Tue, 15 Apr 2025 09:48:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4b2N-000Net-0k;
	Tue, 15 Apr 2025 09:48:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4b2N-0025XQ-0Q;
	Tue, 15 Apr 2025 09:48:55 +0200
Date: Tue, 15 Apr 2025 09:48:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z_4PZ5v08lbKngr-@pengutronix.de>
References: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_004856_860497_96227311 
X-CRM114-Status: GOOD (  36.40  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] clk: rockchip: Add new clock-type for the ddrclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Thu, Apr 10, 2025 at 03:07:43PM +0300, Alexander Shiyan wrote:
> Changing the DDR clock frequency requires special care, this patch
> adds the DDR clock driver code from the Linux kernel repository.
> While we're here, let's also update drivers/clk/rockchip/Makefile
> to make it more readable.

This patch currently breaks build on ARMv7 Rockchip SoCs. It fails with
undefined reference to __arm_smccc_smc.

Looking at upstream Linux it seems that this driver is only used on
RK3399, the SoC we just removed support for.

Where do we go from here? I could fix this patch, but as it's unused I
could equally well drop it without loosing anything.

Sascha

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/rockchip/Makefile       |  29 ++++--
>  drivers/clk/rockchip/clk-ddr.c      | 131 ++++++++++++++++++++++++++++
>  drivers/clk/rockchip/clk-pll.c      |   6 +-
>  drivers/clk/rockchip/clk.c          |   7 ++
>  drivers/clk/rockchip/clk.h          |   1 +
>  include/soc/rockchip/rockchip_sip.h |  23 +++++
>  6 files changed, 188 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/clk/rockchip/clk-ddr.c
>  create mode 100644 include/soc/rockchip/rockchip_sip.h
> 
> diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
> index f01014da0c..8d752d11b9 100644
> --- a/drivers/clk/rockchip/Makefile
> +++ b/drivers/clk/rockchip/Makefile
> @@ -1,8 +1,21 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
> -obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
> -obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
> -obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
> -obj-$(CONFIG_ARCH_RK3399) += clk-rk3399.o
> -obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
> -obj-$(CONFIG_ARCH_RK3588) += clk-rk3588.o rst-rk3588.o
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Rockchip Clock specific Makefile
> +#
> +
> +obj-y += clk-rockchip.o
> +
> +clk-rockchip-y += clk.o
> +clk-rockchip-y += clk-pll.o
> +clk-rockchip-y += clk-cpu.o
> +clk-rockchip-y += clk-inverter.o
> +clk-rockchip-y += clk-mmc-phase.o
> +clk-rockchip-y += clk-muxgrf.o
> +clk-rockchip-y += clk-ddr.o
> +
> +clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
> +
> +obj-$(CONFIG_ARCH_RK3188)	+= clk-rk3188.o
> +obj-$(CONFIG_ARCH_RK3288)	+= clk-rk3288.o
> +obj-$(CONFIG_ARCH_RK3568)	+= clk-rk3568.o
> +obj-$(CONFIG_ARCH_RK3588)	+= clk-rk3588.o rst-rk3588.o
> diff --git a/drivers/clk/rockchip/clk-ddr.c b/drivers/clk/rockchip/clk-ddr.c
> new file mode 100644
> index 0000000000..7b10f1533b
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-ddr.c
> @@ -0,0 +1,131 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2016 Rockchip Electronics Co. Ltd.
> + * Author: Lin Huang <hl@rock-chips.com>
> + */
> +
> +#include <common.h>
> +#include <linux/arm-smccc.h>
> +#include <soc/rockchip/rockchip_sip.h>
> +
> +#include "clk.h"
> +
> +struct rockchip_ddrclk {
> +	struct clk_hw	hw;
> +	void __iomem	*reg_base;
> +	int		mux_offset;
> +	int		mux_shift;
> +	int		mux_width;
> +	int		div_shift;
> +	int		div_width;
> +	int		ddr_flag;
> +};
> +
> +#define to_rockchip_ddrclk_hw(hw) container_of(hw, struct rockchip_ddrclk, hw)
> +
> +static int rockchip_ddrclk_sip_set_rate(struct clk_hw *hw, unsigned long drate,
> +					unsigned long prate)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, drate, 0,
> +		      ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE,
> +		      0, 0, 0, 0, &res);
> +
> +	return res.a0;
> +}
> +
> +static unsigned long
> +rockchip_ddrclk_sip_recalc_rate(struct clk_hw *hw,
> +				unsigned long parent_rate)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
> +		      ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE,
> +		      0, 0, 0, 0, &res);
> +
> +	return res.a0;
> +}
> +
> +static long rockchip_ddrclk_sip_round_rate(struct clk_hw *hw,
> +					   unsigned long rate,
> +					   unsigned long *prate)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, rate, 0,
> +		      ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE,
> +		      0, 0, 0, 0, &res);
> +
> +	return res.a0;
> +}
> +
> +static int rockchip_ddrclk_get_parent(struct clk_hw *hw)
> +{
> +	struct rockchip_ddrclk *ddrclk = to_rockchip_ddrclk_hw(hw);
> +	u32 val;
> +
> +	val = readl(ddrclk->reg_base +
> +			ddrclk->mux_offset) >> ddrclk->mux_shift;
> +	val &= GENMASK(ddrclk->mux_width - 1, 0);
> +
> +	return val;
> +}
> +
> +static const struct clk_ops rockchip_ddrclk_sip_ops = {
> +	.recalc_rate = rockchip_ddrclk_sip_recalc_rate,
> +	.set_rate = rockchip_ddrclk_sip_set_rate,
> +	.round_rate = rockchip_ddrclk_sip_round_rate,
> +	.get_parent = rockchip_ddrclk_get_parent,
> +};
> +
> +struct clk *rockchip_clk_register_ddrclk(const char *name, int flags,
> +					 const char *const *parent_names,
> +					 u8 num_parents, int mux_offset,
> +					 int mux_shift, int mux_width,
> +					 int div_shift, int div_width,
> +					 int ddr_flag, void __iomem *reg_base,
> +					 spinlock_t *lock)
> +{
> +	struct rockchip_ddrclk *ddrclk;
> +	struct clk_init_data init;
> +	struct clk *clk;
> +
> +	ddrclk = kzalloc(sizeof(*ddrclk), GFP_KERNEL);
> +	if (!ddrclk)
> +		return ERR_PTR(-ENOMEM);
> +
> +	init.name = name;
> +	init.parent_names = parent_names;
> +	init.num_parents = num_parents;
> +
> +	init.flags = flags;
> +	init.flags |= CLK_SET_RATE_NO_REPARENT;
> +
> +	switch (ddr_flag) {
> +	case ROCKCHIP_DDRCLK_SIP:
> +		init.ops = &rockchip_ddrclk_sip_ops;
> +		break;
> +	default:
> +		pr_err("%s: unsupported ddrclk type %d\n", __func__, ddr_flag);
> +		kfree(ddrclk);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	ddrclk->reg_base = reg_base;
> +	ddrclk->hw.init = &init;
> +	ddrclk->mux_offset = mux_offset;
> +	ddrclk->mux_shift = mux_shift;
> +	ddrclk->mux_width = mux_width;
> +	ddrclk->div_shift = div_shift;
> +	ddrclk->div_width = div_width;
> +	ddrclk->ddr_flag = ddr_flag;
> +
> +	clk = clk_register(NULL, &ddrclk->hw);
> +	if (IS_ERR(clk))
> +		kfree(ddrclk);
> +
> +	return clk;
> +}
> +EXPORT_SYMBOL_GPL(rockchip_clk_register_ddrclk);
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index b4152b03b1..2931c09ad5 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -913,7 +913,10 @@ static unsigned long rockchip_rk3588_pll_recalc_rate(struct clk_hw *hw, unsigned
>  	}
>  	rate64 = rate64 >> cur.s;
>  
> -	return (unsigned long)rate64;
> +	if (pll->type == pll_rk3588_ddr)
> +		return (unsigned long)rate64 * 2;
> +	else
> +		return (unsigned long)rate64;
>  }
>  
>  static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
> @@ -1169,6 +1172,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
>  		break;
>  	case pll_rk3588:
>  	case pll_rk3588_core:
> +	case pll_rk3588_ddr:
>  		if (!pll->rate_table)
>  			init.ops = &rockchip_rk3588_pll_clk_norate_ops;
>  		else
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index a154495efd..127b79e2c8 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -497,6 +497,13 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
>  				list->gate_flags, flags, &ctx->lock);
>  			break;
>  		case branch_ddrclk:
> +			clk = rockchip_clk_register_ddrclk(
> +				list->name, list->flags,
> +				list->parent_names, list->num_parents,
> +				list->muxdiv_offset, list->mux_shift,
> +				list->mux_width, list->div_shift,
> +				list->div_width, list->div_flags,
> +				ctx->reg_base, &ctx->lock);
>  			break;
>  		}
>  
> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> index a451229326..6665f8ac90 100644
> --- a/drivers/clk/rockchip/clk.h
> +++ b/drivers/clk/rockchip/clk.h
> @@ -267,6 +267,7 @@ enum rockchip_pll_type {
>  	pll_rk3399,
>  	pll_rk3588,
>  	pll_rk3588_core,
> +	pll_rk3588_ddr,
>  };
>  
>  #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\
> diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
> new file mode 100644
> index 0000000000..501ad1fedb
> --- /dev/null
> +++ b/include/soc/rockchip/rockchip_sip.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
> + * Author: Lin Huang <hl@rock-chips.com>
> + */
> +#ifndef __SOC_ROCKCHIP_SIP_H
> +#define __SOC_ROCKCHIP_SIP_H
> +
> +#define ROCKCHIP_SIP_SUSPEND_MODE		0x82000003
> +#define ROCKCHIP_SLEEP_PD_CONFIG		0xff
> +
> +#define ROCKCHIP_SIP_DRAM_FREQ			0x82000008
> +#define ROCKCHIP_SIP_CONFIG_DRAM_INIT		0x00
> +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE	0x01
> +#define ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE	0x02
> +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_AT_SR	0x03
> +#define ROCKCHIP_SIP_CONFIG_DRAM_GET_BW		0x04
> +#define ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE	0x05
> +#define ROCKCHIP_SIP_CONFIG_DRAM_CLR_IRQ	0x06
> +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM	0x07
> +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD	0x08
> +
> +#endif
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


