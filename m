Delivery-date: Tue, 02 Mar 2021 09:46:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0fL-0005oA-9A
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 09:46:03 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0fK-0001Ed-EU
	for lore@pengutronix.de; Tue, 02 Mar 2021 09:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QBgIN4vhdJx5eArLbDqpC38Es5/N9Iinm0KJ5mkIjhs=; b=wX9GoACHPZ6GHS4ONo0/lRCQy
	Pq+KZ/PWzHsnO9f1AIZZNaCF5z3GT5XPV9IbYnlErDgE1T1MnbjOuZjrgftbTwx7E5fcushqUcjSg
	d4C6yku4fUb0Ainbb7oBPapMtRa8TMMZjrIzzZyWZB5VlBO1sA1T+QBOVVbLrzWiz6b4912bivYtj
	RUhDkINcuxq5nXbyD7gh1MjykLs+I0XuT7UJC4TRbx92T4Zcv0uenVxzTT10m+Oks/UgECn10Ek/s
	MRsPOOiXKP1ubIFcZ6b5L6yS3ZadgGgvjqHCwSUgOH/BEsmvNALj6llMvHQO14EQVFw/debLDOiyF
	qZn3XFdVQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH0eD-00040F-Al; Tue, 02 Mar 2021 08:44:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH0e9-0003zW-Fy
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 08:44:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lH0e8-0000y1-Cb; Tue, 02 Mar 2021 09:44:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-3-jmaselbas@kalray.eu>
 <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
Message-ID: <dc78b73b-3e38-adbb-362a-4a58dbee1103@pengutronix.de>
Date: Tue, 2 Mar 2021 09:44:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <04c18498-970c-9a69-ebf7-97bf85d2f961@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_034449_594512_04CBF567 
X-CRM114-Status: GOOD (  14.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] kvx: Implement dma handling primitives
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


On 02.03.21 09:37, Ahmad Fatoum wrote:
> Hello Jules, Yann,
> 
>> +void dma_sync_single_for_device(dma_addr_t addr, size_t size,
>> +				enum dma_data_direction dir)
>> +{
>> +	switch (dir) {
>> +	case DMA_FROM_DEVICE:
>> +		kvx_dcache_invalidate_mem_area(addr, size);
>> +		break;
>> +	case DMA_TO_DEVICE:
>> +	case DMA_BIDIRECTIONAL:
>> +		/* allow device to read buffer written by CPU */
>> +		wmb();
> 
> If the interconnect was indeed coherent, like dma_alloc_coherent
> above hints, you wouldn't need any barriers here..?

Wrong context. You wouldn't need the cache invalidation* above.

> 
>> +		break;
>> +	default:
>> +		BUG();
>> +	}
>> +}
>> +
>> +void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
>> +				enum dma_data_direction dir)
>> +{
>> +	switch (dir) {
>> +	case DMA_FROM_DEVICE:
>> +	case DMA_TO_DEVICE:
>> +		break;
>> +	case DMA_BIDIRECTIONAL:
>> +		kvx_dcache_invalidate_mem_area(addr, size);
>> +		break;
>> +	default:
>> +		BUG();
>> +	}
>> +}
>> +
>> +#define KVX_DDR_ALIAS_OFFSET \
>> +	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
>> +#define KVX_DDR_ALIAS_WINDOW \
>> +	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
>> +
>> +/* Local smem is aliased between 0 and 16MB */
>> +#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
>> +
>> +dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
>> +			  enum dma_data_direction dir)
>> +{
>> +	uintptr_t addr = (uintptr_t) ptr;
>> +
>> +	dma_sync_single_for_device(addr, size, dir);
>> +
>> +	/* Local smem alias should never be used for dma */
>> +	if (addr < KVX_SMEM_LOCAL_ALIAS)
>> +		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
>> +
>> +	if (dev->dma_mask && addr <= dev->dma_mask)
>> +		return addr;
>> +
>> +	if (addr >= KVX_DDR_ALIAS_WINDOW)
>> +		return DMA_ERROR_CODE;
>> +
>> +	addr -= KVX_DDR_ALIAS_OFFSET;
>> +	if (dev->dma_mask && addr > dev->dma_mask)
>> +		return DMA_ERROR_CODE;
>> +
>> +	return addr;
>> +}
>> +
>> +void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
>> +		      enum dma_data_direction dir)
>> +{
>> +	dma_sync_single_for_cpu(addr, size, dir);
>> +}
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

