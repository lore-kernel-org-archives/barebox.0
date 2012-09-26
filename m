Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGuCb-0004TP-47
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 16:11:10 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5D0E0FFBE65
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 18:17:10 +0200 (CEST)
Date: Wed, 26 Sep 2012 18:08:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926160839.GX26553@game.jcrosoft.org>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
 <1348484692-24993-16-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348484692-24993-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 15/23] serial i.MX: Switch to clk support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:04 Mon 24 Sep     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/serial/serial_imx.c |   17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> index 012ab02..e0e5b01 100644
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -22,6 +22,8 @@
>  #include <malloc.h>
>  #include <notifier.h>
>  #include <io.h>
> +#include <linux/err.h>
> +#include <linux/clk.h>
>  
>  #define URXD0	0x0	/* Receiver Register */
>  #define URTX0	0x40	/* Transmitter Register */
> @@ -170,16 +172,17 @@ struct imx_serial_priv {
>  	int baudrate;
>  	struct notifier_block notify;
>  	void __iomem *regs;
> +	struct clk *clk;
>  };
>  
> -static int imx_serial_reffreq(void __iomem *regs)
> +static int imx_serial_reffreq(struct imx_serial_priv *priv)
>  {
>  	ulong rfdiv;
>  
> -	rfdiv = (readl(regs + UFCR) >> 7) & 7;
> +	rfdiv = (readl(priv->regs + UFCR) >> 7) & 7;
>  	rfdiv = rfdiv < 6 ? 6 - rfdiv : 7;
>  
> -	return imx_get_uartclk() / rfdiv;
> +	return clk_get_rate(priv->clk) / rfdiv;
>  }
>  
>  /*
> @@ -209,7 +212,7 @@ static int imx_serial_init_port(struct console_device *cdev)
>  	writel(0xa81, regs + UFCR);
>  
>  #ifdef ONEMS
> -	writel(imx_serial_reffreq(regs) / 1000, regs + ONEMS);
> +	writel(imx_serial_reffreq(priv) / 1000, regs + ONEMS);
>  #endif
>  
>  	/* Enable FIFOs */
> @@ -291,7 +294,7 @@ static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
>  	/* Set the numerator value minus one of the BRM ratio */
>  	writel((baudrate / 100) - 1, regs + UBIR);
>  	/* Set the denominator value minus one of the BRM ratio    */
> -	writel((imx_serial_reffreq(regs) / 1600) - 1, regs + UBMR);
> +	writel((imx_serial_reffreq(priv) / 1600) - 1, regs + UBMR);
>  
>  	writel(ucr1, regs + UCR1);
>  
> @@ -321,6 +324,10 @@ static int imx_serial_probe(struct device_d *dev)
>  	cdev = &priv->cdev;
>  	dev->priv = priv;
>  
> +	priv->clk = clk_get(dev, NULL);
> +	if (IS_ERR(priv->clk))
> +		return PTR_ERR(priv->clk);
you do not free the data on the error patch?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
