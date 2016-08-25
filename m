Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcoID-0007Ti-9F
 for barebox@lists.infradead.org; Thu, 25 Aug 2016 06:37:38 +0000
Date: Thu, 25 Aug 2016 08:37:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160825063714.GJ20657@pengutronix.de>
References: <1472041390-19259-1-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqFGc8r+kGrKinM3_y+3GPAz=-=nfpRyUiwSSvQSvVXuZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFGc8r+kGrKinM3_y+3GPAz=-=nfpRyUiwSSvQSvVXuZA@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: vector_table: Fix creation of second level page table
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Peter Kardos <kardos.peter.sk@gmail.com>

On Wed, Aug 24, 2016 at 09:07:22AM -0700, Andrey Smirnov wrote:
> On Wed, Aug 24, 2016 at 5:23 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > The second level page tables can only start at a 1MiB section boundary,
> > so instead of calling arm_create_pte() with the high vector address
> > (which is 0xffff0000, not 1MiB aligned) we have to call it with
> > 0xfff00000 to correctly create a second level page table. The vectors
> > themselves worked as expected with the old value, but the memory around
> > it did not do a 1:1 mapping anymore. This breaks SoCs which have
> > peripherals in that area, for example Atmel SoCs like the AT91RM9200.
> >
> 
> Would you mind re-wording it as something to the effect of: "...
> mapping anymore, breaking SoCs which also have peripherals in that
> area..."? The original sentence structure, to me, reads as if this
> patch/commit introduces a change that breaks Atmel SoCs.

Sure.

> 
> > Fixes: f6b77fe9: ARM: Rework vector table setup
> >
> > Reported-by: Peter Kardos <kardos.peter.sk@gmail.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> > index a31bce4..2b70866 100644
> > --- a/arch/arm/cpu/mmu.c
> > +++ b/arch/arm/cpu/mmu.c
> > @@ -307,7 +307,7 @@ static void create_vector_table(unsigned long adr)
> >                 vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
> >                 pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
> >                          vectors, adr);
> > -               exc = arm_create_pte(adr);
> > +               exc = arm_create_pte(adr & ~(SZ_1M - 1));
> 
> ALIGN_DOWN(adr, SZ_1M) ?

Yes, that's better. I just sent an updated version.

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
