Delivery-date: Mon, 15 Jun 2026 09:03:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1M0-00638J-1g
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:03:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1Lz-0002Ov-83
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:03:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=sE7UgK85XU1tKu5GhCEFYmodljqXS+v/MCQXc+e+dJ4=; b=cWoecDihtr11sGaYK6D4z8NhPc
	ckTCXVoH3qYfKRoolPg255MOzJF/ULXQzKBdUW5CiZYEJ7HPzVzle3IJNeo4UE3rKH+BpEbxejeoU
	iTb2rXfHHqvITXTOBb5PZNJUyOVRTK0sIPu/1SJCkux1fYgdfaITtD4IYkjAjxj3wStnIHngntAX6
	P8cWhNmWvNlh9ot18bYpQxmku2bZx7ilXZE/3aEdn/R1RxPa82Hp/Z6lR/Dc4udNTh2iinbkmZIfY
	tG4YBv+gMYGb00cPysim3n67I0jQwLB6A7WgqHemG98cszYkytEpWx6RBkC9mLhWMYJXnLgLR6r5D
	oMnO7IwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1Kk-0000000DjPX-07Mc;
	Mon, 15 Jun 2026 07:02:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1Kh-0000000DjP2-1Ekh
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1Kf-00025U-IP; Mon, 15 Jun 2026 09:02:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1Kf-002opq-1f;
	Mon, 15 Jun 2026 09:02:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1Kf-00000006FHH-1mAf;
	Mon, 15 Jun 2026 09:02:05 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Marco Felsch" <m.felsch@pengutronix.de>
Cc: "Oleksij Rempel" <o.rempel@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <4gne72pfap26srdsgnlcpe7tk723xx64i7idfxjsuqlf2nqmox@hizzlzhfxnno>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:02:05 +0000
Message-Id: <E1wZ1Kf-00000006FHH-1mAf@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_000207_494604_3C3AC4FF 
X-CRM114-Status: GOOD (  37.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 03/10] clk: add Microchip LAN966X / LAN969X generic
 clock controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 14:58, Marco Felsch wrote:
> Hi Oleksij,
>=20
> thanks for your patch, please see below.
>=20
> On 26-06-12, Oleksij Rempel wrote:
> > Port the Microchip LAN966X Generic Clock Controller (GCK) driver from
> > the Linux kernel. GCK generates and supplies clocks to peripherals on
> > the LAN966X and LAN969X switch SoCs (UART, SDHCI, QSPI, SGPIO, ...).
> >=20
> > Ported from Linux drivers/clk/clk-lan966x.c at tag v7.1-rc7
> > Barebox-specific deltas:
> > - probe() takes `struct device *` instead of `platform_device`
> > - no devm_* - explicit kfree on probe failure
> > - clk_parent_data carries both `.fw_name` (for Linux source-compat) and
> >   `.name` (used by barebox at register time, since barebox's clk
> >   framework does not resolve `fw_name` via clock-names).
> > - Linux's `.determine_rate` is implemented here as `.round_rate`.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/clk/Kconfig       |   9 ++
> >  drivers/clk/Makefile      |   1 +
> >  drivers/clk/clk-lan966x.c | 325 ++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 335 insertions(+)
> >  create mode 100644 drivers/clk/clk-lan966x.c
> >=20
> > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > index d2a61329e125..fe7056f8971b 100644
> > --- a/drivers/clk/Kconfig
> > +++ b/drivers/clk/Kconfig
> > @@ -84,4 +84,13 @@ config COMMON_CLK_GPIO
> > =20
> >  source "drivers/clk/sifive/Kconfig"
> > =20
> > +config COMMON_CLK_LAN966X
> > +	bool "Generic Clock Controller driver for LAN966X SoC"
> > +	depends on OFDEVICE
> > +	depends on COMMON_CLK
> > +	help
> > +	  Microchip LAN966X and LAN969X SoC Generic Clock Controller (GCK).
> > +	  GCK generates and supplies clocks to various peripherals within the
> > +	  SoC.
> > +
> >  endif
> > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> > index 4fda2c1e0dd3..d7e06de04230 100644
> > --- a/drivers/clk/Makefile
> > +++ b/drivers/clk/Makefile
> > @@ -33,3 +33,4 @@ obj-$(CONFIG_COMMON_CLK_SCMI)	+=3D clk-scmi.o
> >  obj-$(CONFIG_COMMON_CLK_GPIO)   +=3D clk-gpio.o
> >  obj-$(CONFIG_TI_SCI_CLK)	+=3D ti-sci-clk.o
> >  obj-$(CONFIG_ARCH_K3)		+=3D k3/
> > +obj-$(CONFIG_COMMON_CLK_LAN966X)	+=3D clk-lan966x.o
> > diff --git a/drivers/clk/clk-lan966x.c b/drivers/clk/clk-lan966x.c
> > new file mode 100644
> > index 000000000000..a2f43b2f8dce
> > --- /dev/null
> > +++ b/drivers/clk/clk-lan966x.c
> > @@ -0,0 +1,325 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Microchip LAN966x SoC Clock driver.
> > + *
> > + * Copyright (C) 2021 Microchip Technology, Inc. and its subsidiaries
> > + *
> > + * Author: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> > + *
> > + * Ported from Linux drivers/clk/clk-lan966x.c. Structure and identifi=
ers
> > + * are kept aligned with Linux so future fixes can be backported with
> > + * minimal context churn.
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <io.h>
> > +#include <of.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/err.h>
> > +#include <linux/spinlock.h>
> > +
> > +#define GCK_ENA         BIT(0)
> > +#define GCK_SRC_SEL     GENMASK(9, 8)
> > +#define GCK_PRESCALER   GENMASK(23, 16)
> > +
> > +#define DIV_MAX		255
> > +
> > +static const char * const lan966x_clk_names[] =3D {
> > +	"qspi0", "qspi1", "qspi2", "sdmmc0",
> > +	"pi", "mcan0", "mcan1", "flexcom0",
> > +	"flexcom1", "flexcom2", "flexcom3",
> > +	"flexcom4", "timer1", "usb_refclk",
> > +};
> > +
> > +static const char * const lan969x_clk_names[] =3D {
> > +	"qspi0", "qspi2", "sdmmc0", "sdmmc1",
> > +	"mcan0", "mcan1", "flexcom0",
> > +	"flexcom1", "flexcom2", "flexcom3",
> > +	"timer1", "usb_refclk",
> > +};
> > +
> > +struct lan966x_gck {
> > +	struct clk_hw hw;
> > +	void __iomem *reg;
> > +};
> > +#define to_lan966x_gck(hw) container_of(hw, struct lan966x_gck, hw)
> > +
> > +static const struct clk_parent_data lan966x_gck_pdata[] =3D {
> > +	{ .fw_name =3D "cpu", .name =3D "cpu-clk", },
> > +	{ .fw_name =3D "ddr", .name =3D "ddr-clk", },
> > +	{ .fw_name =3D "sys", .name =3D "fx100-clk", },
> > +};
> > +
> > +static struct clk_init_data init =3D {
> > +	.parent_data =3D lan966x_gck_pdata,
> > +	.num_parents =3D ARRAY_SIZE(lan966x_gck_pdata),
> > +};
> > +
> > +struct clk_gate_soc_desc {
> > +	const char *name;
> > +	int bit_idx;
> > +};
> > +
> > +static const struct clk_gate_soc_desc lan966x_clk_gate_desc[] =3D {
> > +	{ "uhphs", 11 },
> > +	{ "udphs", 10 },
> > +	{ "mcramc", 9 },
> > +	{ "hmatrix", 8 },
> > +	{ }
> > +};
> > +
> > +static const struct clk_gate_soc_desc lan969x_clk_gate_desc[] =3D {
> > +	{ "usb_drd", 10 },
> > +	{ "mcramc", 9 },
> > +	{ "hmatrix", 8 },
> > +	{ }
> > +};
> > +
> > +struct lan966x_match_data {
> > +	char *name;
> > +	const char * const *clk_name;
> > +	const struct clk_gate_soc_desc *clk_gate_desc;
> > +	u8 num_generic_clks;
> > +	u8 num_total_clks;
> > +};
> > +
> > +static struct lan966x_match_data lan966x_desc =3D {
> > +	.name =3D "lan966x",
> > +	.clk_name =3D lan966x_clk_names,
> > +	.clk_gate_desc =3D lan966x_clk_gate_desc,
> > +	.num_total_clks =3D 18,
> > +	.num_generic_clks =3D 14,
> > +};
> > +
> > +static struct lan966x_match_data lan969x_desc =3D {
> > +	.name =3D "lan969x",
> > +	.clk_name =3D lan969x_clk_names,
> > +	.clk_gate_desc =3D lan969x_clk_gate_desc,
> > +	.num_total_clks =3D 15,
> > +	.num_generic_clks =3D 12,
> > +};
> > +
> > +static DEFINE_SPINLOCK(clk_gate_lock);
> > +static void __iomem *base;
>=20
> This seems odd, is this also part of the Linux kernel? Furthermore it's
> only used during lan966x_gck_clk_register().
>=20
> > +static int lan966x_gck_enable(struct clk_hw *hw)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 val =3D readl(gck->reg);
> > +
> > +	val |=3D GCK_ENA;
> > +	writel(val, gck->reg);
> > +
> > +	return 0;
> > +}
> > +
> > +static void lan966x_gck_disable(struct clk_hw *hw)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 val =3D readl(gck->reg);
> > +
> > +	val &=3D ~GCK_ENA;
> > +	writel(val, gck->reg);
> > +}
> > +
> > +static int lan966x_gck_set_rate(struct clk_hw *hw,
> > +				unsigned long rate,
> > +				unsigned long parent_rate)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 div, val =3D readl(gck->reg);
> > +
> > +	if (rate =3D=3D 0 || parent_rate =3D=3D 0)
> > +		return -EINVAL;
> > +
> > +	/* Set Prescalar */
> > +	div =3D parent_rate / rate;
> > +	val &=3D ~GCK_PRESCALER;
> > +	val |=3D FIELD_PREP(GCK_PRESCALER, (div - 1));
> > +	writel(val, gck->reg);
> > +
> > +	return 0;
> > +}
> > +
> > +static unsigned long lan966x_gck_recalc_rate(struct clk_hw *hw,
> > +					     unsigned long parent_rate)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 div, val =3D readl(gck->reg);
> > +
> > +	div =3D FIELD_GET(GCK_PRESCALER, val);
> > +
> > +	return parent_rate / (div + 1);
> > +}
> > +
> > +/*
> > + * Linux uses .determine_rate, which barebox does not have. round_rate=
 is
> > + * called against the already-selected parent, so we just clamp the di=
vider.
> > + * Source selection happens via .set_parent / .get_parent.
> > + */
> > +static long lan966x_gck_round_rate(struct clk_hw *hw, unsigned long ra=
te,
> > +				   unsigned long *parent_rate)
> > +{
> > +	unsigned long div;
> > +
> > +	if (!rate || !*parent_rate)
> > +		return 0;
> > +
> > +	div =3D DIV_ROUND_CLOSEST(*parent_rate, rate);
> > +	if (div > DIV_MAX + 1)
> > +		div =3D DIV_MAX + 1;
> > +	if (div < 1)
> > +		div =3D 1;
> > +
> > +	return *parent_rate / div;
> > +}
> > +
> > +static int lan966x_gck_get_parent(struct clk_hw *hw)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 val =3D readl(gck->reg);
> > +
> > +	return FIELD_GET(GCK_SRC_SEL, val);
> > +}
> > +
> > +static int lan966x_gck_set_parent(struct clk_hw *hw, u8 index)
> > +{
> > +	struct lan966x_gck *gck =3D to_lan966x_gck(hw);
> > +	u32 val =3D readl(gck->reg);
> > +
> > +	val &=3D ~GCK_SRC_SEL;
> > +	val |=3D FIELD_PREP(GCK_SRC_SEL, index);
> > +	writel(val, gck->reg);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct clk_ops lan966x_gck_ops =3D {
> > +	.enable		=3D lan966x_gck_enable,
> > +	.disable	=3D lan966x_gck_disable,
> > +	.set_rate	=3D lan966x_gck_set_rate,
> > +	.recalc_rate	=3D lan966x_gck_recalc_rate,
> > +	.round_rate	=3D lan966x_gck_round_rate,
> > +	.set_parent	=3D lan966x_gck_set_parent,
> > +	.get_parent	=3D lan966x_gck_get_parent,
> > +};
> > +
> > +static struct clk_hw *lan966x_gck_clk_register(struct device *dev, int=
 i)
> > +{
> > +	struct lan966x_gck *priv;
> > +	int ret;
> > +
> > +	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> > +	if (!priv)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	priv->reg =3D base + (i * 4);
> > +	priv->hw.init =3D &init;
> > +	ret =3D clk_hw_register(dev, &priv->hw);
> > +	if (ret) {
> > +		kfree(priv);
> > +		return ERR_PTR(ret);
> > +	}
> > +
> > +	return &priv->hw;
> > +};
> > +
> > +static int lan966x_gate_clk_register(struct device *dev,
> > +				     const struct lan966x_match_data *data,
> > +				     struct clk_onecell_data *clk_data,
> > +				     void __iomem *gate_base)
> > +{
> > +	struct clk_hw *hw;
> > +	int i;
> > +
> > +	for (i =3D data->num_generic_clks; i < data->num_total_clks; ++i) {
> > +		int idx =3D i - data->num_generic_clks;
> > +		const struct clk_gate_soc_desc *desc;
> > +
> > +		desc =3D &data->clk_gate_desc[idx];
> > +
> > +		hw =3D clk_hw_register_gate(dev, desc->name,
> > +					  data->name, 0, gate_base,
> > +					  desc->bit_idx,
> > +					  0, &clk_gate_lock);
> > +		if (IS_ERR(hw)) {
> > +			dev_err(dev, "failed to register %s clock\n",
> > +				desc->name);
> > +			return PTR_ERR(hw);
> > +		}
> > +		clk_data->clks[i] =3D clk_hw_to_clk(hw);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int lan966x_clk_probe(struct device *dev)
> > +{
> > +	const struct lan966x_match_data *data;
> > +	struct clk_onecell_data *clk_data;
> > +	struct resource *iores;
> > +	int i, ret;
> > +
> > +	data =3D device_get_match_data(dev);
> > +	if (!data)
> > +		return -EINVAL;
> > +
> > +	clk_data =3D kzalloc(sizeof(*clk_data), GFP_KERNEL);
> > +	if (!clk_data)
> > +		return -ENOMEM;
> > +
> > +	clk_data->clks =3D kcalloc(data->num_total_clks,
> > +				 sizeof(*clk_data->clks), GFP_KERNEL);
> > +	if (!clk_data->clks)
> > +		return -ENOMEM;
> 		^
> This leaks the clk_data memory.

Usually we ignore the memory leaks in the probe paths as there's no real
gain in freeing a few bytes from a functions error path that is executed
only once.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


