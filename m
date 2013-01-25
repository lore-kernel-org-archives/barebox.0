Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TynCz-0002VM-7R
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 17:36:58 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E04CFDC1A45
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 18:46:43 +0100 (CET)
Date: Fri, 25 Jan 2013 18:35:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130125173535.GF26329@game.jcrosoft.org>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
 <1359127067-30079-8-git-send-email-plagnioj@jcrosoft.com>
 <20130125173119.GL1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130125173119.GL1906@pengutronix.de>
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
Subject: Re: [PATCH 08/14] atmel_mci: rwproof is only needed since IP
 version 0x200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:31 Fri 25 Jan     , Sascha Hauer wrote:
> On Fri, Jan 25, 2013 at 04:17:41PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/mci/atmel_mci.c |   10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> > index d5fdd1d..bf0adb0 100644
> > --- a/drivers/mci/atmel_mci.c
> > +++ b/drivers/mci/atmel_mci.c
> > @@ -28,6 +28,7 @@
> >  #include "atmel-mci-regs.h"
> >  
> >  struct atmel_mci_caps {
> > +	bool    has_rwproof;
> >  	bool	has_odd_clk_div;
> >  };
> >  
> > @@ -94,7 +95,13 @@ static void atmci_set_clk_rate(struct atmel_mci *host,
> >  	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%ld clkIos=%d divider=%d\n",
> >  		host->bus_hz, clock_min, clkdiv);
> >  
> > -	host->mode_reg |= ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF;
> > +	/*
> > +	 * WRPROOF and RDPROOF prevent overruns/underruns by
> > +	 * stopping the clock when the FIFO is full/empty.
> > +	 * This state is not expected to last for long.
> > +	 */
> > +	if (host->caps.has_rwproof)
> > +		host->mode_reg |= ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF;
> >  
> >  	atmci_writel(host, ATMCI_MR, host->mode_reg);
> >  }
> > @@ -470,6 +477,7 @@ static void atmci_get_cap(struct atmel_mci *host)
> >  	case 0x400:
> >  	case 0x300:
> >  	case 0x200:
> > +		host->caps.has_rwproof = 1;
> >  	case 0x100:
> >  	case 0x0:
> 
> By 'since' in the subject do you mean 'up to'?
yeah to code is right no the subject

Best Regards,
J.
> 
> Sascha
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
