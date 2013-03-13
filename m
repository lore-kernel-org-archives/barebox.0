Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFho4-00017t-Bb
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 09:17:09 +0000
Date: Wed, 13 Mar 2013 10:17:05 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130313091705.GC3891@pengutronix.de>
References: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363164494-3614-2-git-send-email-s.trumtrar@pengutronix.de>
 <20130313090445.GE1568@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130313090445.GE1568@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/2] net: macb: turn off endian_swp_pkt_en
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

Hi!

On Wed, Mar 13, 2013 at 10:04:45AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:48 Wed 13 Mar     , Steffen Trumtrar wrote:
> > The core has a bit for swapping packet data endianism.
> > Reset default from Cadence is off. Xilinx however, that uses this core on the
> > Zynq SoCs, opted for on. Turn it off for all devices.
> 
> is this xilinx specifc?
> 
> on at91 and other we do not need it
> 

Well, as stated in the commit log, Cadence default is off. I guess, at91 does
not change this. So, where is the problem then forcing it to the sane default
from Cadence?

Regards,
str

> Best Regards,
> J.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/macb.c | 1 +
> >  drivers/net/macb.h | 2 ++
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> > index a12eea7..005234e 100644
> > --- a/drivers/net/macb.c
> > +++ b/drivers/net/macb.c
> > @@ -277,6 +277,7 @@ static void macb_configure_dma(struct macb_device *bp)
> >  		dmacfg |= GEM_BF(FBLDO, 16);
> >  		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
> >  		dmacfg |= GEM_BIT(DDRP);
> > +		dmacfg &= ~GEM_BIT(ENDIA);
> >  		gem_writel(bp, DMACFG, dmacfg);
> >  	}
> >  }
> > diff --git a/drivers/net/macb.h b/drivers/net/macb.h
> > index cadd561..1be9ff9 100644
> > --- a/drivers/net/macb.h
> > +++ b/drivers/net/macb.h
> > @@ -168,6 +168,8 @@
> >  /* Bitfields in DMACFG. */
> >  #define GEM_FBLDO_OFFSET			0
> >  #define GEM_FBLDO_SIZE				5
> > +#define GEM_ENDIA_OFFSET			7
> > +#define GEM_ENDIA_SIZE				1
> >  #define GEM_RXBMS_OFFSET			8
> >  #define GEM_RXBMS_SIZE				2
> >  #define GEM_TXPBMS_OFFSET			10
> > -- 
> > 1.8.2.rc2
> > 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
