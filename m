Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLOuC-00028E-Q6
 for barebox@lists.infradead.org; Wed, 23 May 2018 08:13:58 +0000
Date: Wed, 23 May 2018 10:13:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180523081345.427wqsp4chx5c3xu@pengutronix.de>
References: <20180522222714.26549-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180522222714.26549-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] nvmem: snvs_lpgpr: Drop stray commas
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 03:27:14PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/nvmem/snvs_lpgpr.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
> index 6c79743cc..fe7fe599f 100644
> --- a/drivers/nvmem/snvs_lpgpr.c
> +++ b/drivers/nvmem/snvs_lpgpr.c
> @@ -113,10 +113,10 @@ static int snvs_lpgpr_probe(struct device_d *dev)
>  	cfg = &priv->cfg;
>  	cfg->name = dev_name(dev);
>  	cfg->dev = dev;
> -	cfg->stride = 4,
> -	cfg->word_size = 4,
> -	cfg->size = 4,
> -	cfg->bus = &snvs_lpgpr_nvmem_bus,
> +	cfg->stride = 4;
> +	cfg->word_size = 4;
> +	cfg->size = 4;
> +	cfg->bus = &snvs_lpgpr_nvmem_bus;
>  
>  	nvmem = nvmem_register(cfg);
>  	if (IS_ERR(nvmem)) {
> -- 
> 2.17.0
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
