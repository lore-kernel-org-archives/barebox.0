Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TeIhF-0000E5-3B
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 04:59:30 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D22F6FF8EBB
 for <barebox@lists.infradead.org>; Fri, 30 Nov 2012 06:11:09 +0100 (CET)
Date: Fri, 30 Nov 2012 05:57:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121130045732.GA8327@game.jcrosoft.org>
References: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
 <1354215748-25394-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354215748-25394-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/5] mci: Allow to specify device name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:02 Thu 29 Nov     , Sascha Hauer wrote:
> When multiple MMC/SD cards are present in the system we often
> have to have persistent names to identify them during runtime.
> This patch allows to overwrite the devicename which is used.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |   10 +++++++---
>  include/mci.h          |    1 +
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 942d126..6e556a8 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1397,9 +1397,13 @@ static int mci_card_probe(struct mci *mci)
>  	mci->blk.dev = mci->mci_dev;
>  	mci->blk.ops = &mci_ops;
>  
> -	disknum = cdev_find_free_index("disk");
> +	if (host->devname) {
> +		mci->blk.cdev.name = strdup(host->devname);
		can you use is a based name not the name
> +	} else {
> +		disknum = cdev_find_free_index("disk");
> +		mci->blk.cdev.name = asprintf("disk%d", disknum);
> +	}
>  
> -	mci->blk.cdev.name = asprintf("disk%d", disknum);
>  	mci->blk.blockbits = SECTOR_SHIFT;
>  	mci->blk.num_blocks = mci_calc_blk_cnt(mci->capacity, mci->blk.blockbits);
>  
> @@ -1409,7 +1413,7 @@ static int mci_card_probe(struct mci *mci)
>  		goto on_error;
>  	}
>  
> -	dev_info(mci->mci_dev, "registered disk%d\n", disknum);
> +	dev_info(mci->mci_dev, "registered %s\n", mci->blk.cdev.name);
>  
>  	/* create partitions on demand */
>  	rc = parse_partition_table(&mci->blk);
> diff --git a/include/mci.h b/include/mci.h
> index db78b9c..0041e27 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -286,6 +286,7 @@ struct mci_ios {
>  /** host information */
>  struct mci_host {
>  	struct device_d *hw_dev;	/**< the host MCI hardware device */
> +	char *devname;			/**< the devicename for the card, defaults to disk%d */
>  	unsigned voltages;
>  	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
>  	unsigned f_min;		/**< host interface lower limit */
> -- 
> 1.7.10.4
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
