Delivery-date: Tue, 30 May 2023 10:43:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3uxU-002cgl-Ld
	for lore@lore.pengutronix.de; Tue, 30 May 2023 10:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3uxS-0004In-4K
	for lore@pengutronix.de; Tue, 30 May 2023 10:43:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ySlrBNv2nwDc8UnHBjpq+cBsJZbfjfiaUsHFzsKVfg=; b=bttSTjLrYLvL7xEO94sxqgNMe7
	/YXYBcknFLcThwkOJuffOhZllvQxGvq6JDUyydVHeUsUQsaXPnLtirkisfdcNzW6gvSz0/IHLZfBj
	9IR3G/jglXH0/RlzvMzcoGNeWD4bG5BxW1c6BytujOKFFBqA5oeTGxKDXecvF7/jxH1UU20qVccLO
	WrhPtqBhpcBukKgkdAi245mZFs4ih4JJno0F5yu9bauCa3+9Dy06k/PrEJueSCNITgGXkAZ0Lg0lu
	ssrzOHdHZehK3tHg57gPkZz469Hx8UtguhC8FKKxsOKAgYzST38Fm39L+6WaI68evQ0L5H8BeWgEH
	gemPb2Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3uwF-00Czsl-0i;
	Tue, 30 May 2023 08:42:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3uwB-00Czrq-0E
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 08:42:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3uw9-0004BR-48; Tue, 30 May 2023 10:42:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3uw8-00051U-PE; Tue, 30 May 2023 10:42:36 +0200
Date: Tue, 30 May 2023 10:42:36 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230530084236.GY17518@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-12-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524234328.82741-12-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_014239_125685_9EC55713 
X-CRM114-Status: GOOD (  32.12  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 11/13] ARM: boards: sunxi: Add initial support for the
 pinephone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 25, 2023 at 01:43:26AM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  arch/arm/boards/Makefile                    |   1 +
>  arch/arm/boards/pine64-pinephone/Makefile   |   2 +
>  arch/arm/boards/pine64-pinephone/board.c    |   0
>  arch/arm/boards/pine64-pinephone/lowlevel.c | 104 ++++++++++++++++++++
>  arch/arm/configs/pinephone_defconfig        |  12 +++
>  arch/arm/dts/Makefile                       |   1 +
>  arch/arm/dts/sun50i-a64-pinephone-1_2.dts   |   3 +
>  arch/arm/mach-sunxi/Kconfig                 |  17 ++++
>  images/Makefile.sunxi                       |   9 ++
>  include/mach/sunxi/init.h                   |   4 +
>  10 files changed, 153 insertions(+)
>  create mode 100644 arch/arm/boards/pine64-pinephone/Makefile
>  create mode 100644 arch/arm/boards/pine64-pinephone/board.c
>  create mode 100644 arch/arm/boards/pine64-pinephone/lowlevel.c
>  create mode 100644 arch/arm/configs/pinephone_defconfig
>  create mode 100644 arch/arm/dts/sun50i-a64-pinephone-1_2.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index b204c257f6..f4796f5374 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -96,6 +96,7 @@ obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
> +obj-$(CONFIG_MACH_PINE64_PINEPHONE)		+= pine64-pinephone/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
>  obj-$(CONFIG_MACH_PM9261)			+= pm9261/
> diff --git a/arch/arm/boards/pine64-pinephone/Makefile b/arch/arm/boards/pine64-pinephone/Makefile
> new file mode 100644
> index 0000000000..092c31d6b2
> --- /dev/null
> +++ b/arch/arm/boards/pine64-pinephone/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/pine64-pinephone/board.c b/arch/arm/boards/pine64-pinephone/board.c
> new file mode 100644
> index 0000000000..e69de29bb2
> diff --git a/arch/arm/boards/pine64-pinephone/lowlevel.c b/arch/arm/boards/pine64-pinephone/lowlevel.c
> new file mode 100644
> index 0000000000..262d194864
> --- /dev/null
> +++ b/arch/arm/boards/pine64-pinephone/lowlevel.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <linux/sizes.h>
> +#include <linux/bitops.h>
> +#include <mach/sunxi/barebox-arm.h>

This file is missing in this series. Forgot to git add it?

> +#include <mach/sunxi/init.h>
> +#include <mach/sunxi/xload.h>
> +#include <mach/sunxi/egon.h>
> +#include <mach/sunxi/rmr_switch.h>
> +#include <mach/sunxi/sun50i-regs.h>
> +#include <mach/sunxi/sunxi-pinctrl.h>
> +
> +#ifdef DEBUG
> +static void debug_led_rgb(int rgb)
> +{
> +	void __iomem *piobase = SUN50I_PIO_BASE_ADDR;
> +	uint32_t clr, set = 0;
> +	int r = rgb & 0xff0000;
> +	int g = rgb & 0x00ff00;
> +	int b = rgb & 0x0000ff;
> +
> +	clr = (1 << 19) | (1 << 18) | (1 << 20);
> +	set |= r ? 1 << 19 : 0;
> +	set |= g ? 1 << 18 : 0;
> +	set |= b ? 1 << 20 : 0;
> +
> +	clrsetbits_le32(piobase + PIO_PD_DATA, clr, set);
> +}
> +
> +static void debug_led_init(void)
> +{
> +	void __iomem *ccubase = SUN50I_CCU_BASE_ADDR;
> +	void __iomem *piobase = SUN50I_PIO_BASE_ADDR;
> +
> +	/* PIO clock enable */
> +	setbits_le32(ccubase + CCU_BUS_CLK_GATE2, BIT(5));
> +	/* LED set output */
> +	clrsetbits_le32(piobase + PIO_PD_CFG2, 0x000fff00, 0x00011100);
> +}
> +#else
> +static void debug_led_rgb(int rgb) {}
> +static void debug_led_init(void) {}
> +#endif
> +
> +SUN50I_A64_ENTRY_FUNCTION(start_pine64_pinephone, r0, r1, r2)
> +{
> +	extern char __dtb_z_sun50i_a64_pinephone_1_2_start[];
> +	void *fdt;
> +	u32 size;
> +
> +	sunxi_switch_to_aarch64(.text_head_soc_header2, SUN50I_A64_RVBAR_IOMAP);
> +
> +	debug_led_init();
> +	debug_led_rgb(0xffff00);
> +
> +	sun50i_cpu_lowlevel_init();
> +	sun50i_uart_setup();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	/* Skip SDRAM initialization if we run from it */
> +	if (get_pc() < SUN50I_DRAM_ADDR) {
> +		size = sun50i_a64_lpddr3_dram_init();
> +		if (size == 0) {
> +			puts_ll("FAIL: dram init\r\n");
> +			goto reset;
> +		}
> +		puthex_ll(size);
> +		putc_ll('\r');	putc_ll('\n');
> +	}

How can we get here with SDRAM uninitialized? Is this for USB or JTAG
boot?

> +
> +	puts_ll("now booting\r\n");
> +	fdt = __dtb_z_sun50i_a64_pinephone_1_2_start + get_runtime_offset();
> +	barebox_arm_entry(SUN50I_DRAM_ADDR, SZ_1G, fdt);
> +
> +reset:
> +	debug_led_rgb(0xff0000);
> +	sun50i_cpu_lowlevel_reset();
> +}
> +
> +SUN50I_A64_ENTRY_FUNCTION(start_pine64_pinephone_xload, r0, r1, r2)
> +{
> +
> +	sunxi_egon_header(.text_head_soc_header0);
> +	sunxi_switch_to_aarch64(.text_head_soc_header1, SUN50I_A64_RVBAR_IOMAP);
> +
> +	debug_led_init();
> +	debug_led_rgb(0xff0000);
> +
> +	sun50i_cpu_lowlevel_init();
> +	sun50i_uart_setup();
> +	debug_led_rgb(0xffff00);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	sun50i_a64_lpddr3_dram_init();
> +
> +	debug_led_rgb(0xff0000);
> +

You would have to place code here to continue booting, right? In that
case you should add a comment to let the reader know that there's
something missing here.

debug_led_rgb(0xff0000) is the same color you used at the beginning of
the function. Would it make more sense to use a different color?

> +	sun50i_cpu_lowlevel_reset();

Maybe hang() here instead to give the user a chance to see the last
color?

> +}
> diff --git a/arch/arm/configs/pinephone_defconfig b/arch/arm/configs/pinephone_defconfig

In the hope that the config is not only suitable for the pinephone
better name it sunxi_v8_defconfig.


> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -1,7 +1,24 @@
>  if ARCH_SUNXI
>  
> +config ARCH_SUN50I_A64
> +	bool
> +	select CPU_V8
> +	select CPU_SUPPORTS_64BIT_KERNEL
> +	select CLOCKSOURCE_ARM_ARCHITECTED_TIMER
> +	select PINCTRL_SUN50I_A64
> +	select HAS_DEBUG_LL
> +	select PBL_RELOCATABLE
> +	select PBL_FULLY_PIC
> +	help
> +	  Allwiner A64 (sun50iw1) SoC

s/Allwiner/Allwinner/

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


