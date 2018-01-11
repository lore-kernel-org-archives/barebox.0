Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYTm-00064Y-Ht
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:44:59 +0000
Date: Thu, 11 Jan 2018 09:44:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111084442.nuzgf5235juy6htb@pengutronix.de>
References: <20180110163430.17695-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110163430.17695-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] Revert "mci: imx-esdhc: Enable clock"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 08:34:30AM -0800, Andrey Smirnov wrote:
> This reverts commit 61c6c24958934b6b226aa37b3b3a2c089189f52b which is
> pretty much a duplicate of:
> 
> a97345102 "i.MX: esdhc: Enable host->clk during initialization"
> 
> Since we don't need to enable that clock twice reverse the former and
> keep the latter.
> ---
>  drivers/mci/imx-esdhc.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 55e8371dd..b91f94b99 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -630,7 +630,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
>  	host->clk = clk_get(dev, "per");
>  	if (IS_ERR(host->clk))
>  		return PTR_ERR(host->clk);
> -	clk_enable(host->clk);
>  
>  	ret = clk_enable(host->clk);
>  	if (ret) {
> -- 
> 2.14.3
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
