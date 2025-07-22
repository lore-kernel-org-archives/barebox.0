Delivery-date: Tue, 22 Jul 2025 19:34:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueGst-002dM0-0b
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 19:34:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueGss-0007ge-LL
	for lore@pengutronix.de; Tue, 22 Jul 2025 19:34:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qahjEEZgCxsBayB2sJYSJVrFn0zvwwcXuHEpY6IByak=; b=oHEsrI3oSUg/A96jDH2z51qjBW
	A4MfUMPmZtoF6j5IHCI+OUDlCF42FkJ+mog89r31ErISllESmaNW8IZ9AUwFSLdVKYjf9D2XxB9xE
	Z+9O/Caq6WTLNJgCVESiS23hqDCCEFpfnjhVgDDwhitow2zDfC8K8enkaXBLGp1PJkzrD/z9+RZmC
	Zr8ojvKwl+cPWuIqv6Fy7NBUZxJLLiux88mGxy1oVnjd4B3xQkQuVUcpEVXm6j09DuHkX6qzSXwAI
	paSlw5O2i/n3//4E47bf06ErZ04UMQvwIQ4w99e0VE1NQGdUhDyDTJ2romcHAFcsveZieJftQGjwm
	SkxjxGuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGsf-000000038pl-2dAa;
	Tue, 22 Jul 2025 17:34:21 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFIr-00000002vUG-2yR9
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 15:53:19 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4550709f2c1so43525115e9.3
        for <barebox@lists.infradead.org>; Tue, 22 Jul 2025 08:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753199596; x=1753804396; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qahjEEZgCxsBayB2sJYSJVrFn0zvwwcXuHEpY6IByak=;
        b=GLjoMiv7OpPumv265G4nM3IX3plu0XONUoL3sZfWJGPrC9k5/r/0yxjAy45a68aYZH
         YIQ2cC5a0IpqIx764bXJoX+OxMpEfFXUX56D2Qk1i8D+A+RLzPs7AYbge4GMhjrhdHBc
         sahJO2jY/r3VE0uuirbfmMNwO6cZ+YRNSHMioYMpA4HGP7KIr9wtMrZA2NFdh6tbtRpo
         QvTxX5dCorwDMRgWbVeykYUe1Eci+5+63wfgJy3i5Ugz3jz5ijvUeINO6z45wn1HwJeq
         YpN1wL3P9hLf7nyPHz/riC/UtA63rZc65/Uw+mDA2/v7zOX+7BoRBMFJ3kfLPz6LiZ+g
         dzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753199596; x=1753804396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qahjEEZgCxsBayB2sJYSJVrFn0zvwwcXuHEpY6IByak=;
        b=NjlMVUqsc3N6CzVrvP1t4nopoh6egBDU9wlCMnY/DkA+zAzORXwtDvwR1CPAkAekvo
         L4VpirQ5fVSgIY7W+m5KdvkHUTzYLtm2D3BXKzwWsglBUtlAgHvFdT7wpA3om34o+dAz
         tdeNhoiq0IlmLVKhLVSzZkscIvwKC7kJKziKn3NVyW6n7zaL52YaHOWZcszoIv5UogOh
         dqXvtUmIT1EwLtduiz/xferqMr2ujg6u9InLkoIcHEZ6khzg+Z7Ec8q+LYR2CaaReXUr
         y3ER1DjX8pRE2V1hcVuGVEh/GmV3rskvwVsel6pBSD0UAszYPsNDnJj6VUcRdmf1ujlt
         iLXQ==
X-Gm-Message-State: AOJu0YwDdoGaWxPM5ahzJw30X8+aRY/bBaTcxdLQPJjAZmlTQp8Zg16R
	zc6mvDCE6LxbUdEQx2Zi9xdavzdCun/hlYcRzgI2kq37Ma0klo6I8PUl
X-Gm-Gg: ASbGncvxjODP/OFBQYKHu7/EleNXGKnCvvcOqfApYhJunzhIkfuR6TdDWk7P3Gj5tDk
	6BbccqQKGtbPKS5eEia39xmZaQQFipIaI4WphiJV/Nk8lRL2rZI/rT5axUAL4fvxnBTMxrO6rzj
	aGYQUsrITSERAEMAukcHdiP4tq4mLvAvTx7rEVpYjDcL6oPYhCxKg3bkqZQUFHe9Bf2GafF85Gq
	vWD1VtCFhXBapyN7nqnL76xhDMpZCLE9TmU0Dis+Ai5E5hnsE0vCYcZIWfAPcohYGYNvT6rJH/t
	i7YU065+QexyD1hzxe6vxhCpFrHBdlRKStXmvvs3rr1SLcAVP7GtWJEUdxiAHlpkBHluk2krEwk
	WEsK86NLqGO/tNpMe4G+lJPe5d4ot8lfd28rsbSEyrYNa4LgIk7mgRels8WjTuvj+amf5jDHDf4
	As9LQUZzLTj3CSn6Wr1Zyt5uCVngul1t0aVAjaITZcDF/t4C1eNMLSLAq3p0AVLCfWO8fewYRVL
	MKTl83RHuNVSfnUYgxGrfEMTp0=
X-Google-Smtp-Source: AGHT+IHQPIZ09QWPz2nB1+2j8cNk9tAy0KelkFZ7BDC3Q7a1Cf3JN6Wwn7wM9qVxcqAwwKEtF6T2SQ==
X-Received: by 2002:a05:600c:468a:b0:453:c39:d0a7 with SMTP id 5b1f17b1804b1-4563b89f82bmr155829735e9.5.1753199595153;
        Tue, 22 Jul 2025 08:53:15 -0700 (PDT)
Received: from ?IPV6:2a02:8388:e103:2700:94ed:9045:ed9c:402c? (2a02-8388-e103-2700-94ed-9045-ed9c-402c.cable.dynamic.v6.surfer.at. [2a02:8388:e103:2700:94ed:9045:ed9c:402c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4563b5b8941sm135227615e9.11.2025.07.22.08.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 08:53:14 -0700 (PDT)
Message-ID: <8258cc5e-4223-4777-9c45-3feb6acba793@gmail.com>
Date: Tue, 22 Jul 2025 17:53:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
 <44e20622-1c1f-4087-8b34-01cf378d3004@pengutronix.de>
Content-Language: en-GB
From: Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <44e20622-1c1f-4087-8b34-01cf378d3004@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_085317_745894_0CEF74DB 
X-CRM114-Status: GOOD (  11.90  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 22.07.2025 16:07, Ahmad Fatoum wrote:
> Hello Andrei,
> 
> On 6/11/25 19:56, Andrei Lalaev wrote:
>> According to doc [1], new implementations should send FAIL if the
>> variable specified in the getvar command does not exist.
>>
>> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
>>
>> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
> 
> Did you run into any particular issues that motivated your change?

Hi Ahmad,

Sorry, I should have written a more descriptive commit message
or at least mentioned the root cause in the footer.

I was using uuu v1.5.201 with barebox 2025.01 (or 2025.02) to flash
a raw image to eMMC using the raw2flash flag. Unfortunately,
due to a bug in uuu, it ended up flashing garbage :/
I’ve fixed the issue in uuu [1], but during the investigation
I found out that newer implementation of Fastboot should send FAIL
if variable is missing, so I also decided to send a patch to barebox.

1 - https://github.com/nxp-imx/mfgtools/commit/f7351c1cf626764d902576362421f33b79b3a9e9

> 
> Thanks,
> Ahmad
> 

-- 
Best regards,
Andrei Lalaev


