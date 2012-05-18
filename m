Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJgQ-0007z0-Et
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:41:15 +0000
Date: Fri, 18 May 2012 11:41:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120518094110.GS30400@pengutronix.de>
References: <CAOQ7t2aPsARo+NTNDobCAUVjhRR4TE9X7-L5m8xqMo4+R6oNOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ7t2aPsARo+NTNDobCAUVjhRR4TE9X7-L5m8xqMo4+R6oNOA@mail.gmail.com>
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
Subject: Re: SVC32 and SP
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 18, 2012 at 12:06:00AM +0200, Carlo Caione wrote:
> Hi,
> I was debugging the problem with barebox and qemu-linaro as I
> described in a previous post.
> This is what I have discovered.
> 
> The problem is in the strlen function that seems to get corrupted
> runtime during barebox initialization. The problem seems related to
> the switch to SVC32 mode together with the __mmu_cache_flush
> implementation.
> Before setting the cpu to SVC32 mode, the Stack Pointer is correctly
> set to 0x4020fcb0, but, immediately after the writing in the cpsr
> register (__asm__ __volatile__("msr cpsr, %0" : : "r"(r));) the Stack
> Pointer (now R13_SVC) is in 0x40205cb0 that is in the middle of the
> .text section (and precisely in the middle of the strlen routine).
> The problem is that in the __mmu_cache_flush disassembly I have a huge
> push {r0, r1, r2, r3, r4, r5, r6, r7, r9, r10, r11} that overwrites
> the strlen function and corrupts the code.

Can you try and remove the call to __mmu_cache_flush in start.c?

I think this call shouldn't be there at all. A (pre-) bootloader should
always manage to call the next image with the caches properly flushed,
otherwise we are doomed in barebox anyway.

The problem with the armv7 __mmu_cache_flush implementation is that
it uses the stack which we haven't configured at that time.

I thought I had already wired up a patch for this, but it seems I
haven't.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
