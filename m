Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFxvU-0008MP-Ct
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 06:15:45 +0000
Date: Thu, 23 Jun 2016 08:15:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623061521.GD4750@pengutronix.de>
References: <1466414894-6643-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466414894-6643-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] aiodev: imx_thermal: remove empty include
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 20, 2016 at 11:28:13AM +0200, Lucas Stach wrote:
> This file doesn't hold any content any more, so there is no
> need to include it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/aiodev/imx_thermal.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
> index 08532a743fcb..1928ed867ca5 100644
> --- a/drivers/aiodev/imx_thermal.c
> +++ b/drivers/aiodev/imx_thermal.c
> @@ -33,7 +33,6 @@
>  #include <linux/math64.h>
>  #include <linux/log2.h>
>  #include <linux/clk.h>
> -#include <mach/clock.h>
>  #include <mach/imx6-anadig.h>
>  #include <io.h>
>  #include <aiodev.h>
> -- 
> 2.8.1
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
