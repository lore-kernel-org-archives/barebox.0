Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4Kk3-0007Uj-Fa
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 06:53:13 +0000
Date: Mon, 24 Sep 2018 08:52:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924065259.GA4097@pengutronix.de>
References: <20180921111820.29742-1-s.hauer@pengutronix.de>
 <20180921111820.29742-6-s.hauer@pengutronix.de>
 <20180921144240.GB14258@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180921144240.GB14258@ravnborg.org>
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
Subject: Re: [PATCH 5/8] mtd: mtdraw: add raw page size to private data
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Sep 21, 2018 at 04:42:40PM +0200, Sam Ravnborg wrote:
> Hi Sascha.
> 
> On Fri, Sep 21, 2018 at 01:18:17PM +0200, Sascha Hauer wrote:
> > The raw page size is used many times in the driver, so add a variable
> > to the private data instead of calculating it each time again.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mtd/mtdraw.c | 40 ++++++++++++++++++++--------------------
> >  1 file changed, 20 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> > index 089dc54eb4..6518ae34d5 100644
> > --- a/drivers/mtd/mtdraw.c
> > +++ b/drivers/mtd/mtdraw.c
> > @@ -48,6 +48,7 @@
> >   * @write_fill: number of bytes in writebuf
> >   * @write_ofs: offset in character device (mtdraw) where last write(s) stored
> >   * bytes because of unaligned writes (ie. remain of writesize+oobsize write)
> > + * @rps: raw page size (data + oob)
> From the code I would say that a (writesize + oobsize) was more correct.
> Like we use in the line above too.
> 
> > @@ -131,12 +132,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
> >  	int skip;
> >  
> >  	numblock = mtdraw_offset_to_block(mtdraw, offset);
> > -	skip = offset - numblock * (mtd->writesize + mtd->oobsize);
> > +	skip = offset - numblock * (mtdraw->rps);
> 
> Here the () can be dropped.

Ok, fixed. Thanks

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
