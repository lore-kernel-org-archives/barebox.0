Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5DDg-00064n-B6
 for barebox@lists.infradead.org; Wed, 07 Mar 2012 09:31:41 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 44379DC6EAD
 for <barebox@lists.infradead.org>; Wed,  7 Mar 2012 10:34:41 +0100 (CET)
Date: Wed, 7 Mar 2012 10:21:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120307092102.GL12248@game.jcrosoft.org>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
 <1330712410-26479-5-git-send-email-plagnioj@jcrosoft.com>
 <20120306082930.GE3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120306082930.GE3852@pengutronix.de>
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
Subject: Re: [PATCH 5/5] macb: add timeout on send
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:29 Tue 06 Mar     , Sascha Hauer wrote:
> On Fri, Mar 02, 2012 at 07:20:10PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will ensure that we send an other packet only when the first one is send.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/macb.c |    5 +++++
> >  1 files changed, 5 insertions(+), 0 deletions(-)
> > 
> > diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> > index 9b54afa..3835dba 100644
> > --- a/drivers/net/macb.c
> > +++ b/drivers/net/macb.c
> > @@ -121,6 +121,11 @@ static int macb_send(struct eth_device *edev, void *packet,
> >  	barrier();
> >  	writel(MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART), macb->regs + MACB_NCR);
> >  
> > +	wait_on_timeout(100 * MSECOND,
> > +		!(macb->tx_ring[0].ctrl & TXBUF_USED));
> 
> If you care for adding a timeout loop then you should also check
> the return value.
manage already in the source code

as we have the error storein ctrl field

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
