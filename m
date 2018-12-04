Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU5au-00035r-Uo
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 07:58:14 +0000
Date: Tue, 4 Dec 2018 08:58:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181204075801.rku7i6vfgy55mp2c@pengutronix.de>
References: <20181115003637.GA16443@lenoch>
 <1542380845.23489.24.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542380845.23489.24.camel@pengutronix.de>
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

Ladis,

On Fri, Nov 16, 2018 at 04:07:25PM +0100, Lucas Stach wrote:
> > @@ -237,12 +241,17 @@ static int macb_recv(struct eth_device *edev)
> > > =A0				taillen =3D length - headlen;
> > > =A0				memcpy((void *)NetRxPackets[0],
> > > =A0				=A0=A0=A0=A0=A0=A0=A0buffer, headlen);
> > > +				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
> > > +							taillen, DMA_FROM_DEVICE);
> > > =A0				memcpy((void *)NetRxPackets[0] + headlen,
> > =A0				=A0=A0=A0=A0=A0=A0=A0macb->rx_buffer, taillen);
> =

> This is missing a dma_sync_single_for_device() here, matching the
> ...for_cpu added above. Otherwise patch looks good.

Any input to this one or an updated patch?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
