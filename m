Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyQ9-0003aY-Ob
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:35:58 +0000
Date: Mon, 4 Jul 2016 09:35:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704073535.GF20657@pengutronix.de>
References: <1467435587-20533-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467435587-20533-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v2] net: smc911x: Add parsing devicetree options
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jul 02, 2016 at 07:59:47AM +0300, Alexander Shiyan wrote:
> This patch adds parsing basic devicetree options for the smc911x driver:
> reg-io-width, reg-shift and smsc,force-(in/ex)ternal-phy, which makes
> driver usable for most DTS-based boards.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/net/smc911x.c               | 17 +++++++++++++++--
>  include/platform_data/eth-smc911x.h |  2 +-
>  2 files changed, 16 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index fe9d1df..45175bb 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -38,7 +38,7 @@ struct smc911x_priv {
>  	struct mii_bus miibus;
>  	void __iomem *base;
>  
> -	int shift;
> +	u32 shift;
>  	int generation;
>  	unsigned int flags;
>  	unsigned int idrev;
> @@ -516,6 +516,19 @@ static int smc911x_probe(struct device_d *dev)
>  		priv->shift = pdata->shift;
>  		priv->flags = pdata->flags;
>  		priv->phy_mask = pdata->phy_mask;
> +	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
> +		ret = of_property_read_u32(dev->device_node, "reg-io-width", &val);
> +		if (ret)
> +			return ret;
> +		is_32bit = (val == 4);
> +
> +		of_property_read_u32(dev->device_node, "reg-shift", &priv->shift);
> +
> +		if (of_property_read_bool(dev->device_node, "smsc,force-internal-phy"))
> +			priv->flags |= SMC911X_FORCE_INTERNAL_PHY;
> +
> +		if (of_property_read_bool(dev->device_node, "smsc,force-external-phy"))
> +			priv->flags |= SMC911X_FORCE_EXTERNAL_PHY;
>  	}
>  
>  	if (is_32bit) {
> @@ -562,7 +575,7 @@ static int smc911x_probe(struct device_d *dev)
>  	if (val != 0x87654321) {
>  		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
>  			priv->base, val);
> -		if (((val >> 16) & 0xFFFF) == (val & 0xFFFF)) {
> +		if ((((val >> 16) & 0xFFFF) == (val & 0xFFFF)) && is_32bit) {
>  			/*
>  			 * This may mean the chip is set
>  			 * for 32 bit while the bus is reading 16 bit
> diff --git a/include/platform_data/eth-smc911x.h b/include/platform_data/eth-smc911x.h
> index 4a802ee..c97a296 100644
> --- a/include/platform_data/eth-smc911x.h
> +++ b/include/platform_data/eth-smc911x.h
> @@ -12,7 +12,7 @@
>   * Pass pointer to this structure as part of device_d -> platform_data
>   */
>  struct smc911x_plat {
> -	int shift;
> +	u32 shift;
>  	unsigned int flags;
>  	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
>  				   e.g. ~(1 << 5) to use PHY addr 5 */
> -- 
> 2.4.9
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
