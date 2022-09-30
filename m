Delivery-date: Fri, 30 Sep 2022 18:24:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIoQ-001ZPu-HZ
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 18:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIoP-0006rD-48
	for lore@pengutronix.de; Fri, 30 Sep 2022 18:24:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wBRl7RCKpHxR4NDCp0aH8lhxJftW0SeytU5WIQwnTb0=; b=mzvoMGkp+W6tBq45vsDdo53Zoh
	HS2h1JWzLOEg5JRURRO9djRgHFkqtXZzqCeTPBRGP+JlQtUMTIB70Pi5JGqf3e1xIU9c6/fi9REZE
	624wE5xGMw4XUmCPKrc0ShuBCeypu95JkHnCEx+U6/QARw0zKcD9/gApYFBNVilcKFSH8L9SpH+FI
	YCGeRsRySkhYThcWt43v1Voejz72zPYPS6f93MOyMYmJMo+Pe3FQP9b2fFJcIfi6TNPrgP+4pn91U
	BKcbSKdwMwAvwPguRkXkHR0qdZOc7TmQH0WAXscWsJYkMrCpWrvCuo3fllc0+0r17HJbOs+0k3aFx
	n8DC1nQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIn1-00AYlA-C4; Fri, 30 Sep 2022 16:23:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeImx-00AYkI-EU
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 16:23:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oeImv-0006i8-C9; Fri, 30 Sep 2022 18:22:57 +0200
Message-ID: <753f19e9-71f5-6a16-c900-9ffadccd0209@pengutronix.de>
Date: Fri, 30 Sep 2022 17:22:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de
References: <20220930153317.731088-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220930153317.731088-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_092259_515378_4661B32B 
X-CRM114-Status: GOOD (  23.33  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] mci: core: act upon broken-cd device tree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.09.22 16:33, Ahmad Fatoum wrote:
> We didn't care much for broken-cd so far, still we have some drivers
> implementing the card_present callback, which we should ignore when
> card-detect is marked broken.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch

Sorry, this was meant to be v3.

> ---
>  drivers/mci/mci-core.c | 12 ++++++++----
>  include/mci.h          |  1 +
>  2 files changed, 9 insertions(+), 4 deletions(-)
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


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


