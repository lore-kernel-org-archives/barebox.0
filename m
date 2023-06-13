Delivery-date: Tue, 13 Jun 2023 09:40:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ydq-004t0u-5X
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:40:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ydn-0002WN-LA
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:40:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tEeO2UZbSt9jitEueRTDg9Jrj655xwhSp9/it6rRKGg=; b=PDUVYrzZOVBBc0+Sz1UehD7Aq/
	y790U7uwi8xK3fhKzoMAkmLfDAYlfjiLO/fJnaTubv9SiMFZg4jA+0Lha/rNGcYQplXKOf804uo7K
	fOd/c4vtDD1JJLqlh/q+pD/THhj3uxwuqswTP1lmYg4hFUYyUm2BMMb30fdoBQkbkTrmxpYhJQpMi
	kOLrR6JF4QGN7Ll+yApaXEBUOADSA23mlLXENTTD9q1bvGyreGnEUjYn3PcK8kg3X4G9rciEkZzRB
	eFmKPgYAvMZfwGe8qWf0IvWZ3OPt7I0wossA6Uqx8MRz+94R2qUBNjmntquwxrqiigpJKaqWxrRZV
	pmCS+D3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ycp-007Euh-1j;
	Tue, 13 Jun 2023 07:39:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ycm-007Eu8-2Q
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:39:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8ycl-00028Q-Fc; Tue, 13 Jun 2023 09:39:31 +0200
Message-ID: <b8a57450-391f-5dde-13f3-ff4720944f78@pengutronix.de>
Date: Tue, 13 Jun 2023 09:39:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-5-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-5-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_003932_796827_3BE0D76C 
X-CRM114-Status: GOOD (  23.81  )
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
Subject: Re: [PATCH 04/10] gpiolib: fix gpio name memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> We never freed the name allocated by xstrdup(). Fix this by use the
> const devicetree property value. While on it check if the name is valid
> and add the comment to align the code with the kernel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/gpio/gpiolib.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index eb2bba042e..f05e2ac735 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -18,7 +18,7 @@ struct gpio_info {
>  	bool requested;
>  	bool active_low;
>  	char *label;
> -	char *name;
> +	const char *name;
>  };
>  
>  static struct gpio_info *gpio_desc;
> @@ -537,8 +537,16 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  		if (count > chip->ngpio)
>  			count = chip->ngpio;
>  
> -		for (i = 0; i < count; i++)
> -			gpio_desc[chip->base + i].name = xstrdup(names[i]);
> +		for (i = 0; i < count; i++) {
> +			/*
> +			 * Allow overriding "fixed" names provided by the GPIO
> +			 * provider. The "fixed" names are more often than not
> +			 * generic and less informative than the names given in
> +			 * device properties.
> +			 */
> +			if (names[i] && names[i][0])
> +				gpio_desc[chip->base + i].name = names[i];
> +		}
>  
>  		free(names);
>  	}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



