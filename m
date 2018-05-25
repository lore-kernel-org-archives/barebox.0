Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMGCI-0001HV-Py
 for barebox@lists.infradead.org; Fri, 25 May 2018 17:08:12 +0000
Received: by mail-io0-x241.google.com with SMTP id a10-v6so7142401ioc.9
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 10:08:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1527239388.3472.4.camel@pengutronix.de>
References: <20180523051012.26148-1-andrew.smirnov@gmail.com>
 <20180523084341.i5edq2nznd7spbi3@pengutronix.de>
 <CAHQ1cqEC7Hpc1k2LEpUzDwk=EipeTLXEO1J0Fk4U7vkZ1MEczA@mail.gmail.com>
 <20180525090124.wchev5lakkiny2gr@pengutronix.de>
 <1527239388.3472.4.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 May 2018 10:07:59 -0700
Message-ID: <CAHQ1cqENRSZSWC6UqAu-ZjBorjtJdzFXbt=R-mkvodOtg2+X8g@mail.gmail.com>
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
Subject: Re: [RFC] ARM: mmu: Do not try to pick early TTB up
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 25, 2018 at 2:09 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Freitag, den 25.05.2018, 11:01 +0200 schrieb Sascha Hauer:
>> On Thu, May 24, 2018 at 08:14:40PM -0700, Andrey Smirnov wrote:
>> > On Wed, May 23, 2018 at 1:43 AM, Sascha Hauer <s.hauer@pengutronix.
>> > de> wrote:
>> > > On Tue, May 22, 2018 at 10:10:12PM -0700, Andrey Smirnov wrote:
>> > > > The call to create_flat_mapping() in mmu.c will change both
>> > > > memory
>> > > > type and shareability of all RAM in use by barebox while MMU is
>> > > > on
>> > > > when done in conjunction with CONFIG_MMU_EARLY.
>> > >
>> > > I notice that with MMU_EARLY enabled we call
>> > > create_flat_mapping()
>> > > twice, once in the early MMU code and once when setting up the
>> > > MMU for
>> > > real. In between we remap the the SDRAM cached which then is
>> > > reverted
>> > > during the second call to create_flat_mapping().
>> > >
>> > > This seems unnecessary. Does the following help you?
>> >
>> > Yeah, this, disabling MMU before or having a tlb_invalidate() after
>> > all seem to help. Your patch works fine, but it has a slight
>> > weirdness
>> > in my case because early MMU code would mark OCRAM as cached and
>> > regular MMU code wouldn't undo it without the call to
>> > create_flat_mapping(), so I'd end up with slightly different memory
>> > configuration depending on if EARLY_MMU is enabled or not. Other
>> > than
>> > that it should work fine.
>> >
>> > The main reason I chose to go "disable MMU" route is because that
>> > follows what ARMv8 MMU code does, but I am perfectly happy with
>> > either
>> > solution.
>>
>> Disabling the MMU probably has a performance impact (I would have to
>> remeasure, maybe this is not true at all), that's why I would prefer
>> keeping it enabled.
>
> It's probably worse with CPUs that have the L2 cache as an architected
> cache, like the Cortex A8 and A15. On those we would need to flush the
> pretty large L2 cache in order to disable the MMU.
>

Hmm, code in mmu.c as it is right now already flushes all of the
caches. Once after creating flat 4GiB mapping and then once for every
memory bank that is registered. Unless I am missing something,
disabling MMU actually saves us at least one full cache flush.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
