Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2W02-0003qc-Nt
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 09:11:33 +0000
Date: Thu, 21 Jan 2021 10:11:29 +0100
Message-ID: <20210121091128.GG19063@pengutronix.de>
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-4-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120125107.736121-4-andrej.picej@norik.com>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: i.MX: xload-gpmi-nand: apply errata 007117
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 20, 2021 at 01:51:07PM +0100, Andrej Picej wrote:
> During raw NAND booting, GPMI/BCH clock generation might fail due to
> improper clock gating conditions and consequently booting from NAND will
> fail. This is caused by silicon errata ERR007117. Apply errata fix
> workaround before GPMI NAND xload to prevent this from occurring.
> 
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  arch/arm/mach-imx/xload-gpmi-nand.c | 62 +++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
> index 04f799604..4be6d1890 100644
> --- a/arch/arm/mach-imx/xload-gpmi-nand.c
> +++ b/arch/arm/mach-imx/xload-gpmi-nand.c
> @@ -20,6 +20,8 @@
>  #include <mach/xload.h>
>  #include <mach/imx-nand-bcb.h>
>  #include <linux/mtd/rawnand.h>
> +#include <mach/imx6-regs.h>
> +#include <mach/clock-imx6.h>
>  
>  /*
>   * MXS DMA hardware command.
> @@ -256,6 +258,63 @@ struct mxs_nand_info {
>  	unsigned long nand_size;
>  };
>  
> +/**
> + * It was discovered that xloading barebox from NAND sometimes fails. Observed
> + * behaviour is similar to silicon errata ERR007117 for i.MX6.

Have you really seen this behaviour? I wonder because the ROM has
already loaded the initial code that is just running from NAND, so it
surprises me that we still have to apply clock fixes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
