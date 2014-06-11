Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wubx3-0001Mc-08
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 06:24:01 +0000
Date: Wed, 11 Jun 2014 08:23:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140611062335.GY15686@pengutronix.de>
References: <1402041777-7249-1-git-send-email-antonynpavlov@gmail.com>
 <20140610070833.GT15686@pengutronix.de>
 <20140611074800.6f02ad5d6eb98b467cd94032@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140611074800.6f02ad5d6eb98b467cd94032@gmail.com>
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
Subject: Re: [RFC] [WIP] net: add initial ENC28J60 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 11, 2014 at 07:48:00AM +0400, Antony Pavlov wrote:
> On Tue, 10 Jun 2014 09:08:33 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Fri, Jun 06, 2014 at 12:02:57PM +0400, Antony Pavlov wrote:
> 
> Thanks for comments!
> But there is one issue (see below).
> 
> ...
> 
> > > +
> > > +static int enc28j60_eth_rx(struct eth_device *edev)
> > > +{
> > > +	struct enc28j60_net *priv = edev->priv;
> > > +	int pk_counter;
> > > +
> > > +	pk_counter = locked_regb_read(priv, EPKTCNT);
> > > +	if (pk_counter && netif_msg_intr(priv))
> > > +		printk(KERN_DEBUG DRV_NAME ": intRX, pk_cnt: %d\n", pk_counter);
> > > +
> > > +	if (pk_counter > priv->max_pk_counter) {
> > > +		priv->max_pk_counter = pk_counter;
> > > +		if (netif_msg_rx_status(priv) && priv->max_pk_counter > 1)
> > > +			printk(KERN_DEBUG DRV_NAME ": RX max_pk_cnt: %d\n",
> > > +				priv->max_pk_counter);
> > > +	}
> > > +
> > > +	while (pk_counter-- > 0)
> > > +		enc28j60_hw_rx(edev);
> > 
> > You should only receive a single packet in your receive function.
> > Otherwise some protocols may not function properly. We noticed this
> > recently and didn't have the chance to fix all drivers.
> > 
> 
> If I receive only one packet (I have simply dropped 'while (pk_counter-- > 0)')
> then tftp does not work.

Does pk_counter have the correct value the second time you read from
EPKTCNT?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
