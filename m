Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAfy-0006S0-Lc
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:58:03 +0000
Date: Sun, 16 Sep 2012 10:58:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916085801.GG6180@pengutronix.de>
References: <1347720962-32574-1-git-send-email-s.hauer@pengutronix.de>
 <87k3vuuzgh.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k3vuuzgh.fsf@free.fr>
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
Subject: Re: [PATCH] mtd mtdraw: Fix partial page read
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sun, Sep 16, 2012 at 10:46:54AM +0200, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > When reading parts of a page we have to limit the maximum bytes copied
> > the the remaining bytes of a page.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> > ---
> >  drivers/mtd/mtdraw.c |    1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> > index d28ae07..29f6a8c 100644
> > --- a/drivers/mtd/mtdraw.c
> > +++ b/drivers/mtd/mtdraw.c
> > @@ -129,6 +129,7 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
> >  
> >  	while (ret > 0 && count > 0) {
> >  		toread = min_t(int, count, mtd->writesize + mtd->oobsize);
> > +		toread = min_t(int, toread, mtd->writesize + mtd->oobsize -
> >  		skip);
> Hi Sasha,
> 
> Why the 2 lines of min_t() instead of a single:
> toread = min_t(int, count, mtd->writesize + mtd->oobsize - skip)

Yeah, this doubles the efficiency ;) Will do that instead.

Thanks
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
