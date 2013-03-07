Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDVHb-0007ic-Vx
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 07:30:34 +0000
Date: Thu, 7 Mar 2013 08:30:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130307073030.GO1906@pengutronix.de>
References: <20130306083849.GC4401@game.jcrosoft.org>
 <1362559192-11992-1-git-send-email-plagnioj@jcrosoft.com>
 <1362559192-11992-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362559192-11992-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/9] intoduce dmesg to print the barebox printk to dmesg
 ring buffer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 06, 2013 at 09:39:46AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the size can be configured vai DMESG_KFIFO_OSIZE
> 
> 1024 by default
> 4096 if DEBUG_INFO
> 
> the verbosity of the printk can now be change at runtime and default via
> PRINTK_LEVEL
> 
> rename dev_printf to dev_printk and update to printk
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig                |   19 +++++++
>  common/console.c                |  116 +++++++++++++++++++++++++++++++++++++++
>  drivers/base/driver.c           |   18 ++++--
>  include/linux/barebox-wrapper.h |   11 ----
>  include/printk.h                |   68 ++++++++++++++++-------
>  5 files changed, 195 insertions(+), 37 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index c1454c7..a6d3846 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -122,6 +122,25 @@ config CMD_TIME
>  	  checking for ctrl-c, so the time command can be used with commands
>  	  which are interruptible with ctrl-c.
>  
> +config CMD_DMESG
> +	bool "dmesg"
> +	depends on CONSOLE_FULL
> +	  help
> +	  print the barebox output ring buffer
> +
> +if CMD_DMESG
> +config PRINTK_LEVEL
> +	int "printk level"
> +	range 0 7
> +	default 7
> +
> +config DMESG_KFIFO_SIZE
> +	prompt "kfifo dmesg size"
> +	int
> +	default 4086 if DEBUG_INFO

Why 4086?

> +	default 1024
> +endif
> +
>  config CMD_LINUX_EXEC
>  	bool "linux exec"
>  	depends on LINUX
> diff --git a/common/console.c b/common/console.c
> index 243d402..a7c8719 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -1,3 +1,4 @@
> +
>  /*
>   * (C) Copyright 2000
>   * Paolo Scaffardi, AIRVENT SAM s.p.a - RIMINI(ITALY), arsenio@tin.it
> @@ -349,3 +350,118 @@ int ctrlc (void)
>  }
>  EXPORT_SYMBOL(ctrlc);
>  #endif /* ARCH_HAS_CTRC */
> +
> +#ifdef CONFIG_CMD_DMESG
> +#include <command.h>
> +#include <complete.h>
> +#include <init.h>
> +#include <globalvar.h>
> +
> +static char dmesg_output_buffer[CONFIG_DMESG_KFIFO_SIZE];
> +static struct kfifo __dmesg_output_fifo;
> +static struct kfifo *dmesg_output_fifo = &__dmesg_output_fifo;
> +static int printk_level = CONFIG_PRINTK_LEVEL;
> +static char printk_level_str[2] = __stringify(CONFIG_PRINTK_LEVEL);
> +
> +static int printk_level_set(struct device_d *dev, struct param_d *p, const char *val)
> +{
> +	int level = simple_strtoul(val, NULL, 10);
> +
> +	if (level < 0 || level > 7)
> +		return -EINVAL;

simple_strtoul returns an unsigned type which is assigned to a signed
type and tested for < 0 then. Use unsigned directly.

> +
> +	printk_level = level;
> +	printk_level_str[0] = level + '0';
> +
> +	return 0;
> +}
> +
> +const char *printk_level_get(struct device_d *d, struct param_d *p)
> +{
> +	return printk_level_str;
> +}
> +
> +static int printk_init(void)
> +{
> +	return globalvar_add("printk_level", printk_level_set, printk_level_get, 0);
> +}
> +coredevice_initcall(printk_init);
> +
> +static int printk_fifo_init(void)
> +{
> +	kfifo_init(dmesg_output_fifo, dmesg_output_buffer,
> +			CONFIG_DMESG_KFIFO_SIZE);
> +
> +	return 0;
> +}
> +pure_initcall(printk_fifo_init);
> +
> +static int do_dmesg(int argc, char *argv[])
> +{
> +	kfifo_dump_str(dmesg_output_fifo, console_output_dump);
> +
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_dmesg_help[] =
> +"print the barebox output ring buffer\n";
> +
> +BAREBOX_CMD_START(dmesg)
> +	.cmd		= do_dmesg,
> +	.usage		= "dmesg",
> +	BAREBOX_CMD_HELP(cmd_dmesg_help)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END
> +
> +int vprintk (const char *fmt, va_list args)
> +{
> +	uint i;
> +	char printbuffer[CFG_PBSIZE];
> +	char *s = printbuffer;
> +	int level;
> +
> +	/* For this to work, printbuffer must be larger than
> +	 * anything we ever want to print.
> +	 */
> +	i = vsprintf(printbuffer, fmt, args);
> +
> +	level = printk_get_level(printbuffer);
> +	if (level) {
> +		s += 2;
> +		kfifo_putc(dmesg_output_fifo, '<');
> +		kfifo_putc(dmesg_output_fifo, level);
> +		kfifo_putc(dmesg_output_fifo, '>');
> +	}
> +
> +	/* Print the string */
> +	if (level <= printk_level + '0')
> +		puts(s);
> +
> +	while (*s) {
> +		if (*s == '\n')
> +			kfifo_putc(dmesg_output_fifo, '\r');
> +		kfifo_putc(dmesg_output_fifo, *s);
> +		s++;
> +	}

the '\r' should be added during outputting the on the serial line,
not while putting it into the buffer. Otherwise we have this in
the logs should we ever want to safe them to a file. catting these
files would then lead to double '\r'.

Also, wouldn't a kfifo_puts implementation make things easier and more
efficient here?

> +
> +	return i;
> +}
> +EXPORT_SYMBOL(vprintk);
> +
> +int printk (const char *fmt, ...)
> +{
> +	va_list args;
> +	uint i;
> +
> +	va_start (args, fmt);
> +
> +	i = vprintk(fmt, args);
> +	/* For this to work, printbuffer must be larger than
> +	 * anything we ever want to print.
> +	 */

There is no printbuffer in this function.

> +	va_end (args);
> +
> +	return i;
> +}
> +EXPORT_SYMBOL(printk);
> +#endif
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index fa30c68..17a11c8 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -364,23 +364,29 @@ const char *dev_id(const struct device_d *dev)
>  	return buf;
>  }
>  
> -int dev_printf(const struct device_d *dev, const char *format, ...)
> +#define PREFIX	

Trailing whitespace

> +
> +int dev_printk(const struct device_d *dev, int level, const char *format, ...)
>  {
>  	va_list args;
> -	int ret = 0;
> +	char printbuffer[CFG_PBSIZE];
> +	char *s = printbuffer;
>  
>  	if (dev->driver && dev->driver->name)
> -		ret += printf("%s ", dev->driver->name);
> +		s += sprintf(s, "%s ", dev->driver->name);
>  
> -	ret += printf("%s: ", dev_name(dev));
> +	s += sprintf(s, "%s: ", dev_name(dev));
>  
>  	va_start(args, format);
>  
> -	ret += vprintf(format, args);
> +	vsprintf(s, format, args);
>  
>  	va_end(args);
>  
> -	return ret;
> +	if (IS_ENABLED(CONFIG_CMD_DMESG))
> +		return printk(KERN_SOH "%d%s", level, printbuffer);

What is this KERN_SOH? It's defined nowhere in this patch.

> +	else
> +		return printk("%s", printbuffer);
>  }
>  
>  void devices_shutdown(void)
> diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
> index 1d1f846..ce68060 100644
> --- a/include/linux/barebox-wrapper.h
> +++ b/include/linux/barebox-wrapper.h
> @@ -9,17 +9,6 @@
>  #define kfree(ptr)		free(ptr)
>  #define vfree(ptr)		free(ptr)
>  
> -#define KERN_EMERG      ""   /* system is unusable                   */
> -#define KERN_ALERT      ""   /* action must be taken immediately     */
> -#define KERN_CRIT       ""   /* critical conditions                  */
> -#define KERN_ERR        ""   /* error conditions                     */
> -#define KERN_WARNING    ""   /* warning conditions                   */
> -#define KERN_NOTICE     ""   /* normal but significant condition     */
> -#define KERN_INFO       ""   /* informational                        */
> -#define KERN_DEBUG      ""   /* debug-level messages                 */

Removing these will probably lead t compile failures.

> -
> -#define printk			printf
> -
>  #define pr_warn			pr_warning
>  
>  #define __init
> diff --git a/include/printk.h b/include/printk.h
> index 3de8905..bdb3eda 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -1,6 +1,8 @@
>  #ifndef __PRINTK_H
>  #define __PRINTK_H
>  
> +#include <linux/kern_levels.h>
> +
>  #define MSG_EMERG      0    /* system is unusable */
>  #define MSG_ALERT      1    /* action must be taken immediately */
>  #define MSG_CRIT       2    /* critical conditions */
> @@ -16,41 +18,67 @@
>  #define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
>  #endif
>  
> +#ifdef CONFIG_CMD_DMESG
> +int	printk(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
> +int	vprintk(const char *fmt, va_list args);
> +#define __pr_printk(level, format, args...) \
> +	({	\
> +		int ret = 0;	\
> +		if (level <= LOGLEVEL) \
> +			ret = printk(KERN_SOH "%d" format, level, ##args);	\
> +		ret;					\
> +	 })
> +#else
> +#define printk			printf
> +#define vprintk			vprintf
> +#define __pr_printk(level, format, args...) \
> +	({	\
> +		int ret = 0;	\
> +		if (level <= LOGLEVEL) \
> +			ret = printk(format, ##args);	\
> +		ret;					\
> +	 })
> +#endif

Please rebase this on the brown-paper-bag-bugfix I just sent to the
list.

> +static inline int printk_get_level(const char *buffer)
> +{
> +	if (buffer[0] == KERN_SOH_ASCII && buffer[1]) {

KERN_SOH_ASCII also is defined nowhere.

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
