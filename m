Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw86a-00049Y-13
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 17:23:21 +0000
Date: Mon, 27 Jan 2020 18:23:12 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200127172312.pwkse4ggrmnv4smd@tellis.lin.mbt.kalray.eu>
References: <20200122154908.22635-1-jmaselbas@kalray.eu>
 <20200122154908.22635-2-jmaselbas@kalray.eu>
 <20200124143259.7f4hxax2onus7giq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124143259.7f4hxax2onus7giq@pengutronix.de>
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
Subject: Re: [PATCH v2 1/7] usb: dwc2: Add host controller driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Fri, Jan 24, 2020 at 03:32:59PM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> I can confirm the driver works on the RaspberryPi with some adjustments,
> see below. Some more comments inline.
> 
> > +static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
> > +{
> > +	int ret;
> > +	uint32_t hcint, hctsiz;
> > +
> > +	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
> > +	if (ret)
> > +		dwc2_err(dwc2, "%s: Timeout! Channel not halted\n", __func__);
> 
> This is not an error, but a normal usecase. This should be:
> 
> 	if (ret) {
> 		uint32_t val = dwc2_readl(dwc2, HCCHAR(hc));
> 		dwc2_writel(dwc2, val | HCCHAR_CHDIS, HCCHAR(hc));
> 		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
> 		return ret;
> 	}
Okay I will make this change, but should this return if the last call to
wait_bit_set() is successful?
 
> Background is that in barebox we do not have any completion handlers for
> packets. For networking the semantics for a network drivers receive
> function is "Look if a packet is there and return immediately if not".
> The usbnet driver accomplishes this by queueing a bulk transfer with a
> small timeout. The -ETIMEDOUT return value is just a sign that no packet
> is received.
> 
> The code above is necessary to stop the channel in a way that it can be
> started again later. I had to do the same fix in the dwc2 driver I
> ported.
> 
> 
[...]
> > +
> > +static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
> > +			  u8 *pid, int in, void *buffer, int num_packets,
> > +			  int xfer_len, int *actual_len, int odd_frame)
> > +{
> > +	uint32_t hctsiz, hcchar, sub;
> > +	dma_addr_t dma_addr;
> > +	int ret = 0;
> > +
> > +	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
> > +				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
> > +
> > +	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%llx\n",
> > +			*pid, xfer_len, num_packets, dma_addr);
> > +
> > +	if (!in)
> > +		dma_sync_single_for_device(dma_addr, xfer_len, DMA_TO_DEVICE);
> 
> dma_map_single() already includes the necessary sync operations. No need
> to repeat them.
This will be removed

> > +
> > +	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
> > +
> > +	hctsiz = (xfer_len << TSIZ_XFERSIZE_SHIFT)
> > +		| (1 << TSIZ_PKTCNT_SHIFT)
> > +		| (*pid << TSIZ_SC_MC_PID_SHIFT);
> > +
> > +	dwc2_writel(dwc2, hctsiz, HCTSIZ(hc));
> > +
> > +	/* Clear old interrupt conditions for this dwc2 channel. */
> > +	dwc2_writel(dwc2, 0x3fff, HCINT(hc));
> > +
> > +	/* Set dwc2 channel enable after all other setup is complete. */
> > +	hcchar = dwc2_readl(dwc2, HCCHAR(hc));
> > +	hcchar &= ~(HCCHAR_MULTICNT_MASK | HCCHAR_CHDIS);
> > +	hcchar |= (1 << HCCHAR_MULTICNT_SHIFT) | HCCHAR_CHENA;
> > +	if (odd_frame)
> > +		hcchar |= HCCHAR_ODDFRM;
> > +	else
> > +		hcchar &= ~HCCHAR_ODDFRM;
> > +	dwc2_writel(dwc2, hcchar, HCCHAR(hc));
> > +
> > +	ret = wait_for_chhltd(dwc2, hc, &sub, pid);
> > +	if (ret < 0)
> > +		goto exit;
> > +
> > +	if (in) {
> > +		xfer_len -= sub;
> > +		dma_sync_single_for_cpu(dma_addr, xfer_len, DMA_FROM_DEVICE);
> 
> Same here.
Ack

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
