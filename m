Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZ5y-000474-V9
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:17:53 +0000
Date: Mon, 18 May 2020 08:17:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518061744.GH11869@pengutronix.de>
References: <20200517181941.6982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517181941.6982-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] mci: define fall-back hw_dev->detect for all MCIs
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>

On Sun, May 17, 2020 at 08:19:39PM +0200, Ahmad Fatoum wrote:
> A barebox environment oftree node may reference its storage by a phandle
> to a partition node under a MCI node. barebox will then call the
> device's detect method to detect the card if this hasn't happened
> before. Out of 17 MCI drivers, 8 host drivers already implement
> a detect method, which just calls mci_detect_card.
> 
> Provide a generic implementation that does the same.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Lucas Stach <lst@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index e8844a3c0007..ab80c4d5ba5c 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1806,9 +1806,14 @@ int mci_detect_card(struct mci_host *host)
>  
>  static int mci_detect(struct device_d *dev)
>  {
> -	struct mci *mci = container_of(dev, struct mci, dev);
> +	struct mci *mci;
> +
> +	list_for_each_entry(mci, &mci_list, list) {
> +		if (dev == &mci->dev || dev == mci->host->hw_dev)
> +			return mci_detect_card(mci->host);
> +	}

I think it would look better to keep the existing mci_detect function
and add a new mci_hw_detect which does the loop for the hw device only.

Otherwise I'm happy with this approach.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
