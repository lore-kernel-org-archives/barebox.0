Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3G4-0008Eo-PT
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 06:49:22 +0000
Date: Tue, 4 Jun 2019 08:49:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604064918.7w5llwzfeqm3tg46@pengutronix.de>
References: <20181115003637.GA16443@lenoch>
 <1542380845.23489.24.camel@pengutronix.de>
 <20181204075801.rku7i6vfgy55mp2c@pengutronix.de>
 <20190530122815.GA6973@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530122815.GA6973@lenoch>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: macb: dma_sync_* receive buffers
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Thu, May 30, 2019 at 02:28:15PM +0200, Ladislav Michl wrote:
> On Tue, Dec 04, 2018 at 08:58:01AM +0100, Sascha Hauer wrote:
> > Ladis,
> > =

> > On Fri, Nov 16, 2018 at 04:07:25PM +0100, Lucas Stach wrote:
> > > > @@ -237,12 +241,17 @@ static int macb_recv(struct eth_device *edev)
> > > > > =A0				taillen =3D length - headlen;
> > > > > =A0				memcpy((void *)NetRxPackets[0],
> > > > > =A0				=A0=A0=A0=A0=A0=A0=A0buffer, headlen);
> > > > > +				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
> > > > > +							taillen, DMA_FROM_DEVICE);
> > > > > =A0				memcpy((void *)NetRxPackets[0] + headlen,
> > > > =A0				=A0=A0=A0=A0=A0=A0=A0macb->rx_buffer, taillen);
> > > =

> > > This is missing a dma_sync_single_for_device() here, matching the
> > > ...for_cpu added above. Otherwise patch looks good.
> > =

> > Any input to this one or an updated patch?
> =

> This must have slipped to the very bottom of my mailbox, sorry.
> =

> We should also not running sync outside buffer, if it is wrapped.
> Updated patch bellow.

Applied, thanks

Sascha

> =

> 	ladis
> =

> --- 8< ---
> =

> From: Ladislav Michl <ladis@linux-mips.org>
> Subject: [PATCH v2] net: macb: dma_sync_* receive buffers
> =

> Receive buffers are properly synchronized only if Cadence is
> GEM. Fix it for MACB as well.
> =

> Fixes: 86dc5259e25d (net: macb: no need for coherent memory for receive b=
uffer)
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  drivers/net/macb.c | 27 ++++++++++++++++++++-------
>  1 file changed, 20 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 0c0d17ee9..a0411d6e4 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -209,9 +209,11 @@ static int macb_recv(struct eth_device *edev)
>  	dev_dbg(macb->dev, "%s\n", __func__);
>  =

>  	for (;;) {
> +		barrier();
>  		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
>  			return -1;
>  =

> +		barrier();
>  		status =3D macb->rx_ring[rx_tail].ctrl;
>  		if (status & MACB_BIT(RX_SOF)) {
>  			if (rx_tail !=3D macb->rx_tail)
> @@ -228,14 +230,26 @@ static int macb_recv(struct eth_device *edev)
>  				headlen =3D macb->rx_buffer_size * (macb->rx_ring_size
>  						 - macb->rx_tail);
>  				taillen =3D length - headlen;
> -				memcpy((void *)NetRxPackets[0],
> -				       buffer, headlen);
> +				dma_sync_single_for_cpu((unsigned long)buffer,
> +							headlen, DMA_FROM_DEVICE);
> +				memcpy((void *)NetRxPackets[0], buffer, headlen);
> +				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
> +							taillen, DMA_FROM_DEVICE);
>  				memcpy((void *)NetRxPackets[0] + headlen,
> -				       macb->rx_buffer, taillen);
> -				buffer =3D (void *)NetRxPackets[0];
> +					macb->rx_buffer, taillen);
> +				dma_sync_single_for_device((unsigned long)buffer,
> +							headlen, DMA_FROM_DEVICE);
> +				dma_sync_single_for_device((unsigned long)macb->rx_buffer,
> +							taillen, DMA_FROM_DEVICE);
> +				net_receive(edev, NetRxPackets[0], length);
> +			} else {
> +				dma_sync_single_for_cpu((unsigned long)buffer, length,
> +							DMA_FROM_DEVICE);
> +				net_receive(edev, buffer, length);
> +				dma_sync_single_for_device((unsigned long)buffer, length,
> +							DMA_FROM_DEVICE);
>  			}
> -
> -			net_receive(edev, buffer, length);
> +			barrier();
>  			if (++rx_tail >=3D macb->rx_ring_size)
>  				rx_tail =3D 0;
>  			reclaim_rx_buffers(macb, rx_tail);
> @@ -245,7 +259,6 @@ static int macb_recv(struct eth_device *edev)
>  				rx_tail =3D 0;
>  			}
>  		}
> -		barrier();
>  	}
>  =

>  	return 0;
> -- =

> 2.20.1
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
