Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShGTU-0007sq-7I
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 08:41:17 +0000
Date: Wed, 20 Jun 2012 10:41:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120620084113.GN28394@pengutronix.de>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-7-git-send-email-js@sig21.net>
 <20120620071301.GG28394@pengutronix.de>
 <20120620081158.GA25946@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120620081158.GA25946@sig21.net>
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
Subject: Re: [PATCH 6/6] drivers/net: add designware driver
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On Wed, Jun 20, 2012 at 10:11:58AM +0200, Johannes Stezenbach wrote:
> Hi Sascha,
> 
> On Wed, Jun 20, 2012 at 09:13:01AM +0200, Sascha Hauer wrote:
> > On Mon, Jun 18, 2012 at 04:48:00PM +0200, Johannes Stezenbach wrote:
> > > Straight forward port of Synopsys Designware ethernet
> > > driver from u-boot v2012.04.01.
> ...
> > > +config DRIVER_NET_DESIGNWARE
> > > +	bool "Designware Universal MAC ethernet driver"
> > > +	select MIIDEV
> > > +	depends on HAS_DESIGNWARE_ETH
> > > +	help
> > > +	  This option enables support for the Synopsys
> > > +	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
> > 
> > This driver uses DMA, but it has no cache flush/invalidation. At least
> > on ARM this means that it won't work with MMU enabled, so we should
> > either add the following to Kconfig:
> > 
> > 	depends on !ARM || !MMU
> > 
> > Or add the dma_* functions. I added hints where to add these functions
> > inline, but I can't test this.
> 
> Well, the driver was tested on a platform with ARM926EJ-S CPU
> and works -- because it uses dma_alloc_coherent().  That
> might not be optimal wrt performance, but it matches what
> the u-boot driver is doing.  Do you want me to convert it
> to use cachable memory and dma flush/inv?

Ah, my bad. I thought you only allocated the descriptor ring with
dma_alloc_coherent, but indeed you also used it for allocating the
buffers. It's fine then.

> 
> This depends on IP core configuration.  (The major difference of the
> alternate descriptor is that it has a larger length field
> with can support jumbo packets.)
> 
> I wasn't sure about Kconfig because of the arch/arm/board/*/config.h.
> To me it looked like config.h is a good place for this?

I prefer to use Kconfig whenever possible. Using config.h should be
avoided.

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
