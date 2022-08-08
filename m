Delivery-date: Mon, 08 Aug 2022 15:42:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL31H-00GE0c-8N
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:42:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL31H-0004fg-Nd
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:42:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2IJyPOq/x8hFzA+qu28xEWM5UIsyHPjgXbT0Vyqoa+o=; b=BBqDAl3nPJdoEqFgreFdgll8bq
	eOpKlZ2HsJeJLhMNCHWvD6qRvrvw6sR/NG/heE9FImNIK8dqd/WDEiz9fGrGewKPIZm9Gri/HdZcJ
	CU0hzluyR4mSsioejmHrFjP8sqltj6YclRFug+BnQyY6Y13x2JUKzZwGvY2wEGobnTY691q7Sy9K6
	HY6GpO+kGjKQSXe7StnHeAuiSVjUW+tuAu3DB9/pVIs3kaANDMD2qQidIW4dkrKVPUyPKticg25nC
	1DG4PQrZA02m0SzM5qmefxGlpTHtmQVc0BumwNsz7qjFEzu+XiseKTJbS0CrNDIZRX+8O19MKe76M
	hSJ2QDIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL302-00EA3y-AO; Mon, 08 Aug 2022 13:40:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2zy-00EA36-5M
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:40:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2zw-0004RC-DQ; Mon, 08 Aug 2022 15:40:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2zw-0004W9-4S; Mon, 08 Aug 2022 15:40:48 +0200
Date: Mon, 8 Aug 2022 15:40:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808134048.GS31528@pengutronix.de>
References: <20220725115856.1288819-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220725115856.1288819-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_064050_226314_28815006 
X-CRM114-Status: GOOD (  33.49  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] mci: add new MCI_BROKEN_CD option for testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 25, 2022 at 01:58:56PM +0200, Ahmad Fatoum wrote:
> In remote labs co-located with other hardware, we've observed card
> detect levers of different boards to sporadically fail to detect
> the card, e.g. because the cable on the usbsdmux was yanked around
> by accident. When this happens, barebox usually boots up normally as
> the card detect is ignored and then Linux waits indefinitely for
> the card-detect to turn active. Add a new config option that can be
> enabled to avoid these issues altogether.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - use early exit instead of if-else
>   - don't fail mci_card_probe if of_register_fixup fails
> ---
>  drivers/mci/Kconfig    | 15 +++++++++++++++
>  drivers/mci/mci-core.c | 36 ++++++++++++++++++++++++++++++++----
>  2 files changed, 47 insertions(+), 4 deletions(-)
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
> index 82e2f82f5377..4db2253c3a80 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1727,6 +1727,27 @@ static int mci_register_partition(struct mci_part *part)
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
> @@ -1737,10 +1758,13 @@ static int mci_card_probe(struct mci *mci)
>  	struct mci_host *host = mci->host;
>  	int i, rc, disknum, ret;
>  
> -	if (host->card_present && !host->card_present(host) &&
> -	    !host->non_removable) {
> -		dev_err(&mci->dev, "no card inserted\n");
> -		return -ENODEV;
> +	if (host->card_present && !host->card_present(host) && !host->non_removable) {
> +		if (!IS_ENABLED(CONFIG_MCI_BROKEN_CD)) {
> +			dev_err(&mci->dev, "no card inserted\n");
> +			return -ENODEV;
> +		}
> +
> +		dev_info(&mci->dev, "no card inserted (ignoring)\n");
>  	}
>  
>  	ret = regulator_enable(host->supply);
> @@ -1818,6 +1842,10 @@ static int mci_card_probe(struct mci *mci)
>  		}
>  	}
>  
> +	if (IS_ENABLED(CONFIG_MCI_BROKEN_CD) && !host->no_sd &&
> +	    dev_of_node(host->hw_dev))
> +		of_register_fixup(of_broken_cd_fixup, host->hw_dev);

This fixup is only registered when the card is probed, i.e. when it's
used in barebox. Shouldn't it be registered in mci_register() instead?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


