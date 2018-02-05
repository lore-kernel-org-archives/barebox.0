Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eibIg-000260-Ga
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 07:34:52 +0000
Date: Mon, 5 Feb 2018 08:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180205073438.ek2bxpnlubug5le2@pengutronix.de>
References: <20180201104615.19524-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180201104615.19524-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH 1/4] include linux/compiler.h in linux/unaligned/generic.h
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 01, 2018 at 11:46:11AM +0100, Philipp Zabel wrote:
> Without this include, the __force macro used in this header may be
> undefined.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

I hope it's worth adding yet another compression algorithm. I've yet to
see anything better than LZO for most embedded devices.

Anyway, applied, thanks

Sascha

> ---
>  include/linux/unaligned/generic.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/unaligned/generic.h b/include/linux/unaligned/generic.h
> index 02d97ff3df..43d5f2af24 100644
> --- a/include/linux/unaligned/generic.h
> +++ b/include/linux/unaligned/generic.h
> @@ -1,6 +1,8 @@
>  #ifndef _LINUX_UNALIGNED_GENERIC_H
>  #define _LINUX_UNALIGNED_GENERIC_H
>  
> +#include <linux/compiler.h>
> +
>  /*
>   * Cause a link-time error if we try an unaligned access other than
>   * 1,2,4 or 8 bytes long
> -- 
> 2.15.1
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
