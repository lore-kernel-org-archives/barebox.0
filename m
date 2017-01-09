Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQZU2-0003R8-Pg
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 12:55:33 +0000
Date: Mon, 9 Jan 2017 13:55:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109125508.vtigfv56wnc5ksa6@pengutronix.de>
References: <1481293035-28916-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1481293035-28916-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH 1/2] arm: am33xx: add reset duration control register
 address definition
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2016 at 03:17:14PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> PRM_RSTTIME register provides settings for global and power domain
> reset durations.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---

Applied, thanks

Sascha

>  arch/arm/mach-omap/include/mach/am33xx-silicon.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> index e17e609..10595d5 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
> @@ -71,6 +71,7 @@
>  
>  #define AM33XX_PRM_RSTCTRL		(AM33XX_PRM_BASE + 0x0f00)
>  #define AM33XX_PRM_RSTCTRL_RESET	0x1
> +#define AM33XX_PRM_RSTTIME		(AM33XX_PRM_BASE + 0x0f04)
>  #define AM33XX_PRM_RSTST		(AM33XX_PRM_BASE + 0x0f08)
>  
>  /* CTRL */
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
