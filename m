Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCi0j-0003mL-Em
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 06:39:42 +0000
Date: Tue, 14 Jun 2016 08:39:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160614063919.GP31666@pengutronix.de>
References: <20160504074331.GM19714@pengutronix.de>
 <1465838955-24515-1-git-send-email-guille.rodriguez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1465838955-24515-1-git-send-email-guille.rodriguez@gmail.com>
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
Subject: Re: [PATCH] Fix genphy_restart_aneg() for Micrel's ksz9031.
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org, Philipp Zabel <pza@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Guillermo,

On Mon, Jun 13, 2016 at 07:29:15PM +0200, Guillermo Rodriguez Garcia wrote:
> From: grodriguez <guille.rodriguez@gmail.com>
> 
> Commit da89ee8f2e04 ("Center FLP timing at 16ms") breaks
> genphy_restart_aneg() for Micrel's ksz9031. According to the
> datasheet, the ksz9031 requires a wait of 1ms after clearing
> the PDOWN bit and before read/write access to any PHY registers.
> ---
>  drivers/net/phy/phy.c |    9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)

I must say that I am not overly happy with this patch as it leaks in phy
specific stuff into a somewhat generic function. Anyway, I see the need
for this patch and so I applied it.

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 73176fb..ed69d9b 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -561,7 +561,7 @@ int phy_wait_aneg_done(struct phy_device *phydev)
>   */
>  int genphy_restart_aneg(struct phy_device *phydev)
>  {
> -	int ctl;
> +	int ctl, pdown;
>  
>  	ctl = phy_read(phydev, MII_BMCR);
>  
> @@ -574,6 +574,7 @@ int genphy_restart_aneg(struct phy_device *phydev)
>  	ctl &= ~(BMCR_ISOLATE);
>  
>  	/* Clear powerdown bit which eventually is set on some phys */
> +	pdown = ctl & BMCR_PDOWN;
>  	ctl &= ~BMCR_PDOWN;
>  
>  	ctl = phy_write(phydev, MII_BMCR, ctl);
> @@ -581,6 +582,12 @@ int genphy_restart_aneg(struct phy_device *phydev)
>  	if (ctl < 0)
>  		return ctl;
>  
> +	/* Micrel's ksz9031 (and perhaps others?): Changing the PDOWN bit
> +	 * from '1' to '0' generates an internal reset. Must wait a minimum
> +	 * of 1ms before read/write access to the PHY registers. */
> +	if (pdown)
> +		mdelay(1);
> +
>  	return 0;
>  }
>  
> -- 
> 1.7.9.5
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
