Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZ9LP-0004mQ-Qp
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 22:22:52 +0000
Date: Wed, 22 Jun 2011 00:22:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110621222248.GC6069@pengutronix.de>
References: <1308691646-5724-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308691646-5724-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] atmel-mci: fix wrong pointer cast
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 21, 2011 at 11:27:26PM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

applied to -next

Sascha

> ---
>  drivers/mci/atmel_mci.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index 980aa24..49a7851 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -456,7 +456,7 @@ static int mci_probe(struct device_d *hw_dev)
>  	else if (pd->bus_width == 8)
>  		host->mci.host_caps |= MMC_MODE_8BIT;
>  
> -	host->base = (struct atmel_mci_regs *)hw_dev->map_base;
> +	host->base = (void __iomem *)hw_dev->map_base;
>  	host->hw_dev = hw_dev;
>  	hw_dev->priv = host;
>  	host->clk = clk_get(hw_dev, "mci_clk");
> -- 
> 1.7.4.1
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
