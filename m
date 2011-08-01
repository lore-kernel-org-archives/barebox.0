Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnvhA-0006Xh-9O
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 16:50:25 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B3D9DFF9E64
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 18:51:18 +0200 (CEST)
Date: Mon, 1 Aug 2011 18:32:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110801163228.GM6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
	<20110801155459.GL31404@pengutronix.de>
	<20110801161229.GL6255@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110801161229.GL6255@game.jcrosoft.org>
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
Subject: Re: rework MMU support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:12 Mon 01 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:54 Mon 01 Aug     , Sascha Hauer wrote:
> > On Mon, Aug 01, 2011 at 03:26:43PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	This series reworks the barebox MMU support. We now use second
> > > 	level page tables which allows us to remap the dma coherent area
> > > 	dynamically. We don't have to map our sdram twice anymore which
> > > 	helps us on newer systems with big memory.
> > > 
> > > 	As a bonus there is no board specific MMU code anymore. All a board
> > > 	has to do to enable MMU support via Kconfig is to register its SDRAM banks
> > > 	at mem_initcall
> > > 
> > > The following changes since commit b821d73607cc6387b1ee588af97a44e8eb2b4fe2:
> > > 
> > >   Merge branch 'resource' of git://uboot.jcrosoft.org/barebox into next (2011-08-01 14:10:38 +0200)
> > > 
> > > are available in the git repository at:
> > > 
> > >   git://uboot.jcrosoft.org/barebox.git mmu
> > > 
> > > Jean-Christophe PLAGNIOL-VILLARD (2):
> > >       arm: introduce arm_add_mem_device to register dram device
> > >       init: introduce mem, mmu and postmmu initcall
> > > 
> > > Sascha Hauer (7):
> > >       ARM cache l2x0: depend on MMU
> > >       ARM: move armlinux_add_dram to location which is always compiled
> > >       ARM l2x0: make init function static inline if l2 is not available
> > >       ARM: pass size to dma_free_coherent
> > >       ARM boards: move sdram setup before mmu setup
> > >       ARM: rework MMU support
> > >       ARM boards: remove now unnecessary mmu calls
> > 
> > merged up to 7/9. The MMU rework needs some changes to v1 which I
> > haven't posted yet. It does not work correctly on armv7 as these
> > processors need slightly different second level page table entries.
> > 
> > Also, I added the appropriate KEEP directives to
> > include/asm-generic/barebox.lds.h to make this branch work. Would be
> > good if you could give your patches at least *some* testing.
> I've no armv7 availlable work fine
> 
> I test it on at91 and s3c and versatile work fine
> 
> but no mmu yet
>  and I compiled all ARM
> 
did'nt see the missing KEEP as I'm working on a really small version of
barebox with nothing inside to go done to less than 26K

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
