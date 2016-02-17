Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVxhi-0001Wn-5j
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 08:43:22 +0000
Date: Wed, 17 Feb 2016 09:43:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217084300.GR19372@pengutronix.de>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-13-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455672559-25061-13-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 12/18] fec_imx: Impelemnt reset timeout
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2016 at 05:29:13PM -0800, Andrey Smirnov wrote:
> Don't wait for more than one second for IP block to finish resetting. If
> the block is dead it makes more sence to continue execution in hopes
> that the rest of the processor is fine, rather than spin indefinetly
> inside of the fec_probe function
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/fec_imx.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 46932fe..99bd179 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -687,6 +687,7 @@ static int fec_probe(struct device_d *dev)
>  	int phy_reset;
>  	u32 msec = 1;
>  	struct resource *res;
> +	u64 start;
>  
>  	ret = dev_get_drvdata(dev, (const void **)&type);
>  	if (ret)
> @@ -739,9 +740,14 @@ static int fec_probe(struct device_d *dev)
>  	}
>  
>  	/* Reset chip. */
> +	start = get_time_ns();
>  	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
>  	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
>  		udelay(10);

While at it you can drop the udelay here.

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
