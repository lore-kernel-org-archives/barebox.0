Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OHZRO-0000VU-R0
	for barebox@lists.infradead.org; Thu, 27 May 2010 09:31:52 +0000
Date: Thu, 27 May 2010 11:31:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100527093132.GC23664@pengutronix.de>
References: <4BFD34A9.6030008@flatfrog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BFD34A9.6030008@flatfrog.com>
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
Subject: Re: OMAP 3530 arch_shutdown "undefined instruction"
To: Orjan Friberg <of@flatfrog.com>
Cc: barebox@lists.infradead.org

Hi Orjan,

On Wed, May 26, 2010 at 04:48:09PM +0200, Orjan Friberg wrote:
> Hi,
>
> I'm trying to use barebox as both the 2nd and 3rd stage bootloader (boot  
> ROM being the 1st) on an OMAP 3530 (BeagleBoard).
>
> Every go <address> command in the 2nd stage, regardless of whether I  
> have uploaded anything to this address or not, is met with a
>
> go 0x80e80000
> ## Starting application at 0x80E80000 ...
> undefined instruction
> pc : [<40208b00>]    lr : [<40203a34>]
> sp : 87bff21c  ip : 00000028  fp : 87bffa4d
> r10: 00000000  r9 : 00000000  r8 : 87bff64d
> r7 : 87bffe44  r6 : 00000002  r5 : 4020b1e8  r4 : 80e80000
> r3 : 00000000  r2 : 00000001  r1 : 0000843f  r0 : 4020ae50
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> Resetting CPU ...
>
> which is in arch_shutdown:
>
> 40208af8 <arch_shutdown>:
> 40208af8:       e3a03000        mov     r3, #0  ; 0x0
> 40208afc:       ee073f17        mcr     15, 0, r3, cr7, cr7, {0}
> 40208b00:       e12fff1e        bx      lr
>
> This is from the 2010.05.0 snapshot, though it seems that code hasn't  
> changed in the latest trunk (arch/arm/cpu/cpu.c):
>
> 	/* flush I/D-cache */
> 	i = 0;
> 	asm ("mcr p15, 0, %0, c7, c7, 0": :"r" (i));
>
>

Seems this does not work on Cortex Processors. Can you try replacing
this with the following please:

	asm volatile (
		"bl __mmu_cache_flush;"
		"bl __mmu_cache_off;"
		:
		:
		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
	);

This should select the right cache flush functions.

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
