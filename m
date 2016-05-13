Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b1A2X-0001nC-1r
 for barebox@lists.infradead.org; Fri, 13 May 2016 10:09:50 +0000
Date: Fri, 13 May 2016 12:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160513100927.GQ19714@pengutronix.de>
References: <1461742862-27385-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461742862-27385-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] net: phy: micrel: KSZ9081/KSZ8091: Disable broadcast mode
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 09:41:02AM +0200, Teresa Remmet wrote:
> KSZ9081 only supports two phy ids 0x0 and 0x3. 0x0 is also
> used as broadcast address. Disable broadcast, so that id 0x0
> can be used as unique address on a shared bus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/net/phy/micrel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks. Sorry, this patch slipped through the cracks somehow.

Sascha

> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index e8a566d..9a30cb7 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -357,7 +357,7 @@ static struct phy_driver ksphy_driver[] = {
>  	.phy_id_mask	= MICREL_PHY_ID_MASK,
>  	.drv.name	= "Micrel KSZ8081/91",
>  	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
> -	.config_init	= kszphy_config_init,
> +	.config_init	= ksz8021_config_init,
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= genphy_read_status,
>  }, {
> -- 
> 1.9.1
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
