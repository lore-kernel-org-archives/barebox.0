Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqap9-0001W9-BX
 for barebox@lists.infradead.org; Tue, 27 Feb 2018 08:41:25 +0000
Date: Tue, 27 Feb 2018 09:41:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180227084111.2toplgwa42k5d55y@pengutronix.de>
References: <20180216074216.i47f5pswnhiayowe@pengutronix.de>
 <20180222221627.12750-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180222221627.12750-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH v2] net: cpsw: fix probe with fixed-link
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 22, 2018 at 11:16:27PM +0100, Andreas Schmidt wrote:
> While cpsw is probe dt, it accepts only slaves nodes with "phy_id" property.
> In case of fixed-link there are no "phy_id" property and probe would be failed.
> This patch avoid the failure due to missing "phy_id" in case of fixed-link.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
> 
> Changes since v1:
>   - rework after "[PATCH] net: cpsw: remove unnecessary mdiobus_scan()" patch was committed.
> 
> ---
>  drivers/net/cpsw.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 928b97774..3d3939cfa 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -1089,11 +1089,13 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
>  
>  		if (i < priv->num_slaves && !strncmp(child->name, "slave", 5)) {
>  			struct cpsw_slave *slave = &priv->slaves[i];
> -			uint32_t phy_id[2];
> +			uint32_t phy_id[2] = {-1, -1};
>  
> -			ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
> -			if (ret)
> -				return ret;
> +			if (!of_find_node_by_name(child, "fixed-link")) {
> +				ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
> +				if (ret)
> +					return ret;
> +			}
>  
>  			slave->dev.device_node = child;
>  			slave->phy_id = phy_id[1];
> -- 
> 2.14.1
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
