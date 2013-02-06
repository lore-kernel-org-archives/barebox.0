Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Bfr-0000Xa-7V
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 20:32:56 +0000
Date: Wed, 6 Feb 2013 21:32:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206203253.GO1906@pengutronix.de>
References: <20130205101236.GA19322@game.jcrosoft.org>
 <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
 <1360059306-31118-2-git-send-email-plagnioj@jcrosoft.com>
 <20130206193540.GL1906@pengutronix.de>
 <20130206201624.GG19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130206201624.GG19322@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/4] macb: register the phy after the macb is init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 06, 2013 at 09:16:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:35 Wed 06 Feb     , Sascha Hauer wrote:
> > On Tue, Feb 05, 2013 at 11:15:04AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  drivers/net/macb.c |    2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> > > index 15b1e93..8eac4a8 100644
> > > --- a/drivers/net/macb.c
> > > +++ b/drivers/net/macb.c
> > > @@ -476,8 +476,8 @@ static int macb_probe(struct device_d *dev)
> > >  
> > >  	macb_writel(macb, NCFGR, ncfgr);
> > >  
> > > -	mdiobus_register(&macb->miibus);
> > >  	eth_register(edev);
> > > +	mdiobus_register(&macb->miibus);
> > 
> > Why?
> > 
> > Most other drivers do it the other way round and you do not provide
> > information why this is done.
> because the is not ready
> 
> as we init it as _init which is done during the eth_register

Then you should probably call macb_init from your probe function
manually. This implicit dependency is not good.

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
