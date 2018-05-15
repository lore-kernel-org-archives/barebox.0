Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fISiy-0004P6-70
 for barebox@lists.infradead.org; Tue, 15 May 2018 05:42:13 +0000
Received: by mail-it0-x241.google.com with SMTP id n202-v6so16239790ita.1
 for <barebox@lists.infradead.org>; Mon, 14 May 2018 22:42:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180514065238.uew2swyutlxbfrql@pengutronix.de>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
 <20180508212951.6446-10-andrew.smirnov@gmail.com>
 <20180514065238.uew2swyutlxbfrql@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 May 2018 22:42:00 -0700
Message-ID: <CAHQ1cqHxJwfmzPJ=bcmikK7JAx6tkNCjFSd_VN0QuKYCOyWdEg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 09/28] ARM: mmu: Specify size in bytes in create_sections()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, May 13, 2018 at 11:52 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, May 08, 2018 at 02:29:32PM -0700, Andrey Smirnov wrote:
>> Seeing
>>
>>         create_sections(ttb, 0, PAGE_SIZE, ...);
>>
>> as the code the creates initial flat 4 GiB mapping is a bit less
>> intuitive then
>>
>>         create_sections(ttb, 0, SZ_4G, ...);
>>
>> so, for the sake of clarification, convert create_sections() to accept
>> size in bytes and do bytes -> MiB converstion as a part of the
>> function.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/cpu/mmu-early.c | 4 ++--
>>  arch/arm/cpu/mmu.c       | 4 ++--
>>  arch/arm/cpu/mmu.h       | 4 ++--
>>  3 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
>> index 70ece0d2f..136b33c3a 100644
>> --- a/arch/arm/cpu/mmu-early.c
>> +++ b/arch/arm/cpu/mmu-early.c
>> @@ -16,7 +16,7 @@ static void map_cachable(unsigned long start, unsigned long size)
>>       start = ALIGN_DOWN(start, SZ_1M);
>>       size  = ALIGN(size, SZ_1M);
>>
>> -     create_sections(ttb, start, size >> 20, PMD_SECT_AP_WRITE |
>> +     create_sections(ttb, start, size, PMD_SECT_AP_WRITE |
>>                       PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
>>  }
>>
>> @@ -30,7 +30,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>>       set_ttbr(ttb);
>>       set_domain(DOMAIN_MANAGER);
>>
>> -     create_sections(ttb, 0, 4096, PMD_SECT_AP_WRITE |
>> +     create_sections(ttb, 0, SZ_4G, PMD_SECT_AP_WRITE |
>>                       PMD_SECT_AP_READ | PMD_TYPE_SECT);
>>
>>       map_cachable(membase, memsize);
>> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
>> index 0c367e47c..f02c99f65 100644
>> --- a/arch/arm/cpu/mmu.c
>> +++ b/arch/arm/cpu/mmu.c
>> @@ -460,7 +460,7 @@ static int mmu_init(void)
>>       set_domain(DOMAIN_MANAGER);
>>
>>       /* create a flat mapping using 1MiB sections */
>> -     create_sections(ttb, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
>> +     create_sections(ttb, 0, SZ_4G, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
>>                       PMD_TYPE_SECT);
>>       __mmu_cache_flush();
>>
>> @@ -472,7 +472,7 @@ static int mmu_init(void)
>>        * below
>>        */
>>       for_each_memory_bank(bank) {
>> -             create_sections(ttb, bank->start, bank->size >> 20,
>> +             create_sections(ttb, bank->start, bank->size,
>>                               PMD_SECT_DEF_CACHED);
>>               __mmu_cache_flush();
>>       }
>> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
>> index 8b51e3f9f..d87d82c1c 100644
>> --- a/arch/arm/cpu/mmu.h
>> +++ b/arch/arm/cpu/mmu.h
>> @@ -26,10 +26,10 @@ static inline void set_domain(unsigned val)
>>
>>  static inline void
>>  create_sections(uint32_t *ttb, unsigned long addr,
>> -             int size_m, unsigned int flags)
>> +             unsigned long long size, unsigned int flags)
>>  {
>>       unsigned long ttb_start = add >> 20;
>> -     unsigned long ttb_end   = ttb_start + size_m;
>> +     unsigned long ttb_end   = ttb_start + size >> 20;
>>       unsigned int i;
>
> I agree reading size_m is not very intuitive. I don't like this
> unnecessary introduction of 64bit variables though. Can we instead pass
> start/end instead of start/size?
>

Sure, no problem. Will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
