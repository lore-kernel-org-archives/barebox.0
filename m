Delivery-date: Wed, 30 Jul 2025 15:27:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh6qI-005H4G-1N
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 15:27:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh6qH-0003wt-Ne
	for lore@pengutronix.de; Wed, 30 Jul 2025 15:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7hBOYo//pq+6e/JbqEPe2jxX3SaqR9bGk+MLFR47oI0=; b=EDXm3ZRA0aA5e2Yv7RZRgv1z/p
	1sIe34iEXncp6wxfsq9Vvp/etMajsCyFQTPMFOsVKS71p8+2W2K4sWQ+b8ysDP7fbPSKPCBy8bsPl
	R1B66KgnKEHBVQUuzMzyy1ps+Ff2YBQIG/FG/HsBc9znz2te+prL7PNZ9M1GAqUft4am9TEHHu/+k
	sJNk8QtxVkPpevuIcMVTFGCUd6dHJ/mMCg3o8lbUekS7SIIbcuQU1sN6dAzy/srAd23a/XBWxb5lr
	dypq7O+nQxzwTZb8DHAsDGlx2AcfBGRQj3dVGTauFmjysa6A1ITUvqfqgcyAQ8d4W/Fild2BwK0Px
	Dd4ED35w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh6pe-00000001bXW-0Gmi;
	Wed, 30 Jul 2025 13:26:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh6pc-00000001bVv-0T4v
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 13:26:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh6pa-0003pb-RJ; Wed, 30 Jul 2025 15:26:54 +0200
Message-ID: <bd2b4318-4125-45b8-90d1-20d5767cb6cd@pengutronix.de>
Date: Wed, 30 Jul 2025 15:26:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
 <d343c6c7-ef7c-498b-8059-a08b8f166dec@pengutronix.de>
 <17756254-8151-4c61-95be-2878bc736622@gmail.com>
 <1a0e5c13-14b5-4021-9baf-c2e701478c80@pengutronix.de>
 <b6c276e2-5217-4260-b8bb-3026d2b44a28@gmail.com>
 <9fb60284-c587-4581-8aad-c4c65d50a18d@pengutronix.de>
 <e7baa0a9-89a4-49a8-aaa3-a26a3b0d2cd2@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <e7baa0a9-89a4-49a8-aaa3-a26a3b0d2cd2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_062656_153591_CFC6D3D4 
X-CRM114-Status: GOOD (  27.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/4] ARM: boards: add support for Samsung Galaxy S20 5G
 (x1s)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ivaylo,

On 7/30/25 15:12, Ivaylo Ivanov wrote:
> On 7/30/25 15:50, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 7/30/25 13:18, Ivaylo Ivanov wrote:
>>> On 7/30/25 12:44, Ahmad Fatoum wrote:
>>>> Hi,
>>>>
>>>> On 7/30/25 11:16, Ivaylo Ivanov wrote:
>>>>> On 7/30/25 11:48, Ahmad Fatoum wrote:
>>>>>> Hi Ivaylo,
>>>>>>
>>>>>> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>>>>>>> Add support for Samsung Galaxy S20 5G, based on exynos990, to the
>>>>>>> current samsung board support. This platform, just like exynos8895,
>>>>>>> needs a bit to be set in order to allow the framebuffer to refresh.
>>>>>>>
>>>>>> Oh, a shame that I sold the old S20 FE I had. :/
>>>>>> I still have a rooted S10e though. I should give this a try when I have
>>>>>> time.
>>>>> Heh, I was thinking about getting an s10e to bring up mainline linux on it,
>>>>> but I do have quite a lot of devices to work on right now. At the very least,
>>>>> I expect to throw in support for 7580 and 8890 in the future for both
>>>>> mainline linux and barebox. The plan ideally will be to bring up support for
>>>>> exynos7580 in barebox to a decent state, with mmc and usb working at least.
>>>>> S20 series are decently supported, but nothing exciting yet.
>>>> Cool stuff. Looking forward to it. :-)
>>>>
>>>>> Another qustion: are there any plans to support booting fit images from an
>>>>> address in ram instead of a file? I suspect porting over all the ufs stuff from
>>>>> linux will be a hassle
>>>> It's something we will want sooner or later, but yes, it will likely be
>>>> involved.
>>>>
>>>>> , so for S20 (which does not have an sd card slot, only ufs)
>>>>> booting a fit image that s-boot has loaded into ram for us might be neat.
>>>>> As far as I've seen, only "go" can do that, but not "bootm".
>>>> $ addpart /dev/ram0 0x1000@0x1000(fit)
>>>> $ bootm /dev/ram0.fit
>>>>
>>>> would've been the workaround so far.
>>> Oh, nice. I'll give it a shot and if it works, I'll include it
>>> in a config in the board dir as default boot behavior
>>> (we really cannot interact with the console yet anyways).
>> I think a convenient behavior, at least during development is to set
>> autoboot=menu and set a menu timeout. Then add a config option that
>> remaps volume up/down to up/down and some button as return and you
>> should at least be able to navigate the menu.
>>
>> After timeout expires, system would boot normally.
> 
> Hm, I haven't thought of that. Mapping keys will need a pinctrl/gpio driver
> though, so I think it will be best to just have default boot behavior as
> bootm'ing a fit image from ram, while also having autoboot=menu
> and a timeout set. That way we can expand it after adding keys in the
> future. Does that sound good?

Ye, sure. I am just talking where we could go from here in future.

Keep up the good work.

Cheers,
Ahmad

> 
> Best regards,
> Ivaylo
> 
>>
>>>> Since the fuzzing infrastructure has been merged, we also have
>>>> ramdisk_init, which sets up a block device on top of a memory buffer
>>>> without block layer caching. I think that's sufficient to implement
>>>> losetup(8), which would go beyond addpart and even allow mounting file
>>>> systems from the loop device.
>>> I see. Looking forward to that.
>>>
>>> Best regards,
>>> Ivaylo.
>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>
>>>>
>>>>> Best regards,
>>>>> Ivaylo
>>>>>
>>>>>>> diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
>>>>>>> new file mode 100644
>>>>>>> index 00000000..19d59eaa
>>>>>>> --- /dev/null
>>>>>>> +++ b/arch/arm/dts/exynos990-x1s.dts
>>>>>>> @@ -0,0 +1,13 @@
>>>>>>> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>>>>>>> +/*
>>>>>>> + * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
>>>>>>> + *
>>>>>>> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>>>>>>> + */
>>>>>>> +
>>>>>>> +/dts-v1/;
>>>>>>> +#include <arm64/exynos/exynos990-x1s.dts>
>>>>>>> +
>>>>>>> +/ {
>>>>>>> +	barebox,disable-deep-probe;
>>>>>> Same comment: we want deep probe as default eventually. Did you run into
>>>>>> problems without this?
>>>>>>
>>>>>> Cheers,
>>>>>> Ahmad
>>>>>>
>>>>>>> +};
>>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



