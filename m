Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZYpHT-0001NJ-HH
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 05:47:52 +0000
Date: Mon, 7 Sep 2015 07:47:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150907054729.GX18700@pengutronix.de>
References: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
 <1441175333-26759-3-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441175333-26759-3-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 3/4] drivers: mci: Add mci_get_device_by_name function
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 02, 2015 at 08:28:52AM +0200, Daniel Schultz wrote:
> Get a 'struct mci' by search after the device name.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> 
> Changes:
> 	v3:
> 	New with patch v3
> 
>  drivers/mci/mci-core.c | 16 ++++++++++++++++
>  include/mci.h          |  8 ++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c22f932..d6865d1 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -53,6 +53,8 @@
>  		__res & __mask;						\
>  	})
>  
> +LIST_HEAD(mci_list);
> +
>  /**
>   * @file
>   * @brief Memory Card framework
> @@ -1753,6 +1755,8 @@ int mci_register(struct mci_host *host)
>  		mci->dev.id = DEVICE_ID_DYNAMIC;
>  	}
>  
> +	list_add_tail(&mci->list, &mci_list);
> +

mci_register() may fail later in which case you end up with an undefined
entry in the mci_list. This should be done near the end of
mci_register() when it can't fail anymore.

>  	mci->dev.platform_data = host;
>  	mci->dev.parent = host->hw_dev;
>  	mci->host = host;
> @@ -1844,3 +1848,15 @@ void mci_of_parse(struct mci_host *host)
>  
>  	host->non_removable = of_property_read_bool(np, "non-removable");
>  }
> +
> +struct mci *mci_get_device_by_name(const char *name)
> +{
> +	struct mci *dev;
> +
> +	for_each_mci_device(dev) {
> +		if (!strcmp(dev->cdevname, name))
> +			return dev;
> +	}

dev->cdevname is initialized only in mci_card_probe() and only when
actually a card is detected. This causes a NULL pointer exception for
example when a there's no card in a slot. This has to be checked here.

It's a bit confusing when a variable named 'dev' not of type struct
device_d. Please rather use more specific names, like 'mci' in this
case.

I applied a fixed version to the -next branch.

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
