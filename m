Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7yKc-0004D0-PR
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 07:13:44 +0000
Date: Mon, 16 Apr 2018 09:13:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416071331.fsoqfwgti36uyxc3@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180414175024.9962-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 04/10] ARM: i.MX7: Record reset reason as a part of startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2018 at 10:50:18AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx7.c                      | 3 +++
>  arch/arm/mach-imx/include/mach/reset-reason.h | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
> index 4eef99c87..a5debd06c 100644
> --- a/arch/arm/mach-imx/imx7.c
> +++ b/arch/arm/mach-imx/imx7.c
> @@ -19,6 +19,7 @@
>  #include <mach/imx7.h>
>  #include <mach/generic.h>
>  #include <mach/revision.h>
> +#include <mach/reset-reason.h>
>  #include <mach/imx7-regs.h>
>  
>  void imx7_init_lowlevel(void)
> @@ -171,6 +172,7 @@ int imx7_init(void)
>  {
>  	const char *cputypestr;
>  	u32 imx7_silicon_revision;
> +	void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
>  
>  	imx7_init_lowlevel();
>  
> @@ -197,6 +199,7 @@ int imx7_init(void)
>  	}
>  
>  	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
> +	imx_set_reset_reason(src + IMX7_SRC_SRSR);

Same here.

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
