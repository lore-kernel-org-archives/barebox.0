Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgK6o-0006v1-ET
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:54:15 +0000
Date: Wed, 5 Dec 2012 19:54:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205185413.GP10369@pengutronix.de>
References: <1354727739-31360-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354727739-31360-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] net: phy: micrel: fix typo in driver name
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 06:15:39PM +0100, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> 
> This applies to the next branch (for-next/phylib).

Applied, thanks

Sascha

> 
>  drivers/net/phy/micrel.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index 0c6d43e..ed5abf8 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -159,7 +159,7 @@ static struct phy_driver ksphy_driver[] = {
>  }, {
>  	.phy_id		= PHY_ID_KSZ8873MLL,
>  	.phy_id_mask	= 0x00fffff0,
> -	.drv.name	= "Micrel KSZ8873MLL Swithch",
> +	.drv.name	= "Micrel KSZ8873MLL Switch",
>  	.features	= (SUPPORTED_Pause | SUPPORTED_Asym_Pause),
>  	.config_init	= ksz8873mll_config_init,
>  	.config_aneg	= ksz8873mll_config_aneg,
> -- 
> 1.7.10.4
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
