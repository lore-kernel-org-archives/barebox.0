Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVIqK-00061k-Ul
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 08:15:09 +0000
Date: Tue, 29 Nov 2011 09:15:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111129081501.GF27267@pengutronix.de>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
 <87d3cc87o5.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d3cc87o5.fsf@free.fr>
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

On Mon, Nov 28, 2011 at 06:43:06PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > That's why I had to disable this mapping. Most other SoCs do not have
> > flash on 0x0. The i.MX processors for example have their internal ROM
> > there.
> Ah, I see.
> 
> >> And as a consequence, I'm a bit afraid that my disk-on-chip, having it's memory
> >> mapped to 0x0 - 0x2000, will be difficult to convert ... I must think of a way
> >> in there.
> >
> > Your options are:
> >
> > - Add some switch to disable the 0x0 mapping.
> > - Add ioremap support.
> >
> > I think we should go for the former for now. Real ioremap support
> > requires more thinking about how we want to do it. Will all drivers have
> > to do it or only the cfi driver?
> I think that only cfi and disk-on-chips drivers will have that problem, as being
> mapped (from an memory bus address POV) to address 0 is bound to boot code,
> which relies on some kind of memory (ROM, flash, ...).
> 
> And disabling 0x0 mapping will make the MMU booting quite fragile IMHO.
> Consider the following example:
>  - a flash/ROM is mapped at address 0 for booting the ARM SoC
>  - as requested by ARM, the first words of the flash are the vectors, with the
>  first one being the reset vector into a code that is supposed to run in a
>  *non-MMU* context
>  - the ARM core starts, and IPL is loaded
>  - IPL loads SPL (barebox)
>  - barebox remaps 0x0 to vectors at malloc'd 0xa0003f00 (former solution)
>  - barebox switches into MMU on
>  - a bug happens in barebox (urgh!!!) and the exception vector is triggered
>  ===> here, the flash/ROM vector is used
>  ===> this vectors assumes running from MMU-disabled environment
>  - the code running in the IPL triggers an exception because it's in MMU
>  environment
>   => eternal cycle begins

We use high vectors at 0xfff00000, so there won't be vectors at 0x0. the
0x0 mapping is only used to catch NULL pointer derefs.
That said, being able to catch NULL pointers is a very good thing,
especially when there is flash at 0x0 which might be accidently
overwritten by some code acting on NULL pointers.

> 
> I think either :
>  - we implement ioremap
>  - or we forbid (on ARM) MMU with board requiring 0x0 iomapped device
> 
> I would prefer a simple ioremap solution of the like:
>  - a mach-XXX declares an adress-space for io-remapping (contiguous, section
>  aligned and of size multiple of 1MBytes)
>    => if not => MMU config is not possible
>              => ioremap() gives back the flat physical address
>    => if yes => MMU config is possible
>              => ioremap() gives back an entry in io-remapping address space
>  - ioremap() is embedded in dev_request_mem_region()
> 
> What do you think ?

I think this problem is not MMU related. Without MMU we can't remap and
we can't catch NULL pointer derefs anyway.
With MMU we could just remap the flash in board code and pass the
remapped address as resource to the cfi driver. While I think the
cleanest solution would be to use ioremap in all drivers (and make
this a no-op on most boards) I don't think it's worth it at the moment.

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
