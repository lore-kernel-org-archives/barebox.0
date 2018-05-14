Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x231.google.com ([2607:f8b0:4001:c0b::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIN1p-0001J1-Oz
 for barebox@lists.infradead.org; Mon, 14 May 2018 23:37:19 +0000
Received: by mail-it0-x231.google.com with SMTP id n64-v6so14664504itb.3
 for <barebox@lists.infradead.org>; Mon, 14 May 2018 16:37:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1525855717.17568.16.camel@pengutronix.de>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
 <20180508212951.6446-27-andrew.smirnov@gmail.com>
 <1525855717.17568.16.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 May 2018 16:37:05 -0700
Message-ID: <CAHQ1cqFJSxzOk_w74zVRR2JNxkb6XcgxA49LHFE3DNMK3eTASg@mail.gmail.com>
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
Subject: Re: [PATCH 26/28] ARM: mmu: Simplify the use of dma_flush_range()
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, May 9, 2018 at 1:48 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Dienstag, den 08.05.2018, 14:29 -0700 schrieb Andrey Smirnov:
>> Simplify the use of dma_flush_range() by changing its signature to
>> accept pointer to start of the data and data size. This change allows
>> us to avoid a whole bunch of repetitive arithmetic currently done by
>> all of the callers.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>
> One nit below, otherwise
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
>
>> ---
>>  arch/arm/cpu/mmu.c | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
>> index b14a869af..fc7102700 100644
>> --- a/arch/arm/cpu/mmu.c
>> +++ b/arch/arm/cpu/mmu.c
>> @@ -142,8 +142,11 @@ static u32 *find_pte(unsigned long adr)
>> >     return &table[(adr >> PAGE_SHIFT) & 0xff];
>>  }
>>
>> -static void dma_flush_range(unsigned long start, unsigned long end)
>> +static void dma_flush_range(void *ptr, size_t size)
>>  {
>> > +   unsigned long start = (unsigned long)ptr;
>> +     unsigned long end   = start + size;
>
> Personal taste, but I don't like those extra spaces. They tend to not
> line up as well after a few future code changes.
>

Sure, I can fix that in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
