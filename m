Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3OJ6-0007iM-Ff
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:02:17 +0000
Date: Thu, 7 Feb 2013 11:02:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130207100213.GR1906@pengutronix.de>
References: <1360148498.214727698@f366.mail.ru>
 <20130206121134.GE1906@pengutronix.de>
 <1360229165.358494212@f382.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360229165.358494212@f382.i.mail.ru>
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
Subject: Re: NOR memory driver fail with MMU enabled
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 01:26:05PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> > > I have a problem with NOR flash when enabling MMU.
> > > Probably this happen due NOR start address is 0x0.
> > > Should we a remap memory addresses same as we do it for kernel? 
> > > Or can someone tell what could be the problem?
> > 
> > This is because the zero page is set to faulting so that you can
> > catch NULL pointer exceptions. You could disable this (see
> > vectors_init), but then you can't catch NULL pointer exceptions
> > anymore. So the best you can do is use map_io_sections and map
> > your flash to some free region, maybe like this:
> > 
> > map_io_sections(0x0, (void *)SZ_1M, SZ_32M);
> > 
> > Then register your flash flash with address 1M instead of 0x0.
> 
> So, this problem is gone. I found a next one MMU-related problem.
> When I turn on option MMU_EARLY, barebox is entered to an endless
> loop or die, I am not sure. Probably problem is in "create_sections"
> procedure from mmu.c, since I tried to add some debug before this
> procedure and we reach this mark, after this procedure we dead.
> Can you get me a point for find a solution?
> Below is a debug output with CONFIG_MMU_EARLY turned on.
> 
> barebox 2013.02.0-00235-g2de8827-dirty #25 Thu Feb 7 12:54:06 MSK 2013
> 
> 
> Board: Cirrus Logic CLEP7212
> initcall-> 0xc0788518
> register_device: platform
> initcall-> 0xc079c988
> register_device: fs
> initcall-> 0xc079e04c
> initcall-> 0xc0794264
> initcall-> 0xc079c958
> xmalloc c0380008 (size 1024)
> initcall-> 0xc079e170
> initcall-> 0xc07886fc
> register_driver: clps711x_serial
> initcall-> 0xc079e004
> xmalloc c0380410 (size 136)
> register_device: clps711x_serial0
> xmalloc c03804a0 (size 192)
> register_device: cs0
> xmalloc c0380568 (size 28)
> xmalloc c03805a8 (size 28)
> initcall-> 0xc078709c
> register_device: global
> initcall-> 0xc079dec4
> xmalloc c03805e8 (size 24)
> request_region ok: 0xc0000000:0xc1ffffff
> xmalloc c0380608 (size 36)
> xmalloc c0380640 (size 36)
> xmalloc c0380678 (size 136)
> register_device: mem0
> initcall-> 0xc079fd24
> request_region ok: 0xc07f4003:0xc07f8002
> xmalloc c0380708 (size 36)
> mmu: ttb: 0xc07f4003

ttb shouldn't be unaligned. Whatever the reason for that is it won't
work. The ARM-ARM has this:

> Reading from CP15 register 2 returns the physical address of the
> currently active first-level translation table in bits[31:14] and an
> UNPREDICTABLE value in bits[13:0]. The CRm and opcode2 fields are
> ignored when reading CP15 register 2 and should be zero.  Writing to
> CP15 register 2 updates the physical address of the currently active
> first-level translation table from the value in bits[31:14] of the
> written value. Bits[13:0] must be written as zero or as a value
> previously read from bits[13:0] of this register. The CRm and opcode2
> fields are ignored when writing CP15 register 2 and should be zero.

It seems we have to mask out bits[13:0] from the ttb. Appearantly these
were zero on the boards I tested this.

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
