Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wdc-0008MQ-Gf
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 16:53:53 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6DE7ADC0E2B
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:04:12 +0100 (CET)
Date: Mon, 11 Feb 2013 17:52:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130211165242.GY19322@game.jcrosoft.org>
References: <20130208090739.GP19322@game.jcrosoft.org>
 <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
 <1360315130-23872-6-git-send-email-plagnioj@jcrosoft.com>
 <20130211163336.GB25672@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130211163336.GB25672@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] macb: fix tx ring size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 17:33 Mon 11 Feb     , Sascha Hauer wrote:
> On Fri, Feb 08, 2013 at 10:18:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > the mininal tx ring size is 2 as if one we wrap on the same descriptor
> > and can cause IP lock on GEM (gigabit version) this is always the case
> > 
> > Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/macb.c |   50 ++++++++++++++++++++++++++++++++++----------------
> >  1 file changed, 34 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> > index d6b60aa..3a65af7 100644
> > --- a/drivers/net/macb.c
> > +++ b/drivers/net/macb.c
> > @@ -53,15 +53,17 @@
> >  
> >  #define MACB_RX_BUFFER_SIZE	128
> >  #define RX_BUFFER_MULTIPLE	64  /* bytes */
> > -#define RX_RING_SIZE		32 /* must be power of 2 */
> 
> This removes RX_RING_SIZE...

I miss split the patch with gem

I resend it

Best Regards,
J.

> 
> > @@ -244,10 +259,13 @@ static void macb_init(struct macb_device *macb)
> >  	}
> >  	macb->rx_ring[RX_RING_SIZE - 1].addr |= MACB_BIT(RX_WRAP);
> 
> But not its users.
> 
> Dropped.
> 
> Sascha
> 
> >  
> > -	macb->tx_ring[0].addr = 0;
> > -	macb->tx_ring[0].ctrl = MACB_BIT(TX_USED) | MACB_BIT(TX_WRAP);
> > +	for (i = 0; i < TX_RING_SIZE; i++) {
> > +		macb->tx_ring[i].addr = 0;
> > +		macb->tx_ring[i].ctrl = MACB_BIT(TX_USED);
> > +	}
> > +	macb->tx_ring[TX_RING_SIZE - 1].addr |= MACB_BIT(TX_WRAP);
> >  
> > -	macb->rx_tail = macb->tx_tail = 0;
> > +	macb->rx_tail = macb->tx_head = macb->tx_tail = 0;
> >  
> >  	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
> >  	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
