Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8Rm0-0002mv-JE
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 10:54:05 +0000
Received: by mail-lb0-f178.google.com with SMTP id u14so733031lbd.37
 for <barebox@lists.infradead.org>; Tue, 06 Jan 2015 02:53:40 -0800 (PST)
Date: Tue, 6 Jan 2015 13:56:11 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150106135611.e7d20dffcf2f94ee0ccfbdaa@gmail.com>
In-Reply-To: <1420479449.2221.3.camel@lynxeye.de>
References: <1420405745-4408-1-git-send-email-dev@lynxeye.de>
 <20150105201933.75e448ef02ad9e9e31ac6663@gmail.com>
 <1420479449.2221.3.camel@lynxeye.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: rtl8169: remove unnecessary cache maintenance
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, 05 Jan 2015 18:37:29 +0100
Lucas Stach <dev@lynxeye.de> wrote:

> Am Montag, den 05.01.2015, 20:19 +0300 schrieb Antony Pavlov:
> > On Sun,  4 Jan 2015 22:09:05 +0100
> > Lucas Stach <dev@lynxeye.de> wrote:
> > =

> > I suppose that this patch can make problems on MIPS with explicid cache=
 handling.
> > =

> How would it?
> This driver is ARM only for now (as we are using ARM MMU functions to
> flush buffers) until someone gets around to properly implement generic
> dma sync ops.

Anyway it is reasonable to add 'depends on ARM' to 'config DRIVER_NET_RTL81=
69'
record in drivers/net/Kconfig.

> But even then MIPS knows about uncached memory types which is exactly
> what should be returned for a dma coherent memory allocation.

Alas! We can't just add 'volatile' modifier to make pointer uncached on MIP=
S in general case.

> =

> Regards,
> Lucas =

> > > The buffer descriptors are allocated from coherent memory, so there
> > > is no cache maintenance needed. Only tell the compiler that the descr=
iptors
> > > can be modified by the hardware.
> > > =

> > > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > > ---
> > >  drivers/net/rtl8169.c | 24 +++++-------------------
> > >  1 file changed, 5 insertions(+), 19 deletions(-)
> > > =

> > > diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
> > > index 5702900..19f5763 100644
> > > --- a/drivers/net/rtl8169.c
> > > +++ b/drivers/net/rtl8169.c
> > > @@ -50,11 +50,11 @@ struct rtl8169_priv {
> > >  	struct pci_dev		*pci_dev;
> > >  	int			chipset;
> > >  =

> > > -	struct bufdesc		*tx_desc;
> > > +	volatile struct bufdesc	*tx_desc;
> > >  	void			*tx_buf;
> > >  	unsigned int		cur_tx;
> > >  =

> > > -	struct bufdesc		*rx_desc;
> > > +	volatile struct bufdesc	*rx_desc;
> > >  	void			*rx_buf;
> > >  	unsigned int		cur_rx;
> > >  =

> > > @@ -250,10 +250,6 @@ static void rtl8169_init_ring(struct rtl8169_pri=
v *priv)
> > >  		priv->rx_desc[i].buf_addr =3D
> > >  				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
> > >  	}
> > > -
> > > -	dma_flush_range((unsigned long)priv->rx_desc,
> > > -			(unsigned long)priv->rx_desc +
> > > -			NUM_RX_DESC * sizeof(struct bufdesc));
> > >  }
> > >  =

> > >  static void rtl8169_hw_start(struct rtl8169_priv *priv)
> > > @@ -386,14 +382,10 @@ static int rtl8169_eth_send(struct eth_device *=
edev, void *packet,
> > >  			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
> > >  	}
> > >  =

> > > -	dma_flush_range((unsigned long)&priv->tx_desc[entry],
> > > -			(unsigned long)&priv->tx_desc[entry + 1]);
> > > -
> > >  	RTL_W8(priv, TxPoll, 0x40);
> > > -	do {
> > > -		dma_inv_range((unsigned long)&priv->tx_desc[entry],
> > > -		              (unsigned long)&priv->tx_desc[entry + 1]);
> > > -	} while (priv->tx_desc[entry].status & BD_STAT_OWN);
> > > +
> > > +	while (priv->tx_desc[entry].status & BD_STAT_OWN)
> > > +		;
> > >  =

> > >  	priv->cur_tx++;
> > >  =

> > > @@ -408,9 +400,6 @@ static int rtl8169_eth_rx(struct eth_device *edev)
> > >  =

> > >  	entry =3D priv->cur_rx % NUM_RX_DESC;
> > >  =

> > > -	dma_inv_range((unsigned long)&priv->rx_desc[entry],
> > > -	              (unsigned long)&priv->rx_desc[entry + 1]);
> > > -
> > >  	if ((priv->rx_desc[entry].status & BD_STAT_OWN) =3D=3D 0) {
> > >  		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
> > >  			pkt_size =3D (priv->rx_desc[entry].status & 0x1fff) - 4;
> > > @@ -441,9 +430,6 @@ static int rtl8169_eth_rx(struct eth_device *edev)
> > >  			priv->rx_desc[entry].buf_addr =3D
> > >  				virt_to_phys(priv->rx_buf +
> > >  				             entry * PKT_BUF_SIZE);
> > > -
> > > -			dma_flush_range((unsigned long)&priv->rx_desc[entry],
> > > -			                (unsigned long)&priv->rx_desc[entry + 1]);
> > >  		} else {
> > >  			dev_err(&edev->dev, "rx error\n");
> > >  		}
> > > -- =

> > > 2.1.0
> > > =

> > > =

> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > =

> > =

> =

> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
