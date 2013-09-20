Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMui3-0000nS-H4
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 07:01:00 +0000
Date: Fri, 20 Sep 2013 09:00:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920070036.GB30088@pengutronix.de>
References: <1379569815-14033-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379569815-14033-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] smc91111: add phy flags support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 19, 2013 at 07:50:14AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
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
> +		struct phy_device *dev = edev->phydev;

Is this the correct patch? It's the same patch you sent earlier with
another commit message as a qemu fixup.

Sascha

> +
> +		dev->speed = SPEED_100;
> +		dev->duplex = DUPLEX_FULL;
> +		dev->autoneg = !AUTONEG_ENABLE;
> +		dev->force = 1;
> +		dev->link = 1;
> +
> +		dev_info(edev->parent, "phy with id 0x%08x detected this might be qemu\n",
> +			dev->phy_id);
> +		dev_info(edev->parent, "force link at 100Mpbs\n");
> +	}
> +
> +	return 0;
>  }
>  
>  static int smc91c111_eth_send(struct eth_device *edev, void *packet,
> -- 
> 1.8.4.rc1
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
