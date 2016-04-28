Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avn7Y-0005xK-Rq
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:40:49 +0000
Date: Thu, 28 Apr 2016 16:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160428144027.GF7860@pengutronix.de>
References: <1461767949-13337-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461767949-13337-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] sata-imx: Fix a typo
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 07:39:09AM -0700, Andrey Smirnov wrote:
> It looks like comma operator was accidentaly used instead of regular
> semicolon. Fix this to avoid confusing future readers of the code.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/ata/sata-imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
> index 6a60195..7b8036b 100644
> --- a/drivers/ata/sata-imx.c
> +++ b/drivers/ata/sata-imx.c
> @@ -112,7 +112,7 @@ static int imx_sata_probe(struct device_d *dev)
>  
>  	imx_ahci->ahci.dev = dev;
>  	dev->priv = &imx_ahci->ahci;
> -	dev->info = ahci_info,
> +	dev->info = ahci_info;
>  
>  	ret = ahci_add_host(&imx_ahci->ahci);
>  	if (ret)
> -- 
> 2.5.5
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
