Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTU0S-0002cU-V4
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 08:50:37 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 31 Oct 2012 09:48:31 +0100
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
 <201210310929.57007.jbe@pengutronix.de>
 <20121031083621.GB2582@pengutronix.de>
In-Reply-To: <20121031083621.GB2582@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201210310948.31441.jbe@pengutronix.de>
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
> On Wed, Oct 31, 2012 at 09:29:56AM +0100, Juergen Beisert wrote:
> > Wolfram Sang wrote:
> > > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > > ---
> > >  drivers/dma/apbh_dma.c |    4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
> > > index 363878f..d30b8fb 100644
> > > --- a/drivers/dma/apbh_dma.c
> > > +++ b/drivers/dma/apbh_dma.c
> > > @@ -555,7 +555,9 @@ int mxs_dma_init(void)
> > >  	int ret, channel;
> > >  	u32 val, reg;
> > >
> > > -	mxs_reset_block(apbh_regs, 0);
> > > +	ret = mxs_reset_block(apbh_regs, 0);
> > > +	if (ret)
> > > +		return ret;
> >
> > In this case the user faces a "MXS: Timeout resetting block via register
> > ...". Do you think this message is helpful to give the user a pointer
> > *where* the failure happens?
>
> Yes, since it points to the IP core which was used here. Which again,
> makes clear which driver was trying to reset the IP core.

You mean the reported register offset points to the corresponding IP core?

Just my 2cents: a generic routine should report a failure to the caller. And 
the caller should output a valuable failure message which makes clear what 
the caller had tried to do by calling the generic routine. I think such a 
message would be more helpful. Your generic message is for developers only. 
But also Barebox has more users than developers.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
