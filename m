Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbM1-0008I2-OS
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 13:51:54 +0000
Date: Fri, 17 Sep 2010 15:51:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100917135151.GE1473@pengutronix.de>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

The subject should be '...fail if we can *not* get the clock'.

On Sun, Sep 12, 2010 at 01:27:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
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

We have the IS_ERR macro for testing. PTR_ERR is wrong here because it
only casts the pointer to long, so the condition above is true for every
pointer > 0x80000000.

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
