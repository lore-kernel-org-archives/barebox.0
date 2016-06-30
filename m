Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIVgb-0007dv-FV
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 06:42:54 +0000
Date: Thu, 30 Jun 2016 08:42:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160630064231.GX20657@pengutronix.de>
References: <1467217562-16048-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467217562-16048-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] mfd: mc13xxx: VGEN1 and VGEN2 voltage bits positioned in
 "Regulator Setting 0" register
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi ALexander,

On Wed, Jun 29, 2016 at 07:26:02PM +0300, Alexander Shiyan wrote:
> The bits VGEN10-11 and VGEN20-22 is positioned in the Regulator Setting 0
> register. This patch fixes these definitions and board (Efika MX), which
> uses this voltages.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Have you tested this on real hardware? The register definitions may be
wrong, but I'm unsure if the actual register writes may be right. It
could be that I decoded binary register values (from U-Boot maybe) to
the symbols we actually had.

Sascha

> ---
>  arch/arm/boards/efika-mx-smartbook/board.c |  8 +++++---
>  include/mfd/mc13892.h                      | 28 ++++++++++++++--------------
>  2 files changed, 19 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
> index d1d020e..d7c11dc 100644
> --- a/arch/arm/boards/efika-mx-smartbook/board.c
> +++ b/arch/arm/boards/efika-mx-smartbook/board.c
> @@ -122,9 +122,13 @@ static void efikamx_power_init(struct mc13xxx *mc)
>  	/* Set VDIG to 1.8V, VGEN3 to 1.8V, VCAM to 2.6V */
>  	mc13xxx_reg_read(mc, MC13892_REG_SETTING_0, &val);
>  	val &= ~(MC13892_SETTING_0_VCAM_MASK |
> +		MC13892_SETTING_0_VGEN1_MASK |
> +		MC13892_SETTING_0_VGEN2_MASK |
>  		MC13892_SETTING_0_VGEN3_MASK |
>  		MC13892_SETTING_0_VDIG_MASK);
>  	val |= MC13892_SETTING_0_VDIG_1_8 |
> +		MC13892_SETTING_0_VGEN1_1_2 |
> +		MC13892_SETTING_0_VGEN2_3_15 |
>  		MC13892_SETTING_0_VGEN3_1_8 |
>  		MC13892_SETTING_0_VCAM_2_6;
>  	mc13xxx_reg_write(mc, MC13892_REG_SETTING_0, val);
> @@ -136,9 +140,7 @@ static void efikamx_power_init(struct mc13xxx *mc)
>  			MC13892_SETTING_1_VAUDIO_MASK);
>  	val |= MC13892_SETTING_1_VSD_3_15 |
>  		MC13892_SETTING_1_VAUDIO_3_0 |
> -		MC13892_SETTING_1_VVIDEO_2_775 |
> -		MC13892_SETTING_1_VGEN1_1_2 |
> -		MC13892_SETTING_1_VGEN2_3_15;
> +		MC13892_SETTING_1_VVIDEO_2_775;
>  	mc13xxx_reg_write(mc, MC13892_REG_SETTING_1, val);
>  
>  	/* Enable VGEN1, VGEN2, VDIG, VPLL */
> diff --git a/include/mfd/mc13892.h b/include/mfd/mc13892.h
> index 22df5f0..c92a462 100644
> --- a/include/mfd/mc13892.h
> +++ b/include/mfd/mc13892.h
> @@ -95,22 +95,22 @@
>  #define MC13892_SETTING_1_VSD_3_0	(6 << 6)
>  #define MC13892_SETTING_1_VSD_3_15	(7 << 6)
>  #define MC13892_SETTING_1_VSD_MASK	(7 << 6)
> -#define MC13892_SETTING_1_VGEN1_1_2	0
> -#define MC13892_SETTING_1_VGEN1_1_5	1
> -#define MC13892_SETTING_1_VGEN1_2_775	2
> -#define MC13892_SETTING_1_VGEN1_3_15	3
> -#define MC13892_SETTING_1_VGEN1_MASK	3
> -#define MC13892_SETTING_1_VGEN2_1_2	(0 << 6)
> -#define MC13892_SETTING_1_VGEN2_1_5	(1 << 6)
> -#define MC13892_SETTING_1_VGEN2_1_6	(2 << 6)
> -#define MC13892_SETTING_1_VGEN2_1_8	(3 << 6)
> -#define MC13892_SETTING_1_VGEN2_2_7	(4 << 6)
> -#define MC13892_SETTING_1_VGEN2_2_8	(5 << 6)
> -#define MC13892_SETTING_1_VGEN2_3_0	(6 << 6)
> -#define MC13892_SETTING_1_VGEN2_3_15	(7 << 6)
> -#define MC13892_SETTING_1_VGEN2_MASK	(7 << 6)
>  
>  /* Fields in REG_SETTING_0 */
> +#define MC13892_SETTING_0_VGEN1_1_2	(0 << 0)
> +#define MC13892_SETTING_0_VGEN1_1_5	(1 << 0)
> +#define MC13892_SETTING_0_VGEN1_2_775	(2 << 0)
> +#define MC13892_SETTING_0_VGEN1_3_15	(3 << 0)
> +#define MC13892_SETTING_0_VGEN1_MASK	(3 << 0)
> +#define MC13892_SETTING_0_VGEN2_1_2	(0 << 6)
> +#define MC13892_SETTING_0_VGEN2_1_5	(1 << 6)
> +#define MC13892_SETTING_0_VGEN2_1_6	(2 << 6)
> +#define MC13892_SETTING_0_VGEN2_1_8	(3 << 6)
> +#define MC13892_SETTING_0_VGEN2_2_7	(4 << 6)
> +#define MC13892_SETTING_0_VGEN2_2_8	(5 << 6)
> +#define MC13892_SETTING_0_VGEN2_3_0	(6 << 6)
> +#define MC13892_SETTING_0_VGEN2_3_15	(7 << 6)
> +#define MC13892_SETTING_0_VGEN2_MASK	(7 << 6)
>  #define MC13892_SETTING_0_VGEN3_1_8	(0 << 14)
>  #define MC13892_SETTING_0_VGEN3_2_9	(1 << 14)
>  #define MC13892_SETTING_0_VGEN3_MASK	(1 << 14)
> -- 
> 2.4.9
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
