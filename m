Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33kP-0007Sh-50
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:28:18 +0000
Date: Mon, 12 Sep 2011 12:28:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110912102815.GT31404@pengutronix.de>
References: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
	<1315568809-17776-2-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315568809-17776-2-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH 3/4] atmel_mci: handle clk_get error correctly
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 09, 2011 at 01:46:48PM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/mci/atmel_mci.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index b4489dd..943ab34 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -23,6 +23,7 @@
>  #include <asm/io.h>
>  #include <mach/board.h>
>  #include <linux/clk.h>
> +#include <linux/err.h>
>  
>  #include "at91_mci.h"
>  
> @@ -460,9 +461,9 @@ static int mci_probe(struct device_d *hw_dev)
>  	host->hw_dev = hw_dev;
>  	hw_dev->priv = host;
>  	host->clk = clk_get(hw_dev, "mci_clk");
> -	if (host->clk == NULL) {
> +	if (IS_ERR(host->clk)) {
>  		dev_err(hw_dev, "no mci_clk\n");
> -		return -EINVAL;
> +		return PTR_ERR(host->clk);
>  	}
>  
>  	clk_rate = clk_get_rate(host->clk);

Applied 1-3 to next (could have gone to master, but the fixes are
probably not that urgent)

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
