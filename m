Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieG4l-0004rF-Q2
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:15:37 +0000
Date: Mon, 9 Dec 2019 11:15:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20191209101531.jzbivhbpgq3osenn@pengutronix.de>
References: <20191209100034.16755-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209100034.16755-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Revert "mci: core: make mci_register -EPROBE_DEFER
 sensitive"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On 19-12-09 11:00, Sascha Hauer wrote:
> The patch does the right thing: When a regulator can't be found and
> -EPROBE_DEFER is returned we forward it. However, we have several boards
> in the tree which do not have any driver for the regulator, but still
> work because the regulator is enabled by default or by board code.
> 
> Revert this patch until a solution for these board is found.

Unfortunately those boards relying on a wrong default behaviour.

> This reverts commit 2e16c52ea277dd002235835a10f349233c31d965.

Anyway if it breaks to much we need to revert it. Should we add a
comment to told future developers to don't add the check here again?

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco
> ---
>  drivers/mci/mci-core.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 9e39cbbb55..67257bcd18 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1819,10 +1819,6 @@ int mci_register(struct mci_host *host)
>  
>  	host->supply = regulator_get(host->hw_dev, "vmmc");
>  	if (IS_ERR(host->supply)) {
> -		if (host->supply == ERR_PTR(-EPROBE_DEFER)) {
> -			ret = -EPROBE_DEFER;
> -			goto err_free;
> -		}
>  		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
>  		host->supply = NULL;
>  	}
> -- 
> 2.24.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
