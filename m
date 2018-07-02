Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZsGw-0001cL-Tk
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 06:25:16 +0000
Date: Mon, 2 Jul 2018 08:25:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702062502.7hxe7gkev5jhjm3n@pengutronix.de>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180630034900.3324-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 04/11] ARM: i.MX8MQ: Add a macro to load BL31 ATF blob
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 08:48:53PM -0700, Andrey Smirnov wrote:
> Add a macro containing all of the code needed to load and transfer
> control to BL31 ATF blob on i.MX8M.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/atf.h | 63 ++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 arch/arm/mach-imx/include/mach/atf.h
> 
> diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
> new file mode 100644
> index 000000000..0b5018459
> --- /dev/null
> +++ b/arch/arm/mach-imx/include/mach/atf.h
> @@ -0,0 +1,63 @@
> +#ifndef __IMX_ATF_H__
> +#define __IMX_ATF_H__
> +
> +#include <asm/system.h>
> +
> +#define MX8MQ_ATF_BL31_SIZE_LIMIT	SZ_64K
> +#define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
> +#define MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
> +
> +/**
> + * imx8mq_atf_load_bl31 - Load ATF BL31 blob and transfer contol to it
> + *
> + * @name:	Name of the BL31 blob
> + *
> + * This macro:
> +
> + *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
> + *        expects to be placed
> + *
> + *     2. Sets up temporary stack pointer for EL2, which is execution
> + *        level that BL31 will drop us off at after it completes its
> + *        initialization routine
> + *
> + *     3. Transfers control to BL31
> + *
> + * NOTE: This has to be a macro in order delay the expansion of
> + * get_builtin_firmware(), otherwise it'll incorrectly interpret
> + * "name" literally

You show a good reason why we should add the firmware name strings
to the image along with a function that iterates over them. How
to add the firmware name strings is already provided in the Kernels
firmware/Makefile.

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
