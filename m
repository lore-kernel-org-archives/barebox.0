Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chA3c-0003O1-N0
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 07:12:51 +0000
Date: Fri, 24 Feb 2017 08:12:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170224071225.xqzj5v75fgbnxweo@pengutronix.de>
References: <20170222200618.5723-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170222200618.5723-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mvebu: Fix fixup of mbus device-tree ranges
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 22, 2017 at 09:06:18PM +0100, Uwe Kleine-K=F6nig wrote:
> Commits "mvebu: {armada-370-xp,dove,kirkwood}: simplify soc init code
> flow" simplified too much. The problem is that if the dtb used for
> probing doesn't use the same mbus window address as barebox (i.e.
> 0xf1000000) the fixup fails because above commits moved the information
> about the real position to a postcore initcall which is too late because
> the fixup happens in of_arm_init which runs as core initcall.

Said patches are currently in -next, so you could send a fixup patch
instead or I could just remove the patches.

Sascha

> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/armada-370-xp.c |  3 ---
>  arch/arm/mach-mvebu/dove.c          |  5 -----
>  arch/arm/mach-mvebu/kirkwood.c      |  2 --
>  drivers/bus/mvebu-mbus.c            | 22 +++++++++++++++++++++-
>  4 files changed, 21 insertions(+), 11 deletions(-)
> =

> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/ar=
mada-370-xp.c
> index 196b770277f3..93ad955a6e49 100644
> --- a/arch/arm/mach-mvebu/armada-370-xp.c
> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> @@ -90,9 +90,6 @@ static int armada_370_xp_init_soc(void)
>  	if (!of_machine_is_compatible("marvell,armada-370-xp"))
>  		return 0;
>  =

> -	mvebu_mbus_add_range("marvell,armada-370-xp", 0xf0, 0x01,
> -			     MVEBU_REMAP_INT_REG_BASE);
> -
>  	restart_handler_register_fn(armada_370_xp_restart_soc);
>  =

>  	barebox_set_model("Marvell Armada 370/XP");
> diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
> index 54da0d785490..1cdb7e1b8296 100644
> --- a/arch/arm/mach-mvebu/dove.c
> +++ b/arch/arm/mach-mvebu/dove.c
> @@ -57,11 +57,6 @@ static int dove_init_soc(void)
>  	if (!of_machine_is_compatible("marvell,dove"))
>  		return 0;
>  =

> -	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x01,
> -			     MVEBU_REMAP_INT_REG_BASE);
> -	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x02,
> -			     DOVE_REMAP_MC_REGS);
> -
>  	restart_handler_register_fn(dove_restart_soc);
>  =

>  	barebox_set_model("Marvell Dove");
> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwoo=
d.c
> index 36cd2a84a6f5..59fb95ff4adf 100644
> --- a/arch/arm/mach-mvebu/kirkwood.c
> +++ b/arch/arm/mach-mvebu/kirkwood.c
> @@ -34,8 +34,6 @@ static int kirkwood_init_soc(void)
>  	if (!of_machine_is_compatible("marvell,kirkwood"))
>  		return 0;
>  =

> -	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
> -			     MVEBU_REMAP_INT_REG_BASE);
>  	restart_handler_register_fn(kirkwood_restart_soc);
>  =

>  	barebox_set_model("Marvell Kirkwood");
> diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
> index df5f7a32d346..79c80cf52115 100644
> --- a/drivers/bus/mvebu-mbus.c
> +++ b/drivers/bus/mvebu-mbus.c
> @@ -59,6 +59,7 @@
>  #include <of.h>
>  #include <of_address.h>
>  #include <linux/mbus.h>
> +#include <mach/common.h>
>  =

>  /* DDR target is the same on all platforms */
>  #define TARGET_DDR		0
> @@ -810,7 +811,26 @@ static int mvebu_mbus_of_fixup(struct device_node *r=
oot, void *context)
>  	return 0;
>  }
>  =

> -static int mvebu_mbus_fixup_register(void) {
> +#define DOVE_REMAP_MC_REGS		0xf1800000
> +
> +static int mvebu_mbus_fixup_register(void)
> +{
> +	if (IS_ENABLED(CONFIG_ARCH_DOVE)) {
> +		mvebu_mbus_add_range("marvell,dove", 0xf0, 0x01,
> +				     MVEBU_REMAP_INT_REG_BASE);
> +		mvebu_mbus_add_range("marvell,dove", 0xf0, 0x02,
> +				     DOVE_REMAP_MC_REGS);
> +	}
> +
> +	if (IS_ENABLED(CONFIG_ARCH_KIRKWOOD))
> +		mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
> +				     MVEBU_REMAP_INT_REG_BASE);
> +
> +	if (IS_ENABLED(CONFIG_ARCH_ARMADA_370) ||
> +	    IS_ENABLED(CONFIG_ARCH_ARMADA_XP))
> +		mvebu_mbus_add_range("marvell,armada-370-xp", 0xf0, 0x01,
> +				     MVEBU_REMAP_INT_REG_BASE);
> +
>  	return of_register_fixup(mvebu_mbus_of_fixup, NULL);
>  }
>  pure_initcall(mvebu_mbus_fixup_register);
> -- =

> 2.11.0
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
