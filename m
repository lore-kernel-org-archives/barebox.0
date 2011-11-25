Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTjEo-00021s-09
 for barebox@lists.infradead.org; Fri, 25 Nov 2011 00:01:55 +0000
Date: Fri, 25 Nov 2011 01:01:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111125000145.GE27267@pengutronix.de>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d3chxoxp.fsf@free.fr>
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

On Thu, Nov 24, 2011 at 09:09:38PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> > I remember Marc had some trouble with the mmu/cache implementation on
> > PXA. I don't know the details though. Maybe you have to dig through
> > the manuals/kernel code to find out the differences between the normal
> > arm v5 and pxa.
> 
> Ah, I know what happens now, and it's tricky.
> First of all, you're right, there's a flat uncached mapping, I was misled by
> the function name "create_section", without looking closely at it. I thought
> it created the first section, not all the 4096 1MBytes section of a 4GB
> address space.
> It would deserve a "create_sections" name, in plural form.

Agreed.

> 
> Now, for the serial UDC not working, there comes the fun.
> What's happening is that I'm using a default environment, with the init
> script in [1]. This script has an error somewhere.
> In barebox_startup(), we have :
>    if (!stat("/env/bin/init", &s)) {
>       run_command("source /env/bin/init", 0);
> 
> And here is the trickery:
>  - in the NOMMU case, the run_command() returns, and the code continues to the
>    eternal loop of run_shell(), which calls console.getc(), which calls
>    poller(), which call the UDC poll method
>    => the gadget does work
>    => I have a console, hurray !
> 
>  - in the MMU case, the run_command() never returns, and the poller method is
>    never called. I traced that with my leds.
>    => the gadget does *not* work
> 
> So the problem was not the IO mapping, but a difference in run_command() between
> MMU and non-MMU config. Moreover, in non-MMU case, once my console is connected,
> I see a message :
> > running /env/bin/init...
> > syntax error
> I the MMU case, as the gadget doesn't work, I'm blind, so I can't really tell
> what is happening and which is the impact of MMU over run_command()...

Hmmm...

I just made your patches work on my pcm027 board (If you haven't fixed
the serial driver already: now I have patches for this). Without MMU
everything is fine. With MMU I had to disable the zero page because
otherwise the cfi flash driver will bail out with a NULL pointer deref.
With this I noticed that when I start barebox from U-Boot that the
driver does not recognize the flash. The following code from
arch/arm/boot/compressed/head-xscale.S helped:

		@ Preserve r8/r7 i.e. kernel entry values

		@ Data cache might be active.
		@ Be sure to flush kernel binary out of the cache,
		@ whatever state it is, before it is turned off.
		@ This is done by fetching through currently executed
		@ memory to be sure we hit the same cache.
		bic	r2, pc, #0x1f
		add	r3, r2, #0x10000	@ 64 kb is quite enough...
1:		ldr	r0, [r2], #32
		teq	r2, r3
		bne	1b
		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
		mcr	p15, 0, r0, c7, c7, 0	@ flush I & D caches

		@ disabling MMU and caches
		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
		bic	r0, r0, #0x05		@ clear DC, MMU
		bic	r0, r0, #0x1000		@ clear Icache
		mcr	p15, 0, r0, c1, c0, 0

I don't know what's going on here.

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
