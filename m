Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJnCw-0000JA-SP
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 15:19:27 +0000
Date: Thu, 4 Oct 2012 17:19:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121004151920.GJ1322@pengutronix.de>
References: <1349333954-9312-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349333954-9312-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] amba/bus: add missing bus_register
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 04, 2012 at 08:59:14AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/amba/bus.c |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index 383c77e..f0a40b6 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -9,6 +9,7 @@
>  #include <linux/clk.h>
>  #include <linux/amba/bus.h>
>  #include <io.h>
> +#include <init.h>
>  
>  #define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
>  
> @@ -208,3 +209,9 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
>  	return dev;
>  }
>  
> +
> +static int amba_bus_init(void)
> +{
> +	return bus_register(&amba_bustype);
> +}
> +pure_initcall(amba_bus_init);
> -- 
> 1.7.10.4
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
