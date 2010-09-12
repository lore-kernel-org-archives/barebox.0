Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ouku8-0005tO-Dr
	for barebox@lists.infradead.org; Sun, 12 Sep 2010 11:39:29 +0000
Date: Sun, 12 Sep 2010 13:38:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100912113830.GM17771@game.jcrosoft.org>
References: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
	<1284290860-32033-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1284290860-32033-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] amba-pl011: probe fail if we can get the clock
To: barebox@lists.infradead.org

subject fix on git://git.jcrosoft.org/barebox.git sh-prepare

Best Regards,
J.
On 13:27 Sun 12 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/serial/amba-pl011.c |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
> index 07508d0..8ddba2e 100644
> --- a/drivers/serial/amba-pl011.c
> +++ b/drivers/serial/amba-pl011.c
> @@ -34,6 +34,7 @@
>  #include <asm/io.h>
>  #include <linux/amba/serial.h>
>  #include <linux/clk.h>
> +#include <linux/err.h>
>  
>  /*
>   * We wrap our port structure around the generic console_device.
> @@ -160,6 +161,9 @@ static int pl011_probe(struct device_d *dev)
>  
>  	uart->clk = clk_get(dev, NULL);
>  
> +	if (PTR_ERR(uart->clk) < 0)
> +		return PTR_ERR(uart->clk);
> +
>  	cdev = &uart->uart;
>  	dev->type_data = cdev;
>  	cdev->dev = dev;
> -- 
> 1.7.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
