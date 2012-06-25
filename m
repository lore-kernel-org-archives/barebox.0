Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj3mW-0007G5-B3
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 07:32:25 +0000
Date: Mon, 25 Jun 2012 09:32:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625073217.GC24458@pengutronix.de>
References: <1339616588-16636-1-git-send-email-antonynpavlov@gmail.com>
 <1339616588-16636-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339616588-16636-3-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] rzx50: add poweroff support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

This patch introduces some new build warnings in rx50_defconfig. Could you fix these?

arch/mips/mach-xburst/reset-jz4750.c: In function 'poweroff':
arch/mips/mach-xburst/reset-jz4750.c:68: warning: passing argument 1 of '__raw_readl' makes pointer from integer without a cast
arch/mips/mach-xburst/reset-jz4750.c:71: warning: passing argument 2 of '__raw_writel' makes pointer from integer without a cast
arch/mips/mach-xburst/reset-jz4750.c:73: warning: 'noreturn' function does return

Thanks
 Sascha

On Wed, Jun 13, 2012 at 11:43:08PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/mach-xburst/Kconfig                     |    1 +
>  arch/mips/mach-xburst/include/mach/jz4750d_regs.h |   31 +++++++++++++++++++++
>  arch/mips/mach-xburst/reset-jz4750.c              |   28 +++++++++++++++++++
>  3 files changed, 60 insertions(+)
> 
> diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
> index 60e411c..c72b741 100644
> --- a/arch/mips/mach-xburst/Kconfig
> +++ b/arch/mips/mach-xburst/Kconfig
> @@ -12,6 +12,7 @@ choice
>  
>  config BOARD_RZX50
>  	bool "Ritmix RZX-50"
> +	select HAS_POWEROFF
>  	select CPU_JZ4755
>  
>  endchoice
> diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> index 717493b..eafdd2f 100644
> --- a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> +++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> @@ -15,6 +15,7 @@
>  
>  #define TCU_BASE        0xb0002000
>  #define WDT_BASE        0xb0002000
> +#define RTC_BASE        0xb0003000
>  #define UART1_BASE      0xb0031000
>  
>  /*************************************************************************
> @@ -77,4 +78,34 @@
>  
>  #define WDT_TCER_TCEN		(1 << 0)
>  
> +/*************************************************************************
> + * RTC
> + *************************************************************************/
> +#define RTC_RCR		(RTC_BASE + 0x00) /* RTC Control Register */
> +#define RTC_RSR		(RTC_BASE + 0x04) /* RTC Second Register */
> +#define RTC_RSAR	(RTC_BASE + 0x08) /* RTC Second Alarm Register */
> +#define RTC_RGR		(RTC_BASE + 0x0c) /* RTC Regulator Register */
> +
> +#define RTC_HCR		(RTC_BASE + 0x20) /* Hibernate Control Register */
> +#define RTC_HWFCR	(RTC_BASE + 0x24) /* Hibernate Wakeup Filter Counter Reg */
> +#define RTC_HRCR	(RTC_BASE + 0x28) /* Hibernate Reset Counter Register */
> +#define RTC_HWCR	(RTC_BASE + 0x2c) /* Hibernate Wakeup Control Register */
> +#define RTC_HWRSR	(RTC_BASE + 0x30) /* Hibernate Wakeup Status Register */
> +#define RTC_HSPR	(RTC_BASE + 0x34) /* Hibernate Scratch Pattern Register */
> +
> +/* RTC Control Register */
> +#define RTC_RCR_WRDY_BIT 7
> +#define RTC_RCR_WRDY	(1 << 7)  /* Write Ready Flag */
> +#define RTC_RCR_1HZ_BIT	6
> +#define RTC_RCR_1HZ	(1 << RTC_RCR_1HZ_BIT)  /* 1Hz Flag */
> +#define RTC_RCR_1HZIE	(1 << 5)  /* 1Hz Interrupt Enable */
> +#define RTC_RCR_AF_BIT	4
> +#define RTC_RCR_AF	(1 << RTC_RCR_AF_BIT)  /* Alarm Flag */
> +#define RTC_RCR_AIE	(1 << 3)  /* Alarm Interrupt Enable */
> +#define RTC_RCR_AE	(1 << 2)  /* Alarm Enable */
> +#define RTC_RCR_RTCE	(1 << 0)  /* RTC Enable */
> +
> +/* Hibernate Control Register */
> +#define RTC_HCR_PD		(1 << 0)  /* Power Down */
> +
>  #endif /* __JZ4750D_REGS_H__ */
> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
> index 3540ca9..4bda56c 100644
> --- a/arch/mips/mach-xburst/reset-jz4750.c
> +++ b/arch/mips/mach-xburst/reset-jz4750.c
> @@ -29,6 +29,19 @@
>  
>  #define JZ_EXTAL 24000000
>  
> +static void jz4750d_halt(void)
> +{
> +	while (1) {
> +		__asm__(".set push;\n"
> +			".set mips3;\n"
> +			"wait;\n"
> +			".set pop;\n"
> +		);
> +	}
> +
> +	unreachable();
> +}
> +
>  void __noreturn reset_cpu(ulong addr)
>  {
>  	__raw_writew(WDT_TCSR_PRESCALE4 | WDT_TCSR_EXT_EN, (u16 *)WDT_TCSR);
> @@ -44,3 +57,18 @@ void __noreturn reset_cpu(ulong addr)
>  	unreachable();
>  }
>  EXPORT_SYMBOL(reset_cpu);
> +
> +void __noreturn poweroff()
> +{
> +	u32 ctrl;
> +
> +	shutdown_barebox();
> +
> +	do {
> +		ctrl = readl(RTC_RCR);
> +	} while (!(ctrl & RTC_RCR_WRDY));
> +
> +	writel(RTC_HCR_PD, RTC_HCR);
> +	jz4750d_halt();
> +}
> +EXPORT_SYMBOL(poweroff);
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
