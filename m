Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPhq-0004Yk-Iq
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:52:04 +0000
Date: Tue, 12 May 2020 09:52:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512075200.GF5877@pengutronix.de>
References: <20200511165038.22358-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511165038.22358-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] net: designware: eqos: attach PHY earlier
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 06:50:38PM +0200, Lucas Stach wrote:
> If the PHY isn't driving the refclock, the software reset of the
> controller will time out. Some PHYs need some board specific
> configuration to properly drive the reflock. Attach the PHY before
> attempting the software reset, so PHY fixups have a chance to run.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index cb52f3942d86..d2baaeaf6372 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -360,6 +360,11 @@ static int eqos_start(struct eth_device *edev)
>  	int ret;
>  	int i;
>  
> +	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> +				 eqos->ops->adjust_link, 0, eqos->interface);
> +	if (ret)
> +		return ret;
> +
>  	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
>  
>  	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
> @@ -379,11 +384,6 @@ static int eqos_start(struct eth_device *edev)
>  	val = (rate / USEC_PER_SEC) - 1; /* -1 because the data sheet says so */
>  	writel(val, &eqos->mac_regs->us_tic_counter);
>  
> -	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> -				 eqos->ops->adjust_link, 0, eqos->interface);
> -	if (ret)
> -		return ret;
> -
>  	/* Before we reset the mac, we must insure the PHY is not powered down
>  	 * as the dw controller needs all clock domains to be running, including
>  	 * the PHY clock, to come out of a mac reset.  */
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
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
