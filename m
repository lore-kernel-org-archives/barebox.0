Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0g6l-0007ib-9s
 for barebox@lists.infradead.org; Sun, 09 Feb 2020 06:30:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id v17so3559239ljg.4
 for <barebox@lists.infradead.org>; Sat, 08 Feb 2020 22:30:17 -0800 (PST)
Date: Sun, 9 Feb 2020 09:30:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200209093013.be5535bdf036ab3e227912ba@gmail.com>
In-Reply-To: <f6e8e0b8-4f7c-e4ae-7317-09cc1500343b@pengutronix.de>
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
 <20200109072855.14154-5-antonynpavlov@gmail.com>
 <f6e8e0b8-4f7c-e4ae-7317-09cc1500343b@pengutronix.de>
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
Subject: Re: [RFC 4/5] net: rtl8169: make it work on big-endian system
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Tue, 4 Feb 2020 15:03:53 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Hi Antony,
> =

> do you wont to resent this patches as not RFC?

Hi!

I want to test PCI-related patches on ARM before resending
(especially 'net: e1000: make it work on MIPS').

Is there any qemu configuration to test ARM barebox with PCI support?

-- =

Best regards,
=A0 Antony Pavlov

> =

> On 09.01.20 08:28, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >   drivers/net/rtl8169.c | 34 +++++++++++++++++-----------------
> >   1 file changed, 17 insertions(+), 17 deletions(-)
> > =

> > diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
> > index 80997dc89f..3762cb6354 100644
> > --- a/drivers/net/rtl8169.c
> > +++ b/drivers/net/rtl8169.c
> > @@ -230,13 +230,13 @@ static void rtl8169_init_ring(struct rtl8169_priv=
 *priv)
> >   	for (i =3D 0; i < NUM_RX_DESC; i++) {
> >   		if (i =3D=3D (NUM_RX_DESC - 1))
> >   			priv->rx_desc[i].status =3D
> > -				BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE;
> > +				cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE);
> >   		else
> >   			priv->rx_desc[i].status =3D
> > -				BD_STAT_OWN | PKT_BUF_SIZE;
> > +				cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
> >   =

> >   		priv->rx_desc[i].buf_addr =3D
> > -				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
> > +				cpu_to_le32(virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE));
> >   	}
> >   }
> >   =

> > @@ -358,21 +358,21 @@ static int rtl8169_eth_send(struct eth_device *ed=
ev, void *packet,
> >   =

> >   	priv->tx_desc[entry].buf_Haddr =3D 0;
> >   	priv->tx_desc[entry].buf_addr =3D
> > -		virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE);
> > +		cpu_to_le32(virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE));
> >   =

> >   	if (entry !=3D (NUM_TX_DESC - 1)) {
> >   		priv->tx_desc[entry].status =3D
> > -			BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
> > -			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
> > +			cpu_to_le32(BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
> > +			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
> >   	} else {
> >   		priv->tx_desc[entry].status =3D
> > -			BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
> > -			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
> > +			cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
> > +			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
> >   	}
> >   =

> >   	RTL_W8(priv, TxPoll, 0x40);
> >   =

> > -	while (priv->tx_desc[entry].status & BD_STAT_OWN)
> > +	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
> >   		;
> >   =

> >   	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
> > @@ -391,9 +391,9 @@ static int rtl8169_eth_rx(struct eth_device *edev)
> >   =

> >   	entry =3D priv->cur_rx % NUM_RX_DESC;
> >   =

> > -	if ((priv->rx_desc[entry].status & BD_STAT_OWN) =3D=3D 0) {
> > -		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
> > -			pkt_size =3D (priv->rx_desc[entry].status & 0x1fff) - 4;
> > +	if ((le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_OWN) =3D=3D 0=
) {
> > +		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
> > +			pkt_size =3D (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - =
4;
> >   =

> >   			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
> >   						+ entry * PKT_BUF_SIZE,
> > @@ -407,14 +407,14 @@ static int rtl8169_eth_rx(struct eth_device *edev)
> >   						   pkt_size, DMA_FROM_DEVICE);
> >   =

> >   			if (entry =3D=3D NUM_RX_DESC - 1)
> > -				priv->rx_desc[entry].status =3D BD_STAT_OWN |
> > -					BD_STAT_EOR | PKT_BUF_SIZE;
> > +				priv->rx_desc[entry].status =3D cpu_to_le32(BD_STAT_OWN |
> > +					BD_STAT_EOR | PKT_BUF_SIZE);
> >   			else
> >   				priv->rx_desc[entry].status =3D
> > -					BD_STAT_OWN | PKT_BUF_SIZE;
> > +					cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
> >   			priv->rx_desc[entry].buf_addr =3D
> > -				virt_to_phys(priv->rx_buf +
> > -				             entry * PKT_BUF_SIZE);
> > +				cpu_to_le32(virt_to_phys(priv->rx_buf +
> > +				             entry * PKT_BUF_SIZE));
> >   		} else {
> >   			dev_err(&edev->dev, "rx error\n");
> >   		}
> > =

> =

> Kind regards,
> Oleksij Rempel
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
