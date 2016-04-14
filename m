Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqcAq-0002uk-Nm
 for barebox@lists.infradead.org; Thu, 14 Apr 2016 07:58:49 +0000
Date: Thu, 14 Apr 2016 09:58:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160414075826.GB9102@pengutronix.de>
References: <1460557139-64673-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460557139-64673-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH] bitops: fls64: add missing include
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 13, 2016 at 04:18:58PM +0200, Raphael Poggi wrote:
> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  include/asm-generic/bitops/fls64.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/asm-generic/bitops/fls64.h b/include/asm-generic/bitops/fls64.h
> index 86d403f..e8eff76 100644
> --- a/include/asm-generic/bitops/fls64.h
> +++ b/include/asm-generic/bitops/fls64.h
> @@ -2,6 +2,7 @@
>  #define _ASM_GENERIC_BITOPS_FLS64_H_
>  
>  #include <asm/types.h>
> +#include <asm-generic/bitops/__fls.h>

This is wrong. This include must not be here to give the architecture
the chance to provide an optimized version of __fls(), but the generic
version of fls64(). This may not be clear in barebox context since all
users use the generic version, but in the kernel there are some
architectures implementing their own version of __fls() while others use
the generic variant:

arch/mips/include/asm/bitops.h:480:static inline unsigned long __fls(unsigned long word)
...
#include <asm-generic/bitops/fls64.h>

arch/metag/include/asm/bitops.h:118:#include <asm-generic/bitops/__fls.h>
...
#include <asm-generic/bitops/fls64.h>

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
