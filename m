Delivery-date: Thu, 09 Jun 2022 11:30:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEUx-008csz-0J
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:30:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEUv-000260-1h
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:30:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6/8IpTeoi1K3zwDuAbGASuExADEWXIeWhRRbuy+N+PM=; b=yUEMvuvcRudG1mwG1VX/4WSCiY
	NewNRkibqSlMDBYVM+d/xf9WRBKwZkhS8qDe2FBRHiPBKsLvMgwz8MYycZ8XeFU487yW3qVivTd+O
	dxuQVj1aSk8u47f2wvIREnbgjosY71HKP8nnNC6qoh0989CM0w/kuyYussNBKPK6WWyregSr7xeNm
	FOaMxyEVNGG3qKGbNIbCHIiaCYS93jYn8HwkRp4S9Qo6QF0/JnK/eEP95nSLUQwx3jbSjQcLf6/6k
	4+EmCP1llLBPBW/NdaVc39w9OiYL0hp1ytxwTaNlN5+GfQzSBGMqZrRFZsABXONeUIRm4uezBm0fp
	CwZoLlEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzETb-000egd-Tr; Thu, 09 Jun 2022 09:29:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzETW-000ef4-7D
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 09:29:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzETU-0001tb-VI; Thu, 09 Jun 2022 11:29:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzETU-0004Kz-MH; Thu, 09 Jun 2022 11:29:08 +0200
Date: Thu, 9 Jun 2022 11:29:08 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220609092908.GO1615@pengutronix.de>
References: <20220609091946.20028-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609091946.20028-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_022910_628326_05D0B93C 
X-CRM114-Status: GOOD (  39.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: Rework watchdog code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 12:19:46PM +0300, Alexander Shiyan wrote:
> This patch introduces the omap_watchdog_disable() function,
> since the WDT core is the same for different OMAP variants,
> it can be used for all supported SOCs.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/afi-gf/lowlevel.c            | 10 +----
>  arch/arm/boards/beaglebone/lowlevel.c        |  9 +---
>  arch/arm/boards/myirtech-x335x/lowlevel.c    |  9 +---
>  arch/arm/boards/phytec-som-am335x/lowlevel.c | 11 +----
>  arch/arm/boards/vscom-baltos/lowlevel.c      |  9 +---
>  arch/arm/boards/wago-pfc-am35xx/lowlevel.c   |  1 -
>  arch/arm/mach-omap/include/mach/generic.h    |  2 +
>  arch/arm/mach-omap/include/mach/wdt.h        | 43 --------------------
>  arch/arm/mach-omap/omap3_generic.c           | 12 +-----
>  arch/arm/mach-omap/omap4_generic.c           | 22 +---------
>  arch/arm/mach-omap/omap_generic.c            | 18 ++++++++
>  11 files changed, 29 insertions(+), 117 deletions(-)
>  delete mode 100644 arch/arm/mach-omap/include/mach/wdt.h

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
> index d28cc8fad3..294da66da5 100644
> --- a/arch/arm/boards/afi-gf/lowlevel.c
> +++ b/arch/arm/boards/afi-gf/lowlevel.c
> @@ -11,11 +11,11 @@
>  #include <mach/am33xx-silicon.h>
>  #include <mach/am33xx-clock.h>
>  #include <mach/emif4.h>
> +#include <mach/gereric.h>
>  #include <mach/sdrc.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
>  #include <mach/am33xx-mux.h>
> -#include <mach/wdt.h>
>  #include <debug_ll.h>
>  
>  /* AM335X EMIF Register values */
> @@ -211,13 +211,7 @@ static noinline int gf_sram_init(void)
>  
>  	fdt = __dtb_z_am335x_afi_gf_start;
>  
> -	/* WDT1 is already running when the bootloader gets control
> -	 * Disable it to avoid "random" resets
> -	 */
> -	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> -	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> -	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> -	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
>  
>  	/* Setup the PLLs and the clocks for the peripherals */
>  	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_200);
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index 544e396e03..ebec4b5419 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -15,7 +15,6 @@
>  #include <mach/syslib.h>
>  #include <mach/am33xx-mux.h>
>  #include <mach/am33xx-generic.h>
> -#include <mach/wdt.h>
>  
>  #include "beaglebone.h"
>  
> @@ -118,13 +117,7 @@ static noinline int beaglebone_sram_init(void)
>  	else
>  		sdram_size = SZ_256M;
>  
> -	/* WDT1 is already running when the bootloader gets control
> -	 * Disable it to avoid "random" resets
> -	 */
> -	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> -	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> -	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> -	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
>  
>  	/* Setup the PLLs and the clocks for the peripherals */
>  	if (is_beaglebone_black()) {
> diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
> index c43761ca23..4d32d2da1e 100644
> --- a/arch/arm/boards/myirtech-x335x/lowlevel.c
> +++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
> @@ -14,7 +14,6 @@
>  #include <mach/generic.h>
>  #include <mach/sdrc.h>
>  #include <mach/sys_info.h>
> -#include <mach/wdt.h>
>  
>  #define AM335X_ZCZ_1000		0x1c2f
>  
> @@ -70,13 +69,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
>  
>  	fdt = __dtb_z_am335x_myirtech_myd_start;
>  
> -	/* WDT1 is already running when the bootloader gets control
> -	 * Disable it to avoid "random" resets
> -	 */
> -	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> -	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> -	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> -	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
>  
>  	mpupll = MPUPLL_M_800;
>  	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
> diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> index bffb3ad880..fe6a928ca2 100644
> --- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> @@ -15,7 +15,6 @@
>  #include <mach/syslib.h>
>  #include <mach/am33xx-mux.h>
>  #include <mach/am33xx-generic.h>
> -#include <mach/wdt.h>
>  #include <debug_ll.h>
>  
>  #include "ram-timings.h"
> @@ -136,15 +135,7 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
>  	struct am335x_sdram_timings *timing = NULL;
>  	u32 ramsize;
>  
> -	/*
> -	 * WDT1 is already running when the bootloader gets control
> -	 * Disable it to avoid "random" resets
> -	 */
> -	writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> -	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> -
> -	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> -	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
>  
>  	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
>  
> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
> index 7da2f92efb..2fa8a0fdc3 100644
> --- a/arch/arm/boards/vscom-baltos/lowlevel.c
> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
> @@ -16,7 +16,6 @@
>  #include <mach/syslib.h>
>  #include <mach/am33xx-mux.h>
>  #include <mach/am33xx-generic.h>
> -#include <mach/wdt.h>
>  
>  static const struct am33xx_ddr_data ddr3_data = {
>  	.rd_slave_ratio0        = 0x38,
> @@ -86,13 +85,7 @@ static noinline void baltos_sram_init(void)
>  
>  	fdt = __dtb_z_am335x_baltos_minimal_start;
>  
> -	/* WDT1 is already running when the bootloader gets control
> -	 * Disable it to avoid "random" resets
> -	 */
> -	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> -	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> -	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> -	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
>  
>  	/* Setup the PLLs and the clocks for the peripherals */
>  	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
> diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
> index 63afd043a0..9018bedf22 100644
> --- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
> +++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
> @@ -16,7 +16,6 @@
>  #include <mach/sdrc.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
> -#include <mach/wdt.h>
>  #include <mach/omap3-mux.h>
>  #include <mach/omap3-silicon.h>
>  #include <mach/omap3-generic.h>
> diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
> index fa391c8d48..8b2b7a4f0c 100644
> --- a/arch/arm/mach-omap/include/mach/generic.h
> +++ b/arch/arm/mach-omap/include/mach/generic.h
> @@ -79,6 +79,8 @@ static inline int omap_set_mmc_dev(const char *mmcdev)
>  
>  void __noreturn omap_start_barebox(void *barebox);
>  
> +void omap_watchdog_disable(const void __iomem *wdt);
> +
>  void omap_set_bootmmc_devname(const char *devname);
>  const char *omap_get_bootmmc_devname(void);
>  
> diff --git a/arch/arm/mach-omap/include/mach/wdt.h b/arch/arm/mach-omap/include/mach/wdt.h
> deleted file mode 100644
> index 9a5288d386..0000000000
> --- a/arch/arm/mach-omap/include/mach/wdt.h
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -/**
> - * @file
> - * @brief This file contains the Watchdog timer specific register definitions
> - *
> - * (C) Copyright 2008
> - * Texas Instruments, <www.ti.com>
> - * Nishanth Menon <x0nishan@ti.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> -
> -#ifndef __ASM_ARCH_OMAP_WDT_H
> -#define __ASM_ARCH_OMAP_WDT_H
> -
> -/** Watchdog Register defines */
> -#define OMAP3_WDT_REG(REGNAME)	(OMAP3_MPU_WDTIMER_BASE + OMAP_WDT_##REGNAME)
> -#define AM33XX_WDT_REG(REGNAME)	(AM33XX_WDT_BASE + OMAP_WDT_##REGNAME)
> -
> -#define OMAP_WDT_WIDR		(0x000)
> -#define OMAP_WDT_SYSCONFIG	(0x010)
> -#define OMAP_WDT_WD_SYSSTATUS	(0x014)
> -#define OMAP_WDT_WISR		(0x018)
> -#define OMAP_WDT_WIER		(0x01C)
> -#define OMAP_WDT_WCLR		(0x024)
> -#define OMAP_WDT_WCRR		(0x028)
> -#define OMAP_WDT_WLDR		(0x02C)
> -#define OMAP_WDT_WTGR		(0x030)
> -#define OMAP_WDT_WWPS		(0x034)
> -#define OMAP_WDT_WSPR		(0x048)
> -
> -/* Unlock Code for Watchdog timer to disable the same */
> -#define WDT_DISABLE_CODE1	0xAAAA
> -#define WDT_DISABLE_CODE2	0x5555
> -
> -#endif /* __ASM_ARCH_OMAP_WDT_H */
> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
> index 3f6a346277..69f2d51a62 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -40,7 +40,6 @@
>  #include <mach/omap3-smx.h>
>  #include <mach/clocks.h>
>  #include <mach/omap3-clock.h>
> -#include <mach/wdt.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
>  #include <mach/omap3-generic.h>
> @@ -379,19 +378,10 @@ static void secureworld_exit(void)
>   */
>  static void watchdog_init(void)
>  {
> -	int pending = 1;
> -
>  	sr32(OMAP3_CM_REG(FCLKEN_WKUP), 5, 1, 1);
>  	sr32(OMAP3_CM_REG(ICLKEN_WKUP), 5, 1, 1);
> -	wait_on_value((0x1 << 5), 0x20, OMAP3_CM_REG(IDLEST_WKUP), 5);
> -
> -	writel(WDT_DISABLE_CODE1, OMAP3_WDT_REG(WSPR));
> -
> -	do {
> -		pending = readl(OMAP3_WDT_REG(WWPS));
> -	} while (pending);
>  
> -	writel(WDT_DISABLE_CODE2, OMAP3_WDT_REG(WSPR));
> +	omap_watchdog_disable(IOMEM(OMAP3_MPU_WDTIMER_BASE));
>  }
>  
>  /**
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 406b686318..6d165b7f68 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -65,18 +65,6 @@ void omap4_set_warmboot_order(u32 *device_list)
>  	writel(OMAP44XX_SAR_CH_START, OMAP44XX_SAR_CH_ADDRESS);
>  }
>  
> -#define WATCHDOG_WSPR	0x48
> -#define WATCHDOG_WWPS	0x34
> -
> -static void wait_for_command_complete(void)
> -{
> -	int pending = 1;
> -
> -	do {
> -		pending = readl(OMAP44XX_WDT2_BASE + WATCHDOG_WWPS);
> -	} while (pending);
> -}
> -
>  /* EMIF */
>  #define EMIF_MOD_ID_REV			0x0000
>  #define EMIF_STATUS			0x0004
> @@ -463,14 +451,8 @@ unsigned int omap4_revision(void)
>   */
>  static int watchdog_init(void)
>  {
> -	void __iomem *wd2_base = (void *)OMAP44XX_WDT2_BASE;
> -
> -	if (!cpu_is_omap4())
> -		return 0;
> -
> -	writel(WD_UNLOCK1, wd2_base + WATCHDOG_WSPR);
> -	wait_for_command_complete();
> -	writel(WD_UNLOCK2, wd2_base + WATCHDOG_WSPR);
> +	if (cpu_is_omap4())
> +		omap_watchdog_disable(IOMEM(OMAP44XX_WDT2_BASE));
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index a1c0aeb595..c0f8cea999 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -70,6 +70,24 @@ void __noreturn omap_start_barebox(void *barebox)
>  	hang();
>  }
>  
> +#define OMAP_WDT_WWPS		0x34
> +#define OMAP_WDT_WSPR		0x48
> +#define WDT_DISABLE_CODE1	0xaaaa
> +#define WDT_DISABLE_CODE2	0x5555
> +
> +void omap_watchdog_disable(const void __iomem *wdt)
> +{
> +	/* WDT is already running when the bootloader gets control
> +	 * Disable it to avoid "random" resets
> +	 */
> +	__raw_writel(WDT_DISABLE_CODE1, wdt + OMAP_WDT_WSPR);
> +
> +	do {
> +	} while (__raw_readl(wdt + OMAP_WDT_WWPS));
> +
> +	__raw_writel(WDT_DISABLE_CODE2, wdt + WSPR);
> +}
> +
>  #ifdef CONFIG_BOOTM
>  static int do_bootm_omap_barebox(struct image_data *data)
>  {
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

