Delivery-date: Fri, 12 Jun 2026 14:59:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY1UB-00543B-39
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 14:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY1UA-00070J-M7
	for lore@pengutronix.de; Fri, 12 Jun 2026 14:59:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cNS8n0d8+L8jpbv5ScpXTtov77luynZuv2hq89QEBBI=; b=2RbXN9HTbvJ1hFGfAiPfKJA+dk
	dub4Zm3ivA4yaN37Cys4yt5T9Nz0/hk7+0O0uR7rPa+To1bpblnJACvUiNi0fb9dAYSXlbbwogr9I
	ygurO+S7rHV7CaKocg0l6KeEl4Mg0hErNWEeXEtXMdviG49YK9/0u/y4bhJ+/8GD13QaI0vvFn1SC
	jd7tFD5cJa4i31ow9wRufpFXdBXX4mthttMcO99RXkf9a2uHRFVbxEzFRBN/WdiDo3945AW18nZNh
	lZ2cpIg599kCG16mzZTNswvU+8c4wnbxmsUPcBCRokZZaKq6sCXhyEDehShfgQueW4Js5Krdg8eGy
	AX2goTeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1SZ-0000000AvW9-19cq;
	Fri, 12 Jun 2026 12:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1SW-0000000AvVW-2Mn2
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 12:58:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1SU-0006WR-UD; Fri, 12 Jun 2026 14:58:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1SU-002Nfe-2q;
	Fri, 12 Jun 2026 14:58:02 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1SU-0000000Gl9h-3G7a;
	Fri, 12 Jun 2026 14:58:02 +0200
Date: Fri, 12 Jun 2026 14:58:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <4gne72pfap26srdsgnlcpe7tk723xx64i7idfxjsuqlf2nqmox@hizzlzhfxnno>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
 <20260612055930.635833-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612055930.635833-3-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_055804_909220_3C53BB35 
X-CRM114-Status: GOOD (  36.17  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 03/10] clk: add Microchip LAN966X / LAN969X generic
 clock controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Oleksij,

thanks for your patch, please see below.

On 26-06-12, Oleksij Rempel wrote:
> Port the Microchip LAN966X Generic Clock Controller (GCK) driver from
> the Linux kernel. GCK generates and supplies clocks to peripherals on
> the LAN966X and LAN969X switch SoCs (UART, SDHCI, QSPI, SGPIO, ...).
> 
> Ported from Linux drivers/clk/clk-lan966x.c at tag v7.1-rc7
> Barebox-specific deltas:
> - probe() takes `struct device *` instead of `platform_device`
> - no devm_* - explicit kfree on probe failure
> - clk_parent_data carries both `.fw_name` (for Linux source-compat) and
>   `.name` (used by barebox at register time, since barebox's clk
>   framework does not resolve `fw_name` via clock-names).
> - Linux's `.determine_rate` is implemented here as `.round_rate`.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/clk/Kconfig       |   9 ++
>  drivers/clk/Makefile      |   1 +
>  drivers/clk/clk-lan966x.c | 325 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 335 insertions(+)
>  create mode 100644 drivers/clk/clk-lan966x.c
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index d2a61329e125..fe7056f8971b 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -84,4 +84,13 @@ config COMMON_CLK_GPIO
>  
>  source "drivers/clk/sifive/Kconfig"
>  
> +config COMMON_CLK_LAN966X
> +	bool "Generic Clock Controller driver for LAN966X SoC"
> +	depends on OFDEVICE
> +	depends on COMMON_CLK
> +	help
> +	  Microchip LAN966X and LAN969X SoC Generic Clock Controller (GCK).
> +	  GCK generates and supplies clocks to various peripherals within the
> +	  SoC.
> +
>  endif
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 4fda2c1e0dd3..d7e06de04230 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -33,3 +33,4 @@ obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
>  obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
>  obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
>  obj-$(CONFIG_ARCH_K3)		+= k3/
> +obj-$(CONFIG_COMMON_CLK_LAN966X)	+= clk-lan966x.o
> diff --git a/drivers/clk/clk-lan966x.c b/drivers/clk/clk-lan966x.c
> new file mode 100644
> index 000000000000..a2f43b2f8dce
> --- /dev/null
> +++ b/drivers/clk/clk-lan966x.c
> @@ -0,0 +1,325 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Microchip LAN966x SoC Clock driver.
> + *
> + * Copyright (C) 2021 Microchip Technology, Inc. and its subsidiaries
> + *
> + * Author: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> + *
> + * Ported from Linux drivers/clk/clk-lan966x.c. Structure and identifiers
> + * are kept aligned with Linux so future fixes can be backported with
> + * minimal context churn.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <io.h>
> +#include <of.h>
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/spinlock.h>
> +
> +#define GCK_ENA         BIT(0)
> +#define GCK_SRC_SEL     GENMASK(9, 8)
> +#define GCK_PRESCALER   GENMASK(23, 16)
> +
> +#define DIV_MAX		255
> +
> +static const char * const lan966x_clk_names[] = {
> +	"qspi0", "qspi1", "qspi2", "sdmmc0",
> +	"pi", "mcan0", "mcan1", "flexcom0",
> +	"flexcom1", "flexcom2", "flexcom3",
> +	"flexcom4", "timer1", "usb_refclk",
> +};
> +
> +static const char * const lan969x_clk_names[] = {
> +	"qspi0", "qspi2", "sdmmc0", "sdmmc1",
> +	"mcan0", "mcan1", "flexcom0",
> +	"flexcom1", "flexcom2", "flexcom3",
> +	"timer1", "usb_refclk",
> +};
> +
> +struct lan966x_gck {
> +	struct clk_hw hw;
> +	void __iomem *reg;
> +};
> +#define to_lan966x_gck(hw) container_of(hw, struct lan966x_gck, hw)
> +
> +static const struct clk_parent_data lan966x_gck_pdata[] = {
> +	{ .fw_name = "cpu", .name = "cpu-clk", },
> +	{ .fw_name = "ddr", .name = "ddr-clk", },
> +	{ .fw_name = "sys", .name = "fx100-clk", },
> +};
> +
> +static struct clk_init_data init = {
> +	.parent_data = lan966x_gck_pdata,
> +	.num_parents = ARRAY_SIZE(lan966x_gck_pdata),
> +};
> +
> +struct clk_gate_soc_desc {
> +	const char *name;
> +	int bit_idx;
> +};
> +
> +static const struct clk_gate_soc_desc lan966x_clk_gate_desc[] = {
> +	{ "uhphs", 11 },
> +	{ "udphs", 10 },
> +	{ "mcramc", 9 },
> +	{ "hmatrix", 8 },
> +	{ }
> +};
> +
> +static const struct clk_gate_soc_desc lan969x_clk_gate_desc[] = {
> +	{ "usb_drd", 10 },
> +	{ "mcramc", 9 },
> +	{ "hmatrix", 8 },
> +	{ }
> +};
> +
> +struct lan966x_match_data {
> +	char *name;
> +	const char * const *clk_name;
> +	const struct clk_gate_soc_desc *clk_gate_desc;
> +	u8 num_generic_clks;
> +	u8 num_total_clks;
> +};
> +
> +static struct lan966x_match_data lan966x_desc = {
> +	.name = "lan966x",
> +	.clk_name = lan966x_clk_names,
> +	.clk_gate_desc = lan966x_clk_gate_desc,
> +	.num_total_clks = 18,
> +	.num_generic_clks = 14,
> +};
> +
> +static struct lan966x_match_data lan969x_desc = {
> +	.name = "lan969x",
> +	.clk_name = lan969x_clk_names,
> +	.clk_gate_desc = lan969x_clk_gate_desc,
> +	.num_total_clks = 15,
> +	.num_generic_clks = 12,
> +};
> +
> +static DEFINE_SPINLOCK(clk_gate_lock);
> +static void __iomem *base;

This seems odd, is this also part of the Linux kernel? Furthermore it's
only used during lan966x_gck_clk_register().

> +static int lan966x_gck_enable(struct clk_hw *hw)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 val = readl(gck->reg);
> +
> +	val |= GCK_ENA;
> +	writel(val, gck->reg);
> +
> +	return 0;
> +}
> +
> +static void lan966x_gck_disable(struct clk_hw *hw)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 val = readl(gck->reg);
> +
> +	val &= ~GCK_ENA;
> +	writel(val, gck->reg);
> +}
> +
> +static int lan966x_gck_set_rate(struct clk_hw *hw,
> +				unsigned long rate,
> +				unsigned long parent_rate)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 div, val = readl(gck->reg);
> +
> +	if (rate == 0 || parent_rate == 0)
> +		return -EINVAL;
> +
> +	/* Set Prescalar */
> +	div = parent_rate / rate;
> +	val &= ~GCK_PRESCALER;
> +	val |= FIELD_PREP(GCK_PRESCALER, (div - 1));
> +	writel(val, gck->reg);
> +
> +	return 0;
> +}
> +
> +static unsigned long lan966x_gck_recalc_rate(struct clk_hw *hw,
> +					     unsigned long parent_rate)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 div, val = readl(gck->reg);
> +
> +	div = FIELD_GET(GCK_PRESCALER, val);
> +
> +	return parent_rate / (div + 1);
> +}
> +
> +/*
> + * Linux uses .determine_rate, which barebox does not have. round_rate is
> + * called against the already-selected parent, so we just clamp the divider.
> + * Source selection happens via .set_parent / .get_parent.
> + */
> +static long lan966x_gck_round_rate(struct clk_hw *hw, unsigned long rate,
> +				   unsigned long *parent_rate)
> +{
> +	unsigned long div;
> +
> +	if (!rate || !*parent_rate)
> +		return 0;
> +
> +	div = DIV_ROUND_CLOSEST(*parent_rate, rate);
> +	if (div > DIV_MAX + 1)
> +		div = DIV_MAX + 1;
> +	if (div < 1)
> +		div = 1;
> +
> +	return *parent_rate / div;
> +}
> +
> +static int lan966x_gck_get_parent(struct clk_hw *hw)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 val = readl(gck->reg);
> +
> +	return FIELD_GET(GCK_SRC_SEL, val);
> +}
> +
> +static int lan966x_gck_set_parent(struct clk_hw *hw, u8 index)
> +{
> +	struct lan966x_gck *gck = to_lan966x_gck(hw);
> +	u32 val = readl(gck->reg);
> +
> +	val &= ~GCK_SRC_SEL;
> +	val |= FIELD_PREP(GCK_SRC_SEL, index);
> +	writel(val, gck->reg);
> +
> +	return 0;
> +}
> +
> +static const struct clk_ops lan966x_gck_ops = {
> +	.enable		= lan966x_gck_enable,
> +	.disable	= lan966x_gck_disable,
> +	.set_rate	= lan966x_gck_set_rate,
> +	.recalc_rate	= lan966x_gck_recalc_rate,
> +	.round_rate	= lan966x_gck_round_rate,
> +	.set_parent	= lan966x_gck_set_parent,
> +	.get_parent	= lan966x_gck_get_parent,
> +};
> +
> +static struct clk_hw *lan966x_gck_clk_register(struct device *dev, int i)
> +{
> +	struct lan966x_gck *priv;
> +	int ret;
> +
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return ERR_PTR(-ENOMEM);
> +
> +	priv->reg = base + (i * 4);
> +	priv->hw.init = &init;
> +	ret = clk_hw_register(dev, &priv->hw);
> +	if (ret) {
> +		kfree(priv);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return &priv->hw;
> +};
> +
> +static int lan966x_gate_clk_register(struct device *dev,
> +				     const struct lan966x_match_data *data,
> +				     struct clk_onecell_data *clk_data,
> +				     void __iomem *gate_base)
> +{
> +	struct clk_hw *hw;
> +	int i;
> +
> +	for (i = data->num_generic_clks; i < data->num_total_clks; ++i) {
> +		int idx = i - data->num_generic_clks;
> +		const struct clk_gate_soc_desc *desc;
> +
> +		desc = &data->clk_gate_desc[idx];
> +
> +		hw = clk_hw_register_gate(dev, desc->name,
> +					  data->name, 0, gate_base,
> +					  desc->bit_idx,
> +					  0, &clk_gate_lock);
> +		if (IS_ERR(hw)) {
> +			dev_err(dev, "failed to register %s clock\n",
> +				desc->name);
> +			return PTR_ERR(hw);
> +		}
> +		clk_data->clks[i] = clk_hw_to_clk(hw);
> +	}
> +
> +	return 0;
> +}
> +
> +static int lan966x_clk_probe(struct device *dev)
> +{
> +	const struct lan966x_match_data *data;
> +	struct clk_onecell_data *clk_data;
> +	struct resource *iores;
> +	int i, ret;
> +
> +	data = device_get_match_data(dev);
> +	if (!data)
> +		return -EINVAL;
> +
> +	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
> +	if (!clk_data)
> +		return -ENOMEM;
> +
> +	clk_data->clks = kcalloc(data->num_total_clks,
> +				 sizeof(*clk_data->clks), GFP_KERNEL);
> +	if (!clk_data->clks)
> +		return -ENOMEM;
		^
This leaks the clk_data memory.

> +	clk_data->clk_num = data->num_total_clks;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);

Since here you leak both clk_data and clks. Please check the cleanup
path.

> +	base = IOMEM(iores->start);
> +
> +	init.ops = &lan966x_gck_ops;
> +
> +	for (i = 0; i < data->num_generic_clks; i++) {
> +		struct clk_hw *hw;
> +
> +		init.name = data->clk_name[i];
> +		hw = lan966x_gck_clk_register(dev, i);
> +		if (IS_ERR(hw)) {
> +			dev_err(dev, "failed to register %s clock\n",
> +				init.name);
> +			return PTR_ERR(hw);

			This leaks a proper cleanup for previous
			allocated clk_hw's.
> +		}
> +		clk_data->clks[i] = clk_hw_to_clk(hw);
> +	}
> +
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (!IS_ERR(iores)) {
> +		void __iomem *gate_base = IOMEM(iores->start);
> +
> +		ret = lan966x_gate_clk_register(dev, data, clk_data, gate_base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
> +				   clk_data);
> +}
> +
> +static const struct of_device_id lan966x_clk_dt_ids[] = {
> +	{ .compatible = "microchip,lan966x-gck", .data = &lan966x_desc },
> +	{ .compatible = "microchip,lan9691-gck", .data = &lan969x_desc },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, lan966x_clk_dt_ids);
> +
> +static struct driver lan966x_clk_driver = {
> +	.name = "lan966x-clk",
> +	.probe = lan966x_clk_probe,
> +	.of_compatible = DRV_OF_COMPAT(lan966x_clk_dt_ids),
> +};
> +postcore_platform_driver(lan966x_clk_driver);
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


