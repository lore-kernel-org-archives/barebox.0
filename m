Delivery-date: Tue, 15 Oct 2024 10:37:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0d3g-004arq-26
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 10:37:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0d3g-00028B-2O
	for lore@pengutronix.de; Tue, 15 Oct 2024 10:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oILsit3Bh7DCyurkyC2JcJuEgL9fjvyBpHX4oAkVpTw=; b=Ljwwt3nnEBR2q3L+C3AtYvJn+F
	49C1eVVHRw9Coxc4HVzHDbynzszlgkQ01LtxfSxpFkeiM1sqPe13v9I25e3G/i1Qie3dw1c7eZLxG
	uLkqDNg6qkcPk9WW5vRbvgt71QvHEg19++PWzRfqnFZzObUg3Z9XkN6iGu/CsTPsNhH8E0CNi9+40
	NE1+aM2vUFW4Ld2HIrOKclyHJhxBNjFz7o3Ahn0kW3UPYc0SvbhFZiojp5Zhxqu7HuEz+h9vJM+lo
	aY1gBs2nZ/sAl9JPxW7C6BOFQmu3SDQu4uPSyzn0hbrCAeOH9CX9QQo/ILdjcaerJSLRVXwqDGj8/
	T3dPbgoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0d3D-00000007XCZ-1GTx;
	Tue, 15 Oct 2024 08:37:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0d3A-00000007XC0-1Zb6
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 08:37:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0d39-00023y-1J; Tue, 15 Oct 2024 10:37:03 +0200
Message-ID: <ac45db07-1ad7-4b15-ab57-56c6fdea82ff@pengutronix.de>
Date: Tue, 15 Oct 2024 10:37:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241015082029.1664824-1-a.fatoum@pengutronix.de>
 <Zw4oeghWigZqclfe@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zw4oeghWigZqclfe@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_013704_450427_449FC3C0 
X-CRM114-Status: GOOD (  17.60  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.10.24 10:31, Sascha Hauer wrote:
> On Tue, Oct 15, 2024 at 10:20:29AM +0200, Ahmad Fatoum wrote:
>> Should've been part of the original patch.
>> This fixes CI failure for ARM64.
> 
> The patch you are fixing here doesn't apply on any of my for-next
> branches. I'll drop it for now and apply it right after the next release
> instead.

Sure, no problem.

Thanks,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/cpu/mmu_64.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
>> index 94a19b1aec3c..bc1a44d0a7b8 100644
>> --- a/arch/arm/cpu/mmu_64.c
>> +++ b/arch/arm/cpu/mmu_64.c
>> @@ -390,9 +390,9 @@ void dma_flush_range(void *ptr, size_t size)
>>  	v8_flush_dcache_range(start, end);
>>  }
>>  
>> -void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>> +void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
>>  {
>> -	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
>> +	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
>>  }
>>  
>>  static void init_range(size_t total_level0_tables)
>> -- 
>> 2.39.5
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


