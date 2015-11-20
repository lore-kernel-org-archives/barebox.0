Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zzg8A-0006um-7S
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 07:29:15 +0000
Date: Fri, 20 Nov 2015 08:28:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151120072849.GF11966@pengutronix.de>
References: <1447937931-15724-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447937931-15724-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: [PATCH] net: eth: Remove ethaddr_param
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 19, 2015 at 01:58:51PM +0100, Jan Remmet wrote:
> commit d00db554 introduce ethaddr_param. But it is not initialized, so
> devinfo fails to show the mac. Remove it and use edev->ethaddr.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>

Applied to master. Sorry, I should have taken a closer look before
applying this patch

Sascha


> ---
>  include/net.h | 1 -
>  net/eth.c     | 4 ++--
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/include/net.h b/include/net.h
> index d7a4751..2a37a43 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -60,7 +60,6 @@ struct eth_device {
>  	IPaddr_t serverip;
>  	IPaddr_t netmask;
>  	IPaddr_t gateway;
> -	char ethaddr_param[6];
>  	char ethaddr[6];
>  };
>  
> diff --git a/net/eth.c b/net/eth.c
> index 8bfb6b1..fb3f22f 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -285,7 +285,7 @@ static int eth_param_set_ethaddr(struct param_d *param, void *priv)
>  {
>  	struct eth_device *edev = priv;
>  
> -	return eth_set_ethaddr(edev, edev->ethaddr_param);
> +	return eth_set_ethaddr(edev, edev->ethaddr);
>  }
>  
>  #ifdef CONFIG_OFTREE
> @@ -383,7 +383,7 @@ int eth_register(struct eth_device *edev)
>  	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
>  	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
>  	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
> -			edev->ethaddr_param, edev);
> +			edev->ethaddr, edev);
>  
>  	if (edev->init)
>  		edev->init(edev);
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
