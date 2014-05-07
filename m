Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhvGZ-0006HX-A4
 for barebox@lists.infradead.org; Wed, 07 May 2014 06:23:43 +0000
Date: Wed, 7 May 2014 08:23:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140507062320.GF5858@pengutronix.de>
References: <1399360610-11834-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399360610-11834-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] stdlib.h: include missed types.h
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 06, 2014 at 11:16:50AM +0400, Antony Pavlov wrote:
> We use 'u32' type in stdlib.h so we have to include types.h.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  include/stdlib.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/stdlib.h b/include/stdlib.h
> index 07d6e58..f318506 100644
> --- a/include/stdlib.h
> +++ b/include/stdlib.h
> @@ -1,6 +1,8 @@
>  #ifndef __STDLIB_H
>  #define __STDLIB_H
>  
> +#include <types.h>
> +
>  #define RAND_MAX 32767
>  
>  /* return a pseudo-random integer in the range [0, RAND_MAX] */
> -- 
> 1.9.2
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
