Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjkU-0001dV-5S
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:53:44 +0000
Date: Tue, 26 Sep 2017 08:53:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926065320.ym7c4xqtdrp4zkv6@pengutronix.de>
References: <20170920155044.1841-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170920155044.1841-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] mmc: allow skipping SD card initialization
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 20, 2017 at 05:50:44PM +0200, Philipp Zabel wrote:
> This patch allows to skip SD card initialization for eMMCs by setting
> the "no-sd" property in the host controller device tree node. Avoiding
> two SD command timeouts speeds up detection time by well over 200 ms.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 12 ++++++++----
>  include/mci.h          |  1 +
>  2 files changed, 9 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 07911d43d..208b7666d 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1682,10 +1682,13 @@ static int mci_card_probe(struct mci *mci)
>  	}
>  
>  	/* Check if this card can handle the "SD Card Physical Layer Specification 2.0" */
> -	rc = sd_send_if_cond(mci);
> -	rc = sd_send_op_cond(mci);
> -	if (rc && rc == -ETIMEDOUT) {
> -		/* If the command timed out, we check for an MMC card */
> +	if (!host->no_sd) {
> +		rc = sd_send_if_cond(mci);
> +		rc = sd_send_op_cond(mci);
> +	}
> +	if (host->no_sd || rc == -ETIMEDOUT) {
> +		/* If SD card initialization was skipped or if it timed out,
> +		 * we check for an MMC card */
>  		dev_dbg(&mci->dev, "Card seems to be a MultiMediaCard\n");
>  		rc = mmc_send_op_cond(mci);
>  	}
> @@ -1904,6 +1907,7 @@ void mci_of_parse_node(struct mci_host *host,
>  	}
>  
>  	host->non_removable = of_property_read_bool(np, "non-removable");
> +	host->no_sd = of_property_read_bool(np, "no-sd");
>  }
>  
>  void mci_of_parse(struct mci_host *host)
> diff --git a/include/mci.h b/include/mci.h
> index d3115e8cc..1f6533391 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -403,6 +403,7 @@ struct mci_host {
>  	unsigned dsr_val;	/**< optional dsr value */
>  	int use_dsr;		/**< optional dsr usage flag */
>  	bool non_removable;	/**< device is non removable */
> +	bool no_sd;		/**< do not send SD commands during initialization */
>  	struct regulator *supply;
>  
>  	/** init the host interface */
> -- 
> 2.11.0
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
