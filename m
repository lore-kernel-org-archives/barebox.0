Delivery-date: Wed, 30 Jul 2025 14:19:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5mc-005G5N-2M
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:19:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5mc-0003LQ-3W
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2yWivX+duPe1aydw83IIMY2oJz+dDOsloqyx/gM8Gh8=; b=R3IfgLRMQbEpvr/DUEtuGEPdEb
	ZA0QqcIizVfE+xHPeu3BRaKE0E3JWsfrFZZjeZ+KoghtjdDxj/65DfUkI0h+wGfx8kmJxOkyN5UA2
	dGcSoF4l50EZiPTqfbyGN0qMp/ELFBzYsOqBToYHThTrUzpyop92UVI0v2Xn4HeCSIT++R6yCZN9T
	6lJoVkFvFvw7IlohoV7mxuCHeXZmUJzCuoDCKl2A8o11HtPaGP48K3ClvB7oPlcuVxYnsCwKZg8Cf
	N5TxtMOQT1sQW6/oSLeSr8v5DQ50zmo1ftfesxJOhlpPjzB2h8SRZAapz2PbUgVzCiUCFLykvgs8a
	CT23AoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5m2-00000001RE7-3hT0;
	Wed, 30 Jul 2025 12:19:10 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4ow-00000001KVA-2Xjq
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 11:18:07 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4561514c7f0so62534375e9.0
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 04:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753874285; x=1754479085; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2yWivX+duPe1aydw83IIMY2oJz+dDOsloqyx/gM8Gh8=;
        b=L5ugEB96e4l+tMHvJBbLUzWXlRRDt2yIymiS38s1GGqWjqJpuYw1DeMrdIqVs7cH0z
         fNVLtd9WyiDjN2JP4KKajl1LsIIB+0kOLy6QqbH3SBP4i7DCXUqTfMH75bOfTbsf307H
         XQ1RCx2v9magqskwbjeQutzx7MpJayiMEt9NEA2ZNXwfbaZg2/RIQp9R7Uc4FnzgXG/y
         2K4KliRsnUYsoAKUnYD5QqOt5/0pNIFLhg82CrZinVT+SAW8kn/xyDjS/ytIQySsKh0Q
         IOniSFfTjP6jJDftmgegHE6qcmmKEjQ4RvriqE1aQNch/gssyUCdtvT3KF96iVp7dgo4
         j7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753874285; x=1754479085;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2yWivX+duPe1aydw83IIMY2oJz+dDOsloqyx/gM8Gh8=;
        b=xBIdpRlD6HU+0GQvts5m7tAS7eBnaB/S1/BjkavtYheY1TqCmEvE3mwwt8ANu/GfOd
         hZEqi9xmHm6/yZdFS0BTKY0hhFHJ6CC312SAYaI2yNHio8yah/DSUQB3d6tWae8NWEe6
         7BCYVzyPSZMUpitV3MxCDQKw7eq6WapbUgFzSckpCTGL0DZj1+LvQvm6NxhZNIaUAlT7
         5O/MpoMsRN5xtjqpRMMIsfJ8YJ1Y56VNJoKC+cQWNwoKtEoHZ3IIFEeAsfWLvYRSqCW8
         9PCSViFsyA8ZhtLYEIxdhvOx7/cPASRkCNZ2KAiGhbOmPh+nDW1h4qWgUgnRDllr2LR1
         7cQw==
X-Gm-Message-State: AOJu0YxOqJ1YrjdznE5sOjo7Ucu/dEtgya0NmbCmER3yO3w8adi86l8d
	g+gQT0dWWppNCiEAGC9NhMWiTme98ZPpm02WtukqFDJOrkn1rlYC5249RPhp0A==
X-Gm-Gg: ASbGncsl2RJHO+e2HkawgJg9js+wHcagoMJp2lmU8eFmL12P6hJiL4IVKbNsKPkujim
	xolhie+CaGrEMuGyYadriuTZg/fR7cpeABMS4+Bdf4hu55Y2ezmzSMkYpHp1f83jqqKq0V3c75l
	MNZ2drk/UxCBIqny350wfeM9Pqha3g9XwjKJFWSOssxvmCtt8Je9K5EhrXtCu/F5YMEoOEAhqG2
	OueKLychq1WaloPPW2ben2jzZE6E8qfW81ig8vgdSGIeN9BTf4udb/Ws3jmyYb6oIj3aVMS+rQR
	j15BktFGL7dEG3o3VRfuajNB/wXuuSgZJqUee6LWOdbgCsKgzl7TF+mRkqpCR/KPujVWEHL7H3j
	Fq5WUREiGqPGOiDbSqzcuw0fSXrbXXfa4GnQ2LPIJDgC8itHFTdEgYRVvHOcNdSkY8QjTVTrMsB
	Uq
X-Google-Smtp-Source: AGHT+IGVYi2eYeuUpY5n8IVLsLlbd7RSgTgs+6DtX9fhBZoISAMeXugqf22RgRxWvl/3H1mHWBFBTA==
X-Received: by 2002:a05:600c:35d4:b0:453:8bc7:5e53 with SMTP id 5b1f17b1804b1-45892a34a35mr31184125e9.0.1753874284821;
        Wed, 30 Jul 2025 04:18:04 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589538030csm22596285e9.16.2025.07.30.04.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:18:04 -0700 (PDT)
Message-ID: <b6c276e2-5217-4260-b8bb-3026d2b44a28@gmail.com>
Date: Wed, 30 Jul 2025 14:18:03 +0300
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
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <1a0e5c13-14b5-4021-9baf-c2e701478c80@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_041806_652060_3F0D15A3 
X-CRM114-Status: GOOD (  23.10  )
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

On 7/30/25 12:44, Ahmad Fatoum wrote:
> Hi,
>
> On 7/30/25 11:16, Ivaylo Ivanov wrote:
>> On 7/30/25 11:48, Ahmad Fatoum wrote:
>>> Hi Ivaylo,
>>>
>>> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>>>> Add support for Samsung Galaxy S20 5G, based on exynos990, to the
>>>> current samsung board support. This platform, just like exynos8895,
>>>> needs a bit to be set in order to allow the framebuffer to refresh.
>>>>
>>> Oh, a shame that I sold the old S20 FE I had. :/
>>> I still have a rooted S10e though. I should give this a try when I have
>>> time.
>> Heh, I was thinking about getting an s10e to bring up mainline linux on it,
>> but I do have quite a lot of devices to work on right now. At the very least,
>> I expect to throw in support for 7580 and 8890 in the future for both
>> mainline linux and barebox. The plan ideally will be to bring up support for
>> exynos7580 in barebox to a decent state, with mmc and usb working at least.
>> S20 series are decently supported, but nothing exciting yet.
> Cool stuff. Looking forward to it. :-)
>
>> Another qustion: are there any plans to support booting fit images from an
>> address in ram instead of a file? I suspect porting over all the ufs stuff from
>> linux will be a hassle
> It's something we will want sooner or later, but yes, it will likely be
> involved.
>
>> , so for S20 (which does not have an sd card slot, only ufs)
>> booting a fit image that s-boot has loaded into ram for us might be neat.
>> As far as I've seen, only "go" can do that, but not "bootm".
> $ addpart /dev/ram0 0x1000@0x1000(fit)
> $ bootm /dev/ram0.fit
>
> would've been the workaround so far.

Oh, nice. I'll give it a shot and if it works, I'll include it
in a config in the board dir as default boot behavior
(we really cannot interact with the console yet anyways).

>
> Since the fuzzing infrastructure has been merged, we also have
> ramdisk_init, which sets up a block device on top of a memory buffer
> without block layer caching. I think that's sufficient to implement
> losetup(8), which would go beyond addpart and even allow mounting file
> systems from the loop device.

I see. Looking forward to that.

Best regards,
Ivaylo.

>
> Cheers,
> Ahmad
>
>
>
>> Best regards,
>> Ivaylo
>>
>>>> diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
>>>> new file mode 100644
>>>> index 00000000..19d59eaa
>>>> --- /dev/null
>>>> +++ b/arch/arm/dts/exynos990-x1s.dts
>>>> @@ -0,0 +1,13 @@
>>>> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>>>> +/*
>>>> + * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
>>>> + *
>>>> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +#include <arm64/exynos/exynos990-x1s.dts>
>>>> +
>>>> +/ {
>>>> +	barebox,disable-deep-probe;
>>> Same comment: we want deep probe as default eventually. Did you run into
>>> problems without this?
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>> +};
>>



