Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHsoZ-0008Mu-DX
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 18:02:56 +0000
Date: Mon, 14 Sep 2020 20:02:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914180254.GY4498@pengutronix.de>
References: <20200909110118.19923-1-jbe@pengutronix.de>
 <20200909110118.19923-3-jbe@pengutronix.de>
 <e7db4a95-5665-2d86-0450-3cfd56ec477a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7db4a95-5665-2d86-0450-3cfd56ec477a@pengutronix.de>
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
Subject: Re: [PATCH 3/5] mci: mci-core: fix long lasting FIXMEs
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>

On Mon, Sep 14, 2020 at 04:58:01PM +0200, Ahmad Fatoum wrote:
> Hello Juergen,
> 
> On 9/9/20 1:01 PM, Juergen Borleis wrote:
> > Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> > ---
> >  drivers/mci/mci-core.c | 22 +++++++++++++---------
> >  1 file changed, 13 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index a58dedc1cd..d93be6d33f 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -361,9 +361,9 @@ static int mmc_send_op_cond(struct mci *mci)
> >  }
> >  
> >  /**
> > - * FIXME
> > - * @param mci MCI instance
> > - * @param ext_csd Buffer for a 512 byte sized extended CSD
> > + * Read-in the card's whole extended CSD configuration area
> > + * @param[in] mci MCI instance
> > + * @param[out] ext_csd Buffer for an #EXT_CSD_BLOCKSIZE byte sized extended CSD
> >   * @return Transaction status (0 on success)
> >   *
> >   * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support
> > @@ -379,19 +379,23 @@ int mci_send_ext_csd(struct mci *mci, char *ext_csd)
> >  
> >  	data.dest = ext_csd;
> >  	data.blocks = 1;
> > -	data.blocksize = 512;
> > +	data.blocksize = EXT_CSD_BLOCKSIZE;
> 
> This breaks the build; EXT_CSD_BLOCKSIZE is undeclared in mci-core.c.
> Did you forget a prerequisite patch?

Dropped the patch for now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
