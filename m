Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqfyN-00020Q-Si
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:44:05 +0000
Date: Mon, 16 Jul 2012 09:43:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716074330.GZ30009@pengutronix.de>
References: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
 <1342400699-6753-2-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342400699-6753-2-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 1/5] imx_fec: Allow driver clients to supply MAC address
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 11:04:55AM +1000, Marc Reilly wrote:
> This patch adds a handler to the fec platform data to get MAC address.
> If a handler is not specified the driver uses the existing one.

We already have a generic mechanism for that. See eth_register_ethaddr.
If you pass a MAC address to this function this one will be used instead
of the default one from the driver.

Sascha

> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/net/fec_imx.c |    6 +++++-
>  include/fec.h         |    4 ++++
>  2 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 599a9b4..5084758 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -629,10 +629,14 @@ static int fec_probe(struct device_d *dev)
>  	edev->send = fec_send;
>  	edev->recv = fec_recv;
>  	edev->halt = fec_halt;
> -	edev->get_ethaddr = fec_get_hwaddr;
>  	edev->set_ethaddr = fec_set_hwaddr;
>  	edev->parent = dev;
>  
> +	if (pdata->get_hwaddr)
> +		edev->get_ethaddr = pdata->get_hwaddr;
> +	else
> +		edev->get_ethaddr = fec_get_hwaddr;
> +
>  	fec->regs = dev_request_mem_region(dev, 0);
>  
>  	/* Reset chip. */
> diff --git a/include/fec.h b/include/fec.h
> index f56b023..5072bbf 100644
> --- a/include/fec.h
> +++ b/include/fec.h
> @@ -36,6 +36,8 @@ typedef enum {
>  	RGMII,
>  } xceiver_type;
>  
> +struct eth_device;
> +
>  /*
>   * Define the phy connected externally for FEC drivers
>   * (like MPC52xx and i.MX27)
> @@ -43,6 +45,8 @@ typedef enum {
>  struct fec_platform_data {
>          xceiver_type	xcv_type;
>  	int		phy_addr;
> +
> +	int (*get_hwaddr)(struct eth_device *dev, unsigned char *mac);
>  };
>  
>  #endif /* __INCLUDE_NETWORK_FEC_H */
> -- 
> 1.7.7
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
