Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dezI2-0001gR-68
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 07:51:00 +0000
Message-ID: <1502178632.2934.20.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 08 Aug 2017 09:50:32 +0200
In-Reply-To: <20170807204505.3kbug5xotylgt5nu@zacate>
References: <20170807143927.1641-1-linux@rempel-privat.de>
 <20170807143927.1641-5-linux@rempel-privat.de>
 <20170807204505.3kbug5xotylgt5nu@zacate>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 05/13] net: ath79: add ag71xx Ethernet driver
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

Hi Peter,

Am Montag, den 07.08.2017, 23:45 +0300 schrieb Peter Mamonov:
> On Mon, Aug 07, 2017 at 04:39:19PM +0200, Oleksij Rempel wrote:
> > From: Yegor Yefremov <yegorslists@googlemail.com>
> > 
> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
[...]
> > +static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
> > +{
> > +	struct ag71xx *priv = edev->priv;
> > +	struct device_d *dev = priv->dev;
> > +	ag7240_desc_t *f = &priv->fifo_tx[priv->next_tx];
> > +	int i;
> > +
> 
> > +	/* flush */
> > +	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
> > +
> > +	f->pkt_start_addr = virt_to_phys(packet);
> 
> A couple of remarks regarding this code:
> 
> Despite the fact that this code should work fine, it violates the Linux DMA 
> API, which the Barebox tends to conform to. The problem is that the Barebox is 
> missing dma_map_*() functions, which should be used instead of virt_to_phys() 
> here.
> 
> Another DMA-related Barebox issue is the type of the first argument to 
> dma_sync_*() functions, which should be dma_addr_t (just like the return value 
> of dma_map_*() functions), instead of unsigned long.  This is of no importance 
> for 32 bit  architectures, however it will break for 64 bit targets.

A slight correction: unsigned long will work fine for pure 64bit
targets, as it maps to a 64bit type there. The only way this could break
is on 32bit LPAE targets, where long is a 32bit type, but the DMA
addresses could be above the 4GB mark.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
