Delivery-date: Tue, 29 Apr 2025 17:16:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mhG-000X5c-0i
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:16:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mhF-0005pV-Jl
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:16:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3x0kNcOawz9A4suAO1637HQoqOqfJ5LQG4zvtWiLcjs=; b=u8pCSGVoDvu91k1NsB7hUfoZEi
	QSlbiGvyyefrt3WxDawTauwQ1aUTCayedzSOI1Q6z1/sRn/NI/9bu/diS9RJU24Lgt4fa65PyZFoL
	/oQuJngblksSgxgL9en1VaFueBNU5QeLz+nRRfUPsvaKME/JcZx4+FRSvZK/+Ua3Tc5jwKmyj7iTW
	SrraNGNOQD+hZT4GmhpkvWNYQePNUYWpll0+R9tVJG2XmHFVtyPr7SDY7RLJ8Ih8quqjNSBteOVCT
	9k3jmZr4hnnCgNkx9pd8OnCOB9eyWBpiD+1mEzZ3dOWFNFpGYnH1yxXCQ/jhWGKWR17Zu/jk8HpqC
	06K8PwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mh0-0000000A4v4-1C7a;
	Tue, 29 Apr 2025 15:16:18 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9kiD-00000009jmj-0zpJ
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 13:09:26 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso7050497f8f.0
        for <barebox@lists.infradead.org>; Tue, 29 Apr 2025 06:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745932163; x=1746536963; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3x0kNcOawz9A4suAO1637HQoqOqfJ5LQG4zvtWiLcjs=;
        b=UlHTCg7+9SE7SUscEXw8+Fg3ltBu7LlBnxnuH6Y5Py5SoaAHSsrpYqZKBoRcucEOMG
         jZq/TUS/CGhzaEtAVlGvodgK9vSLwYciWQ72ZUZioFQe0SpsJEUQ0br+503r6cF10SQW
         jJCKeBQIW9R/izzorXdFF2YFRH5Cd7afrPXi73qtDJKBoFi52F8nMPAt3bP5CEghqOmr
         ++QSgG8XwkG6SBWyNUG0G3/oCnIvshRePfHGR8ChvsVRezB/A5DE3udwDK9R6HTwSjld
         SGGg2aGTLpEFrB0uBXb+WyxTXeakTvuJA24fp1EiAAHQ3XralktcSjke4AEigvfhgHpg
         aQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745932163; x=1746536963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3x0kNcOawz9A4suAO1637HQoqOqfJ5LQG4zvtWiLcjs=;
        b=uOf9cTHrZNi5hIRpSoMa5ez03pmqn8F1td52DsG2BTbnL2NU0DH5nmN9mynwcRPLED
         O798KPDumF6Z1hIL1NEATGF0x6bpSezo4cjUB54N3OmYfQMyJgFK61I9cAhJNB/uPrPY
         UuK3RHbXGwUt2FbZVQ+fhSPd614jGJ7fbIFhLmVzDPQixaHacbpoTZ5QX0Iv5mpP90Em
         tmr3uEZiaDK0xy5DdW6SHNlZTSNaY8NdxyKo3zvu79bN0tqktolY1Vt6al+LRwjGOEJD
         LmgCQFQuzaa4HUIQFXvfWg1d05wJgpLYcoBFrMoe2BrhQzoqTh8v+dJGoYtrezc2E+4h
         ab0Q==
X-Gm-Message-State: AOJu0Yypt/97Fg9QfI8/JkVuF1P6PibqbqJHcsE9XOJIgAbkgU81r6T4
	vmUuqQ+SYxhLDX94OWYHrK+LNSSEIPIpkXgVEEpd23Hopz1BOJqZuEhrJVW6y7UyF72POe411rj
	2
X-Gm-Gg: ASbGncuP16SdhjTH6x89cfSEFHMEB6q6KMJkPhRJ3jp9V6+X+knh97IM1SnBVQSrhz9
	wNWbNyhwYL83jeoIUgbpOMG+EMo8wxqyTxX7aH0unquKuZv0jwD9lD83zTQ13BYzt9mzLlFm2Wq
	3J4VObxUfkt6lJ7s+Xmcld5KVQp8BnfaFYsB8nqKhPJzWqZb+MTANEzd9/Fm2UwSI3Ag9Gl063D
	8MJYU8xBOfo753Cr0clsyuyxh2oZnkPiLqXtVHsAzFibO7TBKar1DeH86Jfg2FZY9fmbHFIogcX
	ySh4VaCvELEqsWUBl75GvskFvBZkl05AffdO5g2NZdLeiLQGrH9sjBCu59HjwO1eHA9E7g63mSP
	8AmA8
X-Google-Smtp-Source: AGHT+IFT5iqfXsQM+xIYDDE0Ok5TG0AM0Ug+Z5rTeNHC8a/LSMDJjo0/PPygHzvz6gZA6peIKAYUww==
X-Received: by 2002:a5d:5850:0:b0:39c:d05:3779 with SMTP id ffacd0b85a97d-3a08ad7de74mr2146038f8f.49.1745932163072;
        Tue, 29 Apr 2025 06:09:23 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a073e5cffasm14105707f8f.96.2025.04.29.06.09.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 06:09:22 -0700 (PDT)
Message-ID: <29d7fbb7-52ec-40a4-9f12-2fb6286b94ba@linaro.org>
Date: Tue, 29 Apr 2025 15:09:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
 <20250422052635.3423961-3-a.fatoum@pengutronix.de>
 <aBCXEyLrpWJpFmmN@mai.linaro.org>
 <080c0462-8e25-4255-9e91-9d8b47cd4a0e@pengutronix.de>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <080c0462-8e25-4255-9e91-9d8b47cd4a0e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_060925_282565_8AE3B3B5 
X-CRM114-Status: GOOD (  15.00  )
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
Subject: Re: [PATCH 2/9] clocksource: ti-dm: make available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29/04/2025 11:31, Ahmad Fatoum wrote:
> Hello Daniel,
> 
> On 4/29/25 11:08, Daniel Lezcano wrote:
>> On Tue, Apr 22, 2025 at 07:26:28AM +0200, Ahmad Fatoum wrote:
>>> +int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
>>> +{
>>> +	base = mmio_start;
>>> +
>>> +	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
>>> +
>>> +	/* Enable counter */
>>> +	writel(0x3, base + TCLR);
>>> +
>>> +	return init_clock(&dmtimer_cs);
>>> +}
>>
>> Can you take the opportunity to fix the function prototype with the correct types 'u32' ?
> 
> Why is u32 more correct than unsigned? The value is not written to a
> register, but instead used as input to computing the multiplier.

It is to match the call to clocksource_hz2mult() which has a u32 as 
parameter.

>> And replacing the litteral 0x3 with a macro ?
> 
> Sure thing.
> 
> Thanks,
> Ahmad
> 
>>
>>> +
>>>   static int omap_dmtimer_probe(struct device *dev)
>>>   {
>>>   	struct resource *iores;
>>> @@ -90,12 +102,7 @@ static int omap_dmtimer_probe(struct device *dev)
>>>   	if (clk_speed < 0)
>>>   		return clk_speed;
>>>   
>>> -	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
>>> -
>>> -	/* Enable counter */
>>> -	writel(0x3, base + TCLR);
>>> -
>>> -	return init_clock(&dmtimer_cs);
>>> +	return omap_dmtimer_init(IOMEM(iores->start), clk_speed);
>>>   }
>>>   
>>>   static int am335x_get_clock(struct device *dev)
>>> diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
>>> index af47a0f3e77a..b064337ac4f8 100644
>>> --- a/include/mach/omap/am33xx-clock.h
>>> +++ b/include/mach/omap/am33xx-clock.h
>>> @@ -191,4 +191,7 @@ void am33xx_pll_init(int mpupll_M, int ddrpll_M);
>>>   void am33xx_enable_ddr_clocks(void);
>>>   int am33xx_get_osc_clock(void);
>>>   
>>> +int omap_dmtimer_init(void __iomem *mmio_start,
>>> +		      unsigned clk_speed);
>>> +
>>>   #endif  /* endif _AM33XX_CLOCKS_H_ */
>>> -- 
>>> 2.39.5
>>>
>>>
>>>
>>
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


