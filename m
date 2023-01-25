Delivery-date: Wed, 25 Jan 2023 10:44:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcKt-001LTn-2U
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:44:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcKp-0001QV-Um
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:44:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e18lV1AW3dmTWzyvxbv84rz0OMrMZ+XSjeWaYmLsJOQ=; b=4PnO7wTO8rxt6246VjgnTEGVWO
	T85F3NJguRxcA/XCp9bxCbKUBNEJkiw98hVwk23zzyefjh1LEJnDyHvMsnGtf0dj8bjQUiAdbKBUE
	Dv0/nX6h6N7IU0IYNujvOemsnbb/asMaXasx6JXc1KIym1L6u0fLYGa+DO3BGcw1LhSz6L84SIU4p
	msxwVl7puYqqJu4gDmoMyPDEkuh8jNktan5JstSVa8KJhw2HZpRdD7BlwRa9AEcL1s+yMQUnCX7Ap
	Q1OtNh02dzyg3p8l0rwbmtCn/m3N+c4xwwbiZbMToSDln1RcOV1HJHCNUs8cmItI608Z0UvpduZHK
	VyejGnEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcJZ-006flY-8o; Wed, 25 Jan 2023 09:43:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcJT-006fjI-Gb
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:43:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKcJS-0001ED-2Z; Wed, 25 Jan 2023 10:43:26 +0100
Message-ID: <fc83347a-1867-b9d0-39ef-a853234108f3@pengutronix.de>
Date: Wed, 25 Jan 2023 10:43:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230125075323.1759934-1-a.fatoum@pengutronix.de>
 <20230125092729.g6gquwed7nderrxw@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230125092729.g6gquwed7nderrxw@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_014327_584092_1009E32B 
X-CRM114-Status: GOOD (  22.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: implement detect callback for virtual adapter device
 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 25.01.23 10:27, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-01-25, Ahmad Fatoum wrote:
>> For MMCs, we already support detect on both the hardware device and the
>> mmcX virtual device. Let's do the same for i2c, so users have the option
>> to do `detect i2c0` instead of `detect 30a30000.i2c@30a30000.of`.
> 
> nice :)

Glad you like it. Only usecase I have for this is detecting an I2C device
tat was added by an overlay to a bus that was already probed beforehand.

I2C bus probe is still on-by-default, though we could change
that in future.

I still need to wire this into the overlay code to call bus detect automatically.

> 
>> `detect -a` still works as expected, as the detect callback is a no-op
>> if everything on the bus is already registered.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>> ---
>>  drivers/i2c/i2c.c | 13 +++++++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
>> index 7e1cea49f3b6..4ecf7bb163e6 100644
>> --- a/drivers/i2c/i2c.c
>> +++ b/drivers/i2c/i2c.c
>> @@ -472,6 +472,14 @@ int of_i2c_register_devices_by_node(struct device_node *node)
>>  }
>>  
>>  static int i2c_bus_detect(struct device *dev)
>> +{
>> +	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
>> +
>> +	of_i2c_register_devices(adap);
>> +	return 0;
>> +}
>> +
>> +static int i2c_hw_detect(struct device *dev)
>>  {
>>  	struct i2c_adapter *adap;
>>  
>> @@ -712,6 +720,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>>  	}
>>  
>>  	adapter->dev.id = adapter->nr;
>> +	adapter->dev.detect = i2c_bus_detect;
>>  	dev_set_name(&adapter->dev, "i2c");
>>  
>>  	ret = register_device(&adapter->dev);
>> @@ -726,8 +735,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>>  	hw_dev = adapter->dev.parent;
>>  	if (hw_dev && dev_of_node(hw_dev)) {
>>  		if (!hw_dev->detect)
>> -			hw_dev->detect = i2c_bus_detect;
>> -		i2c_bus_detect(hw_dev);
>> +			hw_dev->detect = i2c_hw_detect;
>> +		i2c_hw_detect(hw_dev);
>>  	}
>>  
>>  	return 0;
>> -- 
>> 2.30.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



