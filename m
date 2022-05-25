Delivery-date: Wed, 25 May 2022 11:33:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntnOP-008UiZ-C5
	for lore@lore.pengutronix.de; Wed, 25 May 2022 11:33:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntnOO-0005Tq-33
	for lore@pengutronix.de; Wed, 25 May 2022 11:33:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OWofDjUP139Dbe2fmFPEeyoBUmL+dgbpcapEtO3wH5E=; b=HcfNLgQAaSinHsTOvrGov6UPFd
	V4QxKOHaEV2aAymMkJ/PmN6bU+eYIrzEPWZnIxsKSORKu7j044bIU911uUdd0xKFTHhqs1m4/cCVE
	0VFm92OEZaL6f1cENriAp96PAnhOu6YPpI/3RqDhArK0BdSASq8HdTm33W9aeimfWdDqOxSfyi/oK
	SZKq6JmGE2r/4rVYTjQlL1ypAjJeMNAg23DyV992+OuDLP28OuurVRFq77+nCoOSMqln+HJnUf76O
	LGCNW04AWeMFnvBDmNEmgHqmyhFI1H4BcJQzSYRJP0BLUXkMWl5CJ/AezUCMR4xnnBWlwxE79MizI
	lvPgfQig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntnNH-00AacE-49; Wed, 25 May 2022 09:32:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntnNB-00Aab1-Hz
 for barebox@lists.infradead.org; Wed, 25 May 2022 09:32:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntnNA-0005OQ-By; Wed, 25 May 2022 11:32:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntnNA-0000Yf-3D; Wed, 25 May 2022 11:32:08 +0200
Date: Wed, 25 May 2022 11:32:08 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220525093208.GE1615@pengutronix.de>
References: <20220524072135.18007-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220524072135.18007-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_023209_633401_C399BF11 
X-CRM114-Status: GOOD (  27.04  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: myir-x335x: Fix memory size detect
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 24, 2022 at 10:21:35AM +0300, Alexander Shiyan wrote:
> Unfortunately, the memory size detect does not work properly.
> Let's use the standard get_ram_size() function in the preloader
> and just reinitialize the memory if it returns 256MB.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/myirtech-x335x/lowlevel.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
> index e867a0be7d..c43761ca23 100644
> --- a/arch/arm/boards/myirtech-x335x/lowlevel.c
> +++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
> @@ -1,6 +1,7 @@
>  /* SPDX-License-Identifier: GPL-2.0+ */
>  /* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
>  
> +#include <common.h>
>  #include <io.h>
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
> @@ -41,12 +42,13 @@ static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
>  /* CPU module contains 512MB (2*256MB) DDR3 SDRAM (2*128MB compatible),
>   * so we configure EMIF for 512MB then detect real size of memory.
>   */
> -static const struct am33xx_emif_regs ddr3_regs = {
> +static struct am33xx_emif_regs ddr3_regs = {
>  	.emif_read_latency	= 0x00100007,
>  	.emif_tim1		= 0x0aaad4db,
>  	.emif_tim2		= 0x266b7fda,
>  	.emif_tim3		= 0x501f867f,
>  	.zq_config		= 0x50074be4,
> +	/* MT41K256M8DA */
>  	.sdram_config		= 0x61c05332,
>  	.sdram_config2		= 0x00,
>  	.sdram_ref_ctrl		= 0xc30,
> @@ -87,6 +89,12 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
>  
>  	am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
>  
> +	if (get_ram_size((void *)AM33XX_DRAM_ADDR_SPACE_START, SZ_512M) < SZ_512M) {
> +		/* MT41K128M8DA */
> +		ddr3_regs.sdram_config = 0x61c04ab2;
> +		am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
> +	}
> +
>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>  		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
>  		am33xx_enable_uart0_pin_mux();
> @@ -94,22 +102,16 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
>  		putc_ll('>');
>  	}
>  
> -	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
> +	am335x_barebox_entry(fdt);
>  }
>  
>  ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
>  {
>  	void *fdt;
> -	u32 sdram_size;
>  
>  	fdt = __dtb_z_am335x_myirtech_myd_start;
>  
>  	fdt += get_runtime_offset();
>  
> -	/* Detect 256M/512M module variant */
> -	__raw_writel(SZ_512M, AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
> -	__raw_writel(SZ_256M, AM33XX_DRAM_ADDR_SPACE_START + 0);
> -	sdram_size = __raw_readl(AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
> -
> -	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, sdram_size, fdt);
> +	am335x_barebox_entry(fdt);
>  }
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

