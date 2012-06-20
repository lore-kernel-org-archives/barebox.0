Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShGN0-00072b-TV
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 08:34:35 +0000
Date: Wed, 20 Jun 2012 10:34:06 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120620083406.GB25946@sig21.net>
References: <20120618150656.GA10624@sig21.net>
 <20120620072446.GI28394@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120620072446.GI28394@pengutronix.de>
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
Subject: Re: [PATCH RFC] spi: add support for dual and quad IO modes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 20, 2012 at 09:24:46AM +0200, Sascha Hauer wrote:
> On Mon, Jun 18, 2012 at 05:06:57PM +0200, Johannes Stezenbach wrote:
> > Some flashes and SPI masters support dual and quad IO modes
> > where data is transferred in parallel using two or four pins.
> > For now add this capability for mx25l25635e.
> > 
> > Signed-off-by: Johannes Stezenbach <js@sig21.net>
> > ---
> > 
> > I'm planning to submit a similar patch for Linux sometime
> > within the next month or so.  Maybe you want to wait
> > for the review comments there before including it in barebox,
> > but I'm posting this anyway in case someone wants to comment.
> > At the moment I'm not able to post the SPI master driver
> > which implements it.  I'm not sure which if any of the SPI
> > masters already included in barebox have the dual and
> > quad mode capability, but it's important for boot time.
> > BTW, I have checked all users of struct spi_transfer
> > properly initialize it to zero so adding the
> > multi_io field should not cause problems.
> 
> As long as we don't have a SPI master driver supporting multi io I think
> we should wait for the corresponding Linux code before applying this
> one.

Yes, I agree.  But it is also a hen/egg problem, with
no infrastructure support people either don't implement it
even when the hw supports it, or they just hack it into
their local tree and never tell anyone about it.
So I'm hoping someone interested will find this posting
and send a patch to support it in their SPI master. :-)

> > @@ -552,7 +566,7 @@ static const struct spi_device_id m25p_ids[] = {
> >  	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
> >  	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
> >  	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
> > -	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
> > +	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, DUAL_IO | QUAD_IO) },
> >  	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
> >  
> >  	/* Spansion -- single (large) sector size only, at least
> > @@ -788,6 +802,10 @@ static int m25p_probe(struct device_d *dev)
> >  	} else {
> >  		flash->erase_opcode = OPCODE_SE;
> >  	}
> > +	if ((info->flags & DUAL_IO) && (spi->master->flags & SPI_MASTER_DUAL_IO))
> > +		flash->dual_io = 1;
> > +	if ((info->flags & QUAD_IO) && (spi->master->flags & SPI_MASTER_QUAD_IO))
> > +		flash->quad_io = 1;
> 
> You enable dual/quad io when both the EEPROM and the master are capable
> of doing so. Should we ask the PCB designer aswell if the board actually
> has 2/4 lines connected (that is, add a flag to platform data)?

Dual mode uses the normal SI/SO lines, these should always be connected.
For quad mode a platform flag might be needed.


Thanks
Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
