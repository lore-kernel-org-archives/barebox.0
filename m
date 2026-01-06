Delivery-date: Tue, 06 Jan 2026 09:50:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2m0-001pkB-0J
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:50:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2lz-0004RR-Ff
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:50:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ew8yZiB2Z/MN7KMlLcf2T4pkEKqE/pn3Ek2pM8obBpM=; b=f7Usr7Akp/plh33oZZLVCjUkFf
	yqY3mHW1cVzsosKEP8+IOUNJ/eJ/F1vfb6tmLGkJwqtrBKa5w7F8cawxzcZtEiZQgF2Jz32ly67hS
	Yyu9X4NGLQp4KlgdzwFm3wU8NCJoL8CVP0J6pPyHoSV2wkmkgSz6czckX6hBdY8S+4zdiRFxa5gT1
	JCklMotfvL1gA/2+SwewqZjWLOdoGNhVQeK09yOtHfYtaUZnM749c0zOrQ2gIbrtQSsXM4QpQcyT+
	igcvzEDD8CHMaaTDvwzzuz8cSirIBIq7BqA72TZuvWa8jbBrchR2Rk4YHuaakAg6c2qPg/90AArcP
	GFW2divg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2lV-0000000Cddi-2itY;
	Tue, 06 Jan 2026 08:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2lS-0000000Cdd5-2quW
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:50:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd2lR-0004N9-0Y; Tue, 06 Jan 2026 09:50:05 +0100
Message-ID: <4885c971-49b7-4912-89f5-9d401dd5e39d@pengutronix.de>
Date: Tue, 6 Jan 2026 09:50:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-11-e97853f98232@pengutronix.de>
 <0a85c1df-8960-440b-b901-1c338db1f003@pengutronix.de>
Content-Language: en-US
In-Reply-To: <0a85c1df-8960-440b-b901-1c338db1f003@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_005006_749685_5E3113D1 
X-CRM114-Status: GOOD (  15.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/19] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/5/26 13:15, Ahmad Fatoum wrote:
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
>> Add PBL-specific memory remapping function that always uses page-wise
>> mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
>> adjacent ELF segments with different protection requirements.
>>
>> Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
>> ARMv8 (page tables with BBM). Needed for ELF segment permission setup.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


Hmm, a question: Why do we need to preemptively break up pages?
Doesn't normal remapping do that already? My understanding was
that we only did it here to allow remapping while executing from
it, but in the PBL ELF loader we are not executing from there,
so there should not be an issue.

Thanks,
Ahmad

> 
>> ---
>>  arch/arm/cpu/mmu_32.c | 7 +++++++
>>  arch/arm/cpu/mmu_64.c | 8 ++++++++
>>  include/mmu.h         | 3 +++
>>  3 files changed, 18 insertions(+)
>>
>> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
>> index 97c7107290ce95ddb21a322a5d0e74f3d324c528..86a55d165ba3cec5154c345a1a3a9cb959f0996f 100644
>> --- a/arch/arm/cpu/mmu_32.c
>> +++ b/arch/arm/cpu/mmu_32.c
>> @@ -435,6 +435,13 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
>>  	__arch_remap_range((void *)addr, addr, size, map_type);
>>  }
>>  
>> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
>> +		     maptype_t map_type)
>> +{
>> +	__arch_remap_range(virt_addr, phys_addr, size,
>> +			   map_type | ARCH_MAP_FLAG_PAGEWISE);
>> +}
>> +
>>  static bool pte_is_cacheable(uint32_t pte, int level)
>>  {
>>  	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
>> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
>> index afb3d2d7efd0bc7ecde1177d1544f54d751b5dc1..63faaa46703697e527eae766392e7ea7ae186b3d 100644
>> --- a/arch/arm/cpu/mmu_64.c
>> +++ b/arch/arm/cpu/mmu_64.c
>> @@ -282,6 +282,14 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
>>  	__arch_remap_range(addr, addr, size, map_type, false);
>>  }
>>  
>> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
>> +		     maptype_t map_type)
>> +{
>> +	__arch_remap_range((uint64_t)virt_addr, phys_addr,
>> +			   (uint64_t)size, map_type | ARCH_MAP_FLAG_PAGEWISE,
>> +			   true);
>> +}
>> +
>>  int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
>>  {
>>  	map_type = arm_mmu_maybe_skip_permissions(map_type);
>> diff --git a/include/mmu.h b/include/mmu.h
>> index 53603b7956c229b4c715c57b19d0398931eb2d6b..37df7b482e1d83e94e61997db6cf9834d8cf7f3c 100644
>> --- a/include/mmu.h
>> +++ b/include/mmu.h
>> @@ -64,6 +64,9 @@ static inline bool arch_can_remap(void)
>>  }
>>  #endif
>>  
>> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
>> +		     maptype_t map_type);
>> +
>>  static inline int remap_range(void *start, size_t size, maptype_t map_type)
>>  {
>>  	return arch_remap_range(start, virt_to_phys(start), size, map_type);
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


