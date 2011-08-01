Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qnow6-00051K-VR
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 09:37:23 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id BB922FFA3A4
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 11:38:16 +0200 (CEST)
Date: Mon, 1 Aug 2011 11:19:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110801091927.GE6255@game.jcrosoft.org>
References: <1312175092-26164-1-git-send-email-plagnioj@jcrosoft.com>
	<20110801080530.GA31404@pengutronix.de>
	<20110801080545.GD6255@game.jcrosoft.org>
	<20110801090956.GG31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110801090956.GG31404@pengutronix.de>
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
Subject: Re: [PATCH] arm: introduce arm_add_mem_device to register dram device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:09 Mon 01 Aug     , Sascha Hauer wrote:
> On Mon, Aug 01, 2011 at 10:05:45AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:05 Mon 01 Aug     , Sascha Hauer wrote:
> > > On Mon, Aug 01, 2011 at 07:04:52AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > this will automaticaly register the device to armlinux_add_dram
> > > > 
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > > diff --git a/include/driver.h b/include/driver.h
> > > > index b011f98..0faafe3 100644
> > > > --- a/include/driver.h
> > > > +++ b/include/driver.h
> > > > @@ -214,6 +214,11 @@ static inline struct device_d *add_mem_device(const char *name, resource_size_t
> > > >  				  IORESOURCE_MEM | flags, NULL);
> > > >  }
> > > >  
> > > > +#ifdef CONFIG_ARM
> > > > +struct device_d *arm_add_mem_device(const char* name, resource_size_t start,
> > > > +				    resource_size_t size);
> > > > +#endif
> > > > +
> > > 
> > > No ifdefs around function declarations please. Also, this should
> > > go somewhere under arch/arm/include.
> > armlinux?
> > > 
> > > BTW this conflicts with my mmu series I recently sent. Having this
> > > arm_add_mem_device function is a good thing, but now one of us has
> > > to do his series again :(
> > 
> > > For the mmu to just work on all boards I need a place where I know
> > > that all memory has been registered. For this I wanted to introduce
> > > a memory_initcall (we could also reuse console_initcall, but I thought
> > > having a dedicated initcall is cleaner). Then I could initialize the
> > > mmu in a later initcall.
> > I known but I wish we drop the mmu_init in the board at all
> > and manage it in a generic part
> 
> That's my goal aswell, but the mmu init needs to be done when the memory
> is registered but still no driver uses dma_alloc_coherent. Currently
> this place does not exist since every board does the memory registration
> at some random place.
> The mmu code can't remap sdram without knowing where it is.
yeah, so in te mmu rework we introduction a initcall for mem init
and an other othrer one (post_mem_init) where we do the mmu_init
if ok I rebase you patched over mine

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
