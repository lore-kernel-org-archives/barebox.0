Delivery-date: Tue, 20 Feb 2024 10:26:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMOi-00FqOR-35
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:26:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMOi-0001FN-Aj
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:26:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DT+9xiAeSRhKXAw6LeDR49HygTp1pt+B/bqRtHoGscc=; b=3nO4nd0HUWG0vzG87ev0Qfk1Js
	47+qmR218JjdeH6b5PUc8SiuZn2RoJ4nzFBNSiyaGTrcjqifzfUYQo1lkANrSbwKzODUYWiITkgAS
	0zJHPkqDHzJ/5mNgWe73DT69scYtG9PDadA2sVNekG1shj0t2UnWrA3nk2JcAFKHbeUcr47B2jbKY
	DLFr8yHyMYYKus1MBHUwzeLciZKqmrpDdcaI5Md73ZDCdKnUBxZS3L8ee4tfGvJGXxtUlCR+mLPOx
	CVZfQZwzSGqbsBkHFQPtyDErRiLvor6MnKi3hlEz7BJS4f7RN8p47tRkHJZMllA09j+S93v+VPCtp
	8J7hh3tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMOF-0000000DxkO-2kmO;
	Tue, 20 Feb 2024 09:26:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMOB-0000000Dxjk-3xl9
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:26:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMOA-0000yY-Oj; Tue, 20 Feb 2024 10:26:10 +0100
Message-ID: <ee0561e8-1280-4450-9a9c-eb318b557399@pengutronix.de>
Date: Tue, 20 Feb 2024 10:26:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215163009.2172795-16-a.fatoum@pengutronix.de>
 <Zc9f4d42rpSZh8qu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zc9f4d42rpSZh8qu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_012612_014985_6999BF1B 
X-CRM114-Status: GOOD (  23.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 15/15] usb: ohci-at91: fix possible hang chainloading
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 16.02.24 14:15, Sascha Hauer wrote:
> On Thu, Feb 15, 2024 at 05:30:09PM +0100, Ahmad Fatoum wrote:
>> barebox, like Linux, will consider disabling parents when disabling a
>> child clock. In the AT91 OHCI driver ported to barebox from Linux, this
>> leads to the USB clock shutdown during device shutdown to propagate up
>> to PLLB, which is also disabled.
>>
>> On probe of the kernel driver, the USB clock rate is set to 48MHz, which
>> propagates up to the PLL, which is powered on again. In barebox, this clock
>> rate propagation does not happen and the PLL is only initially
>> configured in the first stage bootloader.
>>
>> This has the effect that chainloading barebox from within barebox will
>> hang as the first barebox disables PLLB on shutdown and the second
>> barebox never power it on.
>>
>> The proper solution would be to support propagation of clock rate change
>> requests, but till we have that, patch the driver, so only the immediate
>> clock is disabled and not its parents.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v3:
>>   - new patch
>> ---
>>  drivers/clk/clk.c            | 12 +++++++++---
>>  drivers/usb/host/ohci-at91.c | 13 +++++++++++--
>>  include/linux/clk.h          | 20 ++++++++++++++++++--
>>  3 files changed, 38 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> index d3f5d5e83880..03533b61df0a 100644
>> --- a/drivers/clk/clk.c
>> +++ b/drivers/clk/clk.c
>> @@ -66,7 +66,7 @@ int clk_enable(struct clk *clk)
>>  	return 0;
>>  }
>>  
>> -void clk_disable(struct clk *clk)
>> +void clk_disable_one(struct clk *clk)
>>  {
> 
> I don't like this very much as it screws up the enable counter of the
> clocks.
> 
> Cou could mark the PLL clock as critical or simply not disable the clock
> in the driver.

Ok, I will think about it. I will drop this from v2.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



