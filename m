Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJopE-0006pN-Kz
 for barebox@lists.infradead.org; Fri, 18 May 2018 23:30:17 +0000
Received: by mail-it0-x242.google.com with SMTP id j186-v6so15114482ita.5
 for <barebox@lists.infradead.org>; Fri, 18 May 2018 16:30:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180518204137.GC26895@ravnborg.org>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
 <20180517205837.32421-25-andrew.smirnov@gmail.com>
 <20180518204137.GC26895@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 18 May 2018 16:30:04 -0700
Message-ID: <CAHQ1cqENkW2xjSFiQ2LAF9XdbJmB5M3ZxzFbhr_-qDaPq2VryA@mail.gmail.com>
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
Subject: Re: [PATCH v3 24/28] ARM: mmu: Use find_pte() to find PTE in
 create_vector_table()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 18, 2018 at 1:41 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
> On Thu, May 17, 2018 at 01:58:33PM -0700, Andrey Smirnov wrote:
>> There's already a function that implement necessary arithemtic to find
>> offset within page table for a given address, so make use of it
>> instead of re-implementing it again.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/cpu/mmu.c | 9 ++++-----
>>  1 file changed, 4 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
>> index 21394deb1..f9e4d1a50 100644
>> --- a/arch/arm/cpu/mmu.c
>> +++ b/arch/arm/cpu/mmu.c
>> @@ -272,8 +272,7 @@ static void create_vector_table(unsigned long adr)
>>  {
>>       struct resource *vectors_sdram;
>>       void *vectors;
>> -     u32 *exc;
>> -     int idx;
>> +     u32 *pte;
>>
>>       vectors_sdram = request_sdram_region("vector table", adr, PAGE_SIZE);
>>       if (vectors_sdram) {
>> @@ -293,9 +292,9 @@ static void create_vector_table(unsigned long adr)
>>               vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
>>               pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
>>                        vectors, adr);
>> -             exc = arm_create_pte(adr, pte_flags_uncached);
>> -             idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
>> -             exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
>> +             arm_create_pte(adr, pte_flags_uncached);
>> +             pte = find_pte(adr);
>> +             *pte = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
>
> This looks more elegant, but the cost here is that
> find_pte() is more expensive than the simple array
> operations done before.
>
> I am not sure if this is needed in followig patches,
> it just looks a bit expensive.
>

The cost of find_pte() is two simple checks and an extra table lookup.
IMHO, seems like a trivial price to pay to avoid code duplication.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
