Delivery-date: Wed, 30 Jul 2025 15:16:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh6ft-005Gy9-2t
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 15:16:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh6ft-0002QO-2P
	for lore@pengutronix.de; Wed, 30 Jul 2025 15:16:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EE7XeDoA9lYLP0HF6Y0OR9xrN9x6q3REhVBZG4KeK50=; b=KwBM1vPn9unXPilsgfRJVtYhcr
	fiegh+LJTn8hJPWISBkOZkutSEfPVY9iC/CjDg70lnr1o2eDXNcG6f3UTHFjPm594/b3OAIvDm0/q
	8WcWe1drrAzycT5TkiZZn0LWb6vzOTqn9wvCFxNIPYfhKQYpgM4A+2odx0M2ylYXCg2MwTtr/u+Qp
	cgbSq9+mL/fc+zsnKJLBMRl4Wnd/TpHs+90zYDcFzezzVY9XDGKprV4if8CogE5bt9RRSDOJxKK/C
	CQuxObadpwGp+wmYXpZgXIVn+HGrP1aPbJYe/dfrnNCDT9BRxDkYigDdNjwK8Z0lnnafQSOeIAfze
	HCtYxr2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh6fP-00000001a4F-3eQu;
	Wed, 30 Jul 2025 13:16:23 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh6bl-00000001ZHy-2qcT
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 13:12:38 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3b7892609a5so453090f8f.1
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 06:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753881156; x=1754485956; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EE7XeDoA9lYLP0HF6Y0OR9xrN9x6q3REhVBZG4KeK50=;
        b=VMphsKl5ntA2nkwSUatydF+qPQsiof4nwDs8aJNsIGHZc9SQVWlzuPSwbHb5cgsTmA
         C2Cd5oYxAWzZnVjp4Zyzjti+OMn0EAjD5gGeGmjpY5K5QSkQjiw6pm5op59Z6Ja9ZOTY
         TnO76vEPXipjvnleewxNyagZYx1NjNhwHJqU6xh3admgJ7pr8t2KeSkyDtq9ywhfNaKq
         BAV+8QyYiSqeOQw9cujxoOHPP5KO9M096QD5OLzXjK4NUD5XkJMSpCljduNSLG/H5YWX
         1yH+uuOG7rkuYQkZ59woh/J5k8fUqr6UkfqsE4hJZverjdHB2Az71kQO3Z9Od46bvWlg
         skmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753881156; x=1754485956;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EE7XeDoA9lYLP0HF6Y0OR9xrN9x6q3REhVBZG4KeK50=;
        b=thYL487eV8eNZD25PyqeAqWxrS0nn8idy89XPCex5/MkRjULKEf2fUzGvV4kRFIsyf
         NujGClZL8/C3EKJeYqJ1E6ZD3RJ8+N9tHrZAlmu6gobxJIVKV5AFq4YxdrRwz3MsP16/
         qJ0/FOI7PKlgboQ9fc8OPILqEA4j2/CA/GDzr8b7JKxgoAuNKqxZ29B1sVvEuEWkc4SB
         47xzcXz69mh9WNqU7l5VQp50VmT4lOm6xKQ0kJ+jkq9Wz63JCiLcuifSUj4ojScCdOQ8
         B8KOb5h9Gvf9/vm+H/g6zF4a2f3yxMCFgmFevzCXeG+6taUiQNJ3/m28Qcr8/au93Fdm
         AUtQ==
X-Gm-Message-State: AOJu0Yyf1NzfPMnQygqvP7/TFdvM9mnfFCrGzVdpaOIwy792+70FSlsz
	IMFa4Q2zgV1KR3usBTrAdCGCDLAUNCjEFPfGvERI9MYsQThIfd7P2Vn3NqzH/Q==
X-Gm-Gg: ASbGncvJ0aV+uV0VeOUxtME43MuER7ViKAKULh0zPN5l+kfz9jKdfW0kXMjYLYdyC/J
	4kswL6uxsyqJlLQnnwCZHvaUFQOr5KCiCuKfEBTofGyL11dWGuffa64jOqNArKwPaTXYAmgsjCQ
	P1AoelP1kuzsXNGkd1zUBsUVpQHke7X22Hlvh+5ci4yxcnaC5RBI4gw9tbupaZOg1ACKS7waMSH
	J2uVbqWZSj7B6wIyxcnjspXurc3KSspafR9ia9MwBkftc+Qe7ePxfc2J+s937KEpiAUm6PpRHOU
	vK7mEPjNkSzI/0oRRidNp67nSNsUkpNcO41KXddIE4+8sFrJCDiq5oIzaeNXgApbnxm3pGG4+sL
	OFDi6xjSezckNZ8Z1knXdpEA4Wk9oMOmjqNUhtORfuT6EEsV3hrCvHHQ+vf8q2YXFQQ9Fk3Dtuk
	OG
X-Google-Smtp-Source: AGHT+IECHjRiMxLko9HiVtD1nz5fAV23in5ODiicQLMguSpW6Xl2ul0gTAPsfExHQ30h3HhryLT9dQ==
X-Received: by 2002:a05:6000:2389:b0:3b7:8a28:3e35 with SMTP id ffacd0b85a97d-3b794fe4bf6mr3057943f8f.2.1753881155824;
        Wed, 30 Jul 2025 06:12:35 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589536abb1sm30001435e9.4.2025.07.30.06.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 06:12:35 -0700 (PDT)
Message-ID: <e7baa0a9-89a4-49a8-aaa3-a26a3b0d2cd2@gmail.com>
Date: Wed, 30 Jul 2025 16:12:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
 <d343c6c7-ef7c-498b-8059-a08b8f166dec@pengutronix.de>
 <17756254-8151-4c61-95be-2878bc736622@gmail.com>
 <1a0e5c13-14b5-4021-9baf-c2e701478c80@pengutronix.de>
 <b6c276e2-5217-4260-b8bb-3026d2b44a28@gmail.com>
 <9fb60284-c587-4581-8aad-c4c65d50a18d@pengutronix.de>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <9fb60284-c587-4581-8aad-c4c65d50a18d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_061237_721263_D5A7EE81 
X-CRM114-Status: GOOD (  23.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 4/4] ARM: boards: add support for Samsung Galaxy S20 5G
 (x1s)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/30/25 15:50, Ahmad Fatoum wrote:
> Hi,
>
> On 7/30/25 13:18, Ivaylo Ivanov wrote:
>> On 7/30/25 12:44, Ahmad Fatoum wrote:
>>> Hi,
>>>
>>> On 7/30/25 11:16, Ivaylo Ivanov wrote:
>>>> On 7/30/25 11:48, Ahmad Fatoum wrote:
>>>>> Hi Ivaylo,
>>>>>
>>>>> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>>>>>> Add support for Samsung Galaxy S20 5G, based on exynos990, to the
>>>>>> current samsung board support. This platform, just like exynos8895,
>>>>>> needs a bit to be set in order to allow the framebuffer to refresh.
>>>>>>
>>>>> Oh, a shame that I sold the old S20 FE I had. :/
>>>>> I still have a rooted S10e though. I should give this a try when I have
>>>>> time.
>>>> Heh, I was thinking about getting an s10e to bring up mainline linux on it,
>>>> but I do have quite a lot of devices to work on right now. At the very least,
>>>> I expect to throw in support for 7580 and 8890 in the future for both
>>>> mainline linux and barebox. The plan ideally will be to bring up support for
>>>> exynos7580 in barebox to a decent state, with mmc and usb working at least.
>>>> S20 series are decently supported, but nothing exciting yet.
>>> Cool stuff. Looking forward to it. :-)
>>>
>>>> Another qustion: are there any plans to support booting fit images from an
>>>> address in ram instead of a file? I suspect porting over all the ufs stuff from
>>>> linux will be a hassle
>>> It's something we will want sooner or later, but yes, it will likely be
>>> involved.
>>>
>>>> , so for S20 (which does not have an sd card slot, only ufs)
>>>> booting a fit image that s-boot has loaded into ram for us might be neat.
>>>> As far as I've seen, only "go" can do that, but not "bootm".
>>> $ addpart /dev/ram0 0x1000@0x1000(fit)
>>> $ bootm /dev/ram0.fit
>>>
>>> would've been the workaround so far.
>> Oh, nice. I'll give it a shot and if it works, I'll include it
>> in a config in the board dir as default boot behavior
>> (we really cannot interact with the console yet anyways).
> I think a convenient behavior, at least during development is to set
> autoboot=menu and set a menu timeout. Then add a config option that
> remaps volume up/down to up/down and some button as return and you
> should at least be able to navigate the menu.
>
> After timeout expires, system would boot normally.

Hm, I haven't thought of that. Mapping keys will need a pinctrl/gpio driver
though, so I think it will be best to just have default boot behavior as
bootm'ing a fit image from ram, while also having autoboot=menu
and a timeout set. That way we can expand it after adding keys in the
future. Does that sound good?

Best regards,
Ivaylo

>
>>> Since the fuzzing infrastructure has been merged, we also have
>>> ramdisk_init, which sets up a block device on top of a memory buffer
>>> without block layer caching. I think that's sufficient to implement
>>> losetup(8), which would go beyond addpart and even allow mounting file
>>> systems from the loop device.
>> I see. Looking forward to that.
>>
>> Best regards,
>> Ivaylo.
>>
>>> Cheers,
>>> Ahmad
>>>
>>>
>>>
>>>> Best regards,
>>>> Ivaylo
>>>>
>>>>>> diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
>>>>>> new file mode 100644
>>>>>> index 00000000..19d59eaa
>>>>>> --- /dev/null
>>>>>> +++ b/arch/arm/dts/exynos990-x1s.dts
>>>>>> @@ -0,0 +1,13 @@
>>>>>> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>>>>>> +/*
>>>>>> + * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
>>>>>> + *
>>>>>> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>>>>>> + */
>>>>>> +
>>>>>> +/dts-v1/;
>>>>>> +#include <arm64/exynos/exynos990-x1s.dts>
>>>>>> +
>>>>>> +/ {
>>>>>> +	barebox,disable-deep-probe;
>>>>> Same comment: we want deep probe as default eventually. Did you run into
>>>>> problems without this?
>>>>>
>>>>> Cheers,
>>>>> Ahmad
>>>>>
>>>>>> +};
>>



