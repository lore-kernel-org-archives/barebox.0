Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMuYV-0000f4-7d
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 06:51:07 +0000
Date: Fri, 20 Sep 2013 08:50:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920065045.GZ30088@pengutronix.de>
References: <1379590873-32588-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379590873-32588-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] smc91111: add fixup for qemu phy support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 19, 2013 at 01:41:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as today qemu does not support phy, it will return always 0x0 to any read
> on the mii bus. So the phy_id is 0 and the link is donw.
> 
> To have the norwork running on versatilpb & other qenu board for the link up
> at 100Mbps.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/smc91111.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
> index 48183dd..8c7a343 100644
> --- a/drivers/net/smc91111.c
> +++ b/drivers/net/smc91111.c
> @@ -886,6 +886,7 @@ static void smc91c111_enable(struct eth_device *edev)
>  static int smc91c111_eth_open(struct eth_device *edev)
>  {
>  	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
> +	int ret;
>  
>  	/* Configure the Receive/Phy Control register */
>  	SMC_SELECT_BANK(priv, 0);
> @@ -893,8 +894,27 @@ static int smc91c111_eth_open(struct eth_device *edev)
>  
>  	smc91c111_enable(edev);
>  
> -	return phy_device_connect(edev, &priv->miibus, 0, NULL,
> +	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
>  				 0, PHY_INTERFACE_MODE_NA);
> +
> +	if (ret)
> +		return ret;
> +
> +	if (edev->phydev->phy_id == 0x00000000) {

Can we make this test more explicit by adding a flag to platform_data?
Normally reading 0x0 from a phy means something is really wrong. Just
assuming everything is fine since it might be qemu is imo not good,

> +
> +		dev_info(edev->parent, "phy with id 0x%08x detected this might be qemu\n",
> +			dev->phy_id);

even if there's a warning message.

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
