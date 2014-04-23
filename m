Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcuUN-0005XI-JZ
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:33:16 +0000
Date: Wed, 23 Apr 2014 12:32:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423103253.GS5858@pengutronix.de>
References: <1397147022-20116-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397147022-20116-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] spi: i.MX: Simplify cspi_0_0_init()
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Apr 10, 2014 at 08:23:41PM +0400, Alexander Shiyan wrote:
> Use SPI module software reset to simplify cspi_0_0_init().
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/spi/imx_spi.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 45461bd..3c1ba61 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -67,6 +67,8 @@
>  
>  #define CSPI_0_0_TEST_LBC		(1 << 14)
>  
> +#define CSPI_0_0_RESET_START		(1 << 0)
> +
>  #define CSPI_0_7_RXDATA			0x00
>  #define CSPI_0_7_TXDATA			0x04
>  #define CSPI_0_7_CTRL			0x08
> @@ -197,13 +199,9 @@ static void cspi_0_0_init(struct imx_spi *imx)
>  {
>  	void __iomem *base = imx->regs;
>  
> -	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
> -		     base + CSPI_0_0_CTRL);
> -	writel(CSPI_0_0_PERIOD_32KHZ,
> -		     base + CSPI_0_0_PERIOD);
> -	while (readl(base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR)
> -		readl(base + CSPI_0_0_RXDATA);
> -	writel(0, base + CSPI_0_0_INT);
> +	writel(CSPI_0_0_RESET_START, base + CSPI_0_0_RESET);
> +	do {
> +	} while (readl(base + CSPI_0_0_RESET) & CSPI_0_0_RESET_START);
>  }
>  
>  static unsigned int cspi_0_7_xchg_single(struct imx_spi *imx, unsigned int data)
> -- 
> 1.8.3.2
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
