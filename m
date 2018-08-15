Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpwBJ-0007fJ-Cv
 for barebox@lists.infradead.org; Wed, 15 Aug 2018 13:49:51 +0000
Date: Wed, 15 Aug 2018 15:49:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
References: <20180815134659.32553-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180815134659.32553-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 15, 2018 at 03:46:59PM +0200, Sascha Hauer wrote:
> Since 7ba0f2d299 arm_create_pte() flushes the page table entries itself
> and it's no longer done in arch_remap_range(). Unfortunately it does
> not flush the modified 1st level page table entry, but instead the base
> of the page table. Fix it up.
> 
> Fixes: 7ba0f2d299 ARM: mmu: fix cache flushing when replacing a section with a PTE

Since the patch breaking it was the reason for creating v2018.07.1, this
will be a reason for creating v2018.07.2 (and also v2018.08.1)

I noticed misbehaviour when trying to sue network on a i.MX53 based
board, here we got tronsmission timeouts. These are fixed with this patch

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
