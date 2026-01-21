Delivery-date: Wed, 21 Jan 2026 10:41:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUip-003iPN-2G
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 10:41:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUio-00048e-LC
	for lore@pengutronix.de; Wed, 21 Jan 2026 10:41:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nRrDLCoCOgCyQ1deZmsks2muAb7TEBnSIf8Nv67Hr/M=; b=toThUQTjq1Hm4/cSqdH9nTTZUj
	sIG6xyc48aRaoCWGfkGUxj4ejauavlNjMnKG/ELY8h5ApItSBDg4svOfbwsXofAb1ieA5TvE3Q9wx
	XlKEa77Cg7YGm1HN0cxpdi1xjV0d+Jp10Yei5aSDkeeXWn3i+CHFqHvBmhDXNGmi9DaZl4IUuGj59
	n0Bz51UpsY+J2QNHfBJmx9noT95YFuIcWijZDaexxBKI/XhRg5QvVN6OQOpYvRBiFKZpNUv+hSzWy
	5wZhuu8aGjpqgOqTGu+SyCqWZPgrhdIIK+p3YOK+hQto4LaRQHDxQO8tzG7ym7ovkRhKsWxQJovsx
	7SEmPZiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUiN-00000005Cec-2Oos;
	Wed, 21 Jan 2026 09:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUiL-00000005Ce6-2Wpn
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 09:41:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viUiK-00042T-1g; Wed, 21 Jan 2026 10:41:24 +0100
Message-ID: <b796018a-3b00-41ee-a808-b521a5693560@pengutronix.de>
Date: Wed, 21 Jan 2026 10:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
 <20260120181333.3375979-2-a.fatoum@pengutronix.de>
 <20260121000711.dyjo4pd56c6frd4x@pengutronix.de>
 <c31a90f3-7a3a-4f30-80c8-64bfbf0bd641@pengutronix.de>
 <20260121091620.ihi23jg65xbjoupt@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260121091620.ihi23jg65xbjoupt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_014125_643928_830A1F32 
X-CRM114-Status: GOOD (  25.61  )
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

Hello Marco,

On 1/21/26 10:16, Marco Felsch wrote:
> On 26-01-21, Ahmad Fatoum wrote:
>> With barebox as EFI loader, we always install the barebox DT in a configuration
>> table and leaves it to grub or whatever to decide whether it wants to use it or
>> if it wants to use another DT it finds itself.
> 
> Ah, thanks for the explanation :) this wasn't clear to me. Maybe it's
> worth a comment when to use this within the barebox,status description.

Whether the barebox DT is used for Linux or not is inconsequential though.
We want the barebox DT to be always _usable_ for Linux, even if it's not
used. I thus intentionally didn't list when barebox passes along its own
DT in the binding doc.

> That beeing said, is it worth tying to make it barebox unspecific and
> try to upstream the binding. I had something like bootloader,status or
> bl33,status in my mind.

I don't think the prospects for upstreaming are favorable. This doesn't describe
hardware, but the fact that the barebox driver needs further work.

Normally, you would disable drivers that don't work for board, but we can't do that in
a multi defconfig, so we need to disable the device on a per-board basis.

This is different than secure-status, where device availability is actually
dependent on the security mode of the system.

Cheers,
Ahmad

> 
>> The support for the Android fastboot's protocol boot command also doesn't pass
>> a DT and expects the bootloader to pass its.
> 
> Good to know :)
> 
> Thanks,
>   Marco
> 
>>
>> Cheers,
>> Ahmad
>>>
>>> Regards,
>>>   Marco
>>>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>>  arch/arm/dts/rk3568-rock-3a.dts | 4 ++++
>>>>  1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
>>>> index bcbfab14a580..b7258d7e61b3 100644
>>>> --- a/arch/arm/dts/rk3568-rock-3a.dts
>>>> +++ b/arch/arm/dts/rk3568-rock-3a.dts
>>>> @@ -55,3 +55,7 @@ environment_sd: partition@408000 {
>>>>  		};
>>>>  	};
>>>>  };
>>>> +
>>>> +&pcie3x2 {
>>>> +	barebox,status = "disabled";
>>>> +};
>>>> -- 
>>>> 2.47.3
>>>>
>>>>
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


