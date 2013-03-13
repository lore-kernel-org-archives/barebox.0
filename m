Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFiiN-0002bG-D2
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:15:20 +0000
Date: Wed, 13 Mar 2013 11:15:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130313101514.GY1906@pengutronix.de>
References: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
 <20130313090336.GD1568@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130313090336.GD1568@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] net: macb: remove gem_recv and reorder probe
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Wed, Mar 13, 2013 at 10:03:36AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:48 Wed 13 Mar     , Steffen Trumtrar wrote:
> > The function gem_recv implements a buffer "ring" that stops at filling level 10.
> > That means, when the driver is used as gem, it stops receiving after exactly
> > 10 packets. Instead of implementing macb_recv twice, use it also for the gem
> > part. If there needs to be an extra recv function for the gigabit case, it can
> > be added than.
> > Also, first set the type of device (macb or gem) and then use functions that
> > use this info.
> > 
> > Tested on a Zynq7000.
> NACK
> 
> on gem we can receive the packet in one buffer the gem_recv implement this
> the macb can only receive splited buffer and then you have to reconstruct the
> packet

The gem received function was never used...

> >  static int macb_recv(struct eth_device *edev)
> >  {
> >  	struct macb_device *macb = edev->priv;
> > @@ -619,11 +588,6 @@ static int macb_probe(struct device_d *dev)
> >  
> >  	macb->phy_flags = pdata->phy_flags;
> >  
> > -	macb_init_rx_buffer_size(macb, PKTSIZE);
> > -	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
> > -	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
> > -	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
> > -
> >  	macb->regs = dev_request_mem_region(dev, 0);
> >  
> >  	/*
> > @@ -638,12 +602,15 @@ static int macb_probe(struct device_d *dev)
> >  
> >  	clk_enable(macb->pclk);
> >  
> > -	if (macb_is_gem(macb))

... because macb_is_gem() is used here ...

> > -		edev->recv = gem_recv;
> > -	else
> > -		edev->recv = macb_recv;
> >  	macb->is_gem = read_is_gem(macb);

... but the variable is initialized here. Up to this point macb_is_gem()
will return 0.

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
