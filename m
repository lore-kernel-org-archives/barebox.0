Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jSI-0006NP-8e
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:53:27 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A1F49DC62C2
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:58:38 +0200 (CEST)
Date: Sat, 1 Sep 2012 10:53:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901085341.GI18708@game.jcrosoft.org>
References: <1346421308-24669-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346421308-24669-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX6: query silicon revision
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:55 Fri 31 Aug     , Steffen Trumtrar wrote:
> Read silicon revision from ???-register.
> This is based on a7683867463481bfea84af4d60af832ddfb3da7f from u-boot.
> The address 0x020c8260 is used and decoded. I haven't found that in my
> datasheet, so I must trust the code to be correct.
> At least on a SabreLite v1.0 I get the correct version though.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c |   36 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index b6067d7..9c90444 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -19,7 +19,7 @@
>  #include <common.h>
>  #include <io.h>
>  #include <sizes.h>
> -#include <mach/imx6-regs.h>
> +#include <mach/imx-regs.h>
>  
>  #include "gpio.h"
>  
> @@ -35,6 +35,40 @@ void *imx_gpio_base[] = {
>  
>  int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
>  
> +static u32 mx6_silicon_revision;
> +static char *mx6_rev_string = "unknown";
> +
> +int imx_silicon_revision(void)
> +{
> +	return mx6_silicon_revision;
> +}
> +
> +static int query_silicon_revision(void)
> +{
> +	void __iomem *anatop = (void *) MX6_ANATOP_BASE_ADDR;
> +	u32 rev, reg;
> +
> +	reg = readl(anatop + 0x260);
> +	/* read mx6 variant: quad, dual, solo */
> +	//rev = (reg >> 4) & 0xff000;
??

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
