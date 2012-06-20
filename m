Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShG1a-0003qW-CC
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 08:12:27 +0000
Date: Wed, 20 Jun 2012 10:11:58 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120620081158.GA25946@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-7-git-send-email-js@sig21.net>
 <20120620071301.GG28394@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120620071301.GG28394@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Wed, Jun 20, 2012 at 09:13:01AM +0200, Sascha Hauer wrote:
> On Mon, Jun 18, 2012 at 04:48:00PM +0200, Johannes Stezenbach wrote:
> > Straight forward port of Synopsys Designware ethernet
> > driver from u-boot v2012.04.01.
...
> > +config DRIVER_NET_DESIGNWARE
> > +	bool "Designware Universal MAC ethernet driver"
> > +	select MIIDEV
> > +	depends on HAS_DESIGNWARE_ETH
> > +	help
> > +	  This option enables support for the Synopsys
> > +	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
> 
> This driver uses DMA, but it has no cache flush/invalidation. At least
> on ARM this means that it won't work with MMU enabled, so we should
> either add the following to Kconfig:
> 
> 	depends on !ARM || !MMU
> 
> Or add the dma_* functions. I added hints where to add these functions
> inline, but I can't test this.

Well, the driver was tested on a platform with ARM926EJ-S CPU
and works -- because it uses dma_alloc_coherent().  That
might not be optimal wrt performance, but it matches what
the u-boot driver is doing.  Do you want me to convert it
to use cachable memory and dma flush/inv?


> > +	start = get_time_ns();
> > +	while (readl(&mac_p->miiaddr) & MII_BUSY) {
> > +		if (is_timeout(start, 10 * MSECOND)) {
> > +			dev_err(&priv->netdev.dev, "MDIO timeout\n");
> > +			return -EIO;
> > +		}
> > +		udelay(10);
> 
> We do not need udelay in timeout loops as we are polling anyway.

OK, will fix

> > +#if defined(CONFIG_DW_ALTDESCRIPTOR)
> 
> Do we need this? If yes, we should add an (invisible, board selectable)
> option to Kconfig.
> 
> In U-Boot this is described with:
> 
> 1. CONFIG_DW_ALTDESCRIPTOR
> 	Define this to use the Alternate/Enhanced Descriptor configurations.
> 
> Does this mean this is an alternative way to use this hardware or does
> this mean it's another version (or IP core configuration) of this hardware?

This depends on IP core configuration.  (The major difference of the
alternate descriptor is that it has a larger length field
with can support jumbo packets.)

I wasn't sure about Kconfig because of the arch/arm/board/*/config.h.
To me it looked like config.h is a good place for this?


Thanks,
Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
