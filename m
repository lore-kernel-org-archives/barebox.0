Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3o8T-0003PV-0g
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 13:04:46 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1249DFF9175
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2012 15:11:45 +0200 (CEST)
Date: Tue, 21 Aug 2012 15:04:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120821130456.GH6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-3-git-send-email-jlu@pengutronix.de>
 <20120820144048.GW6271@game.jcrosoft.org>
 <20120821065134.GA15318@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120821065134.GA15318@pengutronix.de>
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
Subject: Re: [PATCH 02/13] scripts: add tool to create image for SPI boot
 on AM35xx
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:51 Tue 21 Aug     , Jan Luebbe wrote:
> On Mon, Aug 20, 2012 at 04:40:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > > --- a/arch/arm/Makefile
> > > +++ b/arch/arm/Makefile
> > > @@ -186,6 +186,14 @@ endif
> > >  
> > >  all: $(KBUILD_IMAGE)
> > >  
> > > +barebox.spi: barebox.bin
> > > +	@echo "  SPI    " $@
> > > +	$(Q)scripts/mk-am35xx-spi-image barebox.bin > barebox.spi
> > you need to use cmd_ style and be in sync wtih the next branch
> 
> Ok.
> 
> > > +
> > > +	/* image size */
> > > +	temp = htobe32((uint32_t)pos);
> > > +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
> > > +
> > > +	/* memory address */
> > > +	temp = htobe32(addr);
> > > +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
> > why this??
> > 
> > you just need to create a PRE_IMAGE
> > 
> > so no need ot this
> 
> What do you mean by PRE_IMAGE?
> 
> The image needs to be endian-swapped. Is that possible with the linker?
you need to check the ld manual

but I guess you can can via c macro

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
