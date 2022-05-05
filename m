Delivery-date: Thu, 05 May 2022 12:01:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmYIP-002ajS-GY
	for lore@lore.pengutronix.de; Thu, 05 May 2022 12:01:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmYIO-0001EK-CL
	for lore@pengutronix.de; Thu, 05 May 2022 12:01:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VYcjWONhE3WpFAG91aX/Cv/PI2/ViV31w/1oKjAK3yg=; b=VQ5d8m+GXB7V/hPr/mlA/ktljz
	bdAgB3guGoRFsJwjFz0H+N9k9/DpQeCoeDTPUV1+GBwtYHxI/FmYWGMTfx+EBCoVFb0GSMZ7a09ws
	VOJ+pC6dYS/SQnsI2TsmH8yFdEDt0PRkSiTSc+Gb2sjiDxOnQLguZN9nvE9d8ZLwh82ILOdzEDKAA
	qCMV8B5PiD9hsc5VfFejn4QZfsankhw1nvqkZI9YnBxz2xbVdyv9rZfku08QEm1bln+/lm6GxnYJm
	QNKyhEeEngFrpFyGXKB3jDCoR0S0PxBvhz6DkprFwdQH3uoIwCK+QDOzc795mTbsbkldJ0Ae6Yfww
	Psaf/xeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmYGm-00F9y0-Fp; Thu, 05 May 2022 09:59:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmYGh-00F9wb-AT
 for barebox@lists.infradead.org; Thu, 05 May 2022 09:59:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmYGf-0000lL-Ul; Thu, 05 May 2022 11:59:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmYGf-0001bf-Lw; Thu, 05 May 2022 11:59:29 +0200
Date: Thu, 5 May 2022 11:59:29 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220505095929.GO4012@pengutronix.de>
References: <20220505094254.23759-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505094254.23759-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:56:30 up 35 days, 22:26, 82 users,  load average: 0.18, 0.38, 0.43
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_025931_393631_B74FD738 
X-CRM114-Status: GOOD (  26.75  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC] ARM: OMAP: debug_ll: Add support for PBL console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 05, 2022 at 12:42:54PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/myirtech-x335x/lowlevel.c  | 10 ++++------
>  arch/arm/mach-omap/include/mach/debug_ll.h | 20 ++++++++++++++------
>  2 files changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
> index 1a883da203..f9f3ec4ddf 100644
> --- a/arch/arm/boards/myirtech-x335x/lowlevel.c
> +++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
> @@ -95,12 +95,10 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
>  		am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
>  	}
>  
> -	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> -		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
> -		am33xx_enable_uart0_pin_mux();
> -		omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
> -		putc_ll('>');
> -	}
> +	am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
> +	am33xx_enable_uart0_pin_mux();
> +	omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
> +	pr_debug("MYIR MYC-AM335X\n");
>  
>  	am335x_barebox_entry(fdt);
>  }
> diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
> index 25ddd485be..018171d112 100644
> --- a/arch/arm/mach-omap/include/mach/debug_ll.h
> +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
> @@ -17,6 +17,7 @@
>  #ifndef __MACH_DEBUG_LL_H__
>  #define   __MACH_DEBUG_LL_H__
>  
> +#include <console.h>
>  #include <io.h>
>  #include <mach/omap3-silicon.h>
>  #include <mach/omap4-silicon.h>
> @@ -34,6 +35,16 @@
>  #define MCR		(4 << 2)
>  #define MDR		(8 << 2)
>  
> +static inline void omap_uart_putc(void *base, int c)
> +{
> +	/* Wait until there is space in the FIFO */
> +	while ((readb(base + LSR) & LSR_THRE) == 0);
> +	/* Send the character */
> +	writeb(c, base + THR);
> +	/* Wait to make sure it hits the line, in case we die too soon. */
> +	while ((readb(base + LSR) & LSR_THRE) == 0);
> +}
> +
>  static inline void omap_uart_lowlevel_init(void __iomem *base)
>  {
>  	writeb(0x00, base + LCR);
> @@ -46,6 +57,8 @@ static inline void omap_uart_lowlevel_init(void __iomem *base)
>  	writeb(0x03, base + MCR);
>  	writeb(0x07, base + FCR);
>  	writeb(0x00, base + MDR);
> +
> +	pbl_set_putc(omap_uart_putc, base);

This should be called by the board code. pbl_set_putc() will only work
when we a running in a full C environment, i.e. we are running at the
address we are linked at. omap_uart_lowlevel_init() doesn't have this
constraint and could be used earlier.

Otherwise looks good.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

