Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nJC-0000t2-LB
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:19:16 +0000
Date: Thu, 7 Mar 2019 08:19:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190307071908.bm5tliu3e2dlmg6u@pengutronix.de>
References: <20190305094515.25632-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190305094515.25632-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] PCI: dwc: tune down link up messages
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2019 at 10:45:15AM +0100, Lucas Stach wrote:
> This function may be called repeatedly while establishing the link,
> so printing a message each time a working link is found can add quite
> a bit of noise. Tune those messages down to the debug level.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/pci/pcie-designware.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
> index aaea316e9095..c6d19559f437 100644
> --- a/drivers/pci/pcie-designware.c
> +++ b/drivers/pci/pcie-designware.c
> @@ -195,7 +195,7 @@ int dw_pcie_wait_for_link(struct dw_pcie *pci)
>  	/* Check if the link is up or not */
>  	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
>  		if (dw_pcie_link_up(pci)) {
> -			dev_info(pci->dev, "Link up\n");
> +			dev_dbg(pci->dev, "Link up\n");
>  			return 0;
>  		}
>  		udelay(LINK_WAIT_USLEEP_MAX);
> -- 
> 2.20.1
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
