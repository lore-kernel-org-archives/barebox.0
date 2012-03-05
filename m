Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4cR1-0008Sn-Ia
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 18:15:00 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 10C1CDC5802
 for <barebox@lists.infradead.org>; Mon,  5 Mar 2012 19:08:32 +0100 (CET)
Date: Mon, 5 Mar 2012 18:55:15 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120305175515.GI12248@game.jcrosoft.org>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
 <1330712410-26479-4-git-send-email-plagnioj@jcrosoft.com>
 <20120304120841.GR3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120304120841.GR3852@pengutronix.de>
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
Subject: Re: [PATCH 4/5] macb: implement alloc_packet & free_packet
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:08 Sun 04 Mar     , Sascha Hauer wrote:
> On Fri, Mar 02, 2012 at 07:20:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > We need to have a non cached buffer.
> > Need when MMU enabled.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/macb.c |   19 ++++++++++++++++---
> >  1 files changed, 16 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> > index d79da72..9b54afa 100644
> > --- a/drivers/net/macb.c
> > +++ b/drivers/net/macb.c
> > @@ -50,6 +50,7 @@
> >  #include <mach/board.h>
> >  #include <linux/clk.h>
> >  #include <linux/err.h>
> > +#include <asm/mmu.h>
> >  
> >  #include "macb.h"
> >  
> > @@ -391,6 +392,16 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
> >  	return 0;
> >  }
> >  
> > +static void *macb_alloc_packet(struct eth_device* edev)
> > +{
> > +	return dma_alloc_coherent(PKTSIZE);
> > +}
> > +
> > +static void macb_free_packet(struct eth_device* edev, void *packet)
> > +{
> > +	dma_free_coherent(packet, PKTSIZE);
> > +}
> 
> Why don't you use dma_flush_range/dma_clean_range like we do in other
> drivers?
yeah I did it last week-end but too much late and put the flush at thw wrong
place

now work send an update.

can you apply them on master as they fix the macb when MMU is enable on AT91

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
