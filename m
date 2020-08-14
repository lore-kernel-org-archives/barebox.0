Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Urm-000634-Ov
 for barebox@lists.infradead.org; Fri, 14 Aug 2020 08:15:11 +0000
Date: Fri, 14 Aug 2020 10:15:04 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200814081504.c4ulevbjfiu4e2oh@tellis.lin.mbt.kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
 <20200811151637.17705-3-jmaselbas@kalray.eu>
 <20200814062103.GC13023@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200814062103.GC13023@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Sascha,

On Fri, Aug 14, 2020 at 08:21:03AM +0200, Sascha Hauer wrote:
> Hi Jules,
> 
> On Tue, Aug 11, 2020 at 05:16:26PM +0200, Jules Maselbas wrote:
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
> > +	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%pad\n",
> > +		 *pid, xfer_len, num_packets, (void *)dma_addr);
> > +
> > +	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
> > +
> > +	hctsiz = (xfer_len << TSIZ_XFERSIZE_SHIFT)
> > +		| (1 << TSIZ_PKTCNT_SHIFT)
> > +		| (*pid << TSIZ_SC_MC_PID_SHIFT);
> 
> Any reason to ignore num_packets here and hardcode 1 to the packet
> count? This breaks transfers > 512 bytes in my case.
Yes this is a mistake, it should be num_packets instead of 1.
This must be an error I've made when porting the driver from u-boot.

Should I send a fixup or a new patchset ?

Thanks !

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
