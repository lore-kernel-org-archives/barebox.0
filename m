Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6yNo-0003lQ-CP
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 06:37:41 +0000
Date: Thu, 30 Aug 2012 08:37:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120830063738.GE26594@pengutronix.de>
References: <1346260386-19901-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346260386-19901-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] ppc: add unaligned support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2012 at 06:13:06PM +0100, Renaud Barbier wrote:
> This file is copied from Linux 2.6.39. It is added so that the P2020RDB
> can still build.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/include/asm/unaligned.h |   16 ++++++++++++++++
>  1 files changed, 16 insertions(+), 0 deletions(-)
>  create mode 100644 arch/ppc/include/asm/unaligned.h
> 
> diff --git a/arch/ppc/include/asm/unaligned.h b/arch/ppc/include/asm/unaligned.h
> new file mode 100644
> index 0000000..a41fa8c
> --- /dev/null
> +++ b/arch/ppc/include/asm/unaligned.h
> @@ -0,0 +1,16 @@
> +#ifndef _ASM_PPC_UNALIGNED_H
> +#define _ASM_PPC_UNALIGNED_H
> +
> +#ifdef __KERNEL__
> +
> +/*
> + * The PowerPC can do unaligned accesses itself in big endian mode.
> + */
> +#include <linux/unaligned/access_ok.h>
> +#include <linux/unaligned/generic.h>
> +
> +#define get_unaligned   __get_unaligned_be
> +#define put_unaligned   __put_unaligned_be
> +
> +#endif  /* __KERNEL__ */
> +#endif  /* _ASM_PPC_UNALIGNED_H */
> -- 
> 1.7.1
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
