Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rq6mP-0008Vj-HK
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 17:37:07 +0000
Date: Wed, 25 Jan 2012 18:36:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120125173659.GA5446@pengutronix.de>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
 <1327408443-3519-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327408443-3519-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/9] Define clock source shift and mask.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 24, 2012 at 12:33:56PM +0000, Renaud Barbier wrote:
> * Define clock source shift and mask in mach/clock_config.h.
> * Rename ppc/lib/time.c to ppc/lib/time-mpc5200.c.
> * Update lib/Makefile to reflect change.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/lib/Makefile                             |    2 +-
>  arch/ppc/lib/time-mpc5200.c                       |   75 +++++++++++++++++++++
>  arch/ppc/lib/time.c                               |   74 --------------------
>  arch/ppc/mach-mpc5xxx/include/mach/clock_config.h |    7 ++
>  4 files changed, 83 insertions(+), 75 deletions(-)
>  create mode 100644 arch/ppc/lib/time-mpc5200.c
>  delete mode 100644 arch/ppc/lib/time.c
>  create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/clock_config.h
> 
> diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
> index b611ddf..2af000a 100644
> --- a/arch/ppc/lib/Makefile
> +++ b/arch/ppc/lib/Makefile
> @@ -4,7 +4,7 @@ obj-y += extable.o
>  obj-y += kgdb.o
>  obj-y += ppcstring.o
>  obj-y += ticks.o
> -obj-y += time.o
> +obj-$(CONFIG_MPC5200) += time-mpc5200.o
>  obj-y += misc.o
>  obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
>  obj-y += board_data.o
> diff --git a/arch/ppc/lib/time-mpc5200.c b/arch/ppc/lib/time-mpc5200.c
> new file mode 100644
> index 0000000..11f08a7
> --- /dev/null
> +++ b/arch/ppc/lib/time-mpc5200.c
> @@ -0,0 +1,75 @@
> +/*
> + * (C) Copyright 2000, 2001
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <init.h>
> +#include <mach/clocks.h>
> +#include <mach/clock_config.h>
> +#include <asm/common.h>
> +
> +/* ------------------------------------------------------------------------- */
> +
> +static int init_timebase (void)
> +{
> +#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
> +	volatile immap_t *immap = (immap_t *) CFG_IMMR;
> +
> +	/* unlock */
> +	immap->im_sitk.sitk_tbk = KAPWR_KEY;
> +#endif
> +
> +	/* reset */
> +	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
> +
> +#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
> +	/* enable */
> +	immap->im_sit.sit_tbscr |= TBSCR_TBE;
> +#endif

Since this file now becomes mpc5200 only, please remove the #ifdefs.

> +	return (0);
> +}
> +/* ------------------------------------------------------------------------- */
> +
> +uint64_t ppc_clocksource_read(void)
> +{
> +	return get_ticks();
> +}
> +
> +static struct clocksource cs = {
> +	.read	= ppc_clocksource_read,
> +	.mask	= CLOCKSOURCE_MASK(CONFIG_CLOCKSOURCE_MASK),
> +	.shift	= CONFIG_CLOCKSOURCE_SHIFT,

The .mask and .shift were harcoded constants before, now that you
introduce your own clocksource for the 8xx there is even less need
for making this global defines.

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
