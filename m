Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpz5Q-0005kd-AO
 for barebox@lists.infradead.org; Wed, 15 Aug 2018 16:55:57 +0000
Received: by mail-it0-x242.google.com with SMTP id d9-v6so2591841itf.2
 for <barebox@lists.infradead.org>; Wed, 15 Aug 2018 09:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <20180815134659.32553-1-s.hauer@pengutronix.de>
 <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
In-Reply-To: <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 15 Aug 2018 09:55:32 -0700
Message-ID: <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 15, 2018 at 6:49 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Aug 15, 2018 at 03:46:59PM +0200, Sascha Hauer wrote:
> > Since 7ba0f2d299 arm_create_pte() flushes the page table entries itself
> > and it's no longer done in arch_remap_range(). Unfortunately it does
> > not flush the modified 1st level page table entry, but instead the base
> > of the page table. Fix it up.
> >
> > Fixes: 7ba0f2d299 ARM: mmu: fix cache flushing when replacing a section with a PTE
>
> Since the patch breaking it was the reason for creating v2018.07.1, this
> will be a reason for creating v2018.07.2 (and also v2018.08.1)
>
> I noticed misbehaviour when trying to sue network on a i.MX53 based
> board, here we got tronsmission timeouts. These are fixed with this patch
>

Heh, you beat me to it by a couple of hours! I came up with the same
patch debugging networking (and various others) issues on i.MX51 last
night and was about to submit it.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
