Delivery-date: Fri, 01 Mar 2024 08:50:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfxf0-001GCH-0y
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 08:50:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfxez-00041D-Jz
	for lore@pengutronix.de; Fri, 01 Mar 2024 08:50:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u9yBIk5YImYaU0VbCb6B9xB//OzzXh5niAmujt7ubwY=; b=Pc69XOTYd2ubmPBPCxWFJbuz+H
	BTi6wWanUgwEUVpc8KHVhu9rB/bE+fsJnpkGdfdcJN4zw4Vu8VcoHvSTBKJTjqOL05Ljo+s1LXADp
	d5lc5fvNgRDmY9CRaE/zN07HfeLecvj0JgTN1qIFy/0PJfUxpeZQlGq49Z7TDtS6eiHdM6k2YfqZy
	RuWTppjCCZN/V2jmOAABnCKB0hAtGk2ucHIBLPoa2OIQVBLM0XqgIXQrcTAZ8Y275+4XMBgW4xt2m
	OBfLWhw7eyeNX94Q8fYXpN1qyz625zB+CSU4rCA+JT4voaxMSTSAFzvNzBRMCBQuGkSFfkuUGeA0T
	hB4Ssr7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxeY-0000000Gmhx-0EgQ;
	Fri, 01 Mar 2024 07:49:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxeV-0000000GmhW-11Qn
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 07:49:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfxeT-0003w8-WA; Fri, 01 Mar 2024 08:49:54 +0100
Message-ID: <f5bcdd23-c5e6-4c43-8936-410052837eb6@pengutronix.de>
Date: Fri, 1 Mar 2024 08:49:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>,
 Julian Vetter <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
 <20240229155700.17443-4-ysionneau@kalrayinc.com>
 <213af923-0b5f-4a49-a982-a7a40ef1c25a@pengutronix.de>
 <46562300-8056-95c5-da6e-af247efbe62f@kalrayinc.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <46562300-8056-95c5-da6e-af247efbe62f@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_234955_301160_5B98B9FD 
X-CRM114-Status: GOOD (  18.64  )
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
Subject: Re: [PATCH 4/4] mci: dwcmshc-sdhci: add support for Kalray Coolidge
 v2 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 29.02.24 17:31, Yann Sionneau wrote:
> On 2/29/24 17:19, Ahmad Fatoum wrote:
>> On 29.02.24 16:57, Yann Sionneau wrote:
>>> Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
>>> for basic standard or high speed modes.
>>> +struct dwcmshc_callbacks {
>>> +    void (*init)(struct mci_host *mci, struct device *dev);
>> Why is dev needed? There's already mci->hw_dev and mci->mci->dev
> 
> dev is not needed per se, but I thought that since the callback is used to extend dwcmshc_mci_init() called from generic code:
> 
> https://elixir.bootlin.com/barebox/latest/source/drivers/mci/mci-core.c#L2015
> 
> Then it would be a good idea to provide the same arguments.
> 
> But I can remove it.

No, I agree with your reasoning. No need to change it.

>>> +    void (*set_ios)(struct mci_host *mci, struct mci_ios *ios);
>> You don't actually use set_ios. But I assume you intend to add in future?
>> Maybe add it when it's actually needed?
> 
> Ok indeed it's for the future, in the future to support HS200/HS400 high speed modes
> 
> vendor specific tuning (tx/rx delay lines tuning) would take place in such callback.

I'd prefer you add it when it's needed.

> 
>>
>>> +static void dwcmshc_coolidgev2_init(struct mci_host *mci, struct device *dev)
>>> +{
>>> +    struct dwcmshc_host *host = priv_from_mci_host(mci);
>>> +
>>> +    // configure TX delay to set correct setup/hold for Coolidge V2
>> Nite: If you are going to send v2, please change into /* */ comments
>> for uniformity.
> Ok!

Thanks,
Ahmad

>>
>>
>> Cheers,
>> Ahmad
>>
>>> +    sdhci_write32(&host->sdhci,
>>> +              host->vendor_specific_area + DWCMSHC_GPIO_OUT,
>>> +              tx_delay_static_cfg(0xf) | tx_tuning_clk_sel(4));
>>> +}
>>> +
>>> +struct dwcmshc_callbacks kalray_coolidgev2_callbacks = {
>>> +    .init = dwcmshc_coolidgev2_init,
>>> +};
>>> +
>>>   static struct of_device_id dwcmshc_dt_ids[] = {
>>>       { .compatible = "snps,dwcmshc-sdhci", },
>>> +    { .compatible = "kalray,coolidge-v2-dwcmshc-sdhci", .data = &kalray_coolidgev2_callbacks },
>>>       { }
>>>   };
>>>   
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



