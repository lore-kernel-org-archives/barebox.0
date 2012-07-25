Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StvDO-0005ep-UQ
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 06:37:11 +0000
Date: Wed, 25 Jul 2012 08:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725063647.GI30009@pengutronix.de>
References: <1343130303-32201-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343130303-32201-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] OMAP4: small header cleanup
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 24, 2012 at 01:45:03PM +0200, Teresa G=E1mez wrote:
> Use <mach/clocks.h> for OMAP4.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

 Sascha

> ---
>  arch/arm/mach-omap/include/mach/clocks.h |    3 +++
>  arch/arm/mach-omap/omap4_clock.c         |    4 ++--
>  arch/arm/mach-omap/omap4_generic.c       |    5 ++---
>  3 files changed, 7 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm/mach-omap/include/mach/clocks.h b/arch/arm/mach-oma=
p/include/mach/clocks.h
> index 1221238..3efa057 100644
> --- a/arch/arm/mach-omap/include/mach/clocks.h
> +++ b/arch/arm/mach-omap/include/mach/clocks.h
> @@ -44,5 +44,8 @@
>  #ifdef CONFIG_ARCH_OMAP3
>  #include <mach/omap3-clock.h>
>  #endif
> +#ifdef CONFIG_ARCH_OMAP4
> +#include <mach/omap4-clock.h>
> +#endif
>  =

>  #endif /* __OMAP_CLOCKS_H_ */
> diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_=
clock.c
> index f8bab5f..3ab01f0 100644
> --- a/arch/arm/mach-omap/omap4_clock.c
> +++ b/arch/arm/mach-omap/omap4_clock.c
> @@ -1,7 +1,7 @@
>  #include <common.h>
> -#include <mach/syslib.h>
>  #include <io.h>
> -#include <mach/omap4-clock.h>
> +#include <mach/syslib.h>
> +#include <mach/clocks.h>
>  =

>  #define LDELAY	12000000
>  =

> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap=
4_generic.c
> index 5092242..de69934 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -1,10 +1,9 @@
>  #include <common.h>
>  #include <init.h>
> -#include <mach/silicon.h>
>  #include <io.h>
> -#include <mach/omap4-silicon.h>
> +#include <mach/clocks.h>
> +#include <mach/silicon.h>
>  #include <mach/omap4-mux.h>
> -#include <mach/omap4-clock.h>
>  #include <mach/syslib.h>
>  #include <mach/xload.h>
>  #include <mach/gpmc.h>
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
