Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShPuz-0003yh-2O
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 18:46:18 +0000
Date: Wed, 20 Jun 2012 20:46:13 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120620184613.GB5642@pengutronix.de>
References: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
 <1340200153-9215-2-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340200153-9215-2-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM/MXS: add new way to reset the whole SoC
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello J=FCrgen,

On Wed, Jun 20, 2012 at 03:49:12PM +0200, Juergen Beisert wrote:
> Currently the watchdog is occupied for system reset. This usage collides =
with
> the dedicated usage of a watchdog. This patch change the behaviour of at =
least
> i.MX23/i.MX28 where the chipset supports a simple and powerful alternative
> to reset the whole SoC (including the PMIC).
> =

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-mxs/soc-imx23.c |   37 +++++++++++++++++++++++++++++++++++=
++
>  arch/arm/mach-mxs/soc-imx28.c |   37 +++++++++++++++++++++++++++++++++++=
++
>  2 files changed, 74 insertions(+)
>  create mode 100644 arch/arm/mach-mxs/soc-imx23.c
>  create mode 100644 arch/arm/mach-mxs/soc-imx28.c
> =

> diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
> new file mode 100644
> index 0000000..964b722
> --- /dev/null
> +++ b/arch/arm/mach-mxs/soc-imx23.c
> @@ -0,0 +1,37 @@
> +/*
> + * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * Collection of some SoC specific functions
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/imx-regs.h>
> +#include <io.h>
> +
> +#define HW_CLKCTRL_RESET 0x120
> +# define HW_CLKCTRL_RESET_CHIP (1 << 1)
> +
> +/* Reset the full i.MX23 SoC via a chipset feature */
> +void __noreturn reset_cpu (unsigned long addr)
coding style ---------------^, no space here.

> +{
> +	u32 reg;
> +
> +	reg =3D readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
> +	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
> +
> +	while (1)
> +		;
> +	/*NOTREACHED*/
> +}
> +EXPORT_SYMBOL(reset_cpu);
> diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
> new file mode 100644
> index 0000000..c7a34a8
> --- /dev/null
> +++ b/arch/arm/mach-mxs/soc-imx28.c
> @@ -0,0 +1,37 @@
> +/*
> + * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * Collection of some SoC specific functions
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/imx-regs.h>
> +#include <io.h>
> +
> +#define HW_CLKCTRL_RESET 0x1e0
> +# define HW_CLKCTRL_RESET_CHIP (1 << 1)
> +
> +/* Reset the full i.MX28 SoC via a chipset feature */
> +void __noreturn reset_cpu (unsigned long addr)
> +{
> +	u32 reg;
> +
> +	reg =3D readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
> +	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
> +
> +	while (1)
> +		;
> +	/*NOTREACHED*/
> +}
> +EXPORT_SYMBOL(reset_cpu);
Is it worth to introduce a common function =


	void __noreturn sensiblename(unsigned long clkctrl_reset_offset, unsigned =
long unused)
	{
		...
	}

and make the reset_cpu functions for imx23 and imx28 just call
sensiblename()?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
