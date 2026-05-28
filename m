Delivery-date: Thu, 28 May 2026 13:05:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYYn-004iUz-2v
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 13:05:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYYm-0003Mv-4o
	for lore@pengutronix.de; Thu, 28 May 2026 13:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IwNmJKexghbm32JbgK3UDe2f8VsS1BqdyOHkpsiqnIc=; b=HJ0ttkiY4uJHG9Jg1xtlkpwjsu
	Bm8bluB1dgKnu6gfFRsMqAzEi1gyTRGwEWwN6wnR21mbIYSH/Nu7M+lOQ/zNCbf7alg/8Ukz9D+9B
	enWn18FX6La5UJ9tO4we5eHle13nbLI/8ub66XPWjrx0xUXb6JmbMOga39/5f0F8klDhyDu2hqdXJ
	+8hzNDCb+m0kSJzrW3lYYKoWUVDAHJr8TITqs3acJ34wDV0yUcn3UaMTPROG9no1f54Bbe9vB5EWE
	Ve5wj6w6juAPC4Y6qRVvMLal3BNHRjWJ1PQbiJTeh7LMS74aX2C4wBNyJFaEjbmnatCjWxlh/Zdc1
	rCzxZqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYXs-00000005dQ1-0J3D;
	Thu, 28 May 2026 11:05:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYXp-00000005dPK-1aQh
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 11:04:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYXn-0003AC-UN; Thu, 28 May 2026 13:04:55 +0200
Message-ID: <a012ae44-9a5e-4d48-883a-609751012028@pengutronix.de>
Date: Thu, 28 May 2026 13:04:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
 <20260527121649.3365172-6-a.fatoum@pengutronix.de>
 <CAP1tNvT23wr-_Usy5q+VMu3qLXAfmWEnRTP=WqrMx+e7Bk-D8A@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvT23wr-_Usy5q+VMu3qLXAfmWEnRTP=WqrMx+e7Bk-D8A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_040457_417583_A2186821 
X-CRM114-Status: GOOD (  19.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 5/5] ARM64: place PBL malloc area at start of
 barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/27/26 3:12 PM, Alexander Shiyan wrote:
> Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

Unfortunately, I placed the very early malloc area at the wrong place.

I just sent out v3 and would appreciate if you can check if that also
works for you.

Cheers,
Ahmad

> 
> ср, 27 мая 2026 г. в 15:17, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> The early PBL malloc area used by the Rockchip code overlaps the region
>> used for OP-TEE. Moving it a bit lower would overlap the region occupied
>> by the scratch area.
>>
>> With the switch to CONFIG_BAREBOX_MEMORY_OFFSET, we can compute the start
>> of the malloc area in barebox proper without knowing how big barebox will
>> eventually be, so make use of that and always place the PBL malloc area
>> exactly at the start of the eventual barebox proper memory area.
>>
>> The memory will automatically be reclaimed when the TLSF allocator is
>> instantiated and we will be sure not to overwrite anything by allocating
>> in PBL.
>>
>> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>> Fixes: 76b1f31275fe ("ARM: rockchip: initialize PBL malloc")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/cpu/common.c              |  5 +++++
>>  arch/arm/cpu/uncompress.c          |  4 ++++
>>  arch/arm/include/asm/barebox-arm.h | 10 ++++++----
>>  arch/arm/mach-rockchip/atf.c       |  2 +-
>>  4 files changed, 16 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
>> index 6b82ee8b810c..adb5d6a02bc8 100644
>> --- a/arch/arm/cpu/common.c
>> +++ b/arch/arm/cpu/common.c
>> @@ -114,8 +114,13 @@ void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base)
>>  #endif
>>         printf("arm_mem_barebox_image = 0x%08lx+0x%08lx\n",
>>                barebox_base, arm_mem_barebox_image_end(endmem) - barebox_base);
>> +#ifdef CONFIG_ARM64
>> +       printf("pbl_malloc area       = 0x%08lx+0x%08x\n",
>> +              barebox_malloc_base(membase, endmem - membase), PBL_MALLOC_SIZE);
>> +#else
>>         printf("arm_mem_early_malloc  = 0x%08lx+0x%08x\n",
>>                barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
>> +#endif
>>         printf("membase               = 0x%08lx+0x%08lx\n",
>>                membase, endmem - membase);
>>  }
>> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
>> index 61bcba6e8549..55bbe0019cc4 100644
>> --- a/arch/arm/cpu/uncompress.c
>> +++ b/arch/arm/cpu/uncompress.c
>> @@ -75,7 +75,11 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>>
>>         handoff_data = (void *)barebox_base + ALIGN(uncompressed_len, 8) + MAX_BSS_SIZE;
>>
>> +#ifdef CONFIG_ARM64
>> +       pbl_malloc_init(barebox_malloc_base(membase, memsize), PBL_MALLOC_SIZE);
>> +#else
>>         pbl_malloc_init(barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
>> +#endif
>>
>>  #ifdef DEBUG
>>         print_pbl_mem_layout(membase, endmem, barebox_base);
>> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
>> index 38cceba010ed..f75cddc77243 100644
>> --- a/arch/arm/include/asm/barebox-arm.h
>> +++ b/arch/arm/include/asm/barebox-arm.h
>> @@ -95,10 +95,12 @@ void *barebox_arm_boot_dtb(void);
>>   *                       + BSS) rounded to SZ_1M
>>   *                                   ↓
>>   *  ---------------------- arm_mem_barebox_image() ---------------------
>> - *                                   ↑
>> - *                                SZ_128K
>> - *                                   ↓
>> - *  ------------------------ arm_mem_early_malloc ----------------------
>> + *     ARM32      ↑                  |                ↕         ARM64
>> + *         PBL_MALLOC_SIZE           |------- pbl_malloc area end ------
>> + *                ↓                  |                ↑
>> + *  --- arm_mem_early_malloc --------|         PBL_MALLOC_SIZE
>> + *                                   |                ↓
>> + *                                   ----- pbl_malloc area start -------
>>   */
>>  void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base);
>>
>> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
>> index 14797a1e0601..f9dbc8b20c5a 100644
>> --- a/arch/arm/mach-rockchip/atf.c
>> +++ b/arch/arm/mach-rockchip/atf.c
>> @@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
>>         unsigned long bl31_ep;
>>
>>         mmu_early_enable(membase[0], memsize[0]);
>> -       pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
>> +       pbl_malloc_init(membase[0], memsize[0]);
>>
>>         bl31_ep = load_elf64_image_phdr(&bl31);
>>
>> --
>> 2.47.3
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



