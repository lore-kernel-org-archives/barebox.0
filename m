Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S25kC-0004Y9-6A
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 18:56:21 +0000
Date: Mon, 27 Feb 2012 19:56:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120227185614.GF3852@pengutronix.de>
References: <1330362868-18186-1-git-send-email-lars@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330362868-18186-1-git-send-email-lars@kiwigrid.com>
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
Subject: Re: [PATCH] Add unaligned.h to sandbox arch
To: Lars Poeschel <lars@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2012 at 06:14:28PM +0100, Lars Poeschel wrote:
> To be able to use the sandbox with fat filesystem support unaligned.h is needed.
> It tries to be general in selecting little endian or big endian on a gcc macro.
> 
> Signed-off-by: Lars Poeschel <lars@kiwigrid.com>

Applied, thanks

  Sascha

> ---
>  arch/sandbox/include/asm/unaligned.h |   19 +++++++++++++++++++
>  1 files changed, 19 insertions(+), 0 deletions(-)
>  create mode 100644 arch/sandbox/include/asm/unaligned.h
> 
> diff --git a/arch/sandbox/include/asm/unaligned.h b/arch/sandbox/include/asm/unaligned.h
> new file mode 100644
> index 0000000..07c1ae4
> --- /dev/null
> +++ b/arch/sandbox/include/asm/unaligned.h
> @@ -0,0 +1,19 @@
> +#ifndef _ASM_SANDBOX_UNALIGNED_H
> +#define _ASM_SANDBOX_UNALIGNED_H
> +
> +/*
> + * The architecture sandbox is compiled on can do unaligned accesses itself.
> + */
> +
> +#include <linux/unaligned/access_ok.h>
> +#include <linux/unaligned/generic.h>
> +
> +#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
> +#define get_unaligned __get_unaligned_le
> +#define put_unaligned __put_unaligned_le
> +#else
> +#define get_unaligned __get_unaligned_be
> +#define put_unaligned __put_unaligned_be
> +#endif
> +
> +#endif /* _ASM_SANDBOX_UNALIGNED_H */
> -- 
> 1.7.5.4
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
