Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pqR-0004zA-S0
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:38:40 +0000
Date: Mon, 11 Feb 2013 10:38:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211093838.GT1906@pengutronix.de>
References: <1360346822-11769-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360346822-11769-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] Introduce device_platform_driver() macro
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Feb 08, 2013 at 10:07:01PM +0400, Alexander Shiyan wrote:
> device_platform_driver() - Helper macro for drivers that don't do
> anything special in module registration. This eliminates a lot of
> boilerplate. Driver registration will called on device_initcall.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Good move ;)

> ---
>  include/driver.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 31f5d69..d8ac66c 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -390,6 +390,18 @@ extern struct list_head bus_list;
>  extern struct bus_type platform_bus;
>  
>  int platform_driver_register(struct driver_d *drv);
> +
> +/* device_platform_driver() - Helper macro for drivers that don't do
> + * anything special in module registration. This eliminates a lot of
> + * boilerplate. Each module may only use this macro once.
> + */
> +#define device_platform_driver(drv)				\
> +	static int __init device_platform_driver_init(void)	\
> +	{							\
> +		return platform_driver_register(&drv);		\
> +	}							\
> +	device_initcall(device_platform_driver_init)
> +

Can we use drv##_init as name for the function instead? This way the
driver name is in the function name and objdumps and backtraces would
have a bit more context.

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
