Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R2wtN-0004HY-Cj
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 03:09:06 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E95D5FFAED2
	for <barebox@lists.infradead.org>;
	Mon, 12 Sep 2011 05:09:21 +0200 (CEST)
Date: Mon, 12 Sep 2011 04:47:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110912024732.GB28104@game.jcrosoft.org>
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

On 13:46 Fri 09 Sep     , Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.
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
> -- 
> 1.7.4.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
