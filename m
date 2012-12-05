Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgDGL-0008Ik-Eh
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 11:35:38 +0000
Date: Wed, 5 Dec 2012 12:35:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205113533.GE10369@pengutronix.de>
References: <1354622643-7777-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205094344.GC10369@pengutronix.de>
 <lyd2yo3h7z.fsf@ensc-virt.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lyd2yo3h7z.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: Re: [PATCH] ARM: give more detailed information about data aborts
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 11:50:56AM +0100, Enrico Scholz wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >> -	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
> >> -
> >> -	printf("unable to handle %s at address 0x%08x\n",
> >> -			far < PAGE_SIZE ? "NULL pointer dereference" :
> >> -			"paging request", far);
> >> +	if (!IS_ENABLED(CONFIG_VERBOSE_EXCEPTIONS)) {
> >> +		printf("data abort\n");
> >
> > Why don't you keep the original message here? The fault address is a very
> > useful information.
> 
> I think it is cleaner to implement a minimal + verbose variant, than a
> little-bit-minimal + verbose variant.

The faulting address shouldn't be dropped from the message. Also I like
to keep the "NULL pointer dereference" string. Please do not change the
message above at all, only print additional information if configured
in.

> 
> I am not sure since when (ARM architecture wise) FAR and DFSR (introduced
> by my patch) are available.  Value of FAR depends on the fault reason
> (e.g. it is invalid for imprecise external aborts or debug events) so
> printing FAR without DFSR might be misleading.

That of course must be checked. This option shouldn't be enabled when
not available on that CPU

> 
> 
> >> --- a/common/Kconfig
> >> +++ b/common/Kconfig
> >> @@ -668,6 +668,12 @@ config DEBUG_LL
> >>  	help
> >>  	  Enable this to get low level debug messages during barebox initialization.
> >>  
> >> +config VERBOSE_EXCEPTIONS
> >> +	bool "decode processor specific exceptions"
> >> +	default y
> >> +	help
> >> +	  Enable this to give out more detailed information about data aborts.
> >
> > This option should be in arch/arm/Kconfig since it's ARM specific.
> 
> I do not think that verbose exception messages are an ARM-only thing.
> atm, it is implemented for ARM only but similar code can be written for
> other architectures probably.

It could, but until this happens it should be ARM specific. We can
consolidate this should other architectures implement something like
this, but until then we shouldn't bother users with no-op options.

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
