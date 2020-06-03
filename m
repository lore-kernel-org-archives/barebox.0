Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNhI-0000jU-KF
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 07:20:25 +0000
Date: Wed, 3 Jun 2020 09:20:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603072022.GT11869@pengutronix.de>
References: <20200602080049.8451-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602080049.8451-1-a.fatoum@pengutronix.de>
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
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2020 at 10:00:47AM +0200, Ahmad Fatoum wrote:
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
>  drivers/mci/mci-core.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index e8844a3c0007..09e66bad472e 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1811,6 +1811,18 @@ static int mci_detect(struct device_d *dev)
>  	return mci_detect_card(mci->host);
>  }
>  
> +static int mci_hw_detect(struct device_d *dev)
> +{
> +	struct mci *mci;
> +
> +	list_for_each_entry(mci, &mci_list, list) {
> +		if (dev == &mci->dev || dev == mci->host->hw_dev)
> +			return mci_detect_card(mci->host);

The test for dev == &mci->dev is unnecessary. Removed it and applied,
thanks

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
