Delivery-date: Wed, 29 Nov 2023 07:51:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8EPn-00Cx6n-1Y
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:51:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8EPn-0006EW-EF
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:51:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-reply-to:Date:Subject:Cc:To:From:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1FYRxyo8O6JJgIkr4NlMmxyA8azTtZDDlyAY5jIRy+A=; b=2vunBYX4lGu0bty2UGCwiTTfqT
	fdi23gKzD7AUyD3nRI1UEMg9wnDL/QfFPqgTmzJSwMqgtCOQvQlhJQoj+wLgnL1K1hXuJ4KfON9Ao
	/kNzk6fqc1ZNFqL0/CZqbtRXrqEnEj+c0wbtA1Ek/Sd8oQX2lWZCTv1OPXG7JM/MwhCH7v2vU9odK
	sStdU8zNiLMaIICpzOeVg0hlGcx4X4bElafUyCiW6rq7Onmp7ZAXg77rZvN7ePlFeU3SaCGPTMLKm
	x66aP+Tpj4N3bGA2h1lD2mZjsdIG6VE+xRi/63AJ58QQxpndhj5rPAVByXKMAtfMTDW3J/yFsJg+r
	lslMNxuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8EOV-007Gp0-1V;
	Wed, 29 Nov 2023 06:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8EOS-007GoM-0I
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:49:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8EOQ-000653-Mj; Wed, 29 Nov 2023 07:49:54 +0100
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
 <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
 <3e38519f5f47bfeeed8416748b5493dd1d99a408.camel@pengutronix.de>
User-agent: mu4e 1.10.7; emacs 29.1
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 29 Nov 2023 07:48:06 +0100
In-reply-to: <3e38519f5f47bfeeed8416748b5493dd1d99a408.camel@pengutronix.de>
Message-ID: <875y1l5a0d.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_224956_156152_6DF8AF6A 
X-CRM114-Status: GOOD (  19.98  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 2023-11-28 at 17:56 +01, Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Dienstag, dem 28.11.2023 um 17:29 +0100 schrieb Steffen Trumtrar:
>> rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
>> flushed before it is initially used.
>>
>> Map the rx_buffer when the macb is initialized and unmap it on ether_halt.
>>
>> While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>  drivers/net/macb.c | 37 ++++++++++++++++++++++++++++---------
>>  1 file changed, 28 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
>> index 260c1e806a..92f78f7253 100644
>> --- a/drivers/net/macb.c
>> +++ b/drivers/net/macb.c
>> @@ -63,10 +63,13 @@ struct macb_device {
>>  	unsigned int		tx_head;
>>
>>  	void			*rx_buffer;
>> +	dma_addr_t		rx_buffer_phys;
>>  	void			*tx_buffer;
>>  	void			*rx_packet_buf;
>>  	struct macb_dma_desc	*rx_ring;
>> +	dma_addr_t		rx_ring_phys;
>>  	struct macb_dma_desc	*tx_ring;
>> +	dma_addr_t		tx_ring_phys;
>>  	struct macb_dma_desc	*gem_q1_descs;
>>
>>  	int			rx_buffer_size;
>> @@ -181,7 +184,7 @@ static int gem_recv(struct eth_device *edev)
>>  		barrier();
>>  		status = macb->rx_ring[macb->rx_tail].ctrl;
>>  		length = MACB_BFEXT(RX_FRMLEN, status);
>> -		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
>> +		buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;
>>  		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
>>  					DMA_FROM_DEVICE);
>>  		net_receive(edev, buffer, length);
>> @@ -221,7 +224,7 @@ static int macb_recv(struct eth_device *edev)
>>  		}
>>
>>  		if (status & MACB_BIT(RX_EOF)) {
>> -			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
>> +			buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;
>>  			length = MACB_BFEXT(RX_FRMLEN, status);
>>  			if (wrapped) {
>>  				unsigned int headlen, taillen;
>> @@ -232,12 +235,12 @@ static int macb_recv(struct eth_device *edev)
>>  				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
>>  							headlen, DMA_FROM_DEVICE);
>>  				memcpy(macb->rx_packet_buf, buffer, headlen);
>> -				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
>> +				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer_phys,
>
> You can drop all those (unsigned long) casts in calls to
> dma_sync_single, now that you are passing a argument of the proper
> dma_addr_t type.
>

Thanks, will drop.

>>  							taillen, DMA_FROM_DEVICE);
>>  				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
>>  				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
>>  							headlen, DMA_FROM_DEVICE);
>> -				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer,
>> +				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer_phys,
>>  							taillen, DMA_FROM_DEVICE);
>>  				net_receive(edev, macb->rx_packet_buf, length);
>>  			} else {
>> @@ -377,7 +380,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
>>  	return 0;
>>  }
>>
>> -static void macb_init(struct macb_device *macb)
>> +static int macb_init(struct macb_device *macb)
>>  {
>>  	unsigned long paddr, val = 0;
>>  	int i;
>> @@ -386,6 +389,11 @@ static void macb_init(struct macb_device *macb)
>>  	 * macb_halt should have been called at some point before now,
>>  	 * so we'll assume the controller is idle.
>>  	 */
>> +	macb->rx_buffer_phys = dma_map_single(macb->dev, macb->rx_buffer,
>> +					      macb->rx_buffer_size * macb->rx_ring_size,
>> +					      DMA_TO_DEVICE);
>
> The RX buffer is used to hold data written by the device, so it must be
> mapped with DMA_FROM_DEVICE.
>

Argh, of course :(


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


