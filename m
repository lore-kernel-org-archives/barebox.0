Delivery-date: Wed, 10 Apr 2024 10:38:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruTTG-005nPr-0K
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 10:38:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruTTF-0006Vv-EH
	for lore@pengutronix.de; Wed, 10 Apr 2024 10:38:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PuPzYd/0n9v2QS73I1rZXC1cPIrgtFW0+xoeXAZIVVY=; b=S2FajOmc0bJ4qRT51TAr51eM0X
	X7nFxE2kEzgDP+oPJ0Wz0feJY7GzQegSwgnaX1v/8CJgnVNlp8TxIElAk8LTpqBsteo0J+zuiF/cu
	7X3pD5dfyf8DIAghTwvBayWcbkRY86DhdwuauyLEWlhPb43soEo7JF1/0apv9haIt30uVsaNpFK67
	A3UZVFkCQdSGktDwBJITDdBIs4uCqjqSwe3utDIoeKc7GpvB5KlH/hnX3ExfocUa7E/0aFfvXKr4M
	6xMDO3+6/P1A88uT3X3QHFm3IIXPFjpn/0UQEGEZKvtTd6qHp+zRqPfvpNwYAj+UvcakJ1mHiebxX
	2OqPQxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruTSd-00000005uEF-3bfF;
	Wed, 10 Apr 2024 08:37:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruTSa-00000005uCC-2Bx8
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 08:37:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ruTSY-0005tk-Ld; Wed, 10 Apr 2024 10:37:34 +0200
Message-ID: <2ab8a4fd-908f-4966-83a7-86eeb8dca501@pengutronix.de>
Date: Wed, 10 Apr 2024 10:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tomas Marek <tomas.marek@elrest.cz>
Cc: barebox@lists.infradead.org
References: <20240409071422.5934-1-tomas.marek@elrest.cz>
 <46db4b10-73d7-4f33-9fc9-e383326bfe5d@pengutronix.de>
 <ZhZCQCMlD7Q-51Co@debian>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZhZCQCMlD7Q-51Co@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_013736_611691_AFA0ECFD 
X-CRM114-Status: GOOD (  32.22  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Tomas,

On 10.04.24 09:39, Tomas Marek wrote:
> On Tue, Apr 09, 2024 at 09:41:28AM +0200, Ahmad Fatoum wrote:
>>> +static int intel_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
>>> +		kfree(intel_gpio);
>>> +		return ret;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static struct driver_d intel_gpio_driver = {
>>> +	.name = "intel-gpio",
>>> +	.probe = intel_gpio_probe,
>>> +};
>>> +
>>> +coredevice_platform_driver(intel_gpio_driver);
>>
>> Who will register this device? Is it possible to add an ACPI table match
>> (like itco_wdt does for example) for your SoC and then register the device

Typo: s/itco_wdt/WDAT/

>> there like Linux does?
>>
>> This would make extension for more SoCs easier in future.
> 
> I have registered the device in the board code now. In theory, it is
> definitely possible to register the device using ACPI match, and I agree
> with you that it's useful.
> 
> Unfortunately, the GPIO community resource definition is inside the DSDT
> ACPI table for my device. I might be wrong here, but I think that Barebox
> parses root tables but doesn’t delve into the nested DSDT at the moment.

We indeed do not do DSDT parsing yet.

> So it's getting a bit complicated here. I can take a closer look at it
> later (without any guarantee of success, of course :-)), but I would
> consider it a different patch if you don't mind.

I was thinking of matching against the SoC type (e.g. Alderlake) and just
register hardcoded values for the addresses/ngpios. I am not sure what's the
easiest way to get this information though (maybe SMBIOS?).

This shouldn't delay applying this driver though.

> Needless to say, I am coming from the ARM world and haven't found my way
> the ACPI just yet :-).

Same here ^^

>>> +#ifndef __GPIO_INTEL_H
>>> +#define __GPIO_INTEL_H
>>> +
>>> +struct gpio_intel_platform_data {
>>> +	unsigned int	ngpios;
>>> +};
>>
>> I'd suggest you add a add_intel_gpio_device helper here that would create a suitable
>> device. This could be then called from the ACPI driver probe or from board code if
>> discoverability is not possible.
> 
> Is following code what you have in mind?
> 
> include/platform_data/gpio-intel.h:
> 
> 	struct gpio_intel_platform_data {
> 		resource_size_t community_base;
> 		resource_size_t community_size;
> 		unsigned int	ngpios;
> 	};
> 
> 	static inline struct device *add_intel_gpio_device(
> 		struct gpio_intel_platform_data *pdata
> 	)
> 	{
> 		return add_generic_device("intel-gpio", DEVICE_ID_DYNAMIC, NULL,
> 			pdata->community_base, pdata->community_size,
> 			IORESOURCE_MEM, pdata);
> 	}

This looks ok.

Cheers,
Ahmad

> 
> 
> Best regards
> 
> Tomas
> 
>>
>>
>> Cheers,
>> Ahmad
>>
>>> +
>>> +#endif /* __GPIO_INTEL_H */
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



