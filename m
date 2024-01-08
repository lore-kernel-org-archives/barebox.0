Delivery-date: Mon, 08 Jan 2024 11:45:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMn8N-008iKZ-0U
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:45:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMn8M-00083o-FX
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:45:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9A0RWa2OdyYCpReRqxWGNa11Z55vFo33z2cjwy0+T9g=; b=aQ/XcbNeRB4EVMXivnvw7r7cjI
	d0dBU0kdMIiqTdJRXeD9hAXw9j0kF37AbkQYjWtw3i7pNWPQnpvSBIrqt52aSHhPf9I9hoAX9ItIy
	YSQg/EzNQ9VDBoFNQ44QsqxglAqwug5bWUl7gv0IdKVx2X5EqbxN9g9DS9PpBcT9HKXodylqxzL00
	RzgpIvTjvrD7Lctd1rdR42EY/buwmUqtPIzuF60U4A8/b2jmSsiOOSUaD6l/d6A5EW+Hc5zAIw8Lt
	n6VdxxGylI1ttEkkZ6L7jlGlsQBtucn2f1660ID5mQTzN6trAc/ANjolLQTDQ22XNPIikfA6l+CGo
	I4gbT+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMn70-004dJs-2U;
	Mon, 08 Jan 2024 10:44:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMn6x-004dJ5-0C
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:44:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMn6v-0007or-3K; Mon, 08 Jan 2024 11:44:01 +0100
Message-ID: <48a6551d-b6a9-45de-bcca-71599b39a1ba@pengutronix.de>
Date: Mon, 8 Jan 2024 11:44:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
 <20240102170100.1596372-3-a.fatoum@pengutronix.de>
 <20240108112958.3b582cbb@ERD993>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108112958.3b582cbb@ERD993>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_024403_094525_4B54A25D 
X-CRM114-Status: GOOD (  25.53  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Robin,

On 08.01.24 11:29, Robin van der Gracht wrote:
> Hi Ahmad,
> 
> Comments are below.
> 
> On Tue,  2 Jan 2024 18:00:55 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> The max_register must be a multiple of the register stride, which is not
>> the case for (384 / 4) - 1 == 95. Instead, we should be setting 380, so
>> fix the calculation to do this.
>>
>> Fixes: 094ce0ee7cdf ("nvmem: bsec: correct regmap's max_register")
>> Reported-by: Robin van der Gracht <robin@protonic.nl>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/nvmem/bsec.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
>> index 889f14428d59..22e30c6c2e82 100644
>> --- a/drivers/nvmem/bsec.c
>> +++ b/drivers/nvmem/bsec.c
>> @@ -218,7 +218,7 @@ static int stm32_bsec_probe(struct device *dev)
>>  	priv->map_config.reg_bits = 32;
>>  	priv->map_config.val_bits = 32;
>>  	priv->map_config.reg_stride = 4;
>> -	priv->map_config.max_register = (data->size / 4) - 1;
>> +	priv->map_config.max_register = data->size - priv->map_config.reg_stride;
>>  
>>  	priv->lower = data->lower;
>>  
> 
> This patch gives a bsec device size of 1520 bytes. Which means I'm now
> allowed to read/write beyond register 95 without an error.
> 
> barebox@board:/ ls -l /dev/stm32-bsec
> crw-------           1520 /dev/stm32-bsec
> 
> The device size is now in bytes, but the read/write offsets given to
> the md and mw commands is still in bytes/stride.
> 
> I.e. to read register 95:
> md -l -s /dev/stm32-bsec 380+4 
> 0000017c: xxxxxxxx
> 
> I can now also read register 100:
> md -l -s /dev/stm32-bsec 400+4 
> 00000190: 00000000                                           ....
> 
> This doesn't seem right.
> 
> max_register should probably stay 95. See doc[1]
> 
> 1:https://git.pengutronix.de/cgit/barebox/tree/include/linux/regmap.h?h=v2023.12.0#n33

Did you apply the whole series? With the whole series applied I have:

barebox@Linux Automation MC-1 board:/ ls -l /dev/stm32-bsec 
crw-------            384 /dev/stm32-bsec

Because there are two issues (size in bsec driver is wrong, cdev size is calculated wrong),
I need to decide which to fix first or squash them. I chose to make the size intermittently
bigger (so reading valid offsets still work) instead of making it smaller and breaking
bisect (or squashing all and making it less easy to review).

Cheers,
Ahmad

> 
> Robin
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



