Delivery-date: Tue, 13 Jun 2023 09:47:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ykb-004tIx-8o
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:47:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ykY-0003mh-EY
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:47:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aqkCwvdf5weIXA7y8jMuZIEgUOKLc07Aa5bewVkaIlI=; b=mV77MdhNIZ5wpTNN0iUUkQWvk4
	YeTCU00D2E0YuQpLugfnnYV3MpgL9TPNsHHJlpbMtOza6OfbORSUFjaDPDuKGhaH8QIj7NwKFLW0o
	Zo5bEKsa04boNqr0X66h5Dy6vn4cR7QY/r67s66qLcbh/sWd9BbASnCRPREt2l5f7ZGLUD43Whsio
	4pndFXQBgHZOxb1EZDoymusJfpk0G7VSHydwatVXbfNMDDO40NBkaEg8iJhMgM0eiGtszMNeiHLR6
	mNCbk6hADPgnH7oiIQa0lX42lqCWyVSvRl7mZA7eVw8Wz5IyvYl+EzZguUp+uy28EwbXwF+N1JEDs
	EXt+evdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yjY-007GTn-1u;
	Tue, 13 Jun 2023 07:46:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yjV-007GT9-2R
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:46:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8yjU-0003dH-Eq; Tue, 13 Jun 2023 09:46:28 +0200
Message-ID: <bb4795a3-c6eb-c9aa-9008-7bd4c9f27652@pengutronix.de>
Date: Tue, 13 Jun 2023 09:46:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-9-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-9-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_004629_795836_23B52561 
X-CRM114-Status: GOOD (  19.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/10] OF: gpio: snyc of_get_named_gpio_flags variable
 with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> Sync local of_phandle_args variable with the kernel to make it easier to
> see the diff between both versions. No functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/of/of_gpio.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index 5da80e2493..c20133bbfd 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -60,26 +60,26 @@ static void of_gpio_flags_quirks(struct device_node *np,
>  int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  			   int index, enum of_gpio_flags *flags)
>  {
> -	struct of_phandle_args out_args;
> +	struct of_phandle_args gpiospec;
>  	struct device *dev;
>  	int ret;
>  
>  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> -					index, &out_args);
> +					index, &gpiospec);
>  	if (ret) {
>  		pr_debug("%s: cannot parse %s property: %d\n",
>  			__func__, propname, ret);
>  		return ret;
>  	}
>  
> -	dev = of_find_device_by_node(out_args.np);
> +	dev = of_find_device_by_node(gpiospec.np);
>  	if (!dev) {
>  		pr_debug("%s: unable to find device of node %s\n",
> -			 __func__, out_args.np->full_name);
> +			 __func__, gpiospec.np->full_name);
>  		return -EPROBE_DEFER;
>  	}
>  
> -	ret = gpio_get_num(dev, out_args.args[0]);
> +	ret = gpio_get_num(dev, gpiospec.args[0]);
>  	if (ret == -EPROBE_DEFER)
>  		return ret;
>  	if (ret < 0) {
> @@ -89,7 +89,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  	}
>  
>  	if (flags) {
> -		*flags = out_args.args[1];
> +		*flags = gpiospec.args[1];
>  		of_gpio_flags_quirks(np, propname, flags, index);
>  	}
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



