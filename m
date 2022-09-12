Delivery-date: Mon, 12 Sep 2022 17:17:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXlC2-002TEx-6v
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 17:17:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXlC0-0005rb-Sc
	for lore@pengutronix.de; Mon, 12 Sep 2022 17:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1/nuY6G4lFmKb/MzvyUhPpj+cmSkKEOBIGrU7mw7tpQ=; b=jYRamU1ARahrpkYolJ3GtY4agh
	5jIWiJvC6wQWkImrxIiuxR/4OZWhYXJyzw5+HZP56n+sANOmYsRTnZKHXFf5OKz509/+KLTpYIL/G
	MHyMvDY5WZZzO0jHZgJ4ajGuxPPzG0aWI8CbEMOsyh5rlOsFw6YRjM3/iCiU8TgCIpVmG3gvQxqB+
	xoJ/bmiEV4b0IumLfy95BwEf0naYvZjoUsO8Qm/bkCBEhTi8OOrXqtsKC7YImxQcKYReQ26156bjX
	xBt7QL0/jd2OcsAFNiRwscBnTW56VBBg6caogwPuglrt3YSeINlEGRHm2K68nT51UGLxWFIvvxHd7
	6bc+fnig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXlAF-00B0jV-3o; Mon, 12 Sep 2022 15:15:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXlA9-00B0fW-6u
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 15:15:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oXlA2-0005fB-SO; Mon, 12 Sep 2022 17:15:46 +0200
Message-ID: <7ef687f0-903c-e194-d3dc-a4c83e9a6efe@pengutronix.de>
Date: Mon, 12 Sep 2022 17:15:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
 <20220817114244.1810531-9-a.fatoum@pengutronix.de>
 <20220912120130.GD12909@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20220912120130.GD12909@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_081553_302648_D406499A 
X-CRM114-Status: GOOD (  29.52  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 08/10] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 12.09.22 14:01, Sascha Hauer wrote:
> This patch breaks NAND support on my Phytec i.MX6 board. There are some
> problems with this patch, so I ended up reverting it for now.

I wonder why. I see no memory reserves in imx6q-phytec-phycore-som-nand.dts
and the files it includes.

> 
> On Wed, Aug 17, 2022 at 01:42:42PM +0200, Ahmad Fatoum wrote:
>> @@ -468,11 +469,28 @@ void __mmu_init(bool mmu_on)
>>  	vectors_init();
>>  
>>  	for_each_memory_bank(bank) {
>> +		struct resource *rsv;
>> +
>>  		create_sections(ttb, bank->start, bank->start + bank->size - 1,
>>  				PMD_SECT_DEF_CACHED);
>> -		__mmu_cache_flush();
>> +
>> +		for_each_reserved_region(bank, rsv) {
>> +			create_sections(ttb, resource_first_page(rsv),
>> +					resource_count_pages(rsv),
>> +					attrs_uncached_mem());
>> +		}
> 
> This operates on 1MiB sections, so everything requiring a finer
> granularity will fail here. Not sure if we currently need that, but not
> even issuing a warning is not good.

At worst it'd needlessly mark some memory uncached/XN. If users are
affected, they will notice and we can revisit this. I could add a debug
print here.

I need to rework this though, because I see now create_sections differs
between ARM64 and ARM32. On ARM64, it accepts the last address as argument,
while on ARM64, it's the size.. resource_count_pages() is not a nice
name either, because it returns bytes (aligned up to PAGE_SIZE).

> 
>>  	}
>>  
>> +	/*
>> +	 * We could set_ttbr(ttb) here instead and save on the copy, but
>> +	 * for now we play it safe, so we don't mess with the older ARMs.
>> +	 */
>> +	if (oldttb) {
>> +		memcpy(oldttb, ttb, ARM_TTB_SIZE);
>> +		free(ttb);
>> +	}
> 
> in the early MMU case the MMU still uses 'oldttb' as ttb whereas 'ttb'
> now points to invalid memory. Still functions like arm_create_pte()
> still operate on 'ttb'. It looks like a ttb = oldttb is missing here.

Why would ttb point at invalid memory? It's allocated unconditionally
with xmemalign and freed here.

> Also I wonder when we have to map the reserved regions as execute never,
> then the early MMU setup seems broken as well, as that creates a flat
> mapping without honoring the reserved regions. Shouldn't that be fixed?

Yes, see excerpt from cover letter:

"Note that this doesn't yet solve all problems. For example, PPA secure
 monitor installation on Layerscape may happen with CONFIG_MMU_EARLY=y,
 in which case barebox in EL2 may speculate into the secure memory
 before any device tree reserved-memory settings are considered. For this
 reason, both early MMU and normal MMU setup must be aware of the
 reserved memory regions. The original patch set by Rouven used FDT
 parsing in PBL to achieve this, but this is omitted here to limit
 scope of the patch series. Instead we only handle the CONFIG_OPTEE_SIZE
 case out-of-the-box."

My use case is the CONFIG_OPTEE_SIZE one and at least for ARM64, that looks
resolved now IMO.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


