Delivery-date: Wed, 20 Jul 2022 10:25:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE51J-00FOll-Rx
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 10:25:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE51H-00042Q-Ra
	for lore@pengutronix.de; Wed, 20 Jul 2022 10:25:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5p2UNoudj1eF0NqiYbIY4xFrLpE/nfFyZa32kn+vjFU=; b=wY7lu790jKo6jEuA4ky+UlZhgV
	DfcjoZ+/pKtdxsxzQo+CTt+xze20zKUEsVhTRgjY0JnhZ7/CffxWbo0NcMer9z2GWj1gxjvZgSaNV
	gCisE/PX01rZHLDxwYtp8EJnoE/KUEc00nFSwW3AuM1HbfgpfqX8ni2RDXL+emJVjZD9ecWj/r+55
	L7d4Eppje08A2xP6cl1c5QTZqrIq9EjxHFoy5bSKTqgfo15dqv/zys/FrGcHP3llGIYfSj+i+e1Gx
	5lkAr9QDgeocL5BFuiBweWnBLdVsH8j50fmKqTt9D+ubgjsFOP6IBp6OyEmy75qCEaDmxYWH9gqZZ
	TkTuEooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE4zV-002Wqj-Ng; Wed, 20 Jul 2022 08:23:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE4zR-002Wmv-BV
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 08:23:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oE4zO-0003sR-Fh; Wed, 20 Jul 2022 10:23:26 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oE4zO-0004S4-6t; Wed, 20 Jul 2022 10:23:26 +0200
Date: Wed, 20 Jul 2022 10:23:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220720082326.jxs7rawn3nfaj72q@pengutronix.de>
References: <20220720041525.3454022-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220720041525.3454022-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_012329_419524_05426A19 
X-CRM114-Status: GOOD (  27.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: add new MCI_BROKEN_CD option for testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 22-07-20, Ahmad Fatoum wrote:
> In remote labs co-located with other hardware, we've observed card
> detect levers of different boards to sporadically fail to detect
> the card, e.g. because the cable on the usbsdmux was yanked around
> by accident. When this happens, barebox usually boots up normally as
> the card detect is ignored and then Linux waits indefinitely for
> the card-detect to turn active. Add a new config option that can be
> enabled to avoid these issues altogether.

what do you think about to have a device property instead of a compile
time depend behaviour? One use case could be a field return customer
board and the customer didn't enabled this Kconfig option since he had
no issues. This board can't be reprogrammed because it is secure locked.
It would be cool to have your live-patching on such boards.

Regards,
  Marco

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/Kconfig    | 15 +++++++++++++++
>  drivers/mci/mci-core.c | 35 +++++++++++++++++++++++++++++++----
>  2 files changed, 46 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 21d53c0c3f0b..651e59259790 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -56,6 +56,21 @@ config MCI_MMC_GPP_PARTITIONS
>  	  Note: by default, 'MMC' devices have no 'general purpose partitions',
>  	  it requires a special one-time configuration step to enable them.
>  
> +config MCI_BROKEN_CD
> +	bool "ignore card-detect pin on boot and in OS"
> +	help
> +	  Say 'y' here to have barebox unconditionally ignore the
> +	  card-detect pin for its own operation and manipulate the
> +	  kernel DT, so all detected MCI cards are polled instead
> +	  of expecting the card detect lever to behave correctly.
> +	  If you need more fine grained control use of_property
> +	  in an init script:
> +
> +	    of_property -fd mmc0 cd-gpios
> +	    of_property -fs mmc0 broken-cd
> +
> +	  If unsure, say 'n' here.
> +
>  comment "--- MCI host drivers ---"
>  
>  config MCI_DW
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index b8f71e15986e..6018391e1abb 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1739,6 +1739,27 @@ static int mci_register_partition(struct mci_part *part)
>  	return 0;
>  }
>  
> +static int of_broken_cd_fixup(struct device_node *root, void *ctx)
> +{
> +	struct device_d *hw_dev = ctx;
> +	struct device_node *np;
> +	char *name;
> +
> +	name = of_get_reproducible_name(hw_dev->device_node);
> +	np = of_find_node_by_reproducible_name(root, name);
> +	free(name);
> +	if (!np) {
> +		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
> +			 hw_dev->device_node->full_name);
> +		return -EINVAL;
> +	}
> +
> +	of_property_write_bool(np, "cd-gpios", false);
> +	of_property_write_bool(np, "broken-cd", true);
> +
> +	return 0;
> +}
> +
>  /**
>   * Probe an MCI card at the given host interface
>   * @param mci MCI device instance
> @@ -1750,10 +1771,13 @@ static int mci_card_probe(struct mci *mci)
>  	int i, rc, disknum, ret;
>  	bool has_bootpart = false;
>  
> -	if (host->card_present && !host->card_present(host) &&
> -	    !host->non_removable) {
> -		dev_err(&mci->dev, "no card inserted\n");
> -		return -ENODEV;
> +	if (host->card_present && !host->card_present(host) && !host->non_removable) {
> +		if (IS_ENABLED(CONFIG_MCI_BROKEN_CD)) {
> +			dev_info(&mci->dev, "no card inserted (ignoring)\n");
> +		} else {
> +			dev_err(&mci->dev, "no card inserted\n");
> +			return -ENODEV;
> +		}
>  	}
>  
>  	ret = regulator_enable(host->supply);
> @@ -1839,6 +1863,9 @@ static int mci_card_probe(struct mci *mci)
>  					   &mci->boot_ack_enable, mci);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_MCI_BROKEN_CD) && !host->no_sd && dev_of_node(host->hw_dev))
> +		return of_register_fixup(of_broken_cd_fixup, host->hw_dev);
> +
>  	dev_dbg(&mci->dev, "SD Card successfully added\n");
>  
>  on_error:
> -- 
> 2.30.2
> 
> 
> 


