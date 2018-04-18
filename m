Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8ovu-0001RB-LI
 for barebox@lists.infradead.org; Wed, 18 Apr 2018 15:23:44 +0000
Message-ID: <1524065010.3528.9.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed, 18 Apr 2018 17:23:30 +0200
In-Reply-To: <20180414175024.9962-3-andrew.smirnov@gmail.com>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-3-andrew.smirnov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 02/10] ARM: i.MX: Add infrastructure to record SoC reset
 reason
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sat, 2018-04-14 at 10:50 -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx.c                       | 49 +++++++++++++++++++++++++++
>  arch/arm/mach-imx/include/mach/reset-reason.h | 17 ++++++++++
>  2 files changed, 66 insertions(+)
>  create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h
> 
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index 9400105c6..e860e298a 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -14,8 +14,11 @@
>  #include <common.h>
>  #include <of.h>
>  #include <init.h>
> +#include <io.h>
>  #include <mach/revision.h>
> +#include <mach/reset-reason.h>
>  #include <mach/generic.h>
> +#include <reset_source.h>
>  
>  static int __imx_silicon_revision = IMX_CHIP_REV_UNKNOWN;
>  
> @@ -147,3 +150,49 @@ static int imx_init(void)
>  	return ret;
>  }
>  postcore_initcall(imx_init);
> +
> +void imx_set_reset_reason(void __iomem *srsr)
> +{
> +	enum reset_src_type type = RESET_UKWN;
> +	const u32 reg = readl(srsr);
> +
> +	/*
> +	 * SRSR register captures ALL reset event that occured since
> +	 * POR, so we need to clear it to make sure we only caputre
> +	 * the latest one.
> +	 */
> +	writel(reg, srsr);

What if, say, both a watchdog and the tempsense reset have triggered
since last POR (or since last clearing of SRSR)?
In that case we'll report RESET_UKWN *and* throw away the SRSR
information here.

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
