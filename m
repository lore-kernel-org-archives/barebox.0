Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV0fp-0007XE-MU
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 20:22:51 +0000
Date: Mon, 18 Jun 2018 22:22:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180618202237.pxfxnmp2eb2mp62o@pengutronix.de>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-18-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180615041136.23492-18-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 14/27] console: Consolidate DEBUG_LL and CONSOLE_* puts()
 implementations
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 14, 2018 at 09:11:23PM -0700, Andrey Smirnov wrote:
> Similar to previous commit, consolidate DEBUG_LL and CONSOLE_* puts()
> implementations by putting them into a shared macro.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/debug_ll.h | 23 +++++++++++++++++++----
>  lib/console.c      | 13 ++++++-------
>  2 files changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/include/debug_ll.h b/include/debug_ll.h
> index 4032ced95..4dcbd0434 100644
> --- a/include/debug_ll.h
> +++ b/include/debug_ll.h
> @@ -54,6 +54,24 @@
>  		__n;				\
>  	})
>  
> +/**
> + * __do_puts - Macro implementing puts()
> + *
> + * @__putc:	Single argument or a macro that implements putc()
> + * @___s:	String to print
> + *
> + * Internal macro used to implement puts_ll() and __console_puts()
> + */
> +#define __do_puts(__putc, ___s)			\
> +	({					\
> +		const char *__s = (___s);	\
> +		int __n = 0;			\
> +						\
> +		while (*__s)			\
> +			__n += __putc(*__s++);	\
> +		__n;				\
> +	})

I don't like this. It's a simple loop and there's nothing bad with it
when the same loop is present twice in barebox. No need to dig into
CPP here.

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
