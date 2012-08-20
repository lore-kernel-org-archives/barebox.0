Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TBK-0000TA-LF
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:42:19 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2D924FF92C9
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 16:49:14 +0200 (CEST)
Date: Mon, 20 Aug 2012 16:42:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820144225.GX6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-4-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-4-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 03/13] common: split out meminfo output and make it
 optional
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  common/Kconfig   |    4 ++++
>  common/Makefile  |    1 +
>  common/meminfo.c |   21 +++++++++++++++++++++
>  common/startup.c |   19 -------------------
>  include/common.h |   10 ++++++++--
>  5 files changed, 34 insertions(+), 21 deletions(-)
>  create mode 100644 common/meminfo.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index b776031..7d33c2e 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -88,6 +88,10 @@ config BANNER
>  	bool "display banner"
>  	default y
>  
> +config MEMINFO
> +	bool "display memory info"
> +	default y
> +
>  config ENVIRONMENT_VARIABLES
>  	bool "environment variables support"
>  
> diff --git a/common/Makefile b/common/Makefile
> index a1926d3..69ff5df 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
>  obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
>  obj-y += clock.o
>  obj-$(CONFIG_BANNER) += version.o
> +obj-$(CONFIG_MEMINFO) += meminfo.o
>  obj-$(CONFIG_COMMAND_SUPPORT) += command.o
>  obj-$(CONFIG_CONSOLE_FULL) += console.o
>  obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
> diff --git a/common/meminfo.c b/common/meminfo.c
> new file mode 100644
> index 0000000..30b5bef
> --- /dev/null
> +++ b/common/meminfo.c
> @@ -0,0 +1,21 @@
> +#include <common.h>
> +#include <memory.h>
> +#include <asm-generic/memory_layout.h>
> +
> +void display_meminfo(void)
> +{
> +	ulong mstart = mem_malloc_start();
> +	ulong mend   = mem_malloc_end();
> +	ulong msize  = mend - mstart + 1;
> +
> +	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
> +	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
> +	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
> +		mstart, mend, size_human_readable(msize));
> +#ifdef CONFIG_ARM
> +	printf("Stack space : 0x%08x -> 0x%08x (size %s)\n",
> +		STACK_BASE, STACK_BASE + STACK_SIZE,
> +		size_human_readable(STACK_SIZE));
> +#endif
> +}

so move it as a late_initcall

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
