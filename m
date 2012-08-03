Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxHto-00055H-LI
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 13:26:41 +0000
Date: Fri, 3 Aug 2012 15:26:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803132638.GR1451@pengutronix.de>
References: <1343296420-25857-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1343925162-18040-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343925162-18040-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] arm/imx: provide command to add ram device with
 autodetected size
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 02, 2012 at 06:32:42PM +0200, Uwe Kleine-K=F6nig wrote:
> The amount of available ram is determined by the ESDCTL register, so
> better don't hardcode the value.
> =

> This commit provides a command that can be used instead of
> arm_add_mem_device and convertes pcm043 (on which this patch was tested)
> to it.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> changes since implicit v1:
>  - support 2nd sdram chip select
>  - move implementation to arch/arm/mach-imx/esdctl.c
> =

>  arch/arm/boards/pcm043/pcm043.c         |    3 ++-
>  arch/arm/mach-imx/Makefile              |    2 +-
>  arch/arm/mach-imx/esdctl.c              |   45 +++++++++++++++++++++++++=
++++++
>  arch/arm/mach-imx/include/mach/esdctl.h |    3 +++
>  4 files changed, 51 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/mach-imx/esdctl.c
> =

> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm=
043.c
> index 65e0586..3a309c4 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -46,6 +46,7 @@
>  #include <mach/imx-pll.h>
>  #include <mach/iomux-mx35.h>
>  #include <mach/devices-imx35.h>
> +#include <mach/esdctl.h>
>  =

>  static struct fec_platform_data fec_info =3D {
>  	.xcv_type =3D MII100,
> @@ -103,7 +104,7 @@ static struct imx_ipu_fb_platform_data ipu_fb_data =
=3D {
>  =

>  static int pcm043_mem_init(void)
>  {
> -	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SZ_128M);
> +	imx_add_ram0();
>  =

>  	return 0;
>  }
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 03e2421..cc6fa5e 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -1,4 +1,4 @@
> -obj-y +=3D clocksource.o gpio.o
> +obj-y +=3D clocksource.o gpio.o esdctl.o

for i in arch/arm/configs/*; do make $(basename $i); make; done

Probably this will break on several i.MX SoCs missing IMX_SDRAM_CS0 and
friends.

> +void imx_add_ram_auto(void)
> +{
> +	imx_add_ram0();
> +	imx_add_ram1();
> +}
> diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/=
include/mach/esdctl.h
> index 10c8b9b..688f799 100644
> --- a/arch/arm/mach-imx/include/mach/esdctl.h
> +++ b/arch/arm/mach-imx/include/mach/esdctl.h
> @@ -26,6 +26,7 @@
>  #define ESDCTL0_DSIZ_31_16			(0 << 16)
>  #define ESDCTL0_DSIZ_15_0			(1 << 16)
>  #define ESDCTL0_DSIZ_31_0			(2 << 16)
> +#define ESDCTL0_DSIZ_MASK			(3 << 16)
>  #define ESDCTL0_REF1				(1 << 13)
>  #define ESDCTL0_REF2				(2 << 13)
>  #define ESDCTL0_REF4				(3 << 13)
> @@ -124,3 +125,5 @@
>  //#define ESDCFGx_tRC_14		0x0000000e	// 15 seems to not exist
>  #define ESDCFGx_tRC_16			0x0000000f
>  =

> +void imx_add_ram0(void);
> +void imx_add_ram1(void);

The prototype for imx_add_ram_auto() is missing here.

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
