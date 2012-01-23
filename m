Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpFN3-0007RI-Ql
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 08:35:23 +0000
Date: Mon, 23 Jan 2012 09:35:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120123083509.GG5446@pengutronix.de>
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
 <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] ARM pca-a-l1: fix board_init
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 20, 2012 at 10:25:02PM +0100, Juergen Kilb wrote:
> board_init was moved to pure_initcall. broken since:
> 
> commit 0adce7ec683b4b325f51de4ac8892b32925d7ef8
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Sun Jan 15 21:11:17 2012 +0100
> 
>     ARM omap3: move board_init to pure_initcall
> 
>     board_init initializes the mux and sdram. For both there is no
>     need to configure this so early. Move the code to a pure_initcall
>     and remove the surrounding unneeded code.
> 
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>     Tested-by: Sanjeev Premi <premi@ti.com>
> 
> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
> ---
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c |    8 +++++---
>  arch/arm/mach-omap/Kconfig              |    1 -
>  barebox_default_env.gz                  |  Bin 0 -> 2656 bytes
>  3 files changed, 5 insertions(+), 4 deletions(-)
>  create mode 100644 barebox_default_env.gz
> 
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> index 11e8638..0518894 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -74,8 +74,6 @@
>  #include <mach/syslib.h>
>  #include <mach/xload.h>
>  
> -#include "pca-a-l1.h"
> -
>  #define SMC911X_BASE 0x2c000000
>  
>  /*
> @@ -224,15 +222,19 @@ static void pcaal1_mux_config(void)
>   *
>   * @return void
>   */
> -void omap3_board_init(void)
> +static int pcaal1_board_init(void)
>  {
>  	int in_sdram = running_in_sdram();
>  
>  	pcaal1_mux_config();
> +
>  	/* Dont reconfigure SDRAM while running in SDRAM! */
>  	if (!in_sdram)
>  		pcaal1_sdrc_init();
> +
> +	return 0;
>  }
> +pure_initcall(pcaal1_board_init);
>  
>  /*
>   * Run-time initialization(s)
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 970c899..ecdabb0 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -150,7 +150,6 @@ config MACH_PCM049
>  
>  config MACH_PCAAL1
>  	bool "Phytec phyCARD-A-L1"
> -	select MACH_HAS_LOWLEVEL_INIT
>  	select OMAP_CLOCK_ALL
>  	select HAS_OMAP_NAND
>  	  help
> diff --git a/barebox_default_env.gz b/barebox_default_env.gz

Ups. Applied the series with this removed.

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
