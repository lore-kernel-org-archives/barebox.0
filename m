Delivery-date: Sun, 18 May 2025 19:32:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGhrn-000FJl-2R
	for lore@lore.pengutronix.de;
	Sun, 18 May 2025 19:32:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGhrm-0006hU-ID
	for lore@pengutronix.de; Sun, 18 May 2025 19:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XON/roSCq6W6HthVJr0Kh+4vM3sFcSNGYdqgXz8WapM=; b=LKaLFXuTRXBAgFbwuj/GxreqNt
	oukFmGc5pa3FY5oIl93Kb1Rxlz1mpZbP779dupVp2JAhqHKSjM0HOJzIHO3yuRobM6AIyEFAHPQUJ
	LWLRWYLkUaRzLx4NxpgqU4hlvaxHokNx9CDhW6dc8LkcQL8OVS5hilsxnJAdPFT+fYDrxBE2b0PvP
	MlXPTF9X7GsIJ4nWVhz8zPQ7ouOzr1f2hwUyf5WFuox89dG7wVLwe0FrQXvWL0hixILu65S6VVvT3
	YGGQlhecMwg6IpYq/J26pJIPYvXobJv2gsMc1LzLwsn5jxjHmA23m8/jqwGb105bJzBB24/wa1Z+S
	q0MAVfNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGhrD-00000007L3d-49Op;
	Sun, 18 May 2025 17:31:27 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGhrA-00000007L3F-2euH
	for barebox@lists.infradead.org;
	Sun, 18 May 2025 17:31:26 +0000
Received: from Precision-T3610 ([84.147.163.231]) by mrelayeu.kundenserver.de
 (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1MIMT4-1uDQb80gVA-00Av36; Sun, 18 May 2025 19:31:22 +0200
Date: Sun, 18 May 2025 19:31:05 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aCoZWQzb8NbSTXtw@Precision-T3610>
References: <20250516171802.33936-1-johannes@gnu-linux.rocks>
 <d6a4cf44-4898-4c9e-9bba-1a22cdd4fe45@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6a4cf44-4898-4c9e-9bba-1a22cdd4fe45@pengutronix.de>
X-Provags-ID: V03:K1:M9ur5BorXu9dlwGzXT6CH3jOwG8nr8K7CnCgYpwo1q4XCj699BA
 8kG5/Z/LB6pTjacI4kg5FdGG4nihlr6ulGVmCZYD6NP/JsJjAZ/4M6PjprmYkVcc1Tg+RhU
 RDBi64V7ud6kNzc4kxLi18tjE7tgBg+bDBHoMVQytMtIXUFMBENMD1us/vSWTyoPTpE1p4e
 dtI4yhGpOTZ2TIuZsR/Ng==
UI-OutboundReport: notjunk:1;M01:P0:KYd4xGPBjCs=;P+fv2AVvK+a8gnDqujb/AW3L3IO
 UmC/wfdmlYlVfT3LLUjbGG3wdqxAQ/e2THFrUBiMZiu+Wc0xQ5sLspftmdOP5Ot6HJW12hiio
 FQmq8VheghWnNNuZjzw5roEVOpfd/Y0x6UpLvFp10+0aJfUG4EJhqDp5jtcYUx6PeL2KbvyoZ
 OE7KFJ4FzlVAAUcRFS+PcP/nD80GjR/Zoxz+/TuGovKhbpKgIhziWfYbqaU2UMPmXmPuxcs2o
 V44mX9LA/ychPdmhJSZbbsnEjMiarVC7ZZzLpxfC47yKpFLQeAxk/mTmMTLZ6hktBo8mQ2yuP
 rU5PYqeR9Cef1g2rWyYb8vaBw15yB6ApcYiU6vMbf4QJyjRF+8SUnovGqX7pPaBAM6T1p0Bn/
 XlWcx0qgqn2gWvnkbyOVtg3c21YtVfVA8cbrFnCiGAN5qJ6ZGfCmtGuxEY+CEq/7fYwNDGXb+
 V2BkfSe0ounxzSu67G1OWBO3tX6x18n8iiGGs9iDQXURFinO/GM8wc3eQ++rtD8/QqjPcZGMb
 v2X5Vi/6uhMsrw0gk9pE2bA5QScYo73/0o2r6h41BidxuqRpBAPTEdhxkwv+XDsAICQUIpLqG
 hdZhteQfVTw5OSUGIPiBp1rpRvntaF4uXZm7S7vDtKOKRsVX+vyVZx3uI6Py36rneC/1XIoMJ
 FC99rSop1T+ZExahuHYGHwvDb3sql40fZqX7oy1fr09CmbaKnIggXXA6zJ7GGqVjoqc2gjL1/
 Gq2rdGsXJB8n5LlITUqpEci4q6tuHjUpJUZoehh/263fQiIlr4oiBr2KyurQChyzfQCw5mbDy
 4S6VvHkOgMi9XOQPtyxvVQwrqN6ui6ePKi/g29TWc79dNGYp2nF+GNz+l6WgRSoH7Qy4TrsXn
 wuqHBJu6PqcLxlhJ/baTc4mMrWrwkrp/fpFpQy4HfRgUOYD8dvKbs/rr9z+mfIL2qiErlmeAh
 fPhvKpMfIYylD6zUMFmnQL4CG8MC2A0fuxrZgy7cxT1X/uDSM17xZe2aLS31zxXLjXwaV+IIZ
 G0zfsxdPn/6sfCH0OvoVpyHatFFwjYDZQwNL+BxY38LWXjliS2b5iIqCVclCHcjhiGJQh0Bxv
 JgHPmqZu26IGiPnbHS+jhhYNTmSseaa14RbWaIn1kIGtQkA/V42whpVhwvLGjfcsp3qW+SeGY
 t54RWrKVVIiNs22aJ7toHQELCb2cKYrh83abX1Tq2Q7fLMSJWIneNtVPsiMXWAppWyDNWft+u
 BMq0WqedSKGTcJI08tjttxmqt0uSyZZOT9i/CheANWQfZmF7x7pf/NAo0+2xGwZrxto4k+rgu
 ytGitVHhKxLYUx0rk7hPM3VBRk0xlItw0lb7yT9LbdI3KJUYOJOMPC0R1kEu3MxxhbP/MStEA
 Z3A1g8B7UaqOhe6RwRkU9THubGb+SmBaNGf7Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_103124_985077_5E4F27CC 
X-CRM114-Status: GOOD (  60.60  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH] Added support for Digilent Cora Z7 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

thanks for your feedback.

Am Fri, May 16, 2025 at 10:05:49PM +0200 schrieb Ahmad Fatoum:
> Hello Johannes,
> 
> On 16.05.25 19:18, Johannes Roith wrote:
> > This patch adds support for the Digilent Cora Z7 board to barebox.
> > 
> > This patch includes a PBL initializing the DDR memory and the most important
> > hardware and barebox proper which is loaded from the mmc but uses network
> > boot as the default boot source.
> 
> For your information, the next barebox release will have a different boot.default
> value by default: "bootsource net". If your SoC support sets the bootsource
> correctly that means that it will look for bootloader spec entries for example
> on your SD-Card before falling back to the net boot.
> 
> > mmc boot is also working.
> 
> How much on-chip SRAM do you have? I am wondering about the absence of
> MMC bootstrap code in your PBL. Is your barebox small enough that it fits
> into the SRAM?

It is 256kByte and it seems barebox PBL and proper is copied both into
the SRAM. If I select too much commands in the config, I am getting the
error that barebox is to big to fit in the OCM RAM.
> 
> > This patch only brings support for booting the PS side, loading a bitstream
> > on the PL side is nit supported.
> 
> Nit: s/nit/not/ ;)

Oops, will be fixed in Patch v2 ;)
> 
> > Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
> > ---
> >  arch/arm/boards/Makefile                      |   1 +
> >  arch/arm/boards/digilent-cora/Makefile        |   4 +
> >  arch/arm/boards/digilent-cora/board.c         |  33 ++
> >  arch/arm/boards/digilent-cora/cora.zynqcfg    |   4 +
> >  .../env/nv/linux.bootargs.console             |   1 +
> >  arch/arm/boards/digilent-cora/lowlevel.c      | 296 ++++++++++++++++++
> >  arch/arm/configs/zynq_defconfig               |   1 +
> >  arch/arm/dts/Makefile                         |   1 +
> >  arch/arm/dts/zynq-cora-linux.dts              |  62 ++++
> >  arch/arm/dts/zynq-cora.dts                    |  29 ++
> >  arch/arm/mach-zynq/Kconfig                    |   5 +
> >  images/Makefile.zynq                          |   6 +
> >  12 files changed, 443 insertions(+)
> >  create mode 100644 arch/arm/boards/digilent-cora/Makefile
> >  create mode 100644 arch/arm/boards/digilent-cora/board.c
> >  create mode 100644 arch/arm/boards/digilent-cora/cora.zynqcfg
> >  create mode 100644 arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console
> >  create mode 100644 arch/arm/boards/digilent-cora/lowlevel.c
> >  create mode 100644 arch/arm/dts/zynq-cora-linux.dts
> >  create mode 100644 arch/arm/dts/zynq-cora.dts
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index 908497cd8b..fcf4d393a1 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -154,6 +154,7 @@ obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
> >  obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
> >  obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
> >  obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
> > +obj-$(CONFIG_MACH_CORA_Z7)			+= digilent-cora/
> >  obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
> >  obj-$(CONFIG_MACH_VARISCITE_SOM_MX7)		+= variscite-som-mx7/
> >  obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
> > diff --git a/arch/arm/boards/digilent-cora/Makefile b/arch/arm/boards/digilent-cora/Makefile
> > new file mode 100644
> > index 0000000000..d653aa1f4b
> > --- /dev/null
> > +++ b/arch/arm/boards/digilent-cora/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/digilent-cora/board.c b/arch/arm/boards/digilent-cora/board.c
> > new file mode 100644
> > index 0000000000..1e70137352
> > --- /dev/null
> > +++ b/arch/arm/boards/digilent-cora/board.c
> > @@ -0,0 +1,33 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2025 Johannes Roith <johannes@gnu-linux.rocks>
> > +
> > +#include <asm/armlinux.h>
> > +#include <bbu.h>
> > +#include <common.h>
> > +#include <environment.h>
> > +#include <asm/mach-types.h>
> > +#include <init.h>
> > +#include <mach/zynq/zynq7000-regs.h>
> > +#include <linux/sizes.h>
> > +#include <deep-probe.h>
> > +
> > +static int cora_probe(struct device *dev)
> > +{
> > +	barebox_set_hostname("cora");
> 
> The name would already be zynq-cora by default. If that's ok with you,
> I wouldn't change it.

I will remove it.

> 
> > diff --git a/arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console b/arch/arm/boards/digilent-cora/env/nv/linux.bootargs.console
> 
> The environment is unreferenced. You can use bbenv- to compile in environment
> without having to reference it in the config. This should be preferred
> over setting it in the Kconfig as that allows you to build a config
> with multiple board and only apply the env when appropriate (by
> calling defaultenv_append_directory in the board driver).
> 
> > +static void cora_z7_ps7_init(void)
> > +{
> > +	/*
> > +	 * Read OCM mapping configuration, if only the upper 64 KByte are
> > +	 * mapped to the high address, it's very likely that we just got control
> > +	 * from the BootROM. If the mapping is changed something other than the
> > +	 * BootROM was running before us. Skip PS7 init to avoid cutting the
> > +	 * branch we are sitting on in that case.
> > +	 */
> > +	if ((readl(0xf8000910) & 0xf) != 0x8)
> 
> Please use a macro for the address and wrap it in IOMEM().
> Eventually, we will want to enforce addresses to be pointers, so it would
> be cool for new code to already use the correct types. If you want type
> checking, just add
> 
> #include <linux/io.h> at the top of your includes.
> 

So, it should look like this, right:

void __iomem *ocm_config = IOMEM(OCM_CFG);

if ((readl(ocm_config) != 0x8)

> > +		return;
> > +	/* Do something!!! */
> > +	/* open sesame */
> 
> Is there some stuff that's generic enough here that we would want it in
> mach-zynq instead?

Hmm, good question. In theory most of the code is generic or could be
implemted in functions in mach-zynq and the lowlevel board just calls
these functions with the correct arguments, e.g. the DDR init. But
that way it is quite time consuming to implement. This here is basically
just copy paste from a Vitis generated code adopted to the coding style of
barebox.

> 
> > +	/* pinmux: UART0 RxD: MIO_PIN_14, TxD: MIO_PIN_15 */
> > +	writel(0x000006E1, ZYNQ_MIO_BASE + 0x38);
> > +	writel(0x000006E0, ZYNQ_MIO_BASE + 0x3C);
> > +
> > +	/* set UART Clock to 50 MHz */
> > +	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
> 
> I'd move that into cora_z7_pbl_console_init if you don't need it
> unconditionally. If it's needed outside of PBL_CONSOLE, I think clock
> and pinctrl drivers in barebox should already take care of it?

There is a clock control driver in barebox but I could not find a
pinctrl driver. Also the pinctrl for ZYNQ is quite a lot to configure in
the device tree:

https://www.kernel.org/doc/Documentation/devicetree/bindings/pinctrl/xlnx%2Czynq-pinctrl.txt


> 
> > +
> > +	/* GEM0 */
> > +	writel(0x00000001, 0xf8000138);
> > +	writel(0x00100801, 0xf8000140);
> > +	writel(0x00000302, 0xf8000740);
> > +	writel(0x00000302, 0xf8000744);
> > +	writel(0x00000302, 0xf8000748);
> > +	writel(0x00000302, 0xf800074C);
> > +	writel(0x00000302, 0xf8000750);
> > +	writel(0x00000302, 0xf8000754);
> > +	writel(0x00001303, 0xf8000758);
> > +	writel(0x00001303, 0xf800075C);
> > +	writel(0x00001303, 0xf8000760);
> > +	writel(0x00001303, 0xf8000764);
> > +	writel(0x00001303, 0xf8000768);
> > +	writel(0x00001303, 0xf800076C);
> > +	writel(0x00000280, 0xf80007D0);
> > +	writel(0x00000280, 0xf80007D4);
> 
> What are you doing to the MAC here?

Copy paste error from Zed Board. I think this is not needed here.

> 
> > +ENTRY_FUNCTION_WITHSTACK(start_digilent_cora, 0xfffff000, r0, r1, r2)
> > +{
> > +	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
> > +	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
> > +	writel(0x00000600, 0xF800071C);
> > +	writel(0x0000767B, ZYNQ_SLCR_LOCK);
> > +
> > +	zynq_cpu_lowlevel_init();
> > +
> > +	cora_z7_ps7_init();
> > +
> > +	relocate_to_current_adr();
> > +	setup_c();
> > +	barrier();
> 
> You don't need the barrier().

Thanks, got it.
> 
> > +
> > +	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
> > +		cora_z7_pbl_console_init();
> > +
> > +	barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_cora_start);
> > +}
> > diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
> > index 1a1378d3e0..71bc5eaba7 100644
> > --- a/arch/arm/configs/zynq_defconfig
> > +++ b/arch/arm/configs/zynq_defconfig
> > @@ -1,5 +1,6 @@
> >  CONFIG_ARCH_ZYNQ=y
> >  CONFIG_MACH_ZEDBOARD=y
> > +CONFIG_MACH_CORA_Z7=y
> >  CONFIG_AEABI=y
> >  CONFIG_ARM_UNWIND=y
> >  CONFIG_IMAGE_COMPRESSION_XZKERN=y
> > diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> > index 3044c9bf12..8ba6385bd6 100644
> > --- a/arch/arm/dts/Makefile
> > +++ b/arch/arm/dts/Makefile
> > @@ -240,6 +240,7 @@ lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
> >  lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
> >  lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
> >  lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
> > +lwl-$(CONFIG_MACH_CORA_Z7) += zynq-cora.dtb.o
> >  lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
> >  lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
> >  lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
> > diff --git a/arch/arm/dts/zynq-cora-linux.dts b/arch/arm/dts/zynq-cora-linux.dts
> > new file mode 100644
> > index 0000000000..a75837011f
> > --- /dev/null
> > +++ b/arch/arm/dts/zynq-cora-linux.dts
> > @@ -0,0 +1,62 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + *  Copyright (C) 2011 - 2014 Xilinx
> > + *  Copyright (C) 2012 National Instruments Corp.
> > + */
> > +/dts-v1/;
> > +#include <arm/xilinx/zynq-7000.dtsi>
> > +
> > +/ {
> > +	model = "Digilent Cora Z7";
> > +	compatible = "digilent,zynq-cora", "xlnx,zynq-cora", "xlnx,zynq-7000";
> > +
> > +	aliases {
> > +		ethernet0 = &gem0;
> > +		serial0 = &uart0;
> > +		mmc0 = &sdhci0;
> > +	};
> > +
> > +	memory@0 {
> > +		device_type = "memory";
> > +		reg = <0x0 0x20000000>;
> > +	};
> > +
> > +	chosen {
> > +		bootargs = "";
> 
> This is unnecessary, I think.

I will remove it.

> 
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +
> > +	usb_phy0: phy0 {
> 
> If you upstream this, you'll be probably told that you should use a descriptive
> node name.

Ok, I will change it. But it is only a copy of the zedboard dt adopted
to the Digilent board ;)
> 
> > +		compatible = "usb-nop-xceiv";
> > +		#phy-cells = <0>;
> > +	};
> > +};
> > +
> > +&clkc {
> > +	ps-clk-frequency = <50000000>;
> > +};
> > +
> > +&gem0 {
> > +	status = "okay";
> > +	phy-mode = "rgmii-id";
> > +	phy-handle = <&ethernet_phy>;
> > +
> > +	ethernet_phy: ethernet-phy@0 {
> > +		reg = <0>;
> 
> Is 0 really your PHY address or does it just work by virtue of being the broadcast
> address? Just wondering.

Yes, according to ethtool the PHY SMI address is really 0.

> 
> > +		device_type = "ethernet-phy";
> > +	};
> > +};
> > +
> > +&sdhci0 {
> > +	status = "okay";
> > +};
> > +
> > +&uart0 {
> > +	status = "okay";
> > +};
> > +
> > +&usb0 {
> > +	status = "okay";
> > +	dr_mode = "host";
> > +	usb-phy = <&usb_phy0>;
> > +};
> > diff --git a/arch/arm/dts/zynq-cora.dts b/arch/arm/dts/zynq-cora.dts
> > new file mode 100644
> > index 0000000000..4375e840a6
> > --- /dev/null
> > +++ b/arch/arm/dts/zynq-cora.dts
> > @@ -0,0 +1,29 @@
> > +#include "zynq-cora-linux.dts"
> > +#include "zynq-7000.dtsi"
> > +
> > +/ {
> > +	chosen {
> > +		stdout-path = &uart0;
> 
> Why overwrite what's in the Linux DTS?

I will remove it.

> 
> > +
> > +		environment-sd {
> > +			compatible = "barebox,environment";
> > +			device-path = &sdhci0, "partname:0";
> > +			file-path = "barebox.env";
> > +		};
> > +	};
> > +};
> > +
> > +&clkc {
> > +	ps-clk-frequency = <50000000>;
> 
> Why duplicate?
> 

I will remove it.

> > +};
> > +
> > +&sdhci0 {
> > +	bootph-all;
> 
> Unparsed by barebox.
> 

I will remove it.

> > +	bus-width = <4>;
> 
> It's a SD-Card, so it can't be more than 4 bit. Just drop it.
> 

I will remove it.

> > +	status = "okay";
> > +};
> > +
> > +&uart0 {
> > +	bootph-all;
> > +	status = "okay";
> > +};
> > diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> > index 1d6218d407..936e41f1fc 100644
> > --- a/arch/arm/mach-zynq/Kconfig
> > +++ b/arch/arm/mach-zynq/Kconfig
> > @@ -5,6 +5,7 @@ if ARCH_ZYNQ
> >  config ZYNQ_DEBUG_LL_UART_BASE
> >  	hex
> >  	default 0xe0001000 if MACH_ZEDBOARD
> > +	default 0xe0000000 if MACH_CORA_Z7
> >  
> >  config ARCH_ZYNQ7000
> >  	bool
> > @@ -22,6 +23,10 @@ config MACH_ZEDBOARD
> >  	bool "Avnet Zynq-7000 ZedBoard"
> >  	select ARCH_ZYNQ7000
> >  
> > +config MACH_CORA_Z7
> > +	bool "Digilent Cora Z7"
> > +	select ARCH_ZYNQ7000
> 
> Can you enable this in zynq_defconfig?

Yes, it is selectable in the config.

> 
> Cheers,
> Ahmad
> 
> > +
> >  endmenu
> >  
> >  endif
> > diff --git a/images/Makefile.zynq b/images/Makefile.zynq
> > index ac9ce8157b..b2a584bb15 100644
> > --- a/images/Makefile.zynq
> > +++ b/images/Makefile.zynq
> > @@ -22,3 +22,7 @@ $(obj)/%.zynqimg: $(obj)/% FORCE
> >  CFG_start_avnet_zedboard.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
> >  FILE_barebox-avnet-zedboard.img = start_avnet_zedboard.pblb.zynqimg
> >  image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
> > +
> > +CFG_start_digilent_cora.pblb.zynqimg = $(board)/digilent-cora/cora.zynqcfg
> > +FILE_barebox-digilent-cora.img = start_digilent_cora.pblb.zynqimg
> > +image-$(CONFIG_MACH_CORA_Z7) += barebox-digilent-cora.img
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


