Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=flatfrog.com)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OHHu7-0001TS-Jo
	for barebox@lists.infradead.org; Wed, 26 May 2010 14:48:20 +0000
Message-ID: <4BFD34A9.6030008@flatfrog.com>
Date: Wed, 26 May 2010 16:48:09 +0200
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: OMAP 3530 arch_shutdown "undefined instruction"
To: barebox@lists.infradead.org

Hi,

I'm trying to use barebox as both the 2nd and 3rd stage bootloader (boot 
ROM being the 1st) on an OMAP 3530 (BeagleBoard).

Every go <address> command in the 2nd stage, regardless of whether I 
have uploaded anything to this address or not, is met with a

go 0x80e80000
## Starting application at 0x80E80000 ...
undefined instruction
pc : [<40208b00>]    lr : [<40203a34>]
sp : 87bff21c  ip : 00000028  fp : 87bffa4d
r10: 00000000  r9 : 00000000  r8 : 87bff64d
r7 : 87bffe44  r6 : 00000002  r5 : 4020b1e8  r4 : 80e80000
r3 : 00000000  r2 : 00000001  r1 : 0000843f  r0 : 4020ae50
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
Resetting CPU ...

which is in arch_shutdown:

40208af8 <arch_shutdown>:
40208af8:       e3a03000        mov     r3, #0  ; 0x0
40208afc:       ee073f17        mcr     15, 0, r3, cr7, cr7, {0}
40208b00:       e12fff1e        bx      lr

This is from the 2010.05.0 snapshot, though it seems that code hasn't 
changed in the latest trunk (arch/arm/cpu/cpu.c):

	/* flush I/D-cache */
	i = 0;
	asm ("mcr p15, 0, %0, c7, c7, 0": :"r" (i));


This is compiled with the CodeSourcery 2009q1 tool chain.

Commenting out the call to arch_shutdown makes the go command work 
without any obvious deficiencies, but that doesn't seem like the right 
way to do it.

(I haven't tried the latest trunk as it doesn't compile.)

Thanks for any suggestions,
Orjan

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
