Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTUeY-0001b3-Pb
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 09:32:03 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 31 Oct 2012 10:29:56 +0100
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
 <201210310948.31441.jbe@pengutronix.de>
 <20121031085414.GC2582@pengutronix.de>
In-Reply-To: <20121031085414.GC2582@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201210311029.56456.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/3] dma: apbh: check for errors when resetting ip core
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Wolfram Sang wrote:
> On Wed, Oct 31, 2012 at 09:48:31AM +0100, Juergen Beisert wrote:
> > Wolfram Sang wrote:
> > > On Wed, Oct 31, 2012 at 09:29:56AM +0100, Juergen Beisert wrote:
> > > > Wolfram Sang wrote:
> > > > > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > > > > ---
> > > > >  drivers/dma/apbh_dma.c |    4 +++-
> > > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
> > > > > index 363878f..d30b8fb 100644
> > > > > --- a/drivers/dma/apbh_dma.c
> > > > > +++ b/drivers/dma/apbh_dma.c
> > > > > @@ -555,7 +555,9 @@ int mxs_dma_init(void)
> > > > >  	int ret, channel;
> > > > >  	u32 val, reg;
> > > > >
> > > > > -	mxs_reset_block(apbh_regs, 0);
> > > > > +	ret = mxs_reset_block(apbh_regs, 0);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > >
> > > > In this case the user faces a "MXS: Timeout resetting block via
> > > > register ...". Do you think this message is helpful to give the user
> > > > a pointer *where* the failure happens?
> > >
> > > Yes, since it points to the IP core which was used here. Which again,
> > > makes clear which driver was trying to reset the IP core.
> >
> > You mean the reported register offset points to the corresponding IP
> > core?
>
> Yes, sure. Otherwise the error message would be useless :)
>
> > But also Barebox has more users than developers.
>
> There is nothing a user could do in this case except asking a developer
> what could have happened? And that's the best option here.

"MXS: Timeout resetting block via register <friesel>. Please ask the developer 
for a solution"

:))

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
