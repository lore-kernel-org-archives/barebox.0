Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7ae-0007FN-V3
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 06:53:01 +0000
Date: Wed, 5 Jun 2013 08:52:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605065239.GP32299@pengutronix.de>
References: <1370351277-23582-1-git-send-email-sfricke@data-modul.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370351277-23582-1-git-send-email-sfricke@data-modul.com>
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
Subject: Re: [PATCH V2] ARM i.MX6: set imx6 silicon revision
To: "S. Fricke" <sfricke@data-modul.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2013 at 03:07:57PM +0200, S. Fricke wrote:
> From: "S. Fricke" <sfricke@data-modul.com>
> 
> This is mainly a backport of the imx6_revision function of
> arch/arm/mach-imx/mach-imx6q.c in the linux kernel sources.
> 
> Signed-off-by: S. Fricke <sfricke@data-modul.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/imx6.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 5c20aa1..1d69ec8 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -16,8 +16,11 @@
>  #include <io.h>
>  #include <sizes.h>
>  #include <mach/generic.h>
> +#include <mach/revision.h>
>  #include <mach/imx6-regs.h>
>  
> +#define SI_REV 0x260
> +
>  void imx6_init_lowlevel(void)
>  {
>  	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
> @@ -55,8 +58,31 @@ void imx6_init_lowlevel(void)
>  
>  static int imx6_init(void)
>  {
> +	u32 rev;
> +	u32 mx6_silicon_revision;
> +
>  	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
>  
> +	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
> +	switch (rev & 0xff) {
> +	case 0x00:
> +		mx6_silicon_revision = IMX_CHIP_REV_1_0;
> +		break;
> +
> +	case 0x01:
> +		mx6_silicon_revision = IMX_CHIP_REV_1_1;
> +		break;
> +
> +	case 0x02:
> +		mx6_silicon_revision = IMX_CHIP_REV_1_2;
> +		break;
> +
> +	default:
> +		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
> +	}
> +
> +	imx_set_silicon_revision("i.MX6", mx6_silicon_revision);
> +
>  	if (of_get_root_node())
>  		return 0;
>  
> -- 
> 1.8.3
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
