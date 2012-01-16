Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmipo-0002km-DC
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 09:26:37 +0000
Date: Mon, 16 Jan 2012 10:26:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120116092627.GL5446@pengutronix.de>
References: <1326620296-8076-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326620296-8076-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] add CONFIG_BAREBOX_MAX_SIZE to check if the size of
 barebox exceed the target size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 15, 2012 at 10:38:15AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to detected silent oversize result

There are different sizes to consider. What you check here for is the
maximum binary image size. Another interesting size is whether the
image + bss fits into SRAM (for example for the OMAP xloader configs).
To avoid confusion I suggest to name this one
CONFIG_BAREBOX_MAX_IMAGE_SIZE.

> 
> if 0x0 the size will not been checked

Why not make the default 0xffffffff, then you don't have to check for
max_size != 0

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Makefile       |    8 ++++++++
>  common/Kconfig |    8 ++++++++
>  2 files changed, 16 insertions(+), 0 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index d8e685e..eeb5b5d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -659,6 +659,14 @@ OBJCOPYFLAGS_barebox.bin = -O binary
>  
>  barebox.bin: barebox FORCE
>  	$(call if_changed,objcopy)
> +	size=`stat -c%s $@`; \
> +	max_size=`printf "%d" $(CONFIG_BAREBOX_MAX_SIZE)`; \
> +	if [ $$max_size -lt $$size -a \
> +	     $$max_size -ne 0 ] ; \
> +	then \
> +		echo "$@ size $$size > of the maximum size $$max_size"; \
> +		exit 1 ; \
> +	fi
>  
>  ifdef CONFIG_X86
>  barebox.S: barebox
> diff --git a/common/Kconfig b/common/Kconfig
> index 382e591..a034686 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -104,6 +104,14 @@ config TEXT_BASE
>  	help
>  	  The Address barebox gets linked at.
>  
> +config BAREBOX_MAX_SIZE
> +	prompt "Maximum size of barebox"
> +	hex
> +	default 0x0
> +	help
> +	  Define the maximum size of barebox
> +	  If 0x0 the size will not been check
> +
>  config HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	bool
>  
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
