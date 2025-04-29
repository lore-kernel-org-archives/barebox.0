Delivery-date: Tue, 29 Apr 2025 11:31:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9hJk-000S5x-2E
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 11:31:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9hJk-0000tu-2r
	for lore@pengutronix.de; Tue, 29 Apr 2025 11:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xN8UcvTVOm2LN7pfWKAXFeYkf9RSx4R4erSVxVvOYdI=; b=XGpdWUtKA3P3F/e1TVx3JRGwjm
	92IR3sGpeslRI4EzkqUamiG7rmP0YSq0cXE6/ZD5SjUpB2VwuI2yvOSoxHXEEQjanbg3mhcLaBCdB
	XarhgAw9UHOekEi55H+6633pNEHE00n5Cq8SQUTjTufSLsFvnZonmX2MV24j8uPU3u3gVrEkoNHkz
	voU4JTZ1pWZpv8eOLkY1hWtW6c7RuZZ1vpfD6tmf6WMihoXwcpKvCk3ZoZjNqFHhYoMjxN8ONYnWq
	GpCyaXWlxUvbJMo9TMJ6NvE2sr/bhO/RHAvCHKZCHJBJVCEeka2P+31y+4QzGRF4M+3hwNhqlG09e
	9OJYxz+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hJH-000000099KZ-1mxH;
	Tue, 29 Apr 2025 09:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hJE-000000099Is-3OeS
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 09:31:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9hJD-0000Xq-Ei; Tue, 29 Apr 2025 11:31:23 +0200
Message-ID: <080c0462-8e25-4255-9e91-9d8b47cd4a0e@pengutronix.de>
Date: Tue, 29 Apr 2025 11:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: barebox@lists.infradead.org
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
 <20250422052635.3423961-3-a.fatoum@pengutronix.de>
 <aBCXEyLrpWJpFmmN@mai.linaro.org>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aBCXEyLrpWJpFmmN@mai.linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_023124_851958_CEE0A986 
X-CRM114-Status: GOOD (  15.88  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] clocksource: ti-dm: make available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Daniel,

On 4/29/25 11:08, Daniel Lezcano wrote:
> On Tue, Apr 22, 2025 at 07:26:28AM +0200, Ahmad Fatoum wrote:
>> +int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
>> +{
>> +	base = mmio_start;
>> +
>> +	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
>> +
>> +	/* Enable counter */
>> +	writel(0x3, base + TCLR);
>> +
>> +	return init_clock(&dmtimer_cs);
>> +}
> 
> Can you take the opportunity to fix the function prototype with the correct types 'u32' ?

Why is u32 more correct than unsigned? The value is not written to a
register, but instead used as input to computing the multiplier.

> And replacing the litteral 0x3 with a macro ?

Sure thing.

Thanks,
Ahmad

> 
>> +
>>  static int omap_dmtimer_probe(struct device *dev)
>>  {
>>  	struct resource *iores;
>> @@ -90,12 +102,7 @@ static int omap_dmtimer_probe(struct device *dev)
>>  	if (clk_speed < 0)
>>  		return clk_speed;
>>  
>> -	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
>> -
>> -	/* Enable counter */
>> -	writel(0x3, base + TCLR);
>> -
>> -	return init_clock(&dmtimer_cs);
>> +	return omap_dmtimer_init(IOMEM(iores->start), clk_speed);
>>  }
>>  
>>  static int am335x_get_clock(struct device *dev)
>> diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
>> index af47a0f3e77a..b064337ac4f8 100644
>> --- a/include/mach/omap/am33xx-clock.h
>> +++ b/include/mach/omap/am33xx-clock.h
>> @@ -191,4 +191,7 @@ void am33xx_pll_init(int mpupll_M, int ddrpll_M);
>>  void am33xx_enable_ddr_clocks(void);
>>  int am33xx_get_osc_clock(void);
>>  
>> +int omap_dmtimer_init(void __iomem *mmio_start,
>> +		      unsigned clk_speed);
>> +
>>  #endif  /* endif _AM33XX_CLOCKS_H_ */
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



