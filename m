Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFiBB-0004h8-AC
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 09:41:02 +0000
Received: from mail607.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B8783FF9D89
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 10:49:30 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <0DFF8E71-A184-4034-AADB-F026C8FCE3CD@jcrosoft.com>
Date: Wed, 13 Mar 2013 17:33:25 +0800
Message-Id: <F539E82C-6DE5-43D7-AF37-9DFF1EC7FDCC@jcrosoft.com>
References: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
 <20130313090336.GD1568@game.jcrosoft.org>
 <20130313091950.GD3891@pengutronix.de>
 <0DFF8E71-A184-4034-AADB-F026C8FCE3CD@jcrosoft.com>
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
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>


On Mar 13, 2013, at 5:32 PM, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> 
> On Mar 13, 2013, at 5:19 PM, Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:
> 
>> On Wed, Mar 13, 2013 at 10:03:36AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>> On 09:48 Wed 13 Mar     , Steffen Trumtrar wrote:
>>>> The function gem_recv implements a buffer "ring" that stops at filling level 10.
>>>> That means, when the driver is used as gem, it stops receiving after exactly
>>>> 10 packets. Instead of implementing macb_recv twice, use it also for the gem
>>>> part. If there needs to be an extra recv function for the gigabit case, it can
>>>> be added than.
>>>> Also, first set the type of device (macb or gem) and then use functions that
>>>> use this info.
>>>> 
>>>> Tested on a Zynq7000.
>>> NACK
>>> 
>>> on gem we can receive the packet in one buffer the gem_recv implement this
>>> the macb can only receive splited buffer and then you have to reconstruct the
>>> packet
>>> 
>> 
>> Okay. That is nice and all. But try receiving more than just 10 packets with
>> the current implementation.
> 
> yes the drivers bufferize only 10 packets in the DMA which should be enough for barebox
> if we want we can increase the dma buffer size by increasing RX_NB_PACKET

and this is valid for mach_recv and gem_recv btw

Best Regards,
J.
> 
> Best Regards,
> J.
> 
>> 
>> Regards,
>> str
>> 
>>> Best Regards,
>>> J.
>>>> 
>>>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>>> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
>>>> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>>>> ---
>>>> drivers/net/macb.c | 47 +++++++----------------------------------------
>>>> 1 file changed, 7 insertions(+), 40 deletions(-)
>>>> 
>>>> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
>>>> index 8602437..a12eea7 100644
>>>> --- a/drivers/net/macb.c
>>>> +++ b/drivers/net/macb.c
>>>> @@ -169,37 +169,6 @@ static void reclaim_rx_buffers(struct macb_device *macb,
>>>> 	macb->rx_tail = new_tail;
>>>> }
>>>> 
>>>> -static int gem_recv(struct eth_device *edev)
>>>> -{
>>>> -	struct macb_device *macb = edev->priv;
>>>> -	unsigned int rx_tail = macb->rx_tail;
>>>> -	void *buffer;
>>>> -	int length;
>>>> -	u32 status;
>>>> -
>>>> -	dev_dbg(macb->dev, "%s\n", __func__);
>>>> -
>>>> -	for (;;) {
>>>> -		barrier();
>>>> -		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
>>>> -			return -1;
>>>> -
>>>> -		barrier();
>>>> -		status = macb->rx_ring[rx_tail].ctrl;
>>>> -		length = MACB_BFEXT(RX_FRMLEN, status);
>>>> -		if (status & MACB_BIT(RX_SOF)) {
>>>> -			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
>>>> -			net_receive(buffer, length);
>>>> -			macb->rx_ring[rx_tail].ctrl &= ~MACB_BIT(RX_USED);
>>>> -			barrier();
>>>> -		}
>>>> -		rx_tail++;
>>>> -		macb->rx_tail++;
>>>> -	}
>>>> -
>>>> -	return 0;
>>>> -}
>>>> -
>>>> static int macb_recv(struct eth_device *edev)
>>>> {
>>>> 	struct macb_device *macb = edev->priv;
>>>> @@ -619,11 +588,6 @@ static int macb_probe(struct device_d *dev)
>>>> 
>>>> 	macb->phy_flags = pdata->phy_flags;
>>>> 
>>>> -	macb_init_rx_buffer_size(macb, PKTSIZE);
>>>> -	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
>>>> -	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
>>>> -	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
>>>> -
>>>> 	macb->regs = dev_request_mem_region(dev, 0);
>>>> 
>>>> 	/*
>>>> @@ -638,12 +602,15 @@ static int macb_probe(struct device_d *dev)
>>>> 
>>>> 	clk_enable(macb->pclk);
>>>> 
>>>> -	if (macb_is_gem(macb))
>>>> -		edev->recv = gem_recv;
>>>> -	else
>>>> -		edev->recv = macb_recv;
>>>> 	macb->is_gem = read_is_gem(macb);
>>>> 
>>>> +	macb_init_rx_buffer_size(macb, PKTSIZE);
>>>> +	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
>>>> +	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
>>>> +	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
>>>> +
>>>> +	edev->recv = macb_recv;
>>>> +
>>>> 	macb_reset_hw(macb);
>>>> 	ncfgr = macb_mdc_clk_div(macb);
>>>> 	ncfgr |= MACB_BIT(PAE);		/* PAuse Enable */
>>>> -- 
>>>> 1.8.2.rc2
>>>> 
>>> 
>> 
>> -- 
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
