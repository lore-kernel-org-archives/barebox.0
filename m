Delivery-date: Tue, 13 Jun 2023 09:44:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yhz-004tCU-KM
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:44:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yhx-000333-24
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:44:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=016bRwMOM+bmwxURx6maebToqVeRX26YrNuKOk/qsdk=; b=Tor2k84UnTSV9LV/9NC33aHL/4
	TqOfkgE7TxmW7JTO2+rmsiTogAnFRzEdO4K0TsWb8775YQPpLlpr46DgtB1bIk7VMJWiSHkNzdV3R
	LASJTl+EAYk9w7PVYRSAh0ThCfN5idr4KJotC3Q7PrBNWWcm6mXQ/i3UJ5yqHKAZttXccWY6vbk5q
	iCGNFrG+pGtNTUNKFBtHRX+tb3Q5oyKb1V0OXXw/EVeXFQVGiB4bLNl07JOlPKoDhajeQVFLdvaOU
	2HUgS8EDlbeoj1iBLcikSzcj4V7C++jfMm7yaqI10AZSwi9xsDvuLZQoR+bygCASUrEEXJlCBdptN
	FlRhQNVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ygx-007Fpf-1Q;
	Tue, 13 Jun 2023 07:43:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ygu-007FoV-2V
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:43:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8ygt-0002xV-Al; Tue, 13 Jun 2023 09:43:47 +0200
Message-ID: <36d31aec-70b7-8850-8149-851d084bcc38@pengutronix.de>
Date: Tue, 13 Jun 2023 09:43:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-6-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-6-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_004348_813312_FB295A55 
X-CRM114-Status: GOOD (  20.82  )
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
Subject: Re: [PATCH 05/10] gpiolib: fix missing error check while query
 gpio-line-names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> Don't ignore the possible error return code of
> of_property_read_string_array().
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

I know the kernel does it this way, but IMO this can't fail if
of_property_count_strings() called before it succeeded.

I'd suggest we drop this or if you feel strongly about this
drop just the never hit warning message.

> ---
>  drivers/gpio/gpiolib.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index f05e2ac735..166356c85a 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -526,8 +526,14 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  	if (count > 0) {
>  		const char **names = xzalloc(count * sizeof(char *));
>  
> -		of_property_read_string_array(chip->dev->of_node,
> -					      "gpio-line-names", names, count);
> +		ret = of_property_read_string_array(chip->dev->of_node,
> +						    "gpio-line-names", names,
> +						    count);
> +		if (ret < 0) {
> +			dev_warn(chip->dev, "failed to read GPIO line names\n");
> +			kfree(names);
> +			return ret;
> +		}
>  
>  		/*
>  		 * Since property 'gpio-line-names' cannot contains gaps, we

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



