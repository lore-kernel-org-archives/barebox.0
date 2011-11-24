Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVjX-0000GW-Ep
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:36:44 +0000
Date: Thu, 24 Nov 2011 10:36:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124093636.GA27267@pengutronix.de>
References: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
 <1322082748-17409-4-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322082748-17409-4-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 3/4] nios2: Include asm/unaligned.h
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Wed, Nov 23, 2011 at 10:12:27PM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>

Applied this one to master.

Sascha

> 
> drivers/ata/disk_drive.c needs it....
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  arch/nios2/include/asm/unaligned.h |   15 +++++++++++++++
>  1 files changed, 15 insertions(+), 0 deletions(-)
>  create mode 100644 arch/nios2/include/asm/unaligned.h
> 
> diff --git a/arch/nios2/include/asm/unaligned.h b/arch/nios2/include/asm/unaligned.h
> new file mode 100644
> index 0000000..7615e8a
> --- /dev/null
> +++ b/arch/nios2/include/asm/unaligned.h
> @@ -0,0 +1,15 @@
> +#ifndef _ASM_NIOS_UNALIGNED_H
> +#define _ASM_NIOS_UNALIGNED_H
> +
> +#include <linux/unaligned/le_byteshift.h>
> +#include <linux/unaligned/be_byteshift.h>
> +#include <linux/unaligned/generic.h>
> +
> +/*
> + * Select endianness
> + */
> +
> +#define get_unaligned	__get_unaligned_le
> +#define put_unaligned	__put_unaligned_le
> +
> +#endif /* _ASM_NIOS_UNALIGNED_H */
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
