Delivery-date: Wed, 29 Nov 2023 07:26:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8E1y-00Cvly-17
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:26:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8E1y-0003vA-Bp
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:26:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rfNjbVl6eBmNzqdzi9b1iJU2+3/0tOCNwxU60gdLcg0=; b=k/SQk8WrEI0fe92/NqRjWw4WGw
	KMJxAiFFVQCy8J8W9VGyE1ltz0B7Y7xREA8A1YfxBOeHMxEiqXGcrJxCX9emkZZCKHk4T/n5e/h/V
	f0wAkWE9UT9XqswS7NWMtdG0obN4M+WadsZpct4Jpns+1KmRpNUmttcf1/v1o83xyMpnlHbdFgbPx
	izkksJxCrh0g0SGmrt+s3KBsnAd9jQmVGAsqtjtYdiE7JXXCKWxNiP2oO8R5UVYvVLYhuG7T/tQEZ
	YSk25OtsX7afLmMnhPf0TUd3vWa9Hw03lDRi+If42MlUv/UdNGx7FPQWFprl9ZuuRkQ/pJfA3YjF0
	pGE/TBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8E0c-007Dn1-2V;
	Wed, 29 Nov 2023 06:25:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8E0W-007Dl9-2v
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:25:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8E0V-0003lR-DL; Wed, 29 Nov 2023 07:25:11 +0100
Message-ID: <8b33b974-e280-4f60-911d-c26ed4d69668@pengutronix.de>
Date: Wed, 29 Nov 2023 07:25:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
 <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_222512_950777_68000B70 
X-CRM114-Status: GOOD (  21.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 28.11.23 17:29, Steffen Trumtrar wrote:
> rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
> flushed before it is initially used.
> 
> Map the rx_buffer when the macb is initialized and unmap it on ether_halt.
> 
> While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/macb.c | 37 ++++++++++++++++++++++++++++---------
>  1 file changed, 28 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 260c1e806a..92f78f7253 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -63,10 +63,13 @@ struct macb_device {
>  	unsigned int		tx_head;
>  
>  	void			*rx_buffer;
> +	dma_addr_t		rx_buffer_phys;
>  	void			*tx_buffer;
>  	void			*rx_packet_buf;
>  	struct macb_dma_desc	*rx_ring;
> +	dma_addr_t		rx_ring_phys;
>  	struct macb_dma_desc	*tx_ring;
> +	dma_addr_t		tx_ring_phys;
>  	struct macb_dma_desc	*gem_q1_descs;
>  
>  	int			rx_buffer_size;
> @@ -181,7 +184,7 @@ static int gem_recv(struct eth_device *edev)
>  		barrier();
>  		status = macb->rx_ring[macb->rx_tail].ctrl;
>  		length = MACB_BFEXT(RX_FRMLEN, status);
> -		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
> +		buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;

For GEM-type NICs, rx_buffer_size is PKTSIZE (1518 bytes currently), which is not a multiple
of the cache line size of the 64 bytes cache line on the ZynqMP's Cortex-A53 the driver
is supposed to support.

>  		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
>  					DMA_FROM_DEVICE);

This means this could potentially invalidate adjacent buffer contents.


>  	}
> @@ -891,8 +908,8 @@ static int macb_probe(struct device *dev)
>  
>  	macb_init_rx_buffer_size(macb, PKTSIZE);

^ Here's where PKTSIZE comes from. I'd be in favor of changing the global PKTSIZE
definition to be a multiple of 64 bytes (or use DMA_ALIGNMENT, but this isn't
correctly set for ARM yet.  I just sent out a patch for that).

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



