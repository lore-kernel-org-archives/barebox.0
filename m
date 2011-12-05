Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUEG-0006Ne-Jn
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:48:54 +0000
Date: Mon, 5 Dec 2011 09:48:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111205084846.GZ27267@pengutronix.de>
References: <1322891084-446-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322891084-446-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] use format(__printf__, a, b) instead of
 formart(printf, a, b)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 03, 2011 at 06:44:43AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> to fix warning 'barebox_printf' is an unrecognized format function type

Where do you see this warning? I do not get it anymore since Loic fixed
it.

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/linux/compiler-gcc.h |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 73dcf80..d363fdb 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -75,7 +75,7 @@
>   */
>  #define __pure				__attribute__((pure))
>  #define __aligned(x)			__attribute__((aligned(x)))
> -#define __printf(a,b)			__attribute__((format(printf,a,b)))
> +#define __printf(a,b)			__attribute__((format(__printf__,a,b)))
>  #define  noinline			__attribute__((noinline))
>  #define __attribute_const__		__attribute__((__const__))
>  #define __maybe_unused			__attribute__((unused))
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
