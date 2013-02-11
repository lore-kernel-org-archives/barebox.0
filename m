Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4q9Y-0007kV-PS
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:58:25 +0000
Date: Mon, 11 Feb 2013 10:58:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211095823.GY1906@pengutronix.de>
References: <1360313750-21146-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360313750-21146-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] phy/micrel: KSZ9021 diasable Asym Pause support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 08, 2013 at 09:55:50AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Due to a hw bug do not enable teh Asym_Pause.
> Otherwise if you ser the bit 11 in 4h you will have to unplug
> and replug the cable to make the phy work.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/phy/micrel.c |    8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index ed5abf8..c0bcdd1 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -148,11 +148,15 @@ static struct phy_driver ksphy_driver[] = {
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
>  }, {
> +	/*
> +	 * Due to a hw bug do not enable the Asym_Pause.
> +	 * Otherwise if you set the bit 11 in 4h you will have to unplug
> +	 * and replug the cable to make the phy work.
> +	 */
>  	.phy_id		= PHY_ID_KSZ9021,
>  	.phy_id_mask	= 0x000ffffe,
>  	.drv.name	= "Micrel KSZ9021 Gigabit PHY",
> -	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause
> -				| SUPPORTED_Asym_Pause),
> +	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
>  	.config_init	= kszphy_config_init,
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
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
