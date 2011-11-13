Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RPeoG-0007vp-Vk
 for barebox@lists.infradead.org; Sun, 13 Nov 2011 18:29:42 +0000
Received: from beldin.local (unknown [82.243.122.54])
 by smtp6-g21.free.fr (Postfix) with ESMTP id DC4A3822E2
 for <barebox@lists.infradead.org>; Sun, 13 Nov 2011 19:29:33 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun, 13 Nov 2011 19:29:32 +0100
Message-ID: <8739drj2pf.fsf@free.fr>
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
Subject: Barebox newbie questions : arch/arm/{plat,mach} split and interrupts
To: barebox@lists.infradead.org

Hi,

As I'm a bit new to barebone, and after reading a bit the code for the ARM
architectures, I have questions :

 (1) Why is there not anywhere a arch/arm/plat-xxx ?
     My understanding is that normally, platform generic code (like gpio
     handling for XScale processors) should go there.
     The machine specific code (ie. PXA27x, PXA25x, etc ...) would still go to
     arch/arm/mach-pxa.

 (2) In arch/arm, I understand that interruptions are never used (do_irq()
     implementation is quite clear about that). Is that a design decision and
     why ?
     If so, I suppose that active polling for each device is required. Am I
     right here ?

 (3) MMU: one can enable or not the MMU. AFAIR, the MMU is required to enable
     both I-Cache and D-Cache on ARM achitectures. Are there any other obvious
     advantages I'm missing in the case of a bootloader ?

 (4) Is it possible to have 2 outputs as result of compilation of barebox for a
     board ?
     Let me be clearer. My board, mioa701, has a disk-on-chip on which it can
     boot. Barebox will be the SPL (written from barebox.bin). The IPL, which is
     limited to 2048 bytes, will only initialize RAM, GPIOs, and load the
     SPL. Is there a way for me to add the generation of a 'mioa701_ipl.bin' out
     of a 'mioa701_ipl.S' ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
