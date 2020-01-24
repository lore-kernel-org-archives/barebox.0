Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv01B-00080R-7q
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 14:33:06 +0000
Date: Fri, 24 Jan 2020 15:32:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200124143259.7f4hxax2onus7giq@pengutronix.de>
References: <20200122154908.22635-1-jmaselbas@kalray.eu>
 <20200122154908.22635-2-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122154908.22635-2-jmaselbas@kalray.eu>
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
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Jules,

I can confirm the driver works on the RaspberryPi with some adjustments,
see below. Some more comments inline.

> +static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
> +{
> +	int ret;
> +	uint32_t hcint, hctsiz;
> +
> +	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
> +	if (ret)
> +		dwc2_err(dwc2, "%s: Timeout! Channel not halted\n", __func__);

This is not an error, but a normal usecase. This should be:

	if (ret) {
		uint32_t val = dwc2_readl(dwc2, HCCHAR(hc));
		dwc2_writel(dwc2, val | HCCHAR_CHDIS, HCCHAR(hc));
		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
		return ret;
	}

Background is that in barebox we do not have any completion handlers for
packets. For networking the semantics for a network drivers receive
function is "Look if a packet is there and return immediately if not".
The usbnet driver accomplishes this by queueing a bulk transfer with a
small timeout. The -ETIMEDOUT return value is just a sign that no packet
is received.

The code above is necessary to stop the channel in a way that it can be
started again later. I had to do the same fix in the dwc2 driver I
ported.


> +
> +	hcint = dwc2_readl(dwc2, HCINT(hc));
> +
> +	if (hcint & HCINTMSK_AHBERR)
> +		dwc2_err(dwc2, "%s: AHB error during internal DMA access\n",
> +			   __func__);
> +
> +	if (hcint & HCINTMSK_XFERCOMPL) {
> +		hctsiz = dwc2_readl(dwc2, HCTSIZ(hc));
> +		*sub = (hctsiz & TSIZ_XFERSIZE_MASK) >> TSIZ_XFERSIZE_SHIFT;
> +		*tgl = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;
> +
> +		dwc2_dbg(dwc2, "%s: HCINT=%08x sub=%u toggle=%d\n", __func__,
> +			 hcint, *sub, *tgl);
> +		return 0;
> +	}
> +
> +	if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN))
> +		return -EAGAIN;
> +
> +	dwc2_dbg(dwc2, "%s: Unknown channel status: (HCINT=%08x)\n", __func__,
> +		 hcint);
> +	return -EINVAL;
> +}
> +
> +static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
> +			  u8 *pid, int in, void *buffer, int num_packets,
> +			  int xfer_len, int *actual_len, int odd_frame)
> +{
> +	uint32_t hctsiz, hcchar, sub;
> +	dma_addr_t dma_addr;
> +	int ret = 0;
> +
> +	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
> +				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
> +
> +	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%llx\n",
> +			*pid, xfer_len, num_packets, dma_addr);
> +
> +	if (!in)
> +		dma_sync_single_for_device(dma_addr, xfer_len, DMA_TO_DEVICE);

dma_map_single() already includes the necessary sync operations. No need
to repeat them.

> +
> +	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
> +
> +	hctsiz = (xfer_len << TSIZ_XFERSIZE_SHIFT)
> +		| (1 << TSIZ_PKTCNT_SHIFT)
> +		| (*pid << TSIZ_SC_MC_PID_SHIFT);
> +
> +	dwc2_writel(dwc2, hctsiz, HCTSIZ(hc));
> +
> +	/* Clear old interrupt conditions for this dwc2 channel. */
> +	dwc2_writel(dwc2, 0x3fff, HCINT(hc));
> +
> +	/* Set dwc2 channel enable after all other setup is complete. */
> +	hcchar = dwc2_readl(dwc2, HCCHAR(hc));
> +	hcchar &= ~(HCCHAR_MULTICNT_MASK | HCCHAR_CHDIS);
> +	hcchar |= (1 << HCCHAR_MULTICNT_SHIFT) | HCCHAR_CHENA;
> +	if (odd_frame)
> +		hcchar |= HCCHAR_ODDFRM;
> +	else
> +		hcchar &= ~HCCHAR_ODDFRM;
> +	dwc2_writel(dwc2, hcchar, HCCHAR(hc));
> +
> +	ret = wait_for_chhltd(dwc2, hc, &sub, pid);
> +	if (ret < 0)
> +		goto exit;
> +
> +	if (in) {
> +		xfer_len -= sub;
> +		dma_sync_single_for_cpu(dma_addr, xfer_len, DMA_FROM_DEVICE);

Same here.

> +int dwc2_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
> +				void *buffer, int len, int timeout)

The timeout values should be honoured, for the reason I described above
with the usbnet driver.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
