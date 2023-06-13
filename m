Delivery-date: Tue, 13 Jun 2023 09:39:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ycP-004sxk-Td
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:39:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ycN-00024z-A6
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:39:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x4SkAmWT0I5DPJS0bUOPsPz99AKhuWZitqH0TAmafHQ=; b=k0lXnMlSXa4+bS+MC7W1CC8B14
	iIk5oXOs3VzgaF9d/09MxztX6ly7NZuhOTp2tup5MzlSnuZkQUwMPK/ZfmN71pRywO78HLwbzcrr4
	D5bpOb7gvNAI3aVJECyf+s4rOw7VmUz8QQZ5EMxwDPRSfilDfi757jJ3VXGdMavqvQ1p28Tn6qMEU
	6qiNvVvAby7ytT5C94ltRMTsfypOx4c2U3+jvhx3SOvrybXAYJ1FKt7gfTPrFrchgKu3pj27OHWj2
	jWVPFhQo6UDriPHR4sYYGz1stBJiEFvzUnlFauYNAb3N+gkicR+ZoVnf55bc+P2wEcNjbvFvsCWM+
	NMhvpiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ybQ-007EcO-03;
	Tue, 13 Jun 2023 07:38:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ybN-007Eb1-2D
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:38:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8ybM-0001uq-DX; Tue, 13 Jun 2023 09:38:04 +0200
Message-ID: <436d0c46-1642-bf3f-cc76-8c0020864cda@pengutronix.de>
Date: Tue, 13 Jun 2023 09:38:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-4-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_003805_721254_AF7E8441 
X-CRM114-Status: GOOD (  19.55  )
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
Subject: Re: [PATCH 03/10] gpiolib: rename local gpio-line-names variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> This is just a cosmetic commit to align the code more with the Linux
> kernel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/gpio/gpiolib.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 0df43c9f8f..eb2bba042e 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -524,10 +524,10 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  					  "gpio-line-names");
>  
>  	if (count > 0) {
> -		const char **arr = xzalloc(count * sizeof(char *));
> +		const char **names = xzalloc(count * sizeof(char *));
>  
>  		of_property_read_string_array(chip->dev->of_node,
> -					      "gpio-line-names", arr, count);
> +					      "gpio-line-names", names, count);
>  
>  		/*
>  		 * Since property 'gpio-line-names' cannot contains gaps, we
> @@ -538,9 +538,9 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  			count = chip->ngpio;
>  
>  		for (i = 0; i < count; i++)
> -			gpio_desc[chip->base + i].name = xstrdup(arr[i]);
> +			gpio_desc[chip->base + i].name = xstrdup(names[i]);
>  
> -		free(arr);
> +		free(names);
>  	}
>  
>  	for_each_available_child_of_node(chip->dev->of_node, np) {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



