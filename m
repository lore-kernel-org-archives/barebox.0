Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6T5N-00033j-LM
 for barebox@lists.infradead.org; Fri, 14 Aug 2020 06:21:07 +0000
Date: Fri, 14 Aug 2020 08:21:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200814062103.GC13023@pengutronix.de>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
 <20200811151637.17705-3-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811151637.17705-3-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v4 02/13] usb: dwc2: Add host controller driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Jules,

On Tue, Aug 11, 2020 at 05:16:26PM +0200, Jules Maselbas wrote:
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
> +	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%pad\n",
> +		 *pid, xfer_len, num_packets, (void *)dma_addr);
> +
> +	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
> +
> +	hctsiz = (xfer_len << TSIZ_XFERSIZE_SHIFT)
> +		| (1 << TSIZ_PKTCNT_SHIFT)
> +		| (*pid << TSIZ_SC_MC_PID_SHIFT);

Any reason to ignore num_packets here and hardcode 1 to the packet
count? This breaks transfers > 512 bytes in my case.

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
