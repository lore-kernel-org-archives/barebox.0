Delivery-date: Tue, 05 Dec 2023 09:43:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAR1r-003y0E-0H
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:43:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAR1r-0001h3-1E
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:43:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBfAiLSgr26m3RETmnndtHx07/WixIdpW3RJ/t3ACV4=; b=deWDZ3RPaFYjyreP0is2SsbG1k
	K0wFsEsLVGywybCn8tlUXy+k05sbXaV1A+MQWsq1FgSA0P+PSCTRAJAK7nWw4L/qo4jSNBvj3Uh/9
	0Z274UpPQVF9cFjwy5tMaRs67X6cYDJsSvZyYEnBbQEqFyTl/e3k2zoKy66cCm7KfxonBkYlaqLaq
	3Ra10xtvINmsib8Jzj751Wh3y6ejOfEbUwq7meaKGf/rE1PRTWRAyPEC3iUEAiG4yaPRhfNFJxJhp
	/CL6JFqTdBTX+Ha7cOwxSj8tKw/8RQvjHLQ4GFnmNrOC0YDzVunKCle9Muk5KD9WPW+GifCtdgKZB
	dD/LpSLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAR0c-006ge9-1Z;
	Tue, 05 Dec 2023 08:42:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAR0Y-006gbQ-1e
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:42:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAR0W-0001Mz-AP; Tue, 05 Dec 2023 09:42:20 +0100
Message-ID: <91dde8ed-09d1-43c5-a137-4a2ae07cd937@pengutronix.de>
Date: Tue, 5 Dec 2023 09:42:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>,
 str@pengutronix.de, lst@pengutronix.de
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
 <20231129061758.1781732-2-a.fatoum@pengutronix.de>
 <20231205083712.GE963049@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231205083712.GE963049@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_004222_573836_7E1C773B 
X-CRM114-Status: GOOD (  20.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] dma: factor out dma map generic implementations into
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 05.12.23 09:37, Sascha Hauer wrote:
> On Wed, Nov 29, 2023 at 07:17:55AM +0100, Ahmad Fatoum wrote:
>> In preparation for adding optional debugging code for the DMA mapping
>> API, move the definition out of the header file into a source file.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/dma/Makefile |  1 +
>>  drivers/dma/map.c    | 32 +++++++++++++++++++++++
>>  include/dma.h        | 61 ++++++++++++++------------------------------
>>  3 files changed, 52 insertions(+), 42 deletions(-)
>>  create mode 100644 drivers/dma/map.c
>>
>> diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
>> index 8e1aac9f6f67..e45476c23f14 100644
>> --- a/drivers/dma/Makefile
>> +++ b/drivers/dma/Makefile
>> @@ -1,2 +1,3 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>> +obj-$(CONFIG_HAS_DMA)		+= map.o
>>  obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
>> diff --git a/drivers/dma/map.c b/drivers/dma/map.c
>> new file mode 100644
>> index 000000000000..270a4899fd05
>> --- /dev/null
>> +++ b/drivers/dma/map.c
>> @@ -0,0 +1,32 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +#include <dma.h>
>> +
>> +void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
>> +			     size_t size, enum dma_data_direction dir)
>> +{
>> +	void *ptr = dma_to_cpu(dev, address);
>> +
>> +	arch_sync_dma_for_cpu(ptr, size, dir);
>> +}
>> +
>> +void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
>> +					      size_t size, enum dma_data_direction dir)
>> +{
>> +	void *ptr = dma_to_cpu(dev, address);
>> +
>> +	arch_sync_dma_for_device(ptr, size, dir);
>> +}
>> +
>> +dma_addr_t dma_map_single(struct device *dev, void *ptr,
>> +					size_t size, enum dma_data_direction dir)
>> +{
>> +	arch_sync_dma_for_device(ptr, size, dir);
>> +
>> +	return cpu_to_dma(dev, ptr);
>> +}
>> +
>> +void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
>> +				    size_t size, enum dma_data_direction dir)
>> +{
>> +	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
>> +}
>> diff --git a/include/dma.h b/include/dma.h
>> index 2a09b747d1e2..6eef55a7325d 100644
>> --- a/include/dma.h
>> +++ b/include/dma.h
>> @@ -68,8 +68,6 @@ static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
>>  	return phys_to_virt(addr);
>>  }
>>  
>> -#ifndef __PBL__
>> -/* streaming DMA - implement the below calls to support HAS_DMA */
>>  #ifndef arch_sync_dma_for_cpu
>>  void arch_sync_dma_for_cpu(void *vaddr, size_t size,
>>  			   enum dma_data_direction dir);
>> @@ -79,57 +77,36 @@ void arch_sync_dma_for_cpu(void *vaddr, size_t size,
>>  void arch_sync_dma_for_device(void *vaddr, size_t size,
>>  			      enum dma_data_direction dir);
>>  #endif
>> +
>> +#ifndef __PBL__
>> +void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
>> +			     size_t size, enum dma_data_direction dir);
>> +
>> +void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
>> +				size_t size, enum dma_data_direction dir);
>>  #else
>> -#ifndef arch_sync_dma_for_cpu
>>  /*
>>   * assumes buffers are in coherent/uncached memory, e.g. because
>>   * MMU is only enabled in barebox_arm_entry which hasn't run yet.
>>   */
>> -static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
>> -					 enum dma_data_direction dir)
>> +static inline void dma_sync_single_for_cpu(void *vaddr, size_t size,
>> +					   enum dma_data_direction dir)
>> +{
>> +	barrier_data(vaddr);
>> +}
>> +
>> +static inline void dma_sync_single_for_device(void *vaddr, size_t size,
>> +					      enum dma_data_direction dir)
>>  {
>>  	barrier_data(vaddr);
>>  }
> 
> The prototypes are wrong here. Should be
> 
> static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
> 					      size_t size, enum dma_data_direction dir)
> 
> Fixed this.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



