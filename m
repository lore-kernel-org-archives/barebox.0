Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtA2x-0002bR-2S
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 08:00:56 +0000
Date: Mon, 2 Nov 2015 09:00:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102080032.GJ25308@pengutronix.de>
References: <1446296872-1592-1-git-send-email-anton.bondarenko.sama@gmail.com>
 <1446296872-1592-2-git-send-email-anton.bondarenko.sama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446296872-1592-2-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: Re: [PATCH] net: phy: wait for link OK after successfull
 autonegotiation
To: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 31, 2015 at 02:07:52PM +0100, Anton Bondarenko wrote:
> It may take some time for PHY to indicate link OK status after
> autonegotiation completed. This change addresses this case
> and prevent network commands fails due to the delay.
> 
> Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
> ---
>  drivers/net/phy/phy.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 2b3c5e2..73569f3 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -502,13 +502,17 @@ int phy_wait_aneg_done(struct phy_device *phydev)
>  		return 0;
>  
>  	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
> -		if (phy_aneg_done(phydev) > 0) {
> -			phydev->link = 1;
> +		if (phy_aneg_done(phydev) > 0)
> +			break;
> +	}
> +
> +	genphy_update_link(phydev);
> +	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
> +		if (phydev->link == 1)
>  			return 0;
> -		}
> +		genphy_update_link(phydev);
>  	}

The additional call to genphy_update_link() before the loop shouldn't be
necessary, right? Or to be 100% correct you could use a do {} while loop
to make sure to always call genphy_update_link() at least once.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
