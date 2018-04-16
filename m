Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7yKC-00045Z-UF
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 07:13:18 +0000
Date: Mon, 16 Apr 2018 09:13:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416071304.2gm2b6noqof3kokw@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180414175024.9962-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 03/10] ARM: i.MX6: Record reset reason as a part of startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Sat, Apr 14, 2018 at 10:50:17AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx6.c                      | 4 +++-
>  arch/arm/mach-imx/include/mach/reset-reason.h | 2 ++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 14a1cba5a..3d81c2785 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -19,6 +19,7 @@
>  #include <mach/imx6.h>
>  #include <mach/generic.h>
>  #include <mach/revision.h>
> +#include <mach/reset-reason.h>
>  #include <mach/imx6-anadig.h>
>  #include <mach/imx6-regs.h>
>  #include <mach/generic.h>
> @@ -151,6 +152,7 @@ int imx6_init(void)
>  {
>  	const char *cputypestr;
>  	u32 mx6_silicon_revision;
> +	void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
>  
>  	imx6_init_lowlevel();
>  
> @@ -195,7 +197,7 @@ int imx6_init(void)
>  	}
>  
>  	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
> -
> +	imx_set_reset_reason(src + IMX6_SRC_SRSR);

This will get overwritten by the watchdog driver if enabled.

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
