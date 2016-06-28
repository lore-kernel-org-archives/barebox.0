Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHmcv-0007SG-LP
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 06:36:06 +0000
Date: Tue, 28 Jun 2016 08:35:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160628063543.GI20657@pengutronix.de>
References: <1467023685-4820-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467023685-4820-1-git-send-email-yegorslists@googlemail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] MIPS: ath79: pbl: add pbl_ar9331_wmac_enable macro
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org, linux@rempel-privat.de

On Mon, Jun 27, 2016 at 12:34:43PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> AR9331's WMAC module requires triple WMAC reset as also working RTC
> subsystem.
> 
> The code is taken as is from upstream U-Boot repository.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h | 14 ++++++
>  arch/mips/mach-ath79/include/mach/pbl_macros.h  | 63 +++++++++++++++++++++++++
>  2 files changed, 77 insertions(+)
> 
> diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> index 4cbe94a..de96c56 100644
> --- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> +++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> @@ -31,11 +31,25 @@
>  #define AR71XX_PLL_SIZE		0x100
>  #define AR71XX_RESET_BASE	(AR71XX_APB_BASE + 0x00060000)
>  #define AR71XX_RESET_SIZE	0x100
> +#define AR71XX_RTC_BASE		(AR71XX_APB_BASE + 0x00107000)
> +#define AR71XX_RTC_SIZE		0x100
>  
>  #define AR933X_UART_BASE	(AR71XX_APB_BASE + 0x00020000)
>  #define AR933X_UART_SIZE	0x14
>  
>  /*
> + * RTC block
> + */
> +#define AR933X_RTC_REG_RESET		0x40
> +#define AR933X_RTC_REG_STATUS		0x44
> +#define AR933X_RTC_REG_DERIVED		0x48
> +#define AR933X_RTC_REG_FORCE_WAKE	0x4c
> +#define AR933X_RTC_REG_INT_CAUSE	0x50
> +#define AR933X_RTC_REG_CAUSE_CLR	0x50
> +#define AR933X_RTC_REG_INT_ENABLE	0x54
> +#define AR933X_RTC_REG_INT_MASKE	0x58
> +
> +/*
>   * DDR_CTRL block
>   */
>  #define AR933X_DDR_CONFIG		0x00
> diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
> index 8f4d09a..680fcbb 100644
> --- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
> +++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
> @@ -274,4 +274,67 @@ normal_path:
>  	.set	pop
>  .endm
>  
> +.macro	pbl_ar9331_wmac_enable
> +	.set push
> +	.set noreorder
> +
> +	/* These three WLAN_RESET will avoid original issue */
> +	li      t3, 0x03
> +1:
> +	li      t0, CKSEG1ADDR(AR71XX_RESET_BASE)
> +	lw      t1, AR933X_RESET_REG_RESET_MODULE(t0)
> +	ori     t1, t1, 0x0800
> +	sw      t1, AR933X_RESET_REG_RESET_MODULE(t0)
> +	nop
> +	lw      t1, AR933X_RESET_REG_RESET_MODULE(t0)
> +	li      t2, 0xfffff7ff
> +	and     t1, t1, t2
> +	sw      t1, AR933X_RESET_REG_RESET_MODULE(t0)
> +	nop
> +	addi    t3, t3, -1
> +	bnez    t3, 1b
> +	nop
> +
> +	li      t2, 0x20
> +2:
> +	beqz    t2, 1b
> +	nop
> +	addi    t2, t2, -1
> +	lw      t5, AR933X_RESET_REG_BOOTSTRAP(t0)
> +	andi    t1, t5, 0x10
> +	bnez    t1, 2b
> +	nop
> +
> +	li      t1, 0x02110E
> +	sw      t1, AR933X_RESET_REG_BOOTSTRAP(t0)
> +	nop
> +
> +	/* RTC Force Wake */
> +	li      t0, CKSEG1ADDR(AR71XX_RTC_BASE)
> +	li      t1, 0x03
> +	sw      t1, AR933X_RTC_REG_FORCE_WAKE(t0)
> +	nop
> +	nop
> +
> +	/* RTC Reset */
> +	li      t1, 0x00
> +	sw      t1, AR933X_RTC_REG_RESET(t0)
> +	nop
> +	nop
> +
> +	li      t1, 0x01
> +	sw      t1, AR933X_RTC_REG_RESET(t0)
> +	nop
> +	nop
> +
> +	/* Wait for RTC in on state */
> +1:
> +	lw      t1, AR933X_RTC_REG_STATUS(t0)
> +	andi    t1, t1, 0x02
> +	beqz    t1, 1b
> +	nop
> +
> +	.set	pop
> +.endm
> +
>  #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
> -- 
> 2.1.4
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
