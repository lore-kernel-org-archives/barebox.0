Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fqCaw-000088-Qi
 for barebox@lists.infradead.org; Thu, 16 Aug 2018 07:21:24 +0000
Date: Thu, 16 Aug 2018 09:21:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180816072109.orchkumwut4iwasv@pengutronix.de>
References: <20180815134659.32553-1-s.hauer@pengutronix.de>
 <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
 <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: MMU: fix wrong dma_flush_range in arm_create_pte()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 15, 2018 at 09:55:32AM -0700, Andrey Smirnov wrote:
> On Wed, Aug 15, 2018 at 6:49 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Wed, Aug 15, 2018 at 03:46:59PM +0200, Sascha Hauer wrote:
> > > Since 7ba0f2d299 arm_create_pte() flushes the page table entries itself
> > > and it's no longer done in arch_remap_range(). Unfortunately it does
> > > not flush the modified 1st level page table entry, but instead the base
> > > of the page table. Fix it up.
> > >
> > > Fixes: 7ba0f2d299 ARM: mmu: fix cache flushing when replacing a section with a PTE
> >
> > Since the patch breaking it was the reason for creating v2018.07.1, this
> > will be a reason for creating v2018.07.2 (and also v2018.08.1)
> >
> > I noticed misbehaviour when trying to sue network on a i.MX53 based
> > board, here we got tronsmission timeouts. These are fixed with this patch
> >
> 
> Heh, you beat me to it by a couple of hours! I came up with the same
> patch debugging networking (and various others) issues on i.MX51 last
> night and was about to submit it.

So I guess I can take this as a Tested-by ;)

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
