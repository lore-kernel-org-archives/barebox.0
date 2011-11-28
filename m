Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUvs9-0007uX-93
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 07:43:30 +0000
Date: Mon, 28 Nov 2011 08:43:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111128074319.GO27267@pengutronix.de>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lir18ag7.fsf@free.fr>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sun, Nov 27, 2011 at 11:30:48PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Hmmm...
> >
> > I just made your patches work on my pcm027 board (If you haven't fixed
> > the serial driver already: now I have patches for this). Without MMU
> > everything is fine. With MMU I had to disable the zero page because
> > otherwise the cfi flash driver will bail out with a NULL pointer deref.
> > With this I noticed that when I start barebox from U-Boot that the
> > driver does not recognize the flash.
> 
> I don't understand how that works. As the zero page is remapped onto the vectors
> memory, how can a driver access the NOR chip ?
> 
> My understanding is that barebox makes a flat 1:1 mapping, and then replaces
> the first section with a 2 levels translation, where :
>  - the first 4096 bytes are mapped onto the malloc'd vectors
>  - the remaining 1MBytes-4096Bytes are still in a flat 1:1 mapping
> 
> If that is correct, you loose your ability to access address space 0x00000000 -
> 0x00001000. How can you use the CFI after that ?

That's why I had to disable this mapping. Most other SoCs do not have
flash on 0x0. The i.MX processors for example have their internal ROM
there.

> 
> And as a consequence, I'm a bit afraid that my disk-on-chip, having it's memory
> mapped to 0x0 - 0x2000, will be difficult to convert ... I must think of a way
> in there.

Your options are:

- Add some switch to disable the 0x0 mapping.
- Add ioremap support.

I think we should go for the former for now. Real ioremap support
requires more thinking about how we want to do it. Will all drivers have
to do it or only the cfi driver?

> 
> > 		@ Data cache might be active.
> > 		@ Be sure to flush kernel binary out of the cache,
> > 		@ whatever state it is, before it is turned off.
> > 		@ This is done by fetching through currently executed
> > 		@ memory to be sure we hit the same cache.
> > 		bic	r2, pc, #0x1f
> > 		add	r3, r2, #0x10000	@ 64 kb is quite enough...
> > 1:		ldr	r0, [r2], #32
> > 		teq	r2, r3
> > 		bne	1b
> > 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
> > 		mcr	p15, 0, r0, c7, c7, 0	@ flush I & D caches
> >
> > 		@ disabling MMU and caches
> > 		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
> > 		bic	r0, r0, #0x05		@ clear DC, MMU
> > 		bic	r0, r0, #0x1000		@ clear Icache
> > 		mcr	p15, 0, r0, c1, c0, 0
> >
> > I don't know what's going on here.
> 
> I don't know either. All I see is that the datacache is filled so that stale
> values are flushed out, and then it's flushed again through normal coproc
> operations.
> Note that there's an erratum in the XScale series that says that turning off the
> cache leaves "dirty bits" set, and reenabling it later might cause havoc. That
> would be a good reason for UBoot the read the 64kb before turning off the MMU,
> wouldn't it ?

Yes, it would. Does your first stage loader use the MMU?

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
