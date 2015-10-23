Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpZ4J-00053H-Be
 for barebox@lists.infradead.org; Fri, 23 Oct 2015 09:55:29 +0000
Date: Fri, 23 Oct 2015 11:55:03 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20151023095503.GA1166@pengutronix.de>
References: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
 <1444829979-1100-4-git-send-email-s.trumtrar@pengutronix.de>
 <1444832190.13276.18.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444832190.13276.18.camel@pengutronix.de>
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
Subject: Re: [PATCH 4/6] crypto: add i.MX6 CAAM support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

On Wed, Oct 14, 2015 at 04:16:30PM +0200, Lucas Stach wrote:
> Am Mittwoch, den 14.10.2015, 15:39 +0200 schrieb Steffen Trumtrar:
> > Add the i.MX6 crypto core CAAM.
> > 
> > The core itself works with jobrings in which descriptors can be
> > queued/dequeued for processing.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  
> [...]
> 
> > +/*
> > + * Init JobR independent of platform property detection
> > + */
> > +static int caam_jr_init(struct device_d *dev)
> > +{
> > +	struct caam_drv_private_jr *jrp;
> > +	int i, error;
> > +
> > +	jrp = dev->priv;
> > +
> > +	error = caam_reset_hw_jr(dev);
> > +	if (error)
> > +		return -EINVAL;
> > +
> > +	error = -ENOMEM;
> > +	jrp->inpring = dma_alloc_coherent(sizeof(*jrp->inpring) * JOBR_DEPTH,
> > +					  DMA_ADDRESS_BROKEN);
> > +	if (!jrp->inpring)
> > +		return error;
> > +
> > +	jrp->outring = dma_alloc_coherent(sizeof(*jrp->outring) *
> > +					  JOBR_DEPTH, DMA_ADDRESS_BROKEN);
> > +	if (!jrp->outring)
> > +		goto out_free_inpring;
> 
> No new code with DMA_ADDRESS_BROKEN please.
> 
> > +
> > +	jrp->entinfo = xzalloc(sizeof(*jrp->entinfo) * JOBR_DEPTH);
> > +	if (!jrp->entinfo)
> > +		goto out_free_outring;
> > +
> > +	for (i = 0; i < JOBR_DEPTH; i++)
> > +		jrp->entinfo[i].desc_addr_dma = !0;
> > +
> > +	/* Setup rings */
> > +	jrp->inp_ring_write_index = 0;
> > +	jrp->out_ring_read_index = 0;
> > +	jrp->head = 0;
> > +	jrp->tail = 0;
> > +
> > +	wr_reg64(&jrp->rregs->inpring_base, (dma_addr_t) jrp->inpring);
> > +	wr_reg64(&jrp->rregs->outring_base, (dma_addr_t) jrp->outring);
> 
> This should use the real DMA address, provided by dma_alloc_coherent
> above. Hint: it also gets rid of the cast. ;)
> 
> > +	wr_reg32(&jrp->rregs->inpring_size, JOBR_DEPTH);
> > +	wr_reg32(&jrp->rregs->outring_size, JOBR_DEPTH);
> > +
> > +	jrp->ringsize = JOBR_DEPTH;
> > +
> > +	return 0;
> > +
> > +out_free_outring:
> > +	dma_free_coherent(jrp->outring, 0, sizeof(struct jr_outentry) * JOBR_DEPTH);
> > +out_free_inpring:
> > +	dma_free_coherent(jrp->inpring, 0, sizeof(dma_addr_t) * JOBR_DEPTH);
> > +	dev_err(dev, "can't allocate job rings for %d\n", jrp->ridx);
> > +	return error;
> > +}
> > +
> [...]
> 

You are right (obviously). I will change that.

Thanks,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
