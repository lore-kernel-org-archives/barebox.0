Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdOQZ-0002pc-HK
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 15:17:45 +0000
Received: by pzk28 with SMTP id 28so789205pzk.36
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 08:17:35 -0700 (PDT)
Message-ID: <4E10880C.4050706@gmail.com>
Date: Mon, 04 Jul 2011 00:17:32 +0900
From: Shinya Kuribayashi <skuribay@gmail.com>
MIME-Version: 1.0
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
	<20110701002815.GC14408@game.jcrosoft.org>
	<20110701192909.ab9b39c1.antonynpavlov@gmail.com>
In-Reply-To: <20110701192909.ab9b39c1.antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/3 v3] Add MIPS arch support to barebox
To: antonynpavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On 7/2/11 12:29 AM, antonynpavlov wrote:
>> IIRC we will need to preserve ra for NMI case
>
> How this preserved value can be used?

Not used right now.

> We have no need to preserve ra because we have no full-grown exception handlers.

True.

> The MIPS cpu reset entry point is 0xbfc00000 (KSEG1, unmapped and
> uncached region).
> So code after _start label run from 0xbfc00000.

Starting from 0xBFC00000 might be a primary boot scenario in MIPS
systems, but in my opinion it's just one of the use cases.  Memory-
type flash devices are getting less used with newer MIPS SoCs.

> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
> 	setup_c0_status_reset
>
> 	/*
> 	 * Config: K0 should be set to the desired Cache Coherency
> 	 * Algorithm (CCA) prior to accessing Kseg0.
> 	 */
> 	mfc0	t0, CP0_CONFIG
> 	/* T.B.D. */
> 	mtc0	t0, CP0_CONFIG
>
> 	/*
> 	 * Config: (4KEm and 4KEp cores only) KU and K23 should be set to
> 	 * the desired CCA for USeg/KUSeg and KSeg2/3 respectively prior to
> 	 * accessing those regions.
> 	 */
> 	mfc0	t0, CP0_CONFIG
> 	/* T.B.D. */
> 	mtc0	t0, CP0_CONFIG
> ---- Shinya-san's code end ----
>
> does this code initialise KSEG0 cache mode?
> does this code change CP0_CONFIG at all?
> My answer is "no".

Correct.  Please keep in mind I didn't do anything set up in start.S.
I was thinking around how to generalize the initialization procedures
how we could maintain/support various MIPS processors, and what shape
of code would be reasonable (and scalable).

> But bellow, you can see switching to KSEG0 (label 1f linked to 0x9fc00xxx) ...
>
> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
> 	/* Switch to CKSEG0 segment */
> 	la	t0, 1f
> 	/* T.B.D. -- Convert an addree of the label '1f' into CKSEG0 */
> 	jr	t0
>
> 1:
> ---- Shinya-san's code end ----

It's intended to be converted to CKSEG0, but it's not necessarily
0x9fc00xxx.

> Let's see relocate code:
> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
> relocate:
> 	ADR	t0, _start, t1			# t0<- current position of code
> 	PTR_LI	t1, TEXT_BASE
> 	beq	t0, t1, stack_setup
> 	 nop
> ---- Shinya-san's code end ----
>
> This code try to check if relocation needs. It try to compute _start<<current>>
> address.
>
> But
>    * _start link address is KSEG0 address 0x9fc00000;
>    * we have already switched to KSEG0, so _start<<current>>  address
> is 0x9fc00000 too.

No.  ADR tries to compute 'PC-relative' _start address.  If it starts
from physical 0xbfc0000, t0 is set up to 0xbfc0000 even if _start link
address is CKSEG0.  If it starts from physical 0xA0100000, t0 is set
up to 0xA0100000, and in that case _start link address is supposed to
be set to 0x80100000.  The 'link address' is supposed to be used
_after_ relocation.   You see?

I'm afraid there might be something missing in my prototyoe, though.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
