Delivery-date: Tue, 28 Nov 2023 17:58:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r81PU-00CH5H-1I
	for lore@lore.pengutronix.de;
	Tue, 28 Nov 2023 17:58:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r81PU-0006Ht-8v
	for lore@pengutronix.de; Tue, 28 Nov 2023 17:58:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4k7mG6i7P9SpIw5HdE47bHtqy5xXPXKYVPmulmt5zNo=; b=kr7RZw+nYmUfP7BlTX7+gydK5w
	ohIXR56ttgmO4p19TJNU5I6E0YN60MViHsfeA1SylYimQDlkxxjV0x6HR72cVnAw7MapRmZDA4W9A
	2/qCXyNt/o4VQySdOWu7+vpBlBqRIfLyG6YHNfzJfysZ0e/UTyfgIYYPrfPyPglI2IbI3Jc72ADAw
	HvlCJ2z8+vV/qArUsswRfU7H2hueeTd9AzUOe1YmAM90BDVmqrVTVHc6y5pCpksHGH5Zbcfc42J4F
	dmMSzaLh3y+VMa7wKpT33Q3HrWINJMr8VKPWHGJEAgiMXe3N/YhcTaB1kBwAA1r6gEurPPl4FIRTy
	45yZaBlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r81Nw-005ru3-2i;
	Tue, 28 Nov 2023 16:56:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r81Nt-005rtI-1W
	for barebox@lists.infradead.org;
	Tue, 28 Nov 2023 16:56:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1r81Nq-0005wU-SU; Tue, 28 Nov 2023 17:56:26 +0100
Message-ID: <3e38519f5f47bfeeed8416748b5493dd1d99a408.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 28 Nov 2023 17:56:26 +0100
In-Reply-To: <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
	 <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_085629_517193_2C964E62 
X-CRM114-Status: GOOD (  21.29  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 28.11.2023 um 17:29 +0100 schrieb Steffen Trumtrar:
> rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
> flushed before it is initially used.
>=20
> Map the rx_buffer when the macb is initialized and unmap it on ether_halt=
.
>=20
> While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.
>=20
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/macb.c | 37 ++++++++++++++++++++++++++++---------
>  1 file changed, 28 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 260c1e806a..92f78f7253 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -63,10 +63,13 @@ struct macb_device {
>  	unsigned int		tx_head;
> =20
>  	void			*rx_buffer;
> +	dma_addr_t		rx_buffer_phys;
>  	void			*tx_buffer;
>  	void			*rx_packet_buf;
>  	struct macb_dma_desc	*rx_ring;
> +	dma_addr_t		rx_ring_phys;
>  	struct macb_dma_desc	*tx_ring;
> +	dma_addr_t		tx_ring_phys;
>  	struct macb_dma_desc	*gem_q1_descs;
> =20
>  	int			rx_buffer_size;
> @@ -181,7 +184,7 @@ static int gem_recv(struct eth_device *edev)
>  		barrier();
>  		status =3D macb->rx_ring[macb->rx_tail].ctrl;
>  		length =3D MACB_BFEXT(RX_FRMLEN, status);
> -		buffer =3D macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
> +		buffer =3D (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb-=
>rx_tail;
>  		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
>  					DMA_FROM_DEVICE);
>  		net_receive(edev, buffer, length);
> @@ -221,7 +224,7 @@ static int macb_recv(struct eth_device *edev)
>  		}
> =20
>  		if (status & MACB_BIT(RX_EOF)) {
> -			buffer =3D macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
> +			buffer =3D (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb=
->rx_tail;
>  			length =3D MACB_BFEXT(RX_FRMLEN, status);
>  			if (wrapped) {
>  				unsigned int headlen, taillen;
> @@ -232,12 +235,12 @@ static int macb_recv(struct eth_device *edev)
>  				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
>  							headlen, DMA_FROM_DEVICE);
>  				memcpy(macb->rx_packet_buf, buffer, headlen);
> -				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
> +				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer_ph=
ys,

You can drop all those (unsigned long) casts in calls to
dma_sync_single, now that you are passing a argument of the proper
dma_addr_t type.

>  							taillen, DMA_FROM_DEVICE);
>  				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
>  				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
>  							headlen, DMA_FROM_DEVICE);
> -				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer=
,
> +				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer=
_phys,
>  							taillen, DMA_FROM_DEVICE);
>  				net_receive(edev, macb->rx_packet_buf, length);
>  			} else {
> @@ -377,7 +380,7 @@ static int gmac_init_dummy_tx_queues(struct macb_devi=
ce *macb)
>  	return 0;
>  }
> =20
> -static void macb_init(struct macb_device *macb)
> +static int macb_init(struct macb_device *macb)
>  {
>  	unsigned long paddr, val =3D 0;
>  	int i;
> @@ -386,6 +389,11 @@ static void macb_init(struct macb_device *macb)
>  	 * macb_halt should have been called at some point before now,
>  	 * so we'll assume the controller is idle.
>  	 */
> +	macb->rx_buffer_phys =3D dma_map_single(macb->dev, macb->rx_buffer,
> +					      macb->rx_buffer_size * macb->rx_ring_size,
> +					      DMA_TO_DEVICE);

The RX buffer is used to hold data written by the device, so it must be
mapped with DMA_FROM_DEVICE.

Regards,
Lucas

> +	if (dma_mapping_error(macb->dev, macb->rx_buffer_phys))
> +		return -EFAULT;
> =20
>  	/* initialize DMA descriptors */
>  	paddr =3D (ulong)macb->rx_buffer;
> @@ -442,6 +450,7 @@ static void macb_init(struct macb_device *macb)
> =20
>  	macb_or_gem_writel(macb, USRIO, val);
> =20
> +	return 0;
>  }
> =20
>  static void macb_halt(struct eth_device *edev)
> @@ -460,6 +469,13 @@ static void macb_halt(struct eth_device *edev)
> =20
>  	/* Disable TX and RX, and clear statistics */
>  	macb_writel(macb, NCR, MACB_BIT(CLRSTAT));
> +
> +	dma_unmap_single(macb->dev, macb->rx_buffer_phys,
> +			 macb->rx_buffer_size * macb->rx_ring_size,
> +			 DMA_TO_DEVICE);
> +	free(macb->rx_buffer);
> +	dma_free_coherent((void *)macb->rx_ring, macb->rx_ring_phys, RX_RING_BY=
TES(macb));
> +	dma_free_coherent((void *)macb->tx_ring, macb->tx_ring_phys, TX_RING_BY=
TES);
>  }
> =20
>  static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
> @@ -780,6 +796,7 @@ static int macb_probe(struct device *dev)
>  	const char *pclk_name, *hclk_name;
>  	const struct macb_config *config =3D NULL;
>  	u32 ncfgr;
> +	int ret;
> =20
>  	macb =3D xzalloc(sizeof(*macb));
>  	edev =3D &macb->netdev;
> @@ -877,7 +894,7 @@ static int macb_probe(struct device *dev)
>  		clk_enable(macb->rxclk);
> =20
>  	if (config) {
> -		int ret =3D config->txclk_init(dev, &macb->txclk);
> +		ret =3D config->txclk_init(dev, &macb->txclk);
>  		if (ret)
>  			return ret;
>  	}
> @@ -891,8 +908,8 @@ static int macb_probe(struct device *dev)
> =20
>  	macb_init_rx_buffer_size(macb, PKTSIZE);
>  	macb->rx_buffer =3D dma_alloc(macb->rx_buffer_size * macb->rx_ring_size=
);
> -	macb->rx_ring =3D dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_B=
ROKEN);
> -	macb->tx_ring =3D dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN)=
;
> +	macb->rx_ring =3D dma_alloc_coherent(RX_RING_BYTES(macb), &macb->rx_rin=
g_phys);
> +	macb->tx_ring =3D dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys=
);
> =20
>  	if (macb->is_gem)
>  		macb->gem_q1_descs =3D dma_alloc_coherent(GEM_Q1_DESC_BYTES,
> @@ -907,7 +924,9 @@ static int macb_probe(struct device *dev)
>  	ncfgr |=3D macb_dbw(macb);
>  	macb_writel(macb, NCFGR, ncfgr);
> =20
> -	macb_init(macb);
> +	ret =3D macb_init(macb);
> +	if (ret)
> +		return ret;
> =20
>  	mdiobus_register(&macb->miibus);
>  	eth_register(edev);
>=20



