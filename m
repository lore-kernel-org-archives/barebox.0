Delivery-date: Tue, 29 Apr 2025 21:48:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9qwt-000az3-2X
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 21:48:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9qwt-0006hH-80
	for lore@pengutronix.de; Tue, 29 Apr 2025 21:48:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jj/Sp7i6ucPv7NqDvW2duEfytwN8ghz1ogkkjiM1dXs=; b=seDU/sTqafhEf/nV38hAujA97U
	8V1MhQMa0cEOKXPs4k9DYB/FSxQJcwQXbUy8ZkY7Haj7VTzfUyT5luJvcPBQbLFibnDo/ynLTpeEJ
	std9wze7UqvYL9iMuyDmxatKjSBhkwXRRxftasQ7Fr6VWFUJcHixj1WEP8A12GslA+0jx2P2zv87n
	kuDb73W5wqFTT5Zuh7kdP7DFvTkeuf7PTYokoX6nhcjYCrlskt0w/d/cm1kakyhlWDVTke3LBLuDF
	GwhwLGGxFOvqSPegW6zpJkqQm1oC0XFKUU2AF2Wfq8+c8kthjnMDPM5ROroKTlplvvG5MeL1lxMHi
	77OdYMgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9qw3-0000000Ag8I-2vkh;
	Tue, 29 Apr 2025 19:48:07 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9quZ-0000000Ag1l-3qzN
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 19:46:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so7150602f8f.3
        for <barebox@lists.infradead.org>; Tue, 29 Apr 2025 12:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745955994; x=1746560794; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jj/Sp7i6ucPv7NqDvW2duEfytwN8ghz1ogkkjiM1dXs=;
        b=UnWuXkJ9JG3NIgDBEHOhJW3w4Jiy4x4KM2NVQODlSGPJuslaYK0Vdd38uv64wVrjhE
         F1RopFB2HQsENJEgl5es+/x4Y2o59ctJO86RUkl4+pJr9mnMmX8XnJ9KXB/Za04HhLfi
         WWUAa74JyZ7GdiR1qU7Ytx0ppaRV8fBXKM4SFbMWq/0tR5s65sw24esxYTJc3DJgKIXn
         C8T1qdd/zRmwSqMFPm0jTQGfAs6WZ0dKs19b+LHPYOichM2UnxlwuvTwWAKqikIOrlCa
         c5ppixyxwkefOOUiBRrYfqgN2QITsz41CYF/pJChsZ/TJZvmnmvGZkZ2ZTho+1Tot6W6
         3xJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745955994; x=1746560794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jj/Sp7i6ucPv7NqDvW2duEfytwN8ghz1ogkkjiM1dXs=;
        b=E1+dsaDNt58HAtSKemuUAGz0IAnG4/aKNEXYhIb5QSEpx/dJAWWYgSVnLEha7n1Xs9
         V3Fu4UEbHjtGvOQrPjubAS9sIt2AKh2ykIYeuOnJrj6/OE0j1acgss92jtzTS80ivcxg
         ttyXGV8IFwQhnfUQMjGiuG1BvoCLxJk5RxsSnuoMf3BLCOLdnVWOFBqRHhH1JC9r8jNv
         IwRqi10caJsN+yzXWAtzEIaT5pmQ8ZliUfHBvFGYnu17/BrFX5oHsvqZxCPiA5OTLQpZ
         OuvNmgYNm7N/qWXdzKTMM6nnsQ1rwk0Kc6Ha3sBTbeXBdM1pPj4WoOifvUzb6+EDR8uo
         nUcg==
X-Forwarded-Encrypted: i=1; AJvYcCVX+Ucp2QeGJhMhFIm2DGyaAUyPfnPrgEePe8Su1yGc+Mxlr52mJqvLqRUL9guQGLGA0Pq7QoYu@lists.infradead.org
X-Gm-Message-State: AOJu0YwbGi9U3HAJulZ1qIhXcahRejoydX3Ffq2R9Pw0QqXKttuRVlKJ
	gsKKKaeOA79QX+iAqt15+JCiLFdhMOc5oed3myae12imci6ceu4XO+YVEsJHvIc=
X-Gm-Gg: ASbGnctKibLtzV8D7Zne2kRcVZb8YCDE5imAv+nfj9XWIlMp+lknQeyHLlpUV3++Lou
	Ifq6G7/OmHPd4Sqm07fBQfx/4jID00WvMTJQCTSYbVA2sTY7ALFq0OKFAWLfx7sYyBtrIXwK7jO
	/LAWcWhv5OWCRiRimuSNMT83+Us5ETSja+Pwx8RFJ30eRHNgQK+s2ghAhXWTKf7v3hW3B/1OtPS
	T36tpqNwuUr8bHZFrDHy6+jTG3O08Rn+b5wjr83XydUJWXXIkARpSc8thdbwA6864B+j5TRRM8p
	puGlRd9DkxZ50v6ag9aWqQ3gm5LmIFVyHx2TSH+QmrgOtloyJOR4MYeLk/sephjAe3zcCJfUqsw
	3ZubP
X-Google-Smtp-Source: AGHT+IEiBgqf0oV9hDsu6xE5l4Gb8eiwZH8/f9VABDZzUltjTiyLPpE5YeFqTKZ99JgmZKPqytMQ7g==
X-Received: by 2002:a05:6000:2cb:b0:38d:e584:81ea with SMTP id ffacd0b85a97d-3a08f7a04c9mr573793f8f.45.1745955994248;
        Tue, 29 Apr 2025 12:46:34 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-440a53874a9sm167056165e9.34.2025.04.29.12.46.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 12:46:33 -0700 (PDT)
Message-ID: <9a525e83-840b-4067-b529-2f63491971c0@linaro.org>
Date: Tue, 29 Apr 2025 21:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
 <174593906891.3117328.8214270493101658656.b4-ty@pengutronix.de>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <174593906891.3117328.8214270493101658656.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_124635_959166_43C27AE3 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clocksource: timer-ti-dm: replace magic constant with
 descriptive macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29/04/2025 17:04, Sascha Hauer wrote:
> 
> On Tue, 29 Apr 2025 15:25:49 +0200, Ahmad Fatoum wrote:
>> This improves readability a bit, but introduces no functional change.
>>
>>
> 
> Applied, thanks!

I'm a bit confused, can you explain why it is applied ? Is that an 
official tree ?


> [1/2] clocksource: timer-ti-dm: replace magic constant with descriptive macros
>        https://git.pengutronix.de/cgit/barebox/commit/?id=008ef5feae46 (link may not be stable)
> [2/2] clocksource: timer-ti-dm: adapt omap_dmtimer_init parameter type to usage
>        https://git.pengutronix.de/cgit/barebox/commit/?id=c762dd5beeb2 (link may not be stable)
> 
> Best regards,


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


