Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5uDZ-0000Po-Em
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 08:31:05 +0000
Date: Thu, 14 Feb 2013 09:30:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214083055.GJ1906@pengutronix.de>
References: <1360692537-22260-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360692537-22260-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v2 1/2] Introduce device_platform_driver() macro
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2013 at 10:08:56PM +0400, Alexander Shiyan wrote:
> device_platform_driver() - Helper macro for drivers that don't do
> anything special in module registration. This eliminates a lot of
> boilerplate. Driver registration will called on device_initcall.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha

> ---
>  include/driver.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 31f5d69..151829e 100644
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
> +#define device_platform_driver(drv)			\
> +	static int __init drv ## _register(void)	\
> +	{						\
> +		return platform_driver_register(&drv);	\
> +	}						\
> +	device_initcall(drv ## _register)
> +
>  int platform_device_register(struct device_d *new_device);
>  
>  struct file_operations {
> -- 
> 1.7.12.4
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
