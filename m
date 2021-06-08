Delivery-date: Tue, 08 Jun 2021 09:32:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqWDz-00010J-K7
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 09:32:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqWDy-0008W1-Kk
	for lore@pengutronix.de; Tue, 08 Jun 2021 09:32:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fb6jaUYBVDYcNFJD3OL3CwhvpTFgmj2tUnFfYmU98Z8=; b=j+UrLZlkFCalB0sz56RRPhccj8
	xV7JmUVPbpaKk8YC05k9ZN+rMKkiXdR0IwZF8OqvRcoLEFk+/ZWJE0uvr0cwESM/2dnQ+vWe3JC3A
	0aVy+qW55t00i225J53iAtxL+MtN4s8jVyNvVNkClrfIAvmTL0PaT/cfSHs30Z7A141Lqx6/NCuLk
	Si3CFUfl5rb/8PIQrVd89RebmiAnlFHOl8uj5raEK0VsO4kd5NwRoefxlk5GVIXUI2MaeKzZ3NFmL
	sfSkohrUDgpz9AJmE1JDv38eqtIJRUmiTjY9UjMUCHUlthTGkD+/SmwshG7egkSGn5KwPjNNgulEI
	1XBfB4ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqWCc-006rbH-E3; Tue, 08 Jun 2021 07:31:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqWCX-006rac-7P
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 07:31:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lqWCV-0008J0-O3; Tue, 08 Jun 2021 09:31:03 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210607141057.23255-1-s.hauer@pengutronix.de>
 <e787566e-33cc-0b9e-73e3-74ab23812646@pengutronix.de>
 <20210607222233.GB5267@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2166dc52-64da-14bb-987c-7000c31c6882@pengutronix.de>
Date: Tue, 8 Jun 2021 09:31:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210607222233.GB5267@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_003105_310265_FEB7BAAB 
X-CRM114-Status: GOOD (  31.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.06.21 00:22, Sascha Hauer wrote:
> On Mon, Jun 07, 2021 at 05:59:02PM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 07.06.21 16:10, Sascha Hauer wrote:
>>> The designware eqos DT binding has support for specifying reset GPIOs.
>>> Add support for them.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/net/designware_eqos.c | 33 +++++++++++++++++++++++++++++++++
>>>  drivers/of/of_gpio.c          |  7 +++++++
>>>  2 files changed, 40 insertions(+)
>>>
>>> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
>>> index d2baaeaf63..0321024169 100644
>>> --- a/drivers/net/designware_eqos.c
>>> +++ b/drivers/net/designware_eqos.c
>>> @@ -8,9 +8,11 @@
>>>  
>>>  #include <common.h>
>>>  #include <init.h>
>>> +#include <gpio.h>
>>>  #include <dma.h>
>>>  #include <net.h>
>>>  #include <of_net.h>
>>> +#include <of_gpio.h>
>>>  #include <linux/iopoll.h>
>>>  #include <linux/time.h>
>>>  #include <linux/sizes.h>
>>> @@ -189,6 +191,33 @@ struct eqos_desc {
>>>  
>>>  #define MII_BUSY		(1 << 0)
>>>  
>>> +static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
>>> +{
>>> +	int phy_reset;
>>> +	int ret;
>>> +	u32 delays[3] = { 0, 0, 0 };
>>> +
>>> +	phy_reset = of_get_named_gpio(dev->device_node, "snps,reset-gpio", 0);
>>> +
>>> +        if (!gpio_is_valid(phy_reset))
>>> +		return 0;
>>
>> Whitespace is wrong.
>>
>>> +
>>> +	ret = gpio_request(phy_reset, "phy-reset");
>>> +	if (ret)
>>> +		return ret;
>>
>> Can you use gpiod_get instead? This would reduce the boilerplate here.
> 
> Sure. I didn't realize I don't honour the active high/low flags the way
> I did it.
> 
>>
>>> +
>>> +	of_property_read_u32_array(dev->device_node,
>>> +				   "snps,reset-delays-us",
>>> +				   delays, ARRAY_SIZE(delays));
>>> +
>>
>> Looks strange to read out a delay and not act on it. I'd prefer
>> waiting delays[0] here.
> 
> Yes, it looks strange, but that's because the binding doesn't make much
> sense. Why should I insert a delay before doing anything?

                   .--------.

     POR --------->|R  flip |---- Regulator ----> PHY VDD

                .->|S  flop |

                |  `--------'

                |   

                |   

                |

RESET GPIO -----'`-------------------------------> PHY Reset

(active low)

It's stupid, but it works with Linux and wouldn't with barebox
(if PHY VDD takes too long to stabilize)... ^^'

> I can a delay here, it wouldn't make much difference as all users except
> one specify zero delay here anyway. For the one exception I would bet
> someone has inserted the first delay without a good reason, they are all
> 10000.

That's probably true. I still think mimicking Linux' interpretation
of bindings is a good general rule to follow.

>>
>>> +	gpio_direction_active(phy_reset, 0);
>>
>> This always sets logical zero, because gpio_request above doesn't
>> accept a flag telling it otherwise. You'll need of_get_named_gpio_flags
>> here, at which point, you'll have basically open-coded gpiod_get(), so
>> you could use that.
> 
> Right.
> 
>>
>>> +	udelay(delays[1]);
>>
>> Linux rounds up to 1 msec granularity here. We should do likewise.
> 
> I don't see a good reason for that. The Linux driver used udelay()
> initially, that was changed to msleep as the times were too long for
> busy waiting. I have no clue why the author didn't use usleep_range
> instead.

Same reason: Device trees are tested with Linux. They've a better chance
of just working when we round up wait times the same way.

> 
>>
>>> +	gpio_set_active(phy_reset, 1);
>>
>> Nitpick: true/false.
> 
> Ok.
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

