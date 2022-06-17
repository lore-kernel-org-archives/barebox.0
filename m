Delivery-date: Fri, 17 Jun 2022 08:50:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25o2-004uVt-St
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 08:50:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25o2-0008ER-3Y
	for lore@pengutronix.de; Fri, 17 Jun 2022 08:50:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZpiEFPz+mivZvbbxQNiuvl5Yz704eOo7Iskfd1Exi+0=; b=G41r0kgA6aNEs3cdFEUeYGulwH
	yiYTX0FbiFRRxWgBDtCspJjB7kft3gcmlF/IIQRdR+Zmc3TpC40l15WCaxgJdUhC+fKLBkQUHHkNJ
	4VFRFDFhx3jyabnO6neLHJzUhOxBrVBWer6jjl/smNrZuc2MK3Bw/qjOs9OPt7DiWVlgk862yTxxg
	oYOqLc9hTyGo+3YQfjZpggNVCXykJzv+JVjaZ+Rk9ZaQZ9cmibZ6FG+7ZFe0rPlv6XeupeFnLYlgx
	K5he4hn4LvPni54LD3tVOPteon4ycMeEP5rNsmajydWPpJHwtEeo7+nYgeHt4c7eAl9dtYxtAX7Rx
	i/5YqWRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25mj-005n05-4R; Fri, 17 Jun 2022 06:48:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25me-005mzC-7z
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 06:48:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o25mc-00083J-BB; Fri, 17 Jun 2022 08:48:42 +0200
Message-ID: <cf8e9dc7-1731-68dd-2d63-ad0d93b1ce4d@pengutronix.de>
Date: Fri, 17 Jun 2022 08:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220614091556.1018102-1-a.fatoum@pengutronix.de>
 <20220617064305.GB1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220617064305.GB1615@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_234844_490569_04CE42F5 
X-CRM114-Status: GOOD (  22.60  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] dma: avoid clash between static inline and
 extern dma_alloc declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 17.06.22 08:43, Sascha Hauer wrote:
> On Tue, Jun 14, 2022 at 11:15:55AM +0200, Ahmad Fatoum wrote:
>> dma_alloc/dma_sync/dma_free can be either either static inline definitions
>> usually supplied per arch or extern definitions that can be either
>> generic or supplied per arch.
>>
>> To avoid clashes, expect static inline definitions to define a
>> preprocessor symbol for now. There is much duplication in the static
>> inline helpers, which we can remove in future.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> New patch, please apply to master.
>> ---
>>  arch/arm/include/asm/dma.h          |  5 +++++
>>  arch/kvx/include/asm/dma.h          |  2 ++
>>  arch/mips/include/asm/dma-mapping.h |  2 ++
>>  arch/sandbox/include/asm/dma.h      |  5 +++++
>>  arch/x86/include/asm/dma.h          |  4 ++++
>>  include/dma.h                       | 12 ++++++++++++
>>  6 files changed, 30 insertions(+)
> 
> I applied this series and rebased the rpi series on top of it. With that
> "[PATCH v2 02/21] dma: add dma_sync nop stubs for PBL" can be dropped,
> right?

Yes, this series replaces that one patch.

> 
> Sascha
> 
> 
>>
>> diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
>> index 226b1c146479..75a6c1ad86b2 100644
>> --- a/arch/arm/include/asm/dma.h
>> +++ b/arch/arm/include/asm/dma.h
>> @@ -10,6 +10,7 @@ static inline void *dma_alloc(size_t size)
>>  }
>>  
>>  #ifndef CONFIG_MMU
>> +#define dma_alloc_coherent dma_alloc_coherent
>>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	void *ret = xmemalign(4096, size);
>> @@ -21,22 +22,26 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  	return ret;
>>  }
>>  
>> +#define dma_alloc_writecombine dma_alloc_writecombine
>>  static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	return dma_alloc_coherent(size, dma_handle);
>>  }
>>  
>> +#define dma_free_coherent dma_free_coherent
>>  static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
>>  				     size_t size)
>>  {
>>  	free(mem);
>>  }
>>  
>> +#define dma_sync_single_for_cpu dma_sync_single_for_cpu
>>  static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>>  					   enum dma_data_direction dir)
>>  {
>>  }
>>  
>> +#define dma_sync_single_for_device dma_sync_single_for_device
>>  static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
>>  					      enum dma_data_direction dir)
>>  {
>> diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
>> index a7ecf279a982..5bf601307e61 100644
>> --- a/arch/kvx/include/asm/dma.h
>> +++ b/arch/kvx/include/asm/dma.h
>> @@ -16,6 +16,7 @@ static inline void *dma_alloc(size_t size)
>>  	return xmemalign(64, ALIGN(size, 64));
>>  }
>>  
>> +#define dma_alloc_coherent dma_alloc_coherent
>>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	BUILD_BUG_ON_MSG(1, "dma_alloc_coherent not supported: "
>> @@ -23,6 +24,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  	return NULL;
>>  }
>>  
>> +#define dma_free_coherent dma_free_coherent
>>  static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
>>  				     size_t size)
>>  {
>> diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
>> index 19d5b3f7bc4d..8e6ea0816828 100644
>> --- a/arch/mips/include/asm/dma-mapping.h
>> +++ b/arch/mips/include/asm/dma-mapping.h
>> @@ -10,6 +10,7 @@
>>  #include <malloc.h>
>>  #include <asm/io.h>
>>  
>> +#define dma_alloc_coherent dma_alloc_coherent
>>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	void *ret;
>> @@ -26,6 +27,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  	return (void *)CKSEG1ADDR(ret);
>>  }
>>  
>> +#define dma_free_coherent dma_free_coherent
>>  static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
>>  				     size_t size)
>>  {
>> diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
>> index 34c0fc5190f8..958d10e2a199 100644
>> --- a/arch/sandbox/include/asm/dma.h
>> +++ b/arch/sandbox/include/asm/dma.h
>> @@ -18,6 +18,7 @@ static inline void *dma_alloc(size_t size)
>>  	return xmemalign(64, ALIGN(size, 64));
>>  }
>>  
>> +#define dma_alloc_coherent dma_alloc_coherent
>>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	void *ret = xmemalign(4096, size);
>> @@ -29,22 +30,26 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  	return ret;
>>  }
>>  
>> +#define dma_alloc_writecombine dma_alloc_writecombine
>>  static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	return dma_alloc_coherent(size, dma_handle);
>>  }
>>  
>> +#define dma_free_coherent dma_free_coherent
>>  static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
>>  				     size_t size)
>>  {
>>  	free(mem);
>>  }
>>  
>> +#define dma_sync_single_for_cpu dma_sync_single_for_cpu
>>  static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>>  					   enum dma_data_direction dir)
>>  {
>>  }
>>  
>> +#define dma_sync_single_for_device dma_sync_single_for_device
>>  static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
>>  					      enum dma_data_direction dir)
>>  {
>> diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
>> index 8a3b044f3a9c..90791ecf3e07 100644
>> --- a/arch/x86/include/asm/dma.h
>> +++ b/arch/x86/include/asm/dma.h
>> @@ -13,6 +13,7 @@
>>   * x86 is cache coherent, so we need not do anything special here
>>   */
>>  
>> +#define dma_alloc_coherent dma_alloc_coherent
>>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  {
>>  	void *ret = xmemalign(4096, size);
>> @@ -24,17 +25,20 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
>>  	return ret;
>>  }
>>  
>> +#define dma_free_coherent dma_free_coherent
>>  static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
>>  				     size_t size)
>>  {
>>  	free(mem);
>>  }
>>  
>> +#define dma_sync_single_for_cpu dma_sync_single_for_cpu
>>  static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>>  					   enum dma_data_direction dir)
>>  {
>>  }
>>  
>> +#define dma_sync_single_for_device dma_sync_single_for_device
>>  static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
>>  					      enum dma_data_direction dir)
>>  {
>> diff --git a/include/dma.h b/include/dma.h
>> index 90f9254ea80f..2a271044f61c 100644
>> --- a/include/dma.h
>> +++ b/include/dma.h
>> @@ -57,14 +57,26 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
>>  }
>>  
>>  /* streaming DMA - implement the below calls to support HAS_DMA */
>> +#ifndef dma_sync_single_for_cpu
>>  void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>>  			     enum dma_data_direction dir);
>> +#endif
>>  
>> +#ifndef dma_sync_single_for_device
>>  void dma_sync_single_for_device(dma_addr_t address, size_t size,
>>  				enum dma_data_direction dir);
>> +#endif
>>  
>> +#ifndef dma_alloc_coherent
>>  void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
>> +#endif
>> +
>> +#ifndef dma_free_coherent
>>  void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
>> +#endif
>> +
>> +#ifndef dma_alloc_writecombine
>>  void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle);
>> +#endif
>>  
>>  #endif /* __DMA_H */
>> -- 
>> 2.30.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


