Delivery-date: Fri, 08 Nov 2024 12:51:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NWY-006JEs-2B
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:51:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NWY-00058R-Ep
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:51:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:
	Subject:Cc:To:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFwj0ktFHapYMS1hfHFamurxcoRjqcSGSc/OFr1NhCQ=; b=MWTPMSkVtcYcKSItOewf1C6Q4y
	zKblurxfCRK0Bfxulf+VO7CZosmPpb5RmIWtQfLJyGqmkA/hwedMIOitxkWhT+TJZshtTYcGUTA9F
	oGULemvaS7cePT54RDOtqAATddfqUISxfjnXCZ5t2jp5SqKKNJWHxhb9tKBg8Mgc0n1PeMAfn/nsv
	BCaH1iQJUV+GuL3Z4sHSeeaP4EPGcEfQfWfJviNzqyGKH07Iq7tY3TFb/E8eKs807k+/jDmrta2E9
	Y9Z+U7Cbcc3DT5oS0trnXVgnos6GDpp0yN3+qfeqXM0X/hNFW5Iy1eJ1yVv/QgHlsSQ1SivJWwwgd
	Ca/l6vPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NVs-0000000APTr-231j;
	Fri, 08 Nov 2024 11:50:52 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MrB-0000000AHun-0nMh
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 11:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1731064125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jFwj0ktFHapYMS1hfHFamurxcoRjqcSGSc/OFr1NhCQ=;
	b=hmvblOwVVe3uosnfIF9LMbFcELr7RUKxDAtmBab+QHj5MRWpRn2rZxhQF85Fmpm6Y6Hgws
	bKyor6en8rlZ0puF1JGJ4LEMrLD12wkAWKgWpRHFqd7Ry+VW8EkatyfWMpQUg3nqQeB8vB
	IVYqpSLmw2jvcrBi5j4sSx8lSa8SdtCabvaQvEOCXiyHkh8t2dR1nZlAFX+2ZMs3V4x0aU
	f1KP8AEWlBUyX1DLaKllz7sYJlXQahg641zCeozdrm/SrR8UNUJ4IkREn1XTg5oz7A/tR3
	2VlOJ0HLNhKHPdHauncxM7u2EEGBl7p42u7A1yNBiRksfWI1Ct8BeuKVQJYxpg==
Received: from localhost (<unknown> [2a01:e0a:12:d860:9e3c:f98c:1ee1:cc29])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7afe3221 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 8 Nov 2024 12:08:45 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 08 Nov 2024 12:08:45 +0100
Message-Id: <D5GR0OVKQLUS.3MJMS7VQJ356L@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>
Cc: <barebox@lists.infradead.org>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
X-Mailer: aerc 0.18.2
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-4-jmaselbas@zdiv.net>
 <Zy3qa6TIqOYksP1K@pengutronix.de>
In-Reply-To: <Zy3qa6TIqOYksP1K@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_030849_573667_8FEAF84E 
X-CRM114-Status: GOOD (  33.13  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Fri Nov 8, 2024 at 11:39 AM CET, Sascha Hauer wrote:
> Hi Jules,
>
> On Thu, Nov 07, 2024 at 03:57:19PM +0100, Jules Maselbas wrote:
> > Clock driver adapted from Linux.
> > The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
>
> From which driver did you adapt this from? I tried copying
> drivers/clk/sunxi-ng/ccu-sun50i-a64.c from Linux over your driver and it
> looks quite different.
Yes this is adapted from drivers/clk/sunxi-ng/ccu-sun50i-a64.c, but it is v=
ery
different. This is a very stripped down version. I wanted to avoid having t=
o
porting all the clock/gate/div code for sunxi and use as much as possible t=
he
one available in barebox.=20

> Would it be possible to get closer to the Linux driver? This would pay
> off once we want to do an update from Linux.
Humm...
I could try to get it closer, i would like to not having to copy all the cc=
u*
drivers, but maybe i could define barebox version of SUNXI_CCU_* macros

Jules

>
> Sascha
>
> >=20
> > Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> > ---
> >  drivers/clk/Makefile               |   1 +
> >  drivers/clk/sunxi/Makefile         |   2 +
> >  drivers/clk/sunxi/clk-sun50i-a64.c | 325 +++++++++++++++++++++++++++++
> >  drivers/clk/sunxi/clk-sun50i-a64.h |  62 ++++++
> >  4 files changed, 390 insertions(+)
> >  create mode 100644 drivers/clk/sunxi/Makefile
> >  create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
> >  create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
> >=20
> > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> > index 764539e91e..7d459c298e 100644
> > --- a/drivers/clk/Makefile
> > +++ b/drivers/clk/Makefile
> > @@ -31,3 +31,4 @@ obj-y				+=3D bcm/
> >  obj-$(CONFIG_COMMON_CLK_SCMI)	+=3D clk-scmi.o
> >  obj-$(CONFIG_COMMON_CLK_GPIO)   +=3D clk-gpio.o
> >  obj-$(CONFIG_TI_SCI_CLK)	+=3D ti-sci-clk.o
> > +obj-$(CONFIG_ARCH_SUNXI)	+=3D sunxi/
> > diff --git a/drivers/clk/sunxi/Makefile b/drivers/clk/sunxi/Makefile
> > new file mode 100644
> > index 0000000000..4d1dcbebb0
> > --- /dev/null
> > +++ b/drivers/clk/sunxi/Makefile
> > @@ -0,0 +1,2 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +obj-$(CONFIG_ARCH_SUN50I_A64) +=3D clk-sun50i-a64.o
> > diff --git a/drivers/clk/sunxi/clk-sun50i-a64.c b/drivers/clk/sunxi/clk=
-sun50i-a64.c
> > new file mode 100644
> > index 0000000000..c77f366c6e
> > --- /dev/null
> > +++ b/drivers/clk/sunxi/clk-sun50i-a64.c
> > @@ -0,0 +1,325 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 2022 Jules Maselbas
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <linux/clk.h>
> > +#include <io.h>
> > +#include <linux/clkdev.h>
> > +#include <linux/err.h>
> > +
> > +#define MHZ (1000UL * 1000UL)
> > +
> > +#include "clk-sun50i-a64.h"
> > +
> > +#define CCU_PLL_CPUX		0x00
> > +#define CCU_PLL_PERIPH0		0x28
> > +#define CCU_CPUX_AXI_CFG	0x50
> > +
> > +static struct clk *clks[CLK_NUMBER];
> > +static struct clk_onecell_data clk_data =3D {
> > +	.clks =3D clks,
> > +	.clk_num =3D ARRAY_SIZE(clks),
> > +};
> > +
> > +static inline struct clk *
> > +sunxi_clk_gate(const char *name, const char *parent, void __iomem *reg=
, u8 shift)
> > +{
> > +	return clk_gate(name, parent, reg, shift, 0, 0);
> > +}
> > +
> > +static inline struct clk *
> > +sunxi_clk_mux(const char *name, const char * const *parents, u8 num_pa=
rents,
> > +	      void __iomem *reg, u8 shift, u8 width)
> > +{
> > +	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
> > +}
> > +
> > +static inline struct clk *
> > +sunxi_clk_div_table(const char *name, const char *parent, struct clk_d=
iv_table *table,
> > +	      void __iomem *reg, u8 shift, u8 width)
> > +{
> > +	return clk_divider_table(name, parent, CLK_SET_RATE_PARENT, reg, shif=
t,
> > +				 width, table, 0);
> > +}
> > +
> > +static inline struct clk *
> > +sunxi_clk_div(const char *name, const char *parent,
> > +		void __iomem *reg, u8 shift, u8 width)
> > +{
> > +	return clk_divider(name, parent, CLK_SET_RATE_PARENT, reg, shift,
> > +				 width, 0);
> > +}
> > +
> > +static struct clk_div_table div_apb1[] =3D {
> > +	{ .val =3D 0, .div =3D 2 },
> > +	{ .val =3D 1, .div =3D 2 },
> > +	{ .val =3D 2, .div =3D 4 },
> > +	{ .val =3D 3, .div =3D 8 },
> > +	{ /* Sentinel */ },
> > +};
> > +
> > +static struct clk_div_table div_N[] =3D {
> > +	{ .val =3D 0, .div =3D 1 },
> > +	{ .val =3D 1, .div =3D 2 },
> > +	{ .val =3D 2, .div =3D 4 },
> > +	{ .val =3D 3, .div =3D 8 },
> > +	{ /* Sentinel */ },
> > +};
> > +
> > +static const char *sel_cpux[] =3D {
> > +	"osc32k",
> > +	"osc24M",
> > +	"pll-cpux",
> > +};
> > +
> > +static const char *sel_ahb1[] =3D {
> > +	"osc32k",
> > +	"osc24M",
> > +	"axi",
> > +	"pll-periph0",
> > +};
> > +
> > +static const char *sel_apb2[] =3D {
> > +	"osc32k",
> > +	"osc24M",
> > +	"pll-periph0-2x",
> > +	"pll-periph0-2x",
> > +};
> > +
> > +static const char *sel_ahb2[] =3D {
> > +	"ahb1",
> > +	"pll-periph0",
> > +};
> > +
> > +static const char *sel_mmc[] =3D {
> > +	"osc24M",
> > +	"pll-periph0-2x",
> > +	"pll-periph1-2x",
> > +};
> > +
> > +static void sun50i_a64_resets_init(void __iomem *regs)
> > +{
> > +	u32 rst;
> > +
> > +	rst =3D 0 |
> > +		/* RST_USB_PHY0 */ BIT(0) |
> > +		/* RST_USB_PHY1 */ BIT(1) |
> > +		/* RST_USB_HSIC */ BIT(2);
> > +	writel(rst, regs + 0x0cc);
> > +
> > +	rst =3D 0 |
> > +		/* RST_BUS_MIPI_DSI */ BIT(1) |
> > +		/* RST_BUS_CE   */ BIT(5) |
> > +		/* RST_BUS_DMA  */ BIT(6) |
> > +		/* RST_BUS_MMC0 */ BIT(8) |
> > +		/* RST_BUS_MMC1 */ BIT(9) |
> > +		/* RST_BUS_MMC2 */ BIT(10) |
> > +		/* RST_BUS_NAND */ BIT(13) |
> > +		/* RST_BUS_DRAM */ BIT(14) |
> > +		/* RST_BUS_EMAC */ BIT(17) |
> > +		/* RST_BUS_TS   */ BIT(18) |
> > +		/* RST_BUS_HSTIMER */ BIT(19) |
> > +		/* RST_BUS_SPI0  */ BIT(20) |
> > +		/* RST_BUS_SPI1  */ BIT(21) |
> > +		/* RST_BUS_OTG   */ BIT(23) |
> > +		/* RST_BUS_EHCI0 */ BIT(24) |
> > +		/* RST_BUS_EHCI1 */ BIT(25) |
> > +		/* RST_BUS_OHCI0 */ BIT(28) |
> > +		/* RST_BUS_OHCI1 */ BIT(29);
> > +	writel(rst, regs + 0x2c0);
> > +
> > +	rst =3D 0 |
> > +		/* RST_BUS_VE    */ BIT(0) |
> > +		/* RST_BUS_TCON0 */ BIT(3) |
> > +		/* RST_BUS_TCON1 */ BIT(4) |
> > +		/* RST_BUS_DEINTERLACE */ BIT(5) |
> > +		/* RST_BUS_CSI   */ BIT(8) |
> > +		/* RST_BUS_HDMI0 */ BIT(10) |
> > +		/* RST_BUS_HDMI1 */ BIT(11) |
> > +		/* RST_BUS_DE    */ BIT(12) |
> > +		/* RST_BUS_GPU   */ BIT(20) |
> > +		/* RST_BUS_MSGBOX   */ BIT(21) |
> > +		/* RST_BUS_SPINLOCK */ BIT(22) |
> > +		/* RST_BUS_DBG */ BIT(31);
> > +	writel(rst, regs + 0x2c4);
> > +
> > +	rst =3D /* RST_BUS_LVDS */ BIT(0);
> > +	writel(rst, regs + 0x2c8);
> > +
> > +	rst =3D 0 |
> > +		/* RST_BUS_CODEC */ BIT(0) |
> > +		/* RST_BUS_SPDIF */ BIT(1) |
> > +		/* RST_BUS_THS   */ BIT(8) |
> > +		/* RST_BUS_I2S0  */ BIT(12) |
> > +		/* RST_BUS_I2S1  */ BIT(13) |
> > +		/* RST_BUS_I2S2  */ BIT(14);
> > +	writel(rst, regs + 0x2d0);
> > +
> > +	rst =3D 0 |
> > +		/* RST_BUS_I2C0 */ BIT(0) |
> > +		/* RST_BUS_I2C1 */ BIT(1) |
> > +		/* RST_BUS_I2C2 */ BIT(2) |
> > +		/* RST_BUS_SCR  */ BIT(5) |
> > +		/* RST_BUS_UART0 */ BIT(16) |
> > +		/* RST_BUS_UART1 */ BIT(17) |
> > +		/* RST_BUS_UART2 */ BIT(18) |
> > +		/* RST_BUS_UART3 */ BIT(19) |
> > +		/* RST_BUS_UART4 */ BIT(20);
> > +	writel(rst, regs + 0x2d8);
> > +}
> > +
> > +static void nop_delay(u32 cnt)
> > +{
> > +	while (cnt--)
> > +		barrier();
> > +}
> > +
> > +static inline void sunxi_clk_set_pll(void __iomem *reg, u32 src, u32 f=
req)
> > +{
> > +	/* NOTE: using u32, max freq is 4GHz
> > +	 * out freq: src * N * K
> > +	 * factor N: [1->32]
> > +	 * factor K: [1->4]
> > +	 * from the manual: give priority to the choice of K >=3D 2
> > +	 */
> > +	u32 mul =3D freq / src; /* target multiplier (N * K) */
> > +	u32 k, n;
> > +	u32 cfg =3D BIT(31); /* ENABLE */
> > +
> > +	for (k =3D 4; k > 1; k--) {
> > +		if ((mul % k) =3D=3D 0)
> > +			break;
> > +	}
> > +	n =3D mul / k;
> > +
> > +	cfg |=3D (k - 1) << 4;
> > +	cfg |=3D (n - 1) << 8;
> > +
> > +	writel(cfg, reg);
> > +
> > +	/* wait for pll lock */
> > +	while (!(readl(reg) & BIT(28)));
> > +}
> > +
> > +static void sun50i_a64_clocks_init(struct device_node *np, void __iome=
m *regs)
> > +{
> > +	sun50i_a64_resets_init(regs);
> > +
> > +	/* switch cpu clock source to osc-24M */
> > +	writel(0x10000, regs + CCU_CPUX_AXI_CFG);
> > +	/* wait 8 cycles */
> > +	nop_delay(8);
> > +	/* set pll-cpux to 816MHz */
> > +	sunxi_clk_set_pll(regs + CCU_PLL_CPUX, 24 * MHZ, 816 * MHZ);
> > +	nop_delay(10000); /* HACK: ~1ms delay  */
> > +	/* switch cpu clock source to pll-cpux*/
> > +	writel( /* clk_src: 1=3D24Mhz 2=3Dpll-cpux */ (2 << 16) |
> > +		/* apb_div: /2 */ (1 << 8) |
> > +		/* axi_div: /2 */ (1 << 0),
> > +		regs + CCU_CPUX_AXI_CFG);
> > +	/* wait 8 cycles */
> > +	nop_delay(8);
> > +
> > +	clks[CLK_PLL_CPUX] =3D clk_fixed("pll-cpux", 816 * MHZ);
> > +	clks[CLK_CPUX] =3D sunxi_clk_mux("cpux", sel_cpux, ARRAY_SIZE(sel_cpu=
x), regs + CCU_CPUX_AXI_CFG, 16, 2);
> > +
> > +	/* set pll-periph0-2x to 1.2GHz, as recommended */
> > +	sunxi_clk_set_pll(regs + CCU_PLL_PERIPH0, 24 * MHZ, 1200 * MHZ);
> > +
> > +	clks[CLK_PLL_PERIPH0_2X] =3D clk_fixed("pll-periph0-2x", 1200 * MHZ);
> > +	clks[CLK_PLL_PERIPH0]    =3D clk_fixed_factor("pll-periph0", "pll-per=
iph0-2x", 1, 2, 0);
> > +
> > +	clks[CLK_AXI] =3D sunxi_clk_div("axi", "cpux", regs + CCU_CPUX_AXI_CF=
G, 0, 2);
> > +
> > +	clks[CLK_AHB1] =3D sunxi_clk_mux("ahb1", sel_ahb1, ARRAY_SIZE(sel_ahb=
1), regs + 0x054, 12, 2);
> > +	clks[CLK_AHB2] =3D sunxi_clk_mux("ahb2", sel_ahb2, ARRAY_SIZE(sel_ahb=
2), regs + 0x05c, 0, 1);
> > +
> > +	clks[CLK_APB1] =3D sunxi_clk_div_table("apb1", "ahb1", div_apb1, regs=
 + 0x054, 8, 2);
> > +	clks[CLK_APB2] =3D sunxi_clk_mux("apb2", sel_apb2, ARRAY_SIZE(sel_apb=
2), regs + 0x058, 24, 2);
> > +
> > +	clks[CLK_BUS_MIPI_DSI] =3D sunxi_clk_gate("bus-mipi-dsi","ahb1",regs =
+ 0x060, 1);
> > +	clks[CLK_BUS_CE]    =3D sunxi_clk_gate("bus-ce",    "ahb1", regs + 0x=
060, 5);
> > +	clks[CLK_BUS_DMA]   =3D sunxi_clk_gate("bus-dma",   "ahb1", regs + 0x=
060, 6);
> > +	clks[CLK_BUS_MMC0]  =3D sunxi_clk_gate("bus-mmc0",  "ahb1", regs + 0x=
060, 8);
> > +	clks[CLK_BUS_MMC1]  =3D sunxi_clk_gate("bus-mmc1",  "ahb1", regs + 0x=
060, 9);
> > +	clks[CLK_BUS_MMC2]  =3D sunxi_clk_gate("bus-mmc2",  "ahb1", regs + 0x=
060, 10);
> > +	clks[CLK_BUS_NAND]  =3D sunxi_clk_gate("bus-nand",  "ahb1", regs + 0x=
060, 13);
> > +	clks[CLK_BUS_DRAM]  =3D sunxi_clk_gate("bus-dram",  "ahb1", regs + 0x=
060, 14);
> > +	clks[CLK_BUS_EMAC]  =3D sunxi_clk_gate("bus-emac",  "ahb2", regs + 0x=
060, 17);
> > +	clks[CLK_BUS_TS]    =3D sunxi_clk_gate("bus-ts",    "ahb1", regs + 0x=
060, 18);
> > +	clks[CLK_BUS_HSTIMER] =3D sunxi_clk_gate("bus-hstimer", "ahb1", regs =
+ 0x060, 19);
> > +	clks[CLK_BUS_SPI0]  =3D sunxi_clk_gate("bus-spi0",  "ahb1", regs + 0x=
060,  20);
> > +	clks[CLK_BUS_SPI1]  =3D sunxi_clk_gate("bus-spi1",  "ahb1", regs + 0x=
060,  21);
> > +	clks[CLK_BUS_OTG]   =3D sunxi_clk_gate("bus-otg",   "ahb1", regs + 0x=
060,  23);
> > +	clks[CLK_BUS_EHCI0] =3D sunxi_clk_gate("bus-ehci0", "ahb1", regs + 0x=
060, 24);
> > +	clks[CLK_BUS_EHCI1] =3D sunxi_clk_gate("bus-ehci1", "ahb2", regs + 0x=
060, 25);
> > +	clks[CLK_BUS_OHCI0] =3D sunxi_clk_gate("bus-ohci0", "ahb1", regs + 0x=
060, 28);
> > +	clks[CLK_BUS_OHCI1] =3D sunxi_clk_gate("bus-ohci1", "ahb2", regs + 0x=
060, 29);
> > +
> > +	clks[CLK_BUS_CODEC] =3D sunxi_clk_gate("bus-codec", "apb1", regs + 0x=
068, 0);
> > +	clks[CLK_BUS_SPDIF] =3D sunxi_clk_gate("bus-spdif", "apb1", regs + 0x=
068, 1);
> > +	clks[CLK_BUS_PIO]   =3D sunxi_clk_gate("bus-pio",   "apb1", regs + 0x=
068, 5);
> > +	clks[CLK_BUS_THS]   =3D sunxi_clk_gate("bus-ths",   "apb1", regs + 0x=
068, 8);
> > +	clks[CLK_BUS_I2S0]  =3D sunxi_clk_gate("bus-i2s0",  "apb1", regs + 0x=
068, 12);
> > +	clks[CLK_BUS_I2S1]  =3D sunxi_clk_gate("bus-i2s1",  "apb1", regs + 0x=
068, 13);
> > +	clks[CLK_BUS_I2S2]  =3D sunxi_clk_gate("bus-i2s2",  "apb1", regs + 0x=
068, 14);
> > +
> > +	clks[CLK_BUS_UART0] =3D sunxi_clk_gate("bus-uart0", "apb2", regs + 0x=
06c, 16);
> > +	clks[CLK_BUS_UART1] =3D sunxi_clk_gate("bus-uart1", "apb2", regs + 0x=
06c, 17);
> > +	clks[CLK_BUS_UART2] =3D sunxi_clk_gate("bus-uart2", "apb2", regs + 0x=
06c, 18);
> > +	clks[CLK_BUS_UART3] =3D sunxi_clk_gate("bus-uart3", "apb2", regs + 0x=
06c, 19);
> > +	clks[CLK_BUS_UART4] =3D sunxi_clk_gate("bus-uart4", "apb2", regs + 0x=
06c, 20);
> > +
> > +	writel(0, regs + 0x088);
> > +	clks[CLK_MMC0] =3D clk_register_composite(
> > +		"mmc0",	sel_mmc, ARRAY_SIZE(sel_mmc),
> > +		sunxi_clk_mux("mmc0-mux", sel_mmc, ARRAY_SIZE(sel_mmc), regs + 0x088=
, 24, 2),
> > +		sunxi_clk_div("mmc0-div-m", "mmc0-mux", regs + 0x088, 0, 4),
> > +		sunxi_clk_gate("mmc0-gate", "mmc0-div-n", regs + 0x088, 31),
> > +		0);
> > +
> > +	writel(0, regs + 0x08c);
> > +	clks[CLK_MMC1] =3D clk_register_composite(
> > +		"mmc1",	sel_mmc, ARRAY_SIZE(sel_mmc),
> > +		sunxi_clk_mux("mmc1-mux", sel_mmc, ARRAY_SIZE(sel_mmc), regs + 0x08c=
, 24, 2),
> > +		sunxi_clk_div("mmc1-div-m", "mmc1-mux", regs + 0x08c, 0, 4),
> > +		sunxi_clk_gate("mmc1-gate", "mmc1-div-n", regs + 0x08c, 31),
> > +		0);
> > +
> > +	writel(0, regs + 0x090);
> > +	clks[CLK_MMC2] =3D clk_register_composite(
> > +		"mmc2",	sel_mmc, ARRAY_SIZE(sel_mmc),
> > +		sunxi_clk_mux("mmc2-mux", sel_mmc, ARRAY_SIZE(sel_mmc), regs + 0x090=
, 24, 2),
> > +		sunxi_clk_div("mmc2-div-m", "mmc2-mux", regs + 0x090, 0, 4),
> > +		sunxi_clk_gate("mmc2-gate", "mmc2-div-n", regs + 0x090, 31),
> > +		0);
> > +}
> > +
> > +static int sun50i_a64_ccu_probe(struct device *dev)
> > +{
> > +	struct resource *iores;
> > +
> > +	iores =3D dev_request_mem_resource(dev, 0);
> > +	if (IS_ERR(iores))
> > +		return PTR_ERR(iores);
> > +
> > +	sun50i_a64_clocks_init(dev->of_node, IOMEM(iores->start));
> > +	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk=
_data);
> > +}
> > +
> > +static __maybe_unused struct of_device_id sun50i_a64_ccu_dt_ids[] =3D =
{
> > +	{
> > +		.compatible =3D "allwinner,sun50i-a64-ccu",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> > +static struct driver sun50i_a64_ccu_driver =3D {
> > +	.probe	=3D sun50i_a64_ccu_probe,
> > +	.name	=3D "sun50i-a64-ccu",
> > +	.of_compatible =3D DRV_OF_COMPAT(sun50i_a64_ccu_dt_ids),
> > +};
> > +core_platform_driver(sun50i_a64_ccu_driver);
> > diff --git a/drivers/clk/sunxi/clk-sun50i-a64.h b/drivers/clk/sunxi/clk=
-sun50i-a64.h
> > new file mode 100644
> > index 0000000000..a4ddc39eb8
> > --- /dev/null
> > +++ b/drivers/clk/sunxi/clk-sun50i-a64.h
> > @@ -0,0 +1,62 @@
> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > +/*
> > + * Copyright 2016 Maxime Ripard
> > + *
> > + * Maxime Ripard <maxime.ripard@free-electrons.com>
> > + */
> > +
> > +#include <dt-bindings/clock/sun50i-a64-ccu.h>
> > +
> > +#ifndef _CLK_SUN50I_A64_H_
> > +#define _CLK_SUN50I_A64_H_
> > +
> > +#include <dt-bindings/clock/sun50i-a64-ccu.h>
> > +#include <dt-bindings/reset/sun50i-a64-ccu.h>
> > +
> > +#define CLK_OSC_12M			0
> > +#define CLK_PLL_CPUX			1
> > +#define CLK_PLL_AUDIO_BASE		2
> > +#define CLK_PLL_AUDIO			3
> > +#define CLK_PLL_AUDIO_2X		4
> > +#define CLK_PLL_AUDIO_4X		5
> > +#define CLK_PLL_AUDIO_8X		6
> > +
> > +/* PLL_VIDEO0 exported for HDMI PHY */
> > +
> > +#define CLK_PLL_VIDEO0_2X		8
> > +#define CLK_PLL_VE			9
> > +#define CLK_PLL_DDR0			10
> > +
> > +/* PLL_PERIPH0 exported for PRCM */
> > +
> > +#define CLK_PLL_PERIPH0_2X		12
> > +#define CLK_PLL_PERIPH1			13
> > +#define CLK_PLL_PERIPH1_2X		14
> > +#define CLK_PLL_VIDEO1			15
> > +#define CLK_PLL_GPU			16
> > +#define CLK_PLL_MIPI			17
> > +#define CLK_PLL_HSIC			18
> > +#define CLK_PLL_DE			19
> > +#define CLK_PLL_DDR1			20
> > +#define CLK_AXI				22
> > +#define CLK_APB				23
> > +#define CLK_AHB1			24
> > +#define CLK_APB1			25
> > +#define CLK_APB2			26
> > +#define CLK_AHB2			27
> > +
> > +/* All the bus gates are exported */
> > +
> > +/* The first bunch of module clocks are exported */
> > +
> > +#define CLK_USB_OHCI0_12M		90
> > +
> > +#define CLK_USB_OHCI1_12M		92
> > +
> > +/* All the DRAM gates are exported */
> > +
> > +/* And the DSI and GPU module clock is exported */
> > +
> > +#define CLK_NUMBER			(CLK_GPU + 1)
> > +
> > +#endif /* _CLK_SUN50I_A64_H_ */
> > --=20
> > 2.46.2
> >=20
> >=20
> >=20



