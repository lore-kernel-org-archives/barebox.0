Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XU99L-00056W-1c
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:55:35 +0000
Date: Wed, 17 Sep 2014 08:55:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140917065512.GN4992@pengutronix.de>
References: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/4] phy/micrel: disable Asym_Pause support
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 15, 2014 at 02:56:28PM +0200, Christian Hemp wrote:
> From: Jan Weitzel <j.weitzel@phytec.de>
> 
> With SUPPORTED_Asym_Pause enabled we need to hotplug the ethernet cable.
> So disable it like done with PHY_ID_KSZ9021.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied all, thanks

Sascha

> ---
>  drivers/net/phy/micrel.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index 8aea653..88c64e5 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -254,11 +254,11 @@ static struct phy_driver ksphy_driver[] = {
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
>  }, {
> +	/* I saw the same issue like PHY_ID_KSZ9021 for Asym_Pause */
>  	.phy_id		= PHY_ID_KSZ9031,
>  	.phy_id_mask	= 0x00fffff0,
>  	.drv.name	= "Micrel KSZ9031 Gigabit PHY",
> -	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause
> -				| SUPPORTED_Asym_Pause),
> +	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
>  	.config_init	= kszphy_config_init,
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
> -- 
> 1.7.0.4
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
