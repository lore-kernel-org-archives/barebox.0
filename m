Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbi4x-0003Og-In
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:47:24 +0000
Date: Mon, 22 Aug 2016 07:47:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822054701.GV20657@pengutronix.de>
References: <1471519239-14295-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471519239-14295-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: phy: of_phy_register_fixed_link(): drop redundant
 initialization
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 18, 2016 at 02:20:39PM +0300, Antony Pavlov wrote:
> The phy_device_create() function makes all necessary phydev initialization
> so we can drop phydev->pause and phydev->link initialization in
> the of_phy_register_fixed_link() function.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/phy/phy.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 13b8324..7132516 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -311,8 +311,6 @@ static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
>  	phydev->registered = 1;
>  	phydev->speed = 1000;
>  	phydev->duplex = 1;
> -	phydev->pause = phydev->asym_pause = 0;
> -	phydev->link = 1;
>  
>  	return phydev;
>  }
> -- 
> 2.8.1
> 
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
