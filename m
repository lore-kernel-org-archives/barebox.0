Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OZeyJ-0007f6-8U
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 07:04:36 +0000
Date: Fri, 16 Jul 2010 09:04:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100716070433.GI14113@pengutronix.de>
References: <738392b926a79541ab1ca4f1b547b59feabbdbc2.1278221880.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <738392b926a79541ab1ca4f1b547b59feabbdbc2.1278221880.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] nand_imx: fix "used uninitialized" warning on mx25
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Sun, Jul 04, 2010 at 08:39:32AM +0300, Baruch Siach wrote:
> drivers/nand/nand_imx.c: In function 'imx_nand_load_image':
> drivers/nand/nand_imx.c:1074: warning: 'host' is used uninitialized in this function

Applied.

Sascha

> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  drivers/nand/nand_imx.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
> index 74cdf10..5454e32 100644
> --- a/drivers/nand/nand_imx.c
> +++ b/drivers/nand/nand_imx.c
> @@ -1065,7 +1065,7 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
>  	else
>  		host.pagesize_2k = 0;
>  #endif
> -#ifdef CONFIG_ARCH_IMX35
> +#if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
>  	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
>  		host.pagesize_2k = 1;
>  	else
> -- 
> 1.7.1
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
