Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsmj-0002O2-6p
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:50:15 +0000
Date: Wed, 17 May 2017 08:49:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517064951.pwy6ndsyf2itygfs@pengutronix.de>
References: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH 1/3] ARM: i.MX: Add i.MX6 ULL support
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, May 11, 2017 at 11:09:26AM +0200, Stefan Riedmueller wrote:
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/mach-imx/imx.c               | 2 ++
>  arch/arm/mach-imx/imx6.c              | 3 +++
>  arch/arm/mach-imx/include/mach/imx6.h | 2 ++
>  3 files changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index 1990739..9400105 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -67,6 +67,8 @@ static int imx_soc_from_dt(void)
>  		return IMX_CPU_IMX6;
>  	if (of_machine_is_compatible("fsl,imx6ul"))
>  		return IMX_CPU_IMX6;
> +	if (of_machine_is_compatible("fsl,imx6ull"))
> +		return IMX_CPU_IMX6;
>  	if (of_machine_is_compatible("fsl,imx7s"))
>  		return IMX_CPU_IMX7;
>  	if (of_machine_is_compatible("fsl,imx7d"))
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 44a8dbe..7b3fc1d 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -160,6 +160,9 @@ int imx6_init(void)
>  	case IMX6_CPUTYPE_IMX6UL:
>  		cputypestr = "i.MX6 UltraLite";
>  		break;
> +	case IMX6_CPUTYPE_IMX6ULL:
> +		cputypestr = "i.MX6 ULL";
> +		break;
>  	default:
>  		cputypestr = "unknown i.MX6";
>  		break;
> diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
> index 327676b..6ad5343 100644
> --- a/arch/arm/mach-imx/include/mach/imx6.h
> +++ b/arch/arm/mach-imx/include/mach/imx6.h
> @@ -18,6 +18,7 @@ void imx6_init_lowlevel(void);
>  #define IMX6_CPUTYPE_IMX6D	0x263
>  #define IMX6_CPUTYPE_IMX6Q	0x463
>  #define IMX6_CPUTYPE_IMX6UL	0x164
> +#define IMX6_CPUTYPE_IMX6ULL	0x165
>  
>  #define SCU_CONFIG              0x04
>  
> @@ -82,6 +83,7 @@ DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
>  DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
>  DEFINE_MX6_CPU_TYPE(mx6sl, IMX6_CPUTYPE_IMX6SL);
>  DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
> +DEFINE_MX6_CPU_TYPE(mx6ull, IMX6_CPUTYPE_IMX6ULL);
>  
>  static inline int __imx6_cpu_revision(void)
>  {
> -- 
> 1.9.1
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
