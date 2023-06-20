Delivery-date: Tue, 20 Jun 2023 07:57:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUMe-00E3VX-JY
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 07:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUMc-0007A6-8F
	for lore@pengutronix.de; Tue, 20 Jun 2023 07:57:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CkHvDdgAhX4jq3XIAexRAlZUwc8EuZJ3nRwJ37fbFuE=; b=xn3RaiedabS/mHPHQFuV7YLv7/
	tbuOqyDfLdXf7b1GUOv9pKTj2VSvD8YPHadLMRK4u2BpxXN/wShsMCXgzM+993NstXbp6XY37nEmH
	s4DS6KwT5OZFQRX7Sxp0fi7/AI0vpf1+hRR5B+12kPsw/OI7de5SISSqNNpAW0QogPqkrVAz4I1hR
	Asqs/i6zLYdrn7VGk8Q9UD7PXp8MUebd2pcxl7d38yi32C6L4N+rCH80EBW1K9+etI1BflH807psj
	DA0c5QrZi8TeKC93tTt967LATsI2PMQNmfSV3hUuI9elt9so7XoIPwfykqAkz399hjLppvM6LBzm6
	e66n21JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBULX-00ADyj-23;
	Tue, 20 Jun 2023 05:56:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBULT-00ADxy-1o
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 05:56:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qBULQ-00072f-4T; Tue, 20 Jun 2023 07:56:00 +0200
Message-ID: <3aa4d7ba-1b78-7efc-493f-9e4144fe0c17@pengutronix.de>
Date: Tue, 20 Jun 2023 07:55:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
 <20230614135452.1884124-6-a.fatoum@pengutronix.de>
 <20230620052045.deruonvmw3sq42is@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230620052045.deruonvmw3sq42is@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_225603_617194_35A07861 
X-CRM114-Status: GOOD (  14.45  )
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
Subject: Re: [PATCH 05/10] gpiolib: export proper gpio descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 20.06.23 07:20, Marco Felsch wrote:
>> -static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
>> +static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)
> 
> Why do we stick with gpioinfo_* here? IMHO we could use
> gpiodesc_chip_offset() since the gpioinfo is gone.

gpioinfo_ is internal. gpiod_ is external. I thought about renaming
gpioinfo_ to gpiodesc_, but found it confusing, because they are
too similar in name.

>>  {
>>  	return (desc - gpio_desc) - desc->chip->base;
>>  }
>>  
>> -static int gpio_adjust_value(struct gpio_desc *desc,
>> +static int gpio_adjust_value(const struct gpio_desc *desc,
>>  			     int value)
>>  {
>>  	if (value < 0)
>> @@ -159,17 +189,40 @@ void gpio_free(unsigned gpio)
>>  {
>>  	struct gpio_desc *desc = gpio_to_desc(gpio);
>>  
>> +	gpioinfo_free(desc);
> 
> Same for gpioinfo_free() which could become gpiodesc_free().

See above.

>>  int gpio_direction_output(unsigned gpio, int value)
>>  {
>> @@ -252,13 +359,27 @@ int gpio_direction_output(unsigned gpio, int value)
>>  	if (ret)
>>  		return ret;
>>  
>> -	return gpioinfo_direction_output(desc, value);
>> +	return gpiod_direction_output_raw(desc, value);
>>  }
>>  EXPORT_SYMBOL(gpio_direction_output);
> 
> This function should be deleted since we don't support the global 'int'
> gpio anymore.

We do support it. Lots of code across the tree doesn't use gpiod_ API.

>>  EXPORT_SYMBOL(gpio_direction_input);
> 
> gpio_direction_input should be deleted as well?

Once we have switches all over to use gpiod_ API, we could drop it, yes.
Patches to migrate existing users are certainly welcome ;)

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



