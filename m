Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPZ9D-0006iT-Gk
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 14:36:01 +0000
Received: from mail190.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3C730DC20DE
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 16:35:38 +0200 (CEST)
Date: Fri, 27 Sep 2013 16:36:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927143657.GJ32444@ns203013.ovh.net>
References: <1380290764-8744-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380290764-8744-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] introduce runtime loglevel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:06 Fri 27 Sep     , Sascha Hauer wrote:
> With this the verbosity of barebox can be controlled during runtime
> using the 'loglevel' globalvar.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/console_common.c | 27 +++++++++++++++++++++++++++
>  drivers/base/driver.c   |  6 +++++-
>  include/console.h       |  2 ++
>  include/printk.h        |  9 ++++++---
>  4 files changed, 40 insertions(+), 4 deletions(-)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index d139d1a..accb70e 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -24,6 +24,33 @@
>  
>  #ifndef CONFIG_CONSOLE_NONE
>  
> +int barebox_loglevel = 6;
this should be define via Kconfig

Best Regards,
J.
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
> index 72cf99f..9d74cc2 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -54,4 +54,6 @@ extern struct list_head console_list;
>  
>  #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
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
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
