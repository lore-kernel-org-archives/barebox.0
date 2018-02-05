Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eib7r-0005nq-8i
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 07:23:41 +0000
Date: Mon, 5 Feb 2018 08:23:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180205072324.xap3xxejr6elc674@pengutronix.de>
References: <20180130154013.8446-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180130154013.8446-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] net: designware: add missing headers
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 30, 2018 at 04:40:12PM +0100, Lucas Stach wrote:
> As the eth_device and mii_bus structs are allocated inside the
> dw_eth_dev struct a forward declaration isn't enough.
> 
> Fixes: c1f902841ce3 (net: designware: move probe to generic driver)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/designware.h         | 3 +--
>  drivers/net/designware_generic.c | 1 +
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware.h b/drivers/net/designware.h
> index c9dc27a59474..4a99fa2aa60b 100644
> --- a/drivers/net/designware.h
> +++ b/drivers/net/designware.h
> @@ -20,8 +20,7 @@
>  #ifndef __DESIGNWARE_ETH_H
>  #define __DESIGNWARE_ETH_H
>  
> -struct eth_device;
> -struct mii_bus;
> +#include <net.h>
>  
>  struct dw_eth_dev {
>  	struct eth_device netdev;
> diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
> index 0e5b9c067b6b..29269deac9e9 100644
> --- a/drivers/net/designware_generic.c
> +++ b/drivers/net/designware_generic.c
> @@ -22,6 +22,7 @@
>   */
>  
>  #include <common.h>
> +#include <init.h>
>  #include "designware.h"
>  
>  static struct dw_eth_drvdata dwmac_370a_drvdata = {
> -- 
> 2.15.1
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
