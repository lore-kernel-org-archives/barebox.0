Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TirVm-0008Hl-5L
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 18:58:31 +0000
Date: Wed, 12 Dec 2012 19:58:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121212185828.GY10369@pengutronix.de>
References: <1355223567-12671-1-git-send-email-jlu@pengutronix.de>
 <1355223567-12671-3-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355223567-12671-3-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM OMAP AM33XX: create new ARCH for AM33xx
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 11, 2012 at 11:59:27AM +0100, Jan Luebbe wrote:
> From: Teresa G=E1mez <t.gamez@phytec.de>
> =

> Created ARCH for AM33xx boards as second stage bootloader.
> This includes:
> - Added dmtimer0
> - Created basic header files
> - Added MMC support for ARCH_AM33XX
> - Added reset function
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> =


[...]

> diff --git a/arch/arm/mach-omap/include/mach/clocks.h b/arch/arm/mach-oma=
p/include/mach/clocks.h
> index 9e47a9e..ed1b368 100644
> --- a/arch/arm/mach-omap/include/mach/clocks.h
> +++ b/arch/arm/mach-omap/include/mach/clocks.h
> @@ -46,5 +46,8 @@
>  #ifdef CONFIG_ARCH_OMAP4
>  #include <mach/omap4-clock.h>
>  #endif
> +#ifdef CONFIG_ARCH_AM33XX
> +#include <mach/am33xx-clock.h>
> +#endif

We should really get rid of such things. Compiling for different SoCs by
creating conflicting defines is easy first and very painful later.
Please clean this up before more SoCs are added.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
