Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNepa-0001GQ-43
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 07:11:18 +0000
Date: Mon, 15 Oct 2012 09:11:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015071116.GJ27665@pengutronix.de>
References: <1350248716-19965-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350248716-19965-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] designware: set parent for eth_device and miibus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 14, 2012 at 11:05:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/designware.c |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index bf71d15..63b199f 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -419,6 +419,7 @@ static int dwc_ether_probe(struct device_d *dev)
>  	miibus = &priv->miibus;
>  	edev->priv = priv;
>  
> +	edev->parent = dev;
>  	edev->init = dwc_ether_init;
>  	edev->open = dwc_ether_open;
>  	edev->send = dwc_ether_send;
> @@ -429,6 +430,7 @@ static int dwc_ether_probe(struct device_d *dev)
>  
>  	priv->phy_addr = pdata->phy_addr;
>  	priv->interface = pdata->interface;
> +	miibus->parent = dev;
>  	miibus->read = dwc_ether_mii_read;
>  	miibus->write = dwc_ether_mii_write;
>  	miibus->priv = priv;
> -- 
> 1.7.10.4
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
