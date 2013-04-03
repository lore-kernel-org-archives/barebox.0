Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHso-00012X-29
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:13:23 +0000
Date: Wed, 3 Apr 2013 09:13:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130403071320.GR1906@pengutronix.de>
References: <1364921887-6487-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364921887-6487-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH 1/2] mci-core: use dev_* for messages
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 02, 2013 at 06:58:06PM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/mci/mci-core.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index a269aee..49612de 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -430,8 +430,10 @@ static int mmc_change_freq(struct mci *mci)
>  	}
>  
>  	/* No high-speed support */
> -	if (!mci->ext_csd[EXT_CSD_HS_TIMING])
> +	if (!mci->ext_csd[EXT_CSD_HS_TIMING]) {
> +		dev_dbg(mci->mci_dev, "No high-speed support\n");
>  		return 0;
> +	}
>  
>  	/* High Speed is set, there are two types: 52MHz and 26MHz */
>  	if (cardtype & EXT_CSD_CARD_TYPE_52)
> @@ -669,7 +671,8 @@ static void mci_detect_version_from_csd(struct mci *mci)
>  			mci->version = MMC_VERSION_1_2;
>  			break;
>  		}
> -		printf("detected card version %s\n", vstr);
> +
> +		dev_info(mci->mci_dev, "detected card version %s\n", vstr);
>  	}
>  }
>  
> @@ -1169,7 +1172,7 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
>  	}
>  
>  	if (block > MAX_BUFFER_NUMBER) {
> -		pr_err("Cannot handle block number %d. Too large!\n", block);
> +		dev_err(mci->mci_dev, "Cannot handle block number %d. Too large!\n", block);
>  		return -EINVAL;
>  	}
>  
> @@ -1366,7 +1369,7 @@ static int mci_card_probe(struct mci *mci)
>  	/* start with a host interface reset */
>  	rc = (host->init)(host, mci->mci_dev);
>  	if (rc) {
> -		pr_err("Cannot reset the SD/MMC interface\n");
> +		dev_err(mci->mci_dev, "Cannot reset the SD/MMC interface\n");
>  		return rc;
>  	}
>  
> @@ -1376,7 +1379,7 @@ static int mci_card_probe(struct mci *mci)
>  	/* reset the card */
>  	rc = mci_go_idle(mci);
>  	if (rc) {
> -		pr_warning("Cannot reset the SD/MMC card\n");
> +		dev_warn(mci->mci_dev, "Cannot reset the SD/MMC card\n");
>  		goto on_error;
>  	}
>  
> -- 
> 1.8.1.3
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
