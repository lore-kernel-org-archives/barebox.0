Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7yQl-00061D-OA
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 07:20:05 +0000
Date: Mon, 16 Apr 2018 09:19:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416071951.2is6xqlwlzju4wk2@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-9-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180414175024.9962-9-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 08/10] ARM: VFxxx: Add code to detect reset reason
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2018 at 10:50:22AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx.c                       | 78 +++++++++++++++++----------
>  arch/arm/mach-imx/include/mach/reset-reason.h | 11 ++++
>  2 files changed, 62 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index fb1160de9..e84713766 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -158,6 +158,7 @@ void imx_set_reset_reason(void __iomem *srsr)
>  {
>  	enum reset_src_type type = RESET_UKWN;
>  	const u32 reg = readl(srsr);
> +	const bool is_vf610 = cpu_is_vf610();
>  
>  	/*
>  	 * SRSR register captures ALL reset event that occured since
> @@ -166,37 +167,60 @@ void imx_set_reset_reason(void __iomem *srsr)
>  	 */
>  	writel(reg, srsr);
>  
> -	switch (reg) {
> -	case IMX_SRC_SRSR_IPP_RESET: /* FALLTHROUGH */
> -	case IMX_SRC_SRSR_IPP_RESET | IMX_SRC_SRSR_WDOG1_RESET:
> -		type = RESET_POR;
> -		break;
> -	case IMX_SRC_SRSR_WDOG3_RESET: /* FALLTHROUGH */
> -	case IMX_SRC_SRSR_WDOG4_RESET: /* FALLTHROUGH */
> -	case IMX_SRC_SRSR_WDOG1_RESET:
> -		type = RESET_WDG;
> -		break;
> -	case IMX_SRC_SRSR_JTAG_RESET: /* FALLTHROUGH */
> -	case IMX_SRC_SRSR_JTAG_SW_RESET:
> -		type = RESET_JTAG;
> -		break;
> -	case IMX_SRC_SRSR_TEMPSENSE_RESET:
> -		type = RESET_THERM;
> -		break;
> -	case IMX_SRC_SRSR_WARM_BOOT:
> -		type = RESET_RST;
> -		break;
> +	if (is_vf610) {

The caller already knows this is a vf610 and the code path for vf610 is
completely different. Please add a vf610_set_reset_reason() instead of
clobbering the i.MX function with this.

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
