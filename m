Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emaf6-0000l1-3p
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 07:42:30 +0000
Date: Fri, 16 Feb 2018 08:42:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180216074216.i47f5pswnhiayowe@pengutronix.de>
References: <20180213214816.28520-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180213214816.28520-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] net: cpsw: fix probe with fixed-link
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Tue, Feb 13, 2018 at 10:48:16PM +0100, Andreas Schmidt wrote:
> If cpsw slave is set to fixed-link cpsw probe still try to probe and use
> a phy. This patch fix cpsw probe in case of fixed-link.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
>  drivers/net/cpsw.c | 41 +++++++++++++++++++++++++++--------------
>  1 file changed, 27 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index d11ca33f7..37e480248 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -184,6 +184,7 @@ struct cpsw_slave {
>  	struct eth_device		edev;
>  	struct cpsw_priv		*cpsw;
>  	struct device_d			dev;
> +	int				fixed_link;
>  };
>  
>  struct cpdma_desc {
> @@ -913,18 +914,20 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
>  	struct eth_device	*edev = &slave->edev;
>  	struct device_d		*dev = &slave->dev;
>  	int ret;
> -	struct phy_device *phy;
> +	struct phy_device *phy = NULL;
>  
> -	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
> -	if (IS_ERR(phy)) {
> -		ret = PTR_ERR(phy);
> -		goto err_out;
> -	}
> +	if (!slave->fixed_link) {
> +		phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
> +		if (IS_ERR(phy)) {
> +			ret = PTR_ERR(phy);
> +			goto err_out;
> +		}

Calling mdiobus_scan() here is not only wrong for a fixed phy, it is
wrong for a regular mdiobus phy aswell. I just sent out a patch which
just removes the call to mdiobus_scan(). Tested on a beaglebone which
has a real phy, it should work for you aswell.

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
