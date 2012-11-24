Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcIQk-0003Q3-TV
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 16:18:11 +0000
Received: by mail-ia0-f177.google.com with SMTP id u21so6722430ial.36
 for <barebox@lists.infradead.org>; Sat, 24 Nov 2012 08:18:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121120075818.GB10369@pengutronix.de>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
 <1353154239-31574-3-git-send-email-antonynpavlov@gmail.com>
 <20121120075818.GB10369@pengutronix.de>
Date: Sat, 24 Nov 2012 20:18:09 +0400
Message-ID: <CAA4bVAGVQGgDcxvRJtSfwGGgYb6DBy9wsdh3gWiu+yBxfDXKfQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/3] MIPS: boot: realize _start in C
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sorry for delay.

On 20 November 2012 11:58, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, Nov 17, 2012 at 04:10:38PM +0400, Antony Pavlov wrote:
>> The pbl will be incharge of the lowlevel init and
>> barebox relocation. So we can skip it in barebox itself
>> and use simple _start.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  arch/mips/boot/Makefile     |    1 -
>>  arch/mips/boot/main_entry.c |   18 ++++++
>>  arch/mips/boot/start.S      |  142 -------------------------------------------
>>  3 files changed, 18 insertions(+), 143 deletions(-)
>>  delete mode 100644 arch/mips/boot/start.S
>>
>> diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
>> index 6b093f1..4f11a48 100644
>> --- a/arch/mips/boot/Makefile
>> +++ b/arch/mips/boot/Makefile
>> @@ -1,4 +1,3 @@
>> -obj-y += start.o
>>  obj-y += main_entry.o
>>
>>  pbl-y += start-pbl.o main_entry-pbl.o
>> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
>> index 0a33c45..422d40b 100644
>> --- a/arch/mips/boot/main_entry.c
>> +++ b/arch/mips/boot/main_entry.c
>> @@ -22,6 +22,8 @@
>>  #include <asm/cpu-features.h>
>>  #include <asm/mipsregs.h>
>>  #include <asm/addrspace.h>
>> +#include <asm/regdef.h>
>> +#include <asm-generic/memory_layout.h>
>>
>>  extern void start_barebox(void);
>>  extern void handle_reserved(void);
>> @@ -92,3 +94,19 @@ void main_entry(void)
>>
>>       start_barebox();
>>  }
>> +
>> +void __naked __section(.text_entry) _start(void)
>> +{
>> +     u32 r;
>> +
>> +     /* setup the stack */
>> +     r = STACK_BASE + STACK_SIZE - 16;
>> +
>> +     __asm__ __volatile__(
>> +             "move\t$sp, %0\n\t"
>> +             : /* no outputs */
>> +             : "r" (r)
>> +     );
>> +
>> +     main_entry();
>
> I wonder that the C function skips several things the Assembler version
> does. Is this done in the pbl now?

Yes, all lowlevel init is in pbl after this patch.

> Does this patch make the pbl mandatory?

Not at all, but the patch decrease pbl-free barebox "survival".

> We haven't done this on Arm, mostly because we were not
> confident enough that it works on every board. That may be different on
> mips, but should be mentioned in the commit log. But maybe I am
> misreading the patches...

Now I think you are right and we must postpone this patch. It make
sense to introduce this patch after full ELF support adding. If we had
ELF support, we should load barebox ELF image without pbl and drop
bin-image support in bootm.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
