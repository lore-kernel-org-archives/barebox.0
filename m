Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQE5u-0002bb-14
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:19:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VQE5Y-00048j-8Q
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:18:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VQE5Y-0006A4-6Q
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:18:56 +0200
Date: Sun, 29 Sep 2013 12:18:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130929101856.GW30088@pengutronix.de>
References: <1380302397-20010-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380302397-20010-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH v2] introduce runtime loglevel
To: barebox@lists.infradead.org

On Fri, Sep 27, 2013 at 07:19:57PM +0200, Sascha Hauer wrote:
> With this the verbosity of barebox can be controlled during runtime
> using the 'loglevel' globalvar.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> +config DEFAULT_LOGLEVEL
> +	int "default loglevel"
> +	default 6

Changed the default to '7'. Reason is that normally when we #define
DEBUG in a file we see the debug messages. With a default loglevel of
'6' we wouldn't see them even if DEBUG is defined.

Sascha

> +	help
> +	  This defines the default runtime loglevel. It can be changed using the
> +	  global.loglevel variable. Available logelevels are:
> +
> +	  0    system is unusable (emerg)
> +	  1    action must be taken immediately (alert)
> +	  2    critical conditions (crit)
> +	  3    error conditions (err)
> +	  4    warning conditions (warn)
> +	  5    normal but significant condition (notice)
> +	  6    informational (info)
> +	  7    debug-level messages (debug)
> +
>  config DEBUG_INFO
>  	bool
>  	prompt "enable debug symbols"
> diff --git a/common/console_common.c b/common/console_common.c
> index d1b823e..18b7676 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -57,6 +57,33 @@ void console_allow_input(bool val)
>  	console_input_allow = val;
>  }
>  
> +int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
> +
> +int pr_print(int level, const char *fmt, ...)
> +{
> +	va_list args;
> +	uint i;
> +	char printbuffer[CFG_PBSIZE];
> +
> +	if (level > barebox_loglevel)
> +		return 0;
> +
> +	va_start(args, fmt);
> +	i = vsprintf(printbuffer, fmt, args);
> +	va_end(args);
> +
> +	/* Print the string */
> +	puts(printbuffer);
> +
> +	return i;
> +}
> +
> +static int loglevel_init(void)
> +{
> +	return globalvar_add_simple_int("loglevel", &barebox_loglevel, "%d");
> +}
> +device_initcall(loglevel_init);
> +
>  int printf(const char *fmt, ...)
>  {
>  	va_list args;
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 16b7f06..e587e3a 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -26,6 +26,7 @@
>  #include <command.h>
>  #include <driver.h>
>  #include <malloc.h>
> +#include <console.h>
>  #include <linux/ctype.h>
>  #include <errno.h>
>  #include <fs.h>
> @@ -370,11 +371,14 @@ const char *dev_id(const struct device_d *dev)
>  	return buf;
>  }
>  
> -int dev_printf(const struct device_d *dev, const char *format, ...)
> +int dev_printf(int level, const struct device_d *dev, const char *format, ...)
>  {
>  	va_list args;
>  	int ret = 0;
>  
> +	if (level > barebox_loglevel)
> +		return 0;
> +
>  	if (dev->driver && dev->driver->name)
>  		ret += printf("%s ", dev->driver->name);
>  
> diff --git a/include/console.h b/include/console.h
> index e94c5ae..393579b 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -57,4 +57,6 @@ extern struct list_head console_list;
>  bool console_is_input_allow(void);
>  void console_allow_input(bool val);
>  
> +extern int barebox_loglevel;
> +
>  #endif
> diff --git a/include/printk.h b/include/printk.h
> index 86bf208..f550f07 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -18,12 +18,15 @@
>  
>  /* debugging and troubleshooting/diagnostic helpers. */
>  
> -int dev_printf(const struct device_d *dev, const char *format, ...)
> +int pr_print(int level, const char *format, ...)
>  	__attribute__ ((format(__printf__, 2, 3)));
>  
> +int dev_printf(int level, const struct device_d *dev, const char *format, ...)
> +	__attribute__ ((format(__printf__, 3, 4)));
> +
>  #define __dev_printf(level, dev, format, args...) \
>  	({	\
> -		(level) <= LOGLEVEL ? dev_printf((dev), (format), ##args) : 0; \
> +		(level) <= LOGLEVEL ? dev_printf((level), (dev), (format), ##args) : 0; \
>  	 })
>  
>  
> @@ -46,7 +49,7 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
>  
>  #define __pr_printk(level, format, args...) \
>  	({	\
> -		(level) <= LOGLEVEL ? printk((format), ##args) : 0; \
> +		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
>  	 })
>  
>  #ifndef pr_fmt
> -- 
> 1.8.4.rc3
> 
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
