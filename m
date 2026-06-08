Delivery-date: Mon, 08 Jun 2026 20:16:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWeWx-003j6B-1r
	for lore@lore.pengutronix.de;
	Mon, 08 Jun 2026 20:16:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWeWx-0000FH-03
	for lore@pengutronix.de; Mon, 08 Jun 2026 20:16:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bi+K/FNWh/WuWClDh8tZeg4NO+abAPaEi1BvyB9J6AQ=; b=TAreu+irKYexMFheoXMqiDX2G6
	+jEE0weZBCikvKJwwRdEevUuFg1xmqsCbbbW5fXsvT2a8bV0bh5ktkwrS+anvf8ZKaiGO6YUgfDUB
	sDgbxYyLtk+FY7OBUDX598vbk8HzwAAeu8qFfsJuxGZJKJte495j9Ziv1nBNBa4DmMAxarhrXMkoa
	kEgykdIz2O60n/FiT8DNgSR5RDTjqiojrI8c2k9GtKIl2PGXCPhKq7KkyED/1AFw7vXrigKZTaYqd
	V/fVvdAc9RwkEGHab5bHr19qBsohwPAF7n7Pc3Vi/VlfjoRhrR7GAMuf69Y5OfEJu+2ROShaBPCKo
	lcsO1Jkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeVo-00000004GAA-302w;
	Mon, 08 Jun 2026 18:15:48 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeVl-00000004G9n-37KS
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 18:15:47 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-490bc6a7958so41650535e9.1
        for <barebox@lists.infradead.org>; Mon, 08 Jun 2026 11:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780942544; x=1781547344; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bi+K/FNWh/WuWClDh8tZeg4NO+abAPaEi1BvyB9J6AQ=;
        b=q1Xderiv3oMVebS7tVpsu2iBGKcEBg8TtSooTQkumrYwKz/3FHFumLpylndSKmu93v
         L8UiFjH181CdmhJKF3+oTx9kWzXxgK/HHBjGFTrujikeY5/XoyrLowkyhJM7w6zE6NHP
         iMTsUxQ9MvaQw0jbUYGaiR32vxfVv/ptGpuwIpUavoIOanm/hvByZHIEoqNetbk++svJ
         l4mdVjz6f3/Xdnr/oO5NNt0mdR1CmJ5zV4PE0TQjIHEbsB2du5OB16OG/e96juKeX8ln
         u8f6Oh8fRj0+uWqVH9SPADw+AiADbZpHcU3w0zHVMLCfLB02/kq3Rotzkr7BKEv76WH9
         3Pyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780942544; x=1781547344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bi+K/FNWh/WuWClDh8tZeg4NO+abAPaEi1BvyB9J6AQ=;
        b=ls7cuRC44sxfgB66iv3lhuohes4htGCnXMZEBfWURsfZFWBpfNop2BCfWkDYKHMgwU
         cZWPLYFpZCvWnmU593QUvO1qbxaCFHWyefi6DJ1k5BpYyjkIe6fzQFem3M43DFAym/CP
         s/ZJ30fpQVibmVGdggLkefIGlELnvDsXw7X47VVSClO80nWcZ6xyllSoX0UpshEFbt7u
         jxlZvAeuRccupH5PqxSajDNn1HH6jz2vmBkcFnJoHZFHYvqRpy2JczSAZsmc8TkYUHwP
         6AXsVpBTO9U+L32KL9Ct01DYEmcUVq9qXvHI91iSwm0DoxchAG87weGHMMsLDJSOuVeC
         KVjA==
X-Forwarded-Encrypted: i=1; AFNElJ8EewVLzZwxfgLiID/Kkq4OmQ+BAYJg00o1/a0jdNfJnXAuj0qDqv03+MWTlNiEr7QVSJcEYA48@lists.infradead.org
X-Gm-Message-State: AOJu0YyYQ1QJz2eRMMnbz8RLlEn8QfEdX2q4V1xjJ/WlOVhYwV2GMUrR
	K0QFd0+BmhJKUUfsQ6eqEFp8yU6KoVSyFNzZGNaE045O74B61FVSvXJi
X-Gm-Gg: Acq92OG5vHOlI6ImWSiNf7DLHleFLH7nRSDeGfTn10R0HwwcCaMTyWOcg7w9FiEVT/R
	pz+/nmOjIpZeg7m6yzNHTOO0+xpY3jtPRLE8n7Nmbc7C9XXbAXf2uvD6mgTFzkiy3n6gMrbPc8u
	TEzKbQ0z5oGvMM94lgwqt5HCzP78ptbJVzpwZ/Q6xBa8n58bliEaUQ1wkRd6t0gAUKyfvFXmtKa
	pFQ92libIJe6SzPy/QN7WEEI9kKq5qLlH5ruPMZ280lfA/Vkt6oOCI6DqQf0jgdLZI//HH6tPWJ
	I9HThypFvV8MdXtnLs42oEh+vGgo2i9hH/gZ3trd0DpxLB2kqyylCvxTc78PK/VqL8bUMnDJ0yQ
	4SsWfgILnww8CL+GOiPMbeDZqH3G7xgg0ocNXe/Ge81030IT5OtC/ck7iaWEdaFADASrnCGeEws
	8d/zB7PIljipPPkKFyryffmTmQXiXrQhNSppdJ8uqOFXMwipmcfBfu68caYoSN+bEqpwYOrYwm4
	lS1iSJqnoXrPbE1gU/mzsyZARVzbJwSGC5MkWXhLtaKCzz1Jo5/cnli7pd+KibjZov0i2pb9bRg
	urBYwA+g7OzJ0/UIXvvqE9Vrgy/EOoG5X4bjfjw/
X-Received: by 2002:a05:600c:4509:b0:490:c28c:e077 with SMTP id 5b1f17b1804b1-490c2d33c0fmr208553245e9.17.1780942543312;
        Mon, 08 Jun 2026 11:15:43 -0700 (PDT)
Received: from ?IPV6:2a02:8388:e6ca:5780:b95a:4928:443d:45b? (2a02-8388-e6ca-5780-b95a-4928-443d-045b.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:b95a:4928:443d:45b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39e024sm547385685e9.4.2026.06.08.11.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 11:15:43 -0700 (PDT)
Message-ID: <82d65dc1-f88b-4527-b627-57378da46f95@gmail.com>
Date: Mon, 8 Jun 2026 20:15:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
 <7d47871b-989a-4ad0-bfb1-4d449fd13ceb@pengutronix.de>
Content-Language: en-GB
From: Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <7d47871b-989a-4ad0-bfb1-4d449fd13ceb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_111545_828994_6AE3619E 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Thank you for your quick reply.

On 08.06.26 19:26, Ahmad Fatoum wrote:
> Hello Andrei,
> 
> On 6/8/26 16:24, Andrei Lalaev wrote:
>> Hi,
>>
>> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
> 
> Sidenote: You'll probably want to use one of the still supported
> v2026.04 or v2026.06 releases.
> 

That's our plan for the near future :)


>> and found a strange difference in the DDR training code:
>>
>>   vim drivers/ddr/imx/ddrphy_utils.c +94
>>
>> And the corresponding line in U-Boot:
>>
>>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
>>
>> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?
> 
> I can't speak for Sascha, but having looked at the code, I see no reason
> why not to propagate the error.
> 
>> I couldn't find any explanation in the commits/mailing lists.
> 
> My guess is that it wasn't anticipated that boards would handle
> the error gracefully to fall back to a different DDR init.
> 

In our case this is the only option, because we may have 2 and 4 GB modules.
So, if the 4 GB timings don't apply, we fall back to the 2 GB timings.


> Cheers,
> Ahmad


-- 
Best regards,
Andrei Lalaev


