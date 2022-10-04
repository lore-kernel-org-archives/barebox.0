Delivery-date: Tue, 04 Oct 2022 10:55:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofdi9-005Mxr-N8
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 10:55:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofdi8-0007FI-KT
	for lore@pengutronix.de; Tue, 04 Oct 2022 10:55:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hdBSiQCtEs9OrzfFHtuwp7lNKZsHP2kPzrNFlV3tX8o=; b=Gy2wT1SWTlGZJx5ukxyNzRISn8
	4LIR2Xyc2AegET4/DihFqlxrGaPf1FAkOfDJPvRRUC7sAjvSlqMlKFIYeaBAGY2Egan+KNSGubtBT
	6YBdQUZUzstJpGldrjbLCtYXIW/pOhNGJGZeL0B/0Ek3jOsgDYCR+OiR8X7Aii72VH2GgXcvS1ozW
	ShYDP02IH7Icv6QC6shr6+5RMAL+cB2rDdLAS38/9HR5pRdUgT2Y6MG1/Q9Sgr/Q4bHrUjyzqqZ2o
	Z/Q1SVXyhInUCuhrKLkiJ/h4JVNiuQ/OEOScHL2I8z62cRqcQZsr44gO6Cu10G9hDuXBTBVUClY2p
	vtYrkpVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdgU-0092Mu-Ju; Tue, 04 Oct 2022 08:53:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdgN-0092M4-GS
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 08:53:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofdgJ-0006sR-Up; Tue, 04 Oct 2022 10:53:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofdgJ-0002WH-NP; Tue, 04 Oct 2022 10:53:39 +0200
Date: Tue, 4 Oct 2022 10:53:39 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20221004085339.GJ986@pengutronix.de>
References: <20220930153317.731088-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930153317.731088-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_015345_255404_44E3161D 
X-CRM114-Status: GOOD (  24.37  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] mci: core: act upon broken-cd device tree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:33:15PM +0200, Ahmad Fatoum wrote:
> We didn't care much for broken-cd so far, still we have some drivers
> implementing the card_present callback, which we should ignore when
> card-detect is marked broken.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch
> ---
>  drivers/mci/mci-core.c | 12 ++++++++----
>  include/mci.h          |  1 +
>  2 files changed, 9 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 8c08a4f61f63..5f4457bab3df 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1750,10 +1750,13 @@ static int mci_card_probe(struct mci *mci)
>  	int i, rc, disknum, ret;
>  	bool has_bootpart = false;
>  
> -	if (host->card_present && !host->card_present(host) &&
> -	    !host->non_removable) {
> -		dev_err(&mci->dev, "no card inserted\n");
> -		return -ENODEV;
> +	if (host->card_present && !host->card_present(host) && !host->non_removable) {
> +		if (!host->broken_cd) {
> +			dev_err(&mci->dev, "no card inserted\n");
> +			return -ENODEV;
> +		}
> +
> +		dev_info(&mci->dev, "no card inserted (ignoring)\n");
>  	}
>  
>  	ret = regulator_enable(host->supply);
> @@ -2043,6 +2046,7 @@ void mci_of_parse_node(struct mci_host *host,
>  		}
>  	}
>  
> +	host->broken_cd = of_property_read_bool(np, "broken-cd");
>  	host->non_removable = of_property_read_bool(np, "non-removable");
>  	host->no_sd = of_property_read_bool(np, "no-sd");
>  	host->disable_wp = of_property_read_bool(np, "disable-wp");
> diff --git a/include/mci.h b/include/mci.h
> index 2098b4fbf084..d949310fac30 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -404,6 +404,7 @@ struct mci_host {
>  	unsigned max_req_size;
>  	unsigned dsr_val;	/**< optional dsr value */
>  	int use_dsr;		/**< optional dsr usage flag */
> +	int broken_cd;		/**< card detect is broken */
>  	bool non_removable;	/**< device is non removable */
>  	bool no_sd;		/**< do not send SD commands during initialization */
>  	bool disable_wp;	/**< ignore write-protect detection logic */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


