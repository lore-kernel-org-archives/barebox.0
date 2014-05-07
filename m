Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhwvB-0003D7-S5
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:09:46 +0000
Date: Wed, 7 May 2014 10:09:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140507080924.GJ5858@pengutronix.de>
References: <1398751606-10167-1-git-send-email-s.hauer@pengutronix.de>
 <20140503113211.GA8953@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140503113211.GA8953@omega>
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
Subject: Re: [PATCH] mtd: nand-bb: use list_for_each_entry_safe
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 03, 2014 at 01:32:13PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> On Tue, Apr 29, 2014 at 08:06:46AM +0200, Sascha Hauer wrote:
> > We need list_for_each_entry_safe in dev_remove_bb_dev since the
> > list entries are removed during iteration over the list.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Reported-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  drivers/mtd/nand/nand-bb.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> > index f387ef6..89d5945 100644
> > --- a/drivers/mtd/nand/nand-bb.c
> > +++ b/drivers/mtd/nand/nand-bb.c
> > @@ -308,9 +308,9 @@ out1:
> >  
> >  int dev_remove_bb_dev(const char *name)
> >  {
> > -	struct nand_bb *bb;
> > +	struct nand_bb *bb, *tmp;
> >  
> > -	list_for_each_entry(bb, &bb_list, list) {
> > +	list_for_each_entry_safe(bb, tmp, &bb_list, list) {
> >  		if (!strcmp(bb->cdev.name, name)) {
> >  			devfs_remove(&bb->cdev);
> >  			cdev_close(bb->cdev_parent);
> 
> after reconsider this one, we don't need a list_for_each_entry_safe here
> because we returning after deleting and leave the for each loop there.
> Sorry, so maybe we should revert this commit? :-)

Well, the commit is not wrong, only unnecessary, so keep it.

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
