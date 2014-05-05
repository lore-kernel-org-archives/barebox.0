Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhCvQ-0003Wj-8C
 for barebox@lists.infradead.org; Mon, 05 May 2014 07:02:57 +0000
Date: Mon, 5 May 2014 09:02:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505070230.GQ5858@pengutronix.de>
References: <1398885069-4078-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398885069-4078-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] imx:mmdc:Move imx6-reg include to imx6-mmdc header
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 30, 2014 at 09:11:09PM +0200, Christian Hemp wrote:
> Move the imx6-reg.h include to the imx6-mmdc header.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/imx6-mmdc.c              |    1 -
>  arch/arm/mach-imx/include/mach/imx6-mmdc.h |    1 +
>  2 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
> index 9686bee..0e706ce 100644
> --- a/arch/arm/mach-imx/imx6-mmdc.c
> +++ b/arch/arm/mach-imx/imx6-mmdc.c
> @@ -17,7 +17,6 @@
>   */
>  #include <common.h>
>  #include <io.h>
> -#include <mach/imx6-regs.h>
>  #include <mach/imx6-mmdc.h>
>  
>  int mmdc_do_write_level_calibration(void)
> diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> index 0017174..d07950d 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> @@ -1,6 +1,7 @@
>  #ifndef __MACH_MMDC_H
>  #define __MACH_MMDC_H
>  
> +#include <mach/imx6-regs.h>
>  
>  #define P0_IPS (void __iomem *)MX6_MMDC_P0_BASE_ADDR
>  #define P1_IPS (void __iomem *)MX6_MMDC_P1_BASE_ADDR
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
