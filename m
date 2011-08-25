Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwXCw-00082n-F5
	for barebox@lists.infradead.org; Thu, 25 Aug 2011 10:30:49 +0000
Date: Thu, 25 Aug 2011 12:30:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110825103043.GT31404@pengutronix.de>
References: <CAA4bVAFYh0z-DCYbB8WoZZkBHszDHjmrYAF2D89drCSvSdCKZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFYh0z-DCYbB8WoZZkBHszDHjmrYAF2D89drCSvSdCKZQ@mail.gmail.com>
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
Subject: Re: [RFC] arm naming inconsistance
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Aug 12, 2011 at 05:28:17PM +0400, Antony Pavlov wrote:
> Hi!
> 
> Barebox has an hierarchy for supported stuff:
> 
>  arch -> mach
> 
>     arch \in {arm, x86, nios2 ...}
> 
>  for arch=arm, mach \in { at91, ims, msx, ... versatile }
> 
>  Also there is the 'board', the lowest level of hierarchy.
> 
>  E.g. for mach=at91, board \in { at91sam9m10g45ek, pm9263 ...}
> 
> But there are strange things in arch/arm/Kconfig and
> arch/arm/cpu/start.c:
> 
> #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
>         arch_init_lowlevel();
> #endif
> 
> At the first glance all ok: if arch has lowlevel init, the do
> arch_init_lowlevel().
> But arch_init_lowlevel() is not __per-arch__ function, but
> __per-mach__ function!
> It is used in at91 and omap mach.

for the at91rm9200 the arch_init_lowlevel() simply should go away.
It sets up the exception vectors which is now done by the mmu code
anyway, at least if it'S enabled. If not, the code should still go
somewhere else. At this early stage we can't do anything with
exceptions since printf is not working.

For Omap this function looks indeed architecture specific (Soc specific
would be a better name, architecture is used for far too many things)
Most of the things here look rather useless. It should be cleaned up
and SoC specific bits should be moved to arch/arm/mach-omap
CONFIG_OMAP3_COPY_CLOCK_SRAM isn't set in any configuration and I have
now idea why I should enable this option. The cache invalidation is
repeated in the generic code.

> 
> #ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
>         board_init_lowlevel();
> #endif
> 
> Here we have a more bizarre thing: if __mach__ do low level init then
> do __board__ low level init!
> 
> In arch/arm/Kconfig we have the same strange things:
> 
> config ARCH_VERSATILE
>         bool "ARM Versatile boards (ARM926EJ-S)"
>         select CPU_ARM926T
> 
> But versatile is not arch, it's a mach!
> 
> By this examples one can see that the conception of architecture
> ('arch') is mixed up with the conception of machine ('mach').

The confusion about architecture and machine has a long tradition.
Arguably an architecture is ARM or x86, but in the arm world
architecture is often used for what we better call SoCs. Sometimes
MACH is used for different SoCs aswell (in the kernel we had MACH_MX21
and MACH_MX27 for a long time, or in both the kernel we have
arch/arm/mach-* instead of arch/arm/soc-*). We should better generally
use 'SoC' and 'board' to make clear what we mean. Mass renaming this
stuff is not a good idea, but at least we should use the right words
in email conversation.

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
