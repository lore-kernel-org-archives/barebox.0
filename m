Delivery-date: Wed, 30 Jul 2025 11:18:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2x6-005DWg-1n
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 11:18:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2x5-0005Jf-W4
	for lore@pengutronix.de; Wed, 30 Jul 2025 11:18:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=npEGtcUKUmqa8xLI3XAmKsb5v0bw5pFm9f1fn3dLL7U=; b=iJp0ZlMBjRY3u9YTiq/+xSEcy2
	o3f6P+Cw1/76E5Sg60KcB2Dyyahr52YMnnKKk27zLsbsa/zE+uiRpvlN1u45GXV7ecHPPtSjaWwq6
	hRAnhDgKioMc2DSrTHboI6n+oOv2scNFSAczqiYf6sbfU9AcGTWcvrYO0/l8mtqCYs75aNsf5PGke
	IJ0OvT8m3ayaRN8IZsl1sk2cDREn9Va1W2JjWp1OLeOkxtXbChZDzd43X09fFwQGdDdTfZA/i07RC
	VhmxpBqavd6ZQboKY1Di77fo/e362jKcGJAmPxhxIv1dvbE17+GLavGqDJcjn5gbE+yl20MESw7Wd
	qMouZSmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2wD-00000001565-294G;
	Wed, 30 Jul 2025 09:17:29 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2va-0000000151S-1UOx
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 09:16:51 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45618ddd62fso63698695e9.3
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 02:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753867009; x=1754471809; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=npEGtcUKUmqa8xLI3XAmKsb5v0bw5pFm9f1fn3dLL7U=;
        b=Bo1ImygUFovyAQPQzWZnYy/gWjxpuBU/F/jx1vZrtD27E2v5LoRSc/bvq4yhS95HZx
         KpUhSa8ttXYz+xT6vNuvBfvX0YfTZ6Db3UMkGEMbPDfX2cBLQOImBizTwVRYeedl3LbY
         NIgbb78cWbo9903Bc9hEuSCU4UxwKO72UKzOUXzZ6IqkNbIO3Md3a0bSO+pKcPkDe8DN
         k+909ufg6N1JCyH+6GpIrj3KyIweaqu5cD3vE6tE48rznWxWabSq28aJrRmocuXeMkkB
         tMKNw2KP8B/MGQpogpWQGNjfMkmVS0aKj4cVDG46QbtxjbD+f2mGbaJ+vl+zcJjWq2Q8
         Iiyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753867009; x=1754471809;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=npEGtcUKUmqa8xLI3XAmKsb5v0bw5pFm9f1fn3dLL7U=;
        b=NvxOeCW3NSw9voE7xoGQr+mFz0DAHc5hQHd8Yw5D0m5FYXau6zmwCIBBb2eET+r/Y2
         ngqdDVFqMr4SUBVHiwSjAeFcp3DXtUrg8nwk126UU680YtCTxTJOq3Kzxit27xlnJKU8
         kzIE9ThNr+uJ26V5bZR0U5lm/zpEzD6DF5RXuIfAJm8iCUJDzGgCoae7kHHcoQukKJt3
         nlnbmYgnH+OYXiAQILvbdsP8fA4SilaKN9BMwL6BgR41/nJO+IFQ1TSTKzgA4yQNFlWO
         9qrPH+9jY68Fn3FhOsDU8XY8U5USJS0WIkD8+DCUXwtffP+l6UzIqRGFZthR07M3w4m9
         CGuQ==
X-Gm-Message-State: AOJu0YyOZKg5A5kjkqZQh2bJCH0+I2ymCbEcbmwpRZS6vYnzj3uieNpj
	Y+AeSmDWfQnQNyabFBzIv+5EJmN7fggU7rDlRxegFynOnF6tquW67pqZRsysyQ==
X-Gm-Gg: ASbGncsU+sbuL58SS6i/i8Bw6WUSV9eAXIPvstR5vhGGga5+uYPkozNkpQ5Q9A7eUum
	J76RpsNwZ1Deh3Zq0XlCAMwG0iyUVEAHgUhSSiw0XplXwKOAGHkQsNMKzYsB5Eaawrisi2wqE/j
	jvYziJ8l+COV2UjAddEQUPGysFkKdYWeVHRvxFrcH1RbrhTd58JndzDEbnVr2vPhvZl/rXxki6h
	Q2lTomWvAMrUnVxDpIBpj93vG70dcIBqe0LwNw4W076oQ5qK/F8Fdp/AhH69RQP14oyUEdcBp3q
	Me7AH0aTYrcBbE+b/7eoPMokJ7/LSiyhtgD94NlsV4KQyiaNOsfhZ7r2EzSpfFY7s/kMRF+K050
	ezeRoadVNR/6gCEyTEFklh/K2G+nAO0spvkr7D5stdsAqll35g/exULXnxTW2FAeIgtgD6Mx07e
	6C
X-Google-Smtp-Source: AGHT+IGQdBSfEZqdJAxzJOOfDoDtYcnwFV1q6HjMdgL6gAMz/LTjZLwf23rrTmG9rKnexRKe/pSbwg==
X-Received: by 2002:a05:600c:3541:b0:456:19be:5cc with SMTP id 5b1f17b1804b1-45892b9dcf8mr28211125e9.14.1753867008735;
        Wed, 30 Jul 2025 02:16:48 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953b33e5sm18328245e9.32.2025.07.30.02.16.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 02:16:48 -0700 (PDT)
Message-ID: <17756254-8151-4c61-95be-2878bc736622@gmail.com>
Date: Wed, 30 Jul 2025 12:16:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
 <d343c6c7-ef7c-498b-8059-a08b8f166dec@pengutronix.de>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <d343c6c7-ef7c-498b-8059-a08b8f166dec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_021650_404735_C2DC7E21 
X-CRM114-Status: GOOD (  18.76  )
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

On 7/30/25 11:48, Ahmad Fatoum wrote:
> Hi Ivaylo,
>
> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>> Add support for Samsung Galaxy S20 5G, based on exynos990, to the
>> current samsung board support. This platform, just like exynos8895,
>> needs a bit to be set in order to allow the framebuffer to refresh.
>>
> Oh, a shame that I sold the old S20 FE I had. :/
> I still have a rooted S10e though. I should give this a try when I have
> time.

Heh, I was thinking about getting an s10e to bring up mainline linux on it,
but I do have quite a lot of devices to work on right now. At the very least,
I expect to throw in support for 7580 and 8890 in the future for both
mainline linux and barebox. The plan ideally will be to bring up support for
exynos7580 in barebox to a decent state, with mmc and usb working at least.
S20 series are decently supported, but nothing exciting yet.

Another qustion: are there any plans to support booting fit images from an
address in ram instead of a file? I suspect porting over all the ufs stuff from
linux will be a hassle, so for S20 (which does not have an sd card slot, only ufs)
booting a fit image that s-boot has loaded into ram for us might be neat.
As far as I've seen, only "go" can do that, but not "bootm".

Best regards,
Ivaylo

>
>> diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
>> new file mode 100644
>> index 00000000..19d59eaa
>> --- /dev/null
>> +++ b/arch/arm/dts/exynos990-x1s.dts
>> @@ -0,0 +1,13 @@
>> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>> +/*
>> + * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
>> + *
>> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> + */
>> +
>> +/dts-v1/;
>> +#include <arm64/exynos/exynos990-x1s.dts>
>> +
>> +/ {
>> +	barebox,disable-deep-probe;
> Same comment: we want deep probe as default eventually. Did you run into
> problems without this?
>
> Cheers,
> Ahmad
>
>> +};



