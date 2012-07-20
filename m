Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss7Ve-00011I-54
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 07:20:24 +0000
Date: Fri, 20 Jul 2012 09:20:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120720072013.GJ30009@pengutronix.de>
References: <20120718221003.GR30009@pengutronix.de>
 <1342684698-3123-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342684698-3123-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 2/3 v2] gpmc: Add reset to gpmc_generic_init
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Thu, Jul 19, 2012 at 09:58:18AM +0200, Jan Weitzel wrote:
> Add reset to gpmc_generic_init as proposed by TRM.
> This also fixes some strange timing issue while GPMC Initialization for
> NAND OMAP4460
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied this one. I think the rest needs another round.

Sascha

> ---
> v2: fix timeout endless loop
> 
>  arch/arm/mach-omap/gpmc.c |   12 +++++++++++-
>  1 files changed, 11 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
> index 399f68a..b3fa56c 100644
> --- a/arch/arm/mach-omap/gpmc.c
> +++ b/arch/arm/mach-omap/gpmc.c
> @@ -28,6 +28,7 @@
>   * MA 02111-1307 USA
>   */
>  #include <common.h>
> +#include <clock.h>
>  #include <init.h>
>  #include <io.h>
>  #include <mach/silicon.h>
> @@ -48,13 +49,22 @@
>   */
>  void gpmc_generic_init(unsigned int cfg)
>  {
> +	uint64_t start;
>  	unsigned int reg = GPMC_REG(CONFIG7_0);
>  	char x = 0;
>  
>  	debug("gpmccfg=%x\n", cfg);
>  	/* Generic Configurations */
> +	/* reset gpmc */
> +	start = get_time_ns();
>  	/* No idle, L3 clock free running */
> -	writel(0x10, GPMC_REG(SYS_CONFIG));
> +	writel(0x12, GPMC_REG(SYS_CONFIG));
> +	while (!readl(GPMC_REG(SYS_STATUS)))
> +		if (is_timeout(start, MSECOND)) {
> +			printf("timeout on gpmc reset\n");
> +			break;
> +		}
> +
>  	/* No Timeout */
>  	writel(0x00, GPMC_REG(TIMEOUT_CONTROL));
>  	/* No IRQs */
> -- 
> 1.7.0.4
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
