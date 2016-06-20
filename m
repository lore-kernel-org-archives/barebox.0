Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEslj-0003od-Qz
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 06:33:12 +0000
Date: Mon, 20 Jun 2016 08:32:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160620063247.GM9677@pengutronix.de>
References: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/4] mci: imx: Use mci_register() return value for driver
 probe.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jun 18, 2016 at 04:28:55PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/mci/imx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied all, thanks

Sascha

> 
> diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
> index 2788fb9..4f29ddf 100644
> --- a/drivers/mci/imx.c
> +++ b/drivers/mci/imx.c
> @@ -519,9 +519,7 @@ static int mxcmci_probe(struct device_d *dev)
>  	host->mci.f_min = rate >> 7;
>  	host->mci.f_max = rate >> 1;
>  
> -	mci_register(&host->mci);
> -
> -	return 0;
> +	return mci_register(&host->mci);
>  }
>  
>  static __maybe_unused struct of_device_id mxcmci_compatible[] = {
> -- 
> 2.4.9
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
