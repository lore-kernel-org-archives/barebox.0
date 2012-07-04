Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmJoP-0000gb-Lu
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 07:15:48 +0000
Date: Wed, 4 Jul 2012 09:15:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120704071543.GL2698@pengutronix.de>
References: <1340974442-1687-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340974442-1687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM mxs: Clear USB boot mode during startup
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

On Fri, Jun 29, 2012 at 02:54:02PM +0200, Sascha Hauer wrote:
> When the i.MX28 boots from USB, the ROM code sets this bit. When
> after a reset the ROM code detects that this bit is set it will
> boot from USB again. This means that if we boot once from USB the
> chip will continue to boot from USB until the next power cycle.
> 
> To prevent this (and boot from the configured bootsource instead)
> clear this bit here. This bit is not documented in the datasheets,
> it was figured out the hard way. Whether this is the same on i.MX23
> is currently not known.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-mxs/imx.c |   26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
> index c64f23c..63b8889 100644
> --- a/arch/arm/mach-mxs/imx.c
> +++ b/arch/arm/mach-mxs/imx.c
> @@ -20,6 +20,32 @@
>  #include <common.h>
>  #include <command.h>
>  #include <complete.h>
> +#include <init.h>
> +#include <io.h>
> +#include <mach/imx-regs.h>
> +
> +#define HW_RTC_PERSISTENT1     0x070
> +
> +static int imx_reset_usb_bootstrap(void)
> +{
> +	/*
> +	 * Clear USB boot mode.
> +	 *
> +	 * When the i.MX28 boots from USB, the ROM code sets this bit. When
> +	 * after a reset the ROM code detects that this bit is set it will
> +	 * boot from USB again. This means that if we boot once from USB the
> +	 * chip will continue to boot from USB until the next power cycle.
> +	 *
> +	 * To prevent this (and boot from the configured bootsource instead)
> +	 * clear this bit here. This bit is not documented in the datasheets,

It turned out this bit is indeed documented, but in the boot chapter,
not in the rtc chapter.

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
