Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKEkZ-0002u6-Fx
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 05:52:32 +0000
Date: Mon, 21 Sep 2020 07:52:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200921055228.GA21278@pengutronix.de>
References: <20200919204133.31990-1-avoidr@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200919204133.31990-1-avoidr@posteo.de>
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
Subject: Re: [PATCH] scripts: compiler.h: include <sys/types.h>
To: Robert Karszniewicz <avoidr@posteo.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 19, 2020 at 10:41:33PM +0200, Robert Karszniewicz wrote:
> ulong is not a standard type, so it has to be defined explicitly.
> 
> Signed-off-by: Robert Karszniewicz <avoidr@posteo.de>
> ---
> This fixes compile errors on musl when building the sandbox.
> 
>  scripts/compiler.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/compiler.h b/scripts/compiler.h
> index 0ad25f9e8..c932f715c 100644
> --- a/scripts/compiler.h
> +++ b/scripts/compiler.h
> @@ -62,6 +62,7 @@ typedef unsigned int  uint;
>        defined(__NetBSD__) || defined(__DragonFly__)
>  # include <sys/endian.h>
>  #else /* assume Linux */
> +# include <sys/types.h>
>  # include <endian.h>
>  # include <byteswap.h>
>  #endif
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
