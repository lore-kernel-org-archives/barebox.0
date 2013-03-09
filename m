Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UELRq-0000s2-AI
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 15:12:35 +0000
Date: Sat, 9 Mar 2013 16:12:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130309151230.GK1906@pengutronix.de>
References: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Extend device_platform_driver macro
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Mar 08, 2013 at 01:05:14PM +0400, Alexander Shiyan wrote:
> This patch extends device_platform_driver macro, so now we allow
> use it with various init levels and subsystems.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  include/driver.h | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 46c56c0..b891f80 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
>  
>  int platform_driver_register(struct driver_d *drv);
>  
> -/* device_platform_driver() - Helper macro for drivers that don't do
> +/* register_driver_macro() - Helper macro for drivers that don't do
>   * anything special in module registration. This eliminates a lot of
>   * boilerplate. Each module may only use this macro once.
>   */
> -#define device_platform_driver(drv)			\
> -	static int __init drv ## _register(void)	\
> -	{						\
> -		return platform_driver_register(&drv);	\
> -	}						\
> -	device_initcall(drv ## _register)
> +#define register_driver_macro(level,subsystem,drv)		\
> +	static int __init drv##_register(void)			\
> +	{							\
> +		return subsystem##_driver_register(&drv);	\
> +	}							\
> +	level##_initcall(drv##_register)

So the usage would look like:

register_driver_macro(device, i2c, &mc_driver)

?

I'm not sure if I like this. I'm a bit concerned about being able
to grep for for example i2c_register_driver. This would become

wcgrep register_driver_macro | grep i2c

or similar.

What do others think about it?

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
