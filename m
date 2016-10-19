Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwnnK-00059X-3S
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 10:08:23 +0000
Date: Wed, 19 Oct 2016 12:07:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161019100758.gkn3lijfpuxqpdes@pengutronix.de>
References: <1476793443-27586-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1476793443-27586-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] arm: Baltos: setup MPU PLL to run at 600MHz
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Tue, Oct 18, 2016 at 02:24:03PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/lowlevel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
> index 8bce91a..87f2a74 100644
> --- a/arch/arm/boards/vscom-baltos/lowlevel.c
> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
> @@ -93,7 +93,7 @@ static noinline int baltos_sram_init(void)
>  	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
>  
>  	/* Setup the PLLs and the clocks for the peripherals */
> -	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
> +	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
>  	am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
>  	sdram_size = get_ram_size((void *)0x80000000, (1024 << 20));
>  	if (sdram_size == SZ_256M)
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
