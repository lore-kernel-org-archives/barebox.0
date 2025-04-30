Delivery-date: Wed, 30 Apr 2025 08:51:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA1Ha-000kAg-2N
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 08:51:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA1Ha-0007KV-3z
	for lore@pengutronix.de; Wed, 30 Apr 2025 08:51:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c9ISAqbcPw08Iv+2YVJANzUzGKEowa6xo+Ossq+BFKk=; b=Wn/GzofdOvkgLl0J5JvBoedQUx
	Qn3zXaP2cclgkQl7WXj4GUh4JQduj8H+0uMnxi4qKDQ6awXyyx5S1fW33Hp7icYrbd239YkAC+N3i
	tPkmgXoL630kG9wdnY9mxpSNhxgnBPryj6N74i86sjaL3H2bARLxrBl2ayK9/D+TIxDrkw8/3IC8S
	in90HZ6m40KM5J7JRP1XKaeHdiKQGgVlR+raeEWw74ValV1pFrHpeeE0/ZAr9j5zWxmjasx8h3MoL
	n5UtGlhkFkCteel6Hq0XPLOsaK+LCStu7XMRx1CeZRLJ/8ig75/4HGmyMgtPq7gpqZtrBrMD9EoHq
	6H0bSBSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA1Gi-0000000BuXP-37ua;
	Wed, 30 Apr 2025 06:50:08 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA1Gf-0000000BuWO-3A5R
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 06:50:07 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-39c0dfba946so5091564f8f.3
        for <barebox@lists.infradead.org>; Tue, 29 Apr 2025 23:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745995804; x=1746600604; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c9ISAqbcPw08Iv+2YVJANzUzGKEowa6xo+Ossq+BFKk=;
        b=xOrlvy+5ydsd/eQGlWqiItfsBSR8UYaAq6N6qQTBh4YBlSdkvsmtCcKqpbu6kmBbf4
         +LoXEhnyjhX7sBMIfqzzhrZg+OFERlAsRf+FXjiZTn8PGd5lTRS1AAGCADuG03N6CIDb
         y/3/Q/CUqUTudI7hjGu5Z0DVUXuFhyLSxHL71AOkaqUDJM1D4kPFczp7rtYVy3jUU53R
         xFd24JjH6DvRxO+ak3Ho44AzbxJ4ER/Mrad4+aTtMuXMF4qM/YTFHXq+Z0JG8JuUDO6u
         ZQ3Y+Rd5AG9m0hLZFXJO5i4uoPq80Ex4SCrV/stsXrjQH44F481AwDiPfcpqPV0MfWGS
         5f+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745995804; x=1746600604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c9ISAqbcPw08Iv+2YVJANzUzGKEowa6xo+Ossq+BFKk=;
        b=BTH1WqjW+1usEtcgXMAUz5HJ2PPqrR8wsP3/eZp5mwaNOvG+1X9eEUvWxYa4CdBddB
         Vwey2g30I7/OgvHRoppD+LHXV58wXJQd/ZU4dmykLyLvemuPhyACiv21FfkLoKZCDpd6
         VyqmN6yGzRBo+XMPSrYpe/7VodnWpad0xh49MZ5emWbpO5GM2ZJfR3ElLgxM91aeBvMM
         MW83KNN3AoD+ScgvO47DC41xbYfQZiJYSBKBExuASsiPvY/OTgn97qS1hNmRMNGooxEv
         iLCYf+HyEihdWc5OmxQYixw+yv0auwsbVoYF4OaH+5+ECLWL4mfdm+LITo1cfWOc++ev
         eEPA==
X-Forwarded-Encrypted: i=1; AJvYcCX65uoAgdafK9hAGsg9EkOqTLbH8R5nZr6vbsDGpqQ758+W4ONA0oWQdru9etCeBHkNA5YUblRq@lists.infradead.org
X-Gm-Message-State: AOJu0YzBMAmUpTRReWRlSxvIX5YMo0WBWL2nOjXscZTnPqMLqHSbEObQ
	OH0Kp9gBFaZhMdky01GlyOHzhrbujzwRJhDstZuyehArTlvxys6Ti9lOCJ8NSJk=
X-Gm-Gg: ASbGncsNqXusMFx6fEDJ11v+WgniurUTr1xKINVs5MGBUityw+tecI/I+Zzyxj1x/wt
	vtiTUpAY1RsXervd5kmtT0/Nt6hKirXKLci6hIT5dAF1Pm03QU4RTRDi5mZoW6ZIRIeL0TENKl3
	EgzOBLHJMnwj5KNxAKDln2avsBQU2kdHH3teO05LoT022rQBnfAHtbCHwqyneRIXmQDnqumfHpX
	kVkXnbqL84HXi07zaFzOz0ncMzFLYBBrtsMVFVBa3I1hwpJJr4MDsVuDU3MD9dbez+LoMy5ePPj
	O/nMCNf1her4G5yS07sTD/Zm+pBJqvzMpFyy+vTX8R55/Z7PpXG6YvGrWnkP+P3tUL+6jB5zi3s
	G/8o4
X-Google-Smtp-Source: AGHT+IHiNhzOYR/REwIuESUOLG0Oa5af/nhTBwAcldjw4+7VT7VgVsCr9/N/9xA61RFEUh7E83cHvA==
X-Received: by 2002:a05:6000:430c:b0:397:8f09:5f6 with SMTP id ffacd0b85a97d-3a08ff50ad1mr1037969f8f.47.1745995803819;
        Tue, 29 Apr 2025 23:50:03 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a073ca5467sm15778901f8f.28.2025.04.29.23.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 23:50:03 -0700 (PDT)
Message-ID: <33fcbe67-f442-49d7-b6c4-28e30e6eaa00@linaro.org>
Date: Wed, 30 Apr 2025 08:50:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
 <174593906891.3117328.8214270493101658656.b4-ty@pengutronix.de>
 <9a525e83-840b-4067-b529-2f63491971c0@linaro.org>
 <23f0a828-78b6-4b97-9fb6-32098e932cd8@pengutronix.de>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <23f0a828-78b6-4b97-9fb6-32098e932cd8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_235005_805516_7B958EF8 
X-CRM114-Status: GOOD (  12.44  )
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

On 29/04/2025 23:49, Ahmad Fatoum wrote:
> Hello Daniel,
> 
> On 29.04.25 21:46, Daniel Lezcano wrote:
>> On 29/04/2025 17:04, Sascha Hauer wrote:
>>>
>>> On Tue, 29 Apr 2025 15:25:49 +0200, Ahmad Fatoum wrote:
>>>> This improves readability a bit, but introduces no functional change.
>>>>
>>>>
>>>
>>> Applied, thanks!
>>
>> I'm a bit confused, can you explain why it is applied ? Is that an official tree ?
> 
> It's the official tree for the barebox bootloader.
> 
> These two patches as well as my original patch that you replied to were
> sent to the barebox mailing list. Thanks for your input by the way.
> 
> Thanks to ARM architected timers, clocksource support in barebox doesn't
> see much activity nowadays and my patches are the first submitted since lore.kernel.org
> started indexing the barebox mailing list last year. Did your lei filter perhaps
> match against my patch thinking they are kernel patches? :-)

Yes, exactly :)

Thanks for clarifying

   -- Daniel

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


