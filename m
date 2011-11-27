Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUnFS-0005Db-5o
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 22:30:59 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
Date: Sun, 27 Nov 2011 23:30:48 +0100
Message-ID: <87lir18ag7.fsf@free.fr>
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

> Hmmm...
>
> I just made your patches work on my pcm027 board (If you haven't fixed
> the serial driver already: now I have patches for this). Without MMU
> everything is fine. With MMU I had to disable the zero page because
> otherwise the cfi flash driver will bail out with a NULL pointer deref.
> With this I noticed that when I start barebox from U-Boot that the
> driver does not recognize the flash.

I don't understand how that works. As the zero page is remapped onto the vectors
memory, how can a driver access the NOR chip ?

My understanding is that barebox makes a flat 1:1 mapping, and then replaces
the first section with a 2 levels translation, where :
 - the first 4096 bytes are mapped onto the malloc'd vectors
 - the remaining 1MBytes-4096Bytes are still in a flat 1:1 mapping

If that is correct, you loose your ability to access address space 0x00000000 -
0x00001000. How can you use the CFI after that ?

And as a consequence, I'm a bit afraid that my disk-on-chip, having it's memory
mapped to 0x0 - 0x2000, will be difficult to convert ... I must think of a way
in there.

> 		@ Data cache might be active.
> 		@ Be sure to flush kernel binary out of the cache,
> 		@ whatever state it is, before it is turned off.
> 		@ This is done by fetching through currently executed
> 		@ memory to be sure we hit the same cache.
> 		bic	r2, pc, #0x1f
> 		add	r3, r2, #0x10000	@ 64 kb is quite enough...
> 1:		ldr	r0, [r2], #32
> 		teq	r2, r3
> 		bne	1b
> 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
> 		mcr	p15, 0, r0, c7, c7, 0	@ flush I & D caches
>
> 		@ disabling MMU and caches
> 		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
> 		bic	r0, r0, #0x05		@ clear DC, MMU
> 		bic	r0, r0, #0x1000		@ clear Icache
> 		mcr	p15, 0, r0, c1, c0, 0
>
> I don't know what's going on here.

I don't know either. All I see is that the datacache is filled so that stale
values are flushed out, and then it's flushed again through normal coproc
operations.
Note that there's an erratum in the XScale series that says that turning off the
cache leaves "dirty bits" set, and reenabling it later might cause havoc. That
would be a good reason for UBoot the read the 64kb before turning off the MMU,
wouldn't it ?

Moreover, another erratum says that the "mcr" disabling the MMU should be in the
first word of a cache line. If not, the ARM core _could_ be hung depending on
timings ... Errata are such fun :)

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
