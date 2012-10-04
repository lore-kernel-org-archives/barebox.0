Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJnEU-0000jf-VX
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 15:21:03 +0000
Date: Thu, 4 Oct 2012 17:21:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121004152101.GK1322@pengutronix.de>
References: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] net/designware: update version display to print user
 ID and Synosys ID
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 04, 2012 at 09:00:25AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> So we can check it with the kernel one
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied this series.

Thanks
 Sascha

> ---
>  drivers/net/designware.c |   11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index a9a04e3..6a36f14 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -373,6 +373,15 @@ static int dwc_ether_set_ethaddr(struct eth_device *dev, u8 adr[6])
>  	return 0;
>  }
>  
> +static void dwc_version(struct device_d *dev, u32 hwid)
> +{
> +	u32 uid = ((hwid & 0x0000ff00) >> 8);
> +	u32 synid = (hwid & 0x000000ff);
> +
> +	dev_info(dev, "user ID: 0x%x, Synopsys ID: 0x%x\n",
> +		uid, synid);
> +}
> +
>  static int dwc_ether_probe(struct device_d *dev)
>  {
>  	struct dw_eth_dev *priv;
> @@ -390,7 +399,7 @@ static int dwc_ether_probe(struct device_d *dev)
>  
>  	base = dev_request_mem_region(dev, 0);
>  	priv->mac_regs_p = base;
> -	dev_info(dev, "MAC version %08x\n", readl(&priv->mac_regs_p->version));
> +	dwc_version(dev, readl(&priv->mac_regs_p->version));
>  	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
>  	priv->tx_mac_descrtable = dma_alloc_coherent(
>  		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr));
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
