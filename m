Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEbZf-00083T-4G
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 07:21:12 +0000
Date: Mon, 2 Apr 2012 09:21:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402072100.GZ3852@pengutronix.de>
References: <1332582785-17242-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332582785-17242-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM i.MX51 babbage: Remove clock raise from power_init.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Mar 24, 2012 at 01:53:05PM +0400, Alexander Shiyan wrote:
> Because CPU frequency setup called after power initialization,
> this call now is not necessary.

Applied, thanks.

Sascha

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/freescale-mx51-pdk/board.c |    3 ---
>  1 files changed, 0 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
> index 108af93..2ca4339 100644
> --- a/arch/arm/boards/freescale-mx51-pdk/board.c
> +++ b/arch/arm/boards/freescale-mx51-pdk/board.c
> @@ -159,9 +159,6 @@ static void babbage_power_init(void)
>  		val &= ~0x1f;
>  		val |= 0x1a;
>  		mc13892_reg_write(mc13892, MC13892_REG_SW_2, val);
> -		udelay(50);
> -		/* Raise the core frequency to 800MHz */
> -		writel(0x0, MX51_CCM_BASE_ADDR + MX51_CCM_CACRR);
>  	} else {
>  		/* Setup VCC (SW2) to 1.225 */
>  		mc13892_reg_read(mc13892, MC13892_REG_SW_1, &val);
> -- 
> 1.7.3.4
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
