Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RasIO-0001gj-O8
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 17:07:10 +0000
Date: Wed, 14 Dec 2011 18:06:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214170659.GJ27267@pengutronix.de>
References: <1323877362-9738-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323877362-9738-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv: use a compressed version when embedded
 in barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2011 at 04:42:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> with using gzip and the default env we can save 5.2KiB (5,352 bytes)
> 
> tested on sam9g20ek
> before
> -rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin
> after
> -rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin

Hm, your binary became 5353 bytes bigger not smaller...

We can safe a few bytes if we have zlib in our config anyway, but
selecting it just to compress the defaultenv is a non starter because
zlib is bigger than the uncompressed defaultenv.

How about a

config DEFAULT_ENVIRONMENT_COMPRESSED
	default y if ZLIB

instead?

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
> 	need to apply usb-926x first
> 
> Best Regards,
> J.
>  common/Kconfig   |    1 +
>  common/Makefile  |    6 +++++-
>  common/startup.c |   23 +++++++++++++++++++++--
>  3 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 27464d1..ef5bba7 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -423,6 +423,7 @@ config PARTITION_DISK_DOS
>  config DEFAULT_ENVIRONMENT
>  	bool
>  	default y
> +	select ZLIB
>  	prompt "Compile in default environment"
>  	help
>  	  Enabling this option will give you a default environment when
> diff --git a/common/Makefile b/common/Makefile
> index 9bce479..5cbaa1d 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -52,5 +52,9 @@ endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
>  barebox_default_env: $(ENV_FILES)
>  	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
>  
> -include/generated/barebox_default_env.h: barebox_default_env
> +barebox_default_env.gz: barebox_default_env FORCE
> +	$(call if_changed,gzip)

Do we need this FORCE? It triggers a new build everytime even when nothing
has changed.

> +
> +include/generated/barebox_default_env.h: barebox_default_env.gz
>  	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
> +	echo "const int default_environment_uncompress_size=`stat -c%s barebox_default_env`;" >> $@
> diff --git a/common/startup.c b/common/startup.c
> index 13783fb..c68ac8b 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -63,11 +63,30 @@ static void display_meminfo(void)
>  
>  #ifdef CONFIG_DEFAULT_ENVIRONMENT
>  #include <generated/barebox_default_env.h>
> +#include <uncompress.h>
> +
> +void *defaultenv;
>  
>  static int register_default_env(void)
>  {
> -	add_mem_device("defaultenv", (unsigned long)default_environment,
> -		       sizeof(default_environment),
> +	int ret;
> +	void *tmp;
> +
> +	tmp = xzalloc(default_environment_size);
> +	memcpy(tmp, default_environment, default_environment_size);
> +
> +	defaultenv = xzalloc(default_environment_uncompress_size);
> +
> +	ret = uncompress(tmp, default_environment_size, NULL, NULL,
> +			 defaultenv, NULL, uncompress_err_stdout);
> +
> +	free(tmp);
> +
> +	if (ret)
> +		return ret;
> +
> +	add_mem_device("defaultenv", (unsigned long)defaultenv,
> +		       default_environment_uncompress_size,
>  		       IORESOURCE_MEM_WRITEABLE);
>  	return 0;
>  }
> -- 
> 1.7.7
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
