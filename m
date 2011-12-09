Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYwo2-0002ie-Se
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 09:31:51 +0000
Date: Fri, 9 Dec 2011 10:31:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209093144.GB27267@pengutronix.de>
References: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
 <1323353029-17281-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323353029-17281-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 3/3] add tlsf-based malloc implementation
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2011 at 06:03:49PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/Kconfig       |    3 ++
>  common/Makefile      |    2 +
>  common/memory.c      |    8 +++++
>  common/tlsf_malloc.c |   78 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 91 insertions(+), 0 deletions(-)
>  create mode 100644 common/tlsf_malloc.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 27464d1..71f092c 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -159,6 +159,9 @@ choice
>  config MALLOC_DLMALLOC
>  	bool "dlmalloc"
>  
> +config MALLOC_TLSF
> +	bool "tlsf"
> +
>  config MALLOC_DUMMY
>  	bool "dummy malloc"
>  	depends on SHELL_NONE
> diff --git a/common/Makefile b/common/Makefile
> index 9bce479..467c666 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -14,6 +14,8 @@ obj-$(CONFIG_OFTREE)		+= oftree.o
>  
>  obj-y += memory.o
>  obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
> +obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
> +obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
>  obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
>  obj-y += clock.o
>  obj-y += version.o
> diff --git a/common/memory.c b/common/memory.c
> index f0ae1cc..faff33b 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -47,11 +47,19 @@ unsigned long mem_malloc_end(void)
>  	return malloc_end;
>  }
>  
> +#ifdef CONFIG_MALLOC_TLSF
> +#include <tlsf.h>
> +tlsf_pool tlsf_mem_pool;
> +#endif
> +
>  void mem_malloc_init(void *start, void *end)
>  {
>  	malloc_start = (unsigned long)start;
>  	malloc_end = (unsigned long)end;
>  	malloc_brk = malloc_start;
> +#ifdef CONFIG_MALLOC_TLSF
> +	tlsf_mem_pool = tlsf_create(start, (char *)end - (char *)start);
> +#endif
>  }
>  
>  #ifndef __SANDBOX__
> +
> +#ifdef CONFIG_CMD_MEMINFO
> +void malloc_stats(void)
> +{
> +}
> +#endif /* CONFIG_CMD_MEMINFO */

An implementation of malloc_stats would be nice. It's a good thing
during development to be able to find memory leaks. For now it's ok
as we can still use the dlmalloc implementation for this. Anyway,
you should add a 'depends on MALLOC_DLMALLOC' to the meminfo command
instead. Currently we have a meminfo command which just produces no
output.

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
