Delivery-date: Wed, 21 Jan 2026 12:02:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viVz1-003jfa-1Y
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:02:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viVz0-0006rn-CM
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:02:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DHM+FnUTpUHpciD8oNsYklkQqUhVI6QZJnuVBV2VPTs=; b=2N+6Lwtj4PNCfnn+hIFB1gU6B9
	ZDi7FvzKiGtfoxr9RguNRb+SDawHCI0HdCO5W4IO9CQMGJtIshyt+ZS4re7L3UAZa9eZMjOS9HyYI
	EEcpH1lCoHFLe1+FTmKcOS+E/k0flPPvMptoOjDlFI6rfE5t54cg0UvBD7yG0GGaRKfmmtw+xcrwU
	g32LKkLIkevfWAwXVS6wiZUbxVvar9jXm7cMd6L2ZsXK/0ULyu2XxgkJpd2loSegxSMQLIUY7axlE
	KPMaXD0ls17naWkAhgkRlB1XkPgE5JUkDJWfRX4BfwZIol3NqHTFYZ3KTJRJLe+P6RlEHYjCGrkbn
	lidSpA5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVyT-00000005JZr-21hO;
	Wed, 21 Jan 2026 11:02:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVyR-00000005JZT-2Ewf
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:02:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viVyP-0006bi-O7; Wed, 21 Jan 2026 12:02:05 +0100
Message-ID: <fdb71571-b2ca-4595-b820-e540c43c9116@pengutronix.de>
Date: Wed, 21 Jan 2026 12:02:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
 <20260120181333.3375979-2-a.fatoum@pengutronix.de>
 <20260121000711.dyjo4pd56c6frd4x@pengutronix.de>
 <c31a90f3-7a3a-4f30-80c8-64bfbf0bd641@pengutronix.de>
 <20260121091620.ihi23jg65xbjoupt@pengutronix.de>
 <b796018a-3b00-41ee-a808-b521a5693560@pengutronix.de>
 <20260121101520.xsc6ujwuswpxcufh@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260121101520.xsc6ujwuswpxcufh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_030207_594447_FDFBA9BE 
X-CRM114-Status: GOOD (  31.28  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] arm: dts: rk356x: rock3a: disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/21/26 11:15, Marco Felsch wrote:
> On 26-01-21, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 1/21/26 10:16, Marco Felsch wrote:
>>> On 26-01-21, Ahmad Fatoum wrote:
>>>> With barebox as EFI loader, we always install the barebox DT in a configuration
>>>> table and leaves it to grub or whatever to decide whether it wants to use it or
>>>> if it wants to use another DT it finds itself.
>>>
>>> Ah, thanks for the explanation :) this wasn't clear to me. Maybe it's
>>> worth a comment when to use this within the barebox,status description.
>>
>> Whether the barebox DT is used for Linux or not is inconsequential though.
>> We want the barebox DT to be always _usable_ for Linux, even if it's not
>> used. I thus intentionally didn't list when barebox passes along its own
>> DT in the binding doc.
> 
> Get your point but at least your patch here wasn't clear to me in the
> first place. Therefore my question :) Now with the new barebox,status it
> isn't clear when to use this.
> 
> This could be sovled either via policy like: use barebox,status if
> you're going to toogle the status of an upstream-dt within the barebox.

The binding in patch 1 documents:

Use this property only for devices for which barebox has a driver, but
that barebox should not be probing on a per-board basis.

Do you have a suggestion how to make this clearer?

> Or via a comment within the DT to make it clear, why barebox,status is
> used.

I can also add a comment in addition to the commit message.

>> Normally, you would disable drivers that don't work for board, but we can't do that in
>> a multi defconfig, so we need to disable the device on a per-board basis.
>>
>> This is different than secure-status, where device availability is actually
>> dependent on the security mode of the system.
> 
> Right, I just wanted to point out, that downstream bindings or
> downstream behaviors hit us hard in the past. That beeing said, I don't
> see a problem for barebox,status.

Many of these issues would have been avoided had we used a barebox, prefix.

Cheers,
Ahmad


> 
> Regards,
>   Marco
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>>> The support for the Android fastboot's protocol boot command also doesn't pass
>>>> a DT and expects the bootloader to pass its.
>>>
>>> Good to know :)
>>>
>>> Thanks,
>>>   Marco
>>>
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>>
>>>>> Regards,
>>>>>   Marco
>>>>>
>>>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>> ---
>>>>>>  arch/arm/dts/rk3568-rock-3a.dts | 4 ++++
>>>>>>  1 file changed, 4 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
>>>>>> index bcbfab14a580..b7258d7e61b3 100644
>>>>>> --- a/arch/arm/dts/rk3568-rock-3a.dts
>>>>>> +++ b/arch/arm/dts/rk3568-rock-3a.dts
>>>>>> @@ -55,3 +55,7 @@ environment_sd: partition@408000 {
>>>>>>  		};
>>>>>>  	};
>>>>>>  };
>>>>>> +
>>>>>> +&pcie3x2 {
>>>>>> +	barebox,status = "disabled";
>>>>>> +};
>>>>>> -- 
>>>>>> 2.47.3
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>>
>>>> -- 
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>
>>
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


