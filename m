Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOFCh-0005Uw-Dt
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 22:01:36 +0000
Date: Wed, 17 Oct 2012 00:01:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016220133.GL27665@pengutronix.de>
References: <1350381953-17388-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350381953-17388-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] console: use debug_ll before the console is available
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 12:05:53PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to have the same feature as earlyprintk in the kernel
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  common/console.c        |    2 ++
>  common/console_simple.c |    5 ++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/common/console.c b/common/console.c
> index b4b3a99..2e8c973 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -32,6 +32,7 @@
>  #include <poller.h>
>  #include <linux/list.h>
>  #include <linux/stringify.h>
> +#include <debug_ll.h>
>  
>  LIST_HEAD(console_list);
>  EXPORT_SYMBOL(console_list);
> @@ -280,6 +281,7 @@ void console_putc(unsigned int ch, char c)
>  
>  	case CONSOLE_INITIALIZED_BUFFER:
>  		kfifo_putc(console_output_fifo, c);
> +		PUTC_LL(c);
>  		return;
>  
>  	case CONSOLE_INIT_FULL:
> diff --git a/common/console_simple.c b/common/console_simple.c
> index 7ad88d9..a4d4315 100644
> --- a/common/console_simple.c
> +++ b/common/console_simple.c
> @@ -2,6 +2,7 @@
>  #include <common.h>
>  #include <fs.h>
>  #include <errno.h>
> +#include <debug_ll.h>
>  
>  LIST_HEAD(console_list);
>  EXPORT_SYMBOL(console_list);
> @@ -85,8 +86,10 @@ EXPORT_SYMBOL(console_puts);
>  
>  void console_putc(unsigned int ch, char c)
>  {
> -	if (!console)
> +	if (!console) {
> +		PUTC_LL(c);
>  		return;
> +	}
>  
>  	console->putc(console, c);
>  	if (c == '\n')
> -- 
> 1.7.10.4
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
