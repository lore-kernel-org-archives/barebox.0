Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4A87-0002Ng-J3
 for barebox@lists.infradead.org; Sun, 04 Mar 2012 12:01:37 +0000
Date: Sun, 4 Mar 2012 13:01:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120304120127.GQ3852@pengutronix.de>
References: <1330677280-13825-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330677280-13825-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] pca-a-l1: remove duplicate includes
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2012 at 09:34:40AM +0100, Teresa G=E1mez wrote:
> Removed duplicate includes from phyCARD-A-L1 board code.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c |    3 ---
>  1 files changed, 0 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/ph=
ycard-a-l1/pca-a-l1.c
> index f7d3185..e4f2483 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -65,14 +65,11 @@
>  #include <mach/gpmc_nand.h>
>  #include <mach/omap_hsmmc.h>
>  #include <mach/xload.h>
> -#include <partition.h>
> -#include <nand.h>
>  #include <mach/omap3-mux.h>
>  #include <mach/sdrc.h>
>  #include <mach/silicon.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
> -#include <mach/xload.h>
>  =

>  #define SMC911X_BASE 0x2c000000
>  =

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
