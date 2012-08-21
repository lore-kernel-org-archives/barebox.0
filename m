Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3iLa-0006Ep-GS
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 06:53:55 +0000
Date: Tue, 21 Aug 2012 08:51:34 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120821065134.GA15318@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-3-git-send-email-jlu@pengutronix.de>
 <20120820144048.GW6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120820144048.GW6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 02/13] scripts: add tool to create image for SPI boot on
 AM35xx
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2012 at 04:40:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -186,6 +186,14 @@ endif
> >  
> >  all: $(KBUILD_IMAGE)
> >  
> > +barebox.spi: barebox.bin
> > +	@echo "  SPI    " $@
> > +	$(Q)scripts/mk-am35xx-spi-image barebox.bin > barebox.spi
> you need to use cmd_ style and be in sync wtih the next branch

Ok.

> > +
> > +	/* image size */
> > +	temp = htobe32((uint32_t)pos);
> > +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
> > +
> > +	/* memory address */
> > +	temp = htobe32(addr);
> > +	fwrite(&temp, sizeof(uint32_t), 1, stdout);
> why this??
> 
> you just need to create a PRE_IMAGE
> 
> so no need ot this

What do you mean by PRE_IMAGE?

The image needs to be endian-swapped. Is that possible with the linker?

Thanks,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
