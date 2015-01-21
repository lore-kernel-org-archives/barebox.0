Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDyQk-0006Em-Q8
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 16:47:00 +0000
Received: by mail-wg0-f45.google.com with SMTP id x12so7215771wgg.4
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 08:46:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150121135645.GH12209@pengutronix.de>
References: <1421814254-13282-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150121135645.GH12209@pengutronix.de>
Date: Thu, 22 Jan 2015 01:46:35 +0900
Message-ID: <CAMhH57QNSeX6zL=sbcw71yaydKBkuHTQ0STTvtaOsEunUpc8ug@mail.gmail.com>
From: Masahiro YAMADA <yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] ARM: remove unused code from
 __v7_mmu_cache_flush_invalidate
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,


2015-01-21 22:56 GMT+09:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Wed, Jan 21, 2015 at 01:24:14PM +0900, Masahiro Yamada wrote:
>> This code is unnecessary (wrong) for the following reasons.
>>
>> [1] As ARM ARM clearly says, the entire Level 1 cache maintenance
>>     operations are not supported for ARMv7, i.e. the bit19-16 of
>>     the ID_MMFR1 is always 0b0000.  The code always jumps to the
>>     "hierarchical" label.
>
> The offending code is from the kernel from arch/arm/boot/compressed/head.S
> The test for ID_MMFR1 nearly unchanged since:
>
> commit 7d09e85448dfa78e3e58186c934449aaf6d49b50
> Author: Catalin Marinas <catalin.marinas@arm.com>
> Date:   Fri Jun 1 17:14:53 2007 +0100
>
> That of course doesn't make it more correct. Maybe we should send the
> same patch to the kernel and let Catalin explain why this code is
> necessary (or why not)
>

OK. I will.

On the other hand, the code in arch/arm/mm/cache-v7.S
always does hierarchical operations.



ENTRY(v7_flush_dcache_all)
dmb @ ensure ordering with previous memory accesses
mrc p15, 1, r0, c0, c0, 1 @ read clidr
ands r3, r0, #0x7000000 @ extract loc from clidr
mov r3, r3, lsr #23 @ left align loc bit field
beq finished @ if loc is 0, then no need to clean
mov r10, #0 @ start clean at cache level 0
flush_levels:
add r2, r10, r10, lsr #1 @ work out 3x current cache level
mov r1, r0, lsr r2 @ extract cache type bits from clidr
and r1, r1, #7 @ mask of the bits for current cache only
cmp r1, #2 @ see what cache we have at this level
blt skip @ skip if no cache, or just i-cache
#ifdef CONFIG_PREEMPT
save_and_disable_irqs_notrace r9 @ make cssr&csidr read atomic
#endif
mcr p15, 2, r10, c0, c0, 0 @ select current cache level in cssr
isb @ isb to sych the new cssr&csidr
mrc p15, 1, r1, c0, c0, 0 @ read the new csidr
#ifdef CONFIG_PREEMPT
restore_irqs_notrace r9
#endif
and r2, r1, #7 @ extract the length of the cache lines
add r2, r2, #4 @ add 4 (line length offset)
ldr r4, =0x3ff
ands r4, r4, r1, lsr #3 @ find maximum number on the way size
clz r5, r4 @ find bit position of way size increment
ldr r7, =0x7fff
ands r7, r7, r1, lsr #13 @ extract max number of the index size
loop1:
mov r9, r7 @ create working copy of max index
loop2:
 ARM( orr r11, r10, r4, lsl r5 ) @ factor way and cache number into r11
 THUMB( lsl r6, r4, r5 )
 THUMB( orr r11, r10, r6 ) @ factor way and cache number into r11
 ARM( orr r11, r11, r9, lsl r2 ) @ factor index number into r11
 THUMB( lsl r6, r9, r2 )
 THUMB( orr r11, r11, r6 ) @ factor index number into r11
mcr p15, 0, r11, c7, c14, 2 @ clean & invalidate by set/way
subs r9, r9, #1 @ decrement the index
bge loop2
subs r4, r4, #1 @ decrement the way
bge loop1
skip:
add r10, r10, #2 @ increment cache number
cmp r3, r10
bgt flush_levels
finished:
mov r10, #0 @ swith back to cache level 0
mcr p15, 2, r10, c0, c0, 0 @ select current cache level in cssr
dsb st
isb
ret lr
ENDPROC(v7_flush_dcache_all)






-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
