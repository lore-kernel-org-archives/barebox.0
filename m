Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyAw1-0000r5-2o
 for barebox@lists.infradead.org; Wed, 22 Jul 2020 09:21:10 +0000
Date: Wed, 22 Jul 2020 11:21:06 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200722092106.qdqz44coh33yud47@tellis.lin.mbt.kalray.eu>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
 <20200721120600.15114-3-jmaselbas@kalray.eu>
 <c6c0ba75-68dc-6977-2c5f-77eabe36a63d@pengutronix.de>
 <20200722091235.l6zwavdfsz7c5lh4@tellis.lin.mbt.kalray.eu>
 <f1b04e58-742e-ad6d-61f3-2b91e43e4183@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1b04e58-742e-ad6d-61f3-2b91e43e4183@pengutronix.de>
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
Subject: Re: [PATCH v3 02/14] usb: dwc2: Add host controller driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 22, 2020 at 11:18:39AM +0200, Ahmad Fatoum wrote:
> On 7/22/20 11:12 AM, Jules Maselbas wrote:
> > On Wed, Jul 22, 2020 at 08:36:25AM +0200, Ahmad Fatoum wrote:
> >> On 7/21/20 2:05 PM, Jules Maselbas wrote:
> >>> +static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
> >>> +			  u8 *pid, int in, void *buffer, int num_packets,
> >>> +			  int xfer_len, int *actual_len, int odd_frame)
> >>> +{
> >>> +	uint32_t hctsiz, hcchar, sub;
> >>> +	dma_addr_t dma_addr;
> >>> +	int ret = 0;
> >>> +
> >>> +	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
> >>> +				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
> >>> +
> >>> +	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%llx\n",
> >>> +			*pid, xfer_len, num_packets, dma_addr);
> >>
> >> Use %da for printing dma_addr, otherwise on 32-bit builds with #define DEBUG,
> >> garbage would be read here.
> > Yup sounds good, from what i've seen in vsprintf.c it's '%ad' to print
> > dma_addr_t.
> 
> Sorry, I misread the code.
> Apparently, it's neither. It should be %pad for dma_addr_t.
> 
oh! you're right.
Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
