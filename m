Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Weqbj-00043Y-I6
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 18:48:52 +0000
Date: Mon, 28 Apr 2014 20:48:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428184830.GX5858@pengutronix.de>
References: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
 <1398678579-17491-3-git-send-email-s.hauer@pengutronix.de>
 <20140428130524.GA19883@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428130524.GA19883@omega>
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
Subject: Re: [PATCH 3/6] mtd: nand: bb: use mtd api directly
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 03:05:26PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> On Mon, Apr 28, 2014 at 11:49:36AM +0200, Sascha Hauer wrote:
> > The devfs layer just adds an addition indirection between mtd
> > and the bb devices with no purpose. Drop it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mtd/nand/nand-bb.c | 122 +++++++++++++++++++--------------------------
> >  1 file changed, 50 insertions(+), 72 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> > index f387ef6..06b5824 100644
> > --- a/drivers/mtd/nand/nand-bb.c
> > +++ b/drivers/mtd/nand/nand-bb.c
> > @@ -25,22 +25,18 @@
> >  #include <init.h>
> >  #include <ioctl.h>
> >  #include <nand.h>
> > -#include <linux/mtd/mtd-abi.h>
> > +#include <linux/mtd/mtd.h>
> >  #include <fcntl.h>
> >  #include <libgen.h>
> ...
> 
> > @@ -313,8 +291,8 @@ int dev_remove_bb_dev(const char *name)
> >  	list_for_each_entry(bb, &bb_list, list) {
> >  		if (!strcmp(bb->cdev.name, name)) {
> >  			devfs_remove(&bb->cdev);
> > -			cdev_close(bb->cdev_parent);
> >  			list_del_init(&bb->list);
> > +			free(bb->name);
> >  			free(bb);
> >  			return 0;
> >  		}
> 
> I know you doesn't change this line but I think we need a
> list_for_each_entry_safe here instead of list_for_each_entry.

Ouch, you are right. I'll prepare a patch for this.

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
