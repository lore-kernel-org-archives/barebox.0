Delivery-date: Mon, 21 Oct 2024 10:03:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nOF-006zfA-1g
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:03:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nOE-00039h-Tb
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:03:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j4TAnp4b/z5gVBvR5EINjAZVBY+LKC3TjcJ4s2rrusw=; b=WaJNjtPJ64xNWmMqRppjTb5/Bg
	7tcvxKEgYpxLtgNp0IOGxxMub0bscq7lMMn4/sxyNvzPS4IiuGPzNhPF0EzbW+f0HdNLIbVdO9vbD
	wq4xeGten7k6bnyDD54uY+BOufJT6Fz484g4Hh/AabB2ff6g7btNRv2X6NnNDXOiQZIco6nZUBB74
	apgOESjQ9yn8cUvc7go9LoC07j8H7lVRfQr5AYXD8W7xFEmMMDMoZ5d+KZW+qna2R3/hdwP0+eZG4
	lD6fFb6XpEBZKOP9sUnUQw4ZLXXm1F899sz9am46RwyHPYcqESa8SRLqai9PWZ9SpO4O0Axj0nrhT
	+y/P38lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nNi-00000006Toh-2GH2;
	Mon, 21 Oct 2024 08:03:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nLP-00000006TWN-2QTA
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 08:00:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2nLO-0002Ep-DD; Mon, 21 Oct 2024 10:00:50 +0200
Message-ID: <30c81aa5-68fe-4872-8091-d0c253d4edc3@pengutronix.de>
Date: Mon, 21 Oct 2024 10:00:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241015082029.1664824-1-a.fatoum@pengutronix.de>
 <Zw4oeghWigZqclfe@pengutronix.de>
 <ac45db07-1ad7-4b15-ab57-56c6fdea82ff@pengutronix.de>
Content-Language: en-US
In-Reply-To: <ac45db07-1ad7-4b15-ab57-56c6fdea82ff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_010051_648102_253AB6BA 
X-CRM114-Status: GOOD (  17.19  )
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
Subject: Re: [PATCH] fixup! dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.10.24 10:37, Ahmad Fatoum wrote:
> On 15.10.24 10:31, Sascha Hauer wrote:
>> On Tue, Oct 15, 2024 at 10:20:29AM +0200, Ahmad Fatoum wrote:
>>> Should've been part of the original patch.
>>> This fixes CI failure for ARM64.
>>
>> The patch you are fixing here doesn't apply on any of my for-next
>> branches. I'll drop it for now and apply it right after the next release
>> instead.
> 
> Sure, no problem.

This is still broken in next (master is fine).
Should I resend the last patch or can you squash this fixup?

Thanks,
Ahmad

> 
> Thanks,
> Ahmad
> 
>>
>> Sascha
>>
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  arch/arm/cpu/mmu_64.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
>>> index 94a19b1aec3c..bc1a44d0a7b8 100644
>>> --- a/arch/arm/cpu/mmu_64.c
>>> +++ b/arch/arm/cpu/mmu_64.c
>>> @@ -390,9 +390,9 @@ void dma_flush_range(void *ptr, size_t size)
>>>  	v8_flush_dcache_range(start, end);
>>>  }
>>>  
>>> -void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>>> +void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
>>>  {
>>> -	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
>>> +	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
>>>  }
>>>  
>>>  static void init_range(size_t total_level0_tables)
>>> -- 
>>> 2.39.5
>>>
>>>
>>>
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


