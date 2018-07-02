Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZq7U-0005hs-EJ
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:07:22 +0000
Date: Mon, 2 Jul 2018 06:07:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702040708.dl2zbhpyddynsvdy@pengutronix.de>
References: <20180629115502.1313-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180629115502.1313-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 1/2] arm: arria10: enable errata 794072 and 845369
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 01:55:01PM +0200, Oleksij Rempel wrote:
> This SoC is affected by this two any many other erratas.
> So enable at least supported cases.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Rephrased the commit message and applied, thanks

Sascha

> ---
>  arch/arm/mach-socfpga/arria10-init.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
> index 07256da1db..f016b84bb7 100644
> --- a/arch/arm/mach-socfpga/arria10-init.c
> +++ b/arch/arm/mach-socfpga/arria10-init.c
> @@ -14,6 +14,7 @@
>  #include <mach/generic.h>
>  #include <asm/io.h>
>  #include <asm/cache-l2x0.h>
> +#include <asm/errata.h>
>  #include <asm/system.h>
>  
>  #define L310_AUX_CTRL_EARLY_BRESP		BIT(30)	/* R2P0+ */
> @@ -70,6 +71,9 @@ static void arria10_initialize_security_policies(void)
>  	/* BootROM leaves the L2X0 in a weird state. Always disable L2X0 for now. */
>  	l2c310_disable(l2x0_base);
>  
> +	enable_arm_errata_794072_war();
> +	enable_arm_errata_845369_war();
> +
>  	/* Put OCRAM in non-secure */
>  	writel(0x003f0000, ARRIA10_NOC_FW_OCRAM_OCRAM_SCR_REGION0);
>  	writel(0x1, ARRIA10_NOC_FW_OCRAM_OCRAM_SCR_EN);
> -- 
> 2.17.1
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
