Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuZLD-0001YW-NN
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 03:36:48 +0000
Received: by mail-la0-f46.google.com with SMTP id gl10so89388lab.19
 for <barebox@lists.infradead.org>; Tue, 10 Jun 2014 20:36:24 -0700 (PDT)
Date: Wed, 11 Jun 2014 07:48:00 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140611074800.6f02ad5d6eb98b467cd94032@gmail.com>
In-Reply-To: <20140610070833.GT15686@pengutronix.de>
References: <1402041777-7249-1-git-send-email-antonynpavlov@gmail.com>
 <20140610070833.GT15686@pengutronix.de>
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
Subject: Re: [RFC] [WIP] net: add initial ENC28J60 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 10 Jun 2014 09:08:33 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Fri, Jun 06, 2014 at 12:02:57PM +0400, Antony Pavlov wrote:

Thanks for comments!
But there is one issue (see below).

...

> > +
> > +static int enc28j60_eth_rx(struct eth_device *edev)
> > +{
> > +	struct enc28j60_net *priv =3D edev->priv;
> > +	int pk_counter;
> > +
> > +	pk_counter =3D locked_regb_read(priv, EPKTCNT);
> > +	if (pk_counter && netif_msg_intr(priv))
> > +		printk(KERN_DEBUG DRV_NAME ": intRX, pk_cnt: %d\n", pk_counter);
> > +
> > +	if (pk_counter > priv->max_pk_counter) {
> > +		priv->max_pk_counter =3D pk_counter;
> > +		if (netif_msg_rx_status(priv) && priv->max_pk_counter > 1)
> > +			printk(KERN_DEBUG DRV_NAME ": RX max_pk_cnt: %d\n",
> > +				priv->max_pk_counter);
> > +	}
> > +
> > +	while (pk_counter-- > 0)
> > +		enc28j60_hw_rx(edev);
> =

> You should only receive a single packet in your receive function.
> Otherwise some protocols may not function properly. We noticed this
> recently and didn't have the chance to fix all drivers.
> =


If I receive only one packet (I have simply dropped 'while (pk_counter-- > =
0)')
then tftp does not work.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
