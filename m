Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RV5EZ-00064D-DY
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 17:43:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
Date: Mon, 28 Nov 2011 18:43:06 +0100
In-Reply-To: <20111128074319.GO27267@pengutronix.de> (Sascha Hauer's message
 of "Mon, 28 Nov 2011 08:43:19 +0100")
Message-ID: <87d3cc87o5.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM, MMU and IO space mapping
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> That's why I had to disable this mapping. Most other SoCs do not have
> flash on 0x0. The i.MX processors for example have their internal ROM
> there.
Ah, I see.

>> And as a consequence, I'm a bit afraid that my disk-on-chip, having it's memory
>> mapped to 0x0 - 0x2000, will be difficult to convert ... I must think of a way
>> in there.
>
> Your options are:
>
> - Add some switch to disable the 0x0 mapping.
> - Add ioremap support.
>
> I think we should go for the former for now. Real ioremap support
> requires more thinking about how we want to do it. Will all drivers have
> to do it or only the cfi driver?
I think that only cfi and disk-on-chips drivers will have that problem, as being
mapped (from an memory bus address POV) to address 0 is bound to boot code,
which relies on some kind of memory (ROM, flash, ...).

And disabling 0x0 mapping will make the MMU booting quite fragile IMHO.
Consider the following example:
 - a flash/ROM is mapped at address 0 for booting the ARM SoC
 - as requested by ARM, the first words of the flash are the vectors, with the
 first one being the reset vector into a code that is supposed to run in a
 *non-MMU* context
 - the ARM core starts, and IPL is loaded
 - IPL loads SPL (barebox)
 - barebox remaps 0x0 to vectors at malloc'd 0xa0003f00 (former solution)
 - barebox switches into MMU on
 - a bug happens in barebox (urgh!!!) and the exception vector is triggered
 ===> here, the flash/ROM vector is used
 ===> this vectors assumes running from MMU-disabled environment
 - the code running in the IPL triggers an exception because it's in MMU
 environment
  => eternal cycle begins

I think either :
 - we implement ioremap
 - or we forbid (on ARM) MMU with board requiring 0x0 iomapped device

I would prefer a simple ioremap solution of the like:
 - a mach-XXX declares an adress-space for io-remapping (contiguous, section
 aligned and of size multiple of 1MBytes)
   => if not => MMU config is not possible
             => ioremap() gives back the flat physical address
   => if yes => MMU config is possible
             => ioremap() gives back an entry in io-remapping address space
 - ioremap() is embedded in dev_request_mem_region()

What do you think ?

>> I don't know either. All I see is that the datacache is filled so that stale
>> values are flushed out, and then it's flushed again through normal coproc
>> operations.
>> Note that there's an erratum in the XScale series that says that turning off the
>> cache leaves "dirty bits" set, and reenabling it later might cause havoc. That
>> would be a good reason for UBoot the read the 64kb before turning off the MMU,
>> wouldn't it ?
>
> Yes, it would. Does your first stage loader use the MMU?
Well, when barebox is stable enough for me, no.
For now, the answer will be yes, as barebox will be the TPL:
 - IPL load SPL, which is a proprietary bootloader
   => IPL runs in non-MMU mode
 - SPL loads the TPL (third program loader), which is barebox
   => SPL uses MMU
I need the IPL/SPL/TPL, as if there is any problem with barebox, the current SPL
is stable and will enable me to reflash the TPL (ie. barebox). I have no JTAG
access by now to my board, so I cannot afford loosing the security of the SPL.

When my barebox will be stable enough, and I'll be bold enough, I'll replace the
SPL with barebox :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
