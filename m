Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzKht-00078l-O5
 for barebox@lists.infradead.org; Wed, 26 Oct 2016 09:41:15 +0000
Date: Wed, 26 Oct 2016 11:40:51 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20161026094051.ph6wwuwl3qitxntg@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
 <20161017132923.31834-5-m.grzeschik@pengutronix.de>
 <20161018062322.wje6gucvkt42v7oa@pengutronix.de>
 <20161026090933.qdzlqhv4blwx5idq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161026090933.qdzlqhv4blwx5idq@pengutronix.de>
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
Subject: Re: [PATCH 4/4] mci: add MBR write and read function to block devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 26, 2016 at 11:09:33AM +0200, Michael Grzeschik wrote:
> On Tue, Oct 18, 2016 at 08:23:22AM +0200, Sascha Hauer wrote:
> > On Mon, Oct 17, 2016 at 03:29:23PM +0200, Michael Grzeschik wrote:
> > > With this patch it is possible to write an mbr partition table to the
> > > mci block device. By setting the device property "dos_partitions" of the
> > > mmc device node, it is possible to write back the new partition layout
> > > in the common cmdlinepart notation. The property can also be read back.
> > > 
> > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > ---
> > >  drivers/mci/mci-core.c | 122 +++++++++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 122 insertions(+)
> > > 
> > > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > > index 4e176f7..c0013a1 100644
> > > --- a/drivers/mci/mci-core.c
> > > +++ b/drivers/mci/mci-core.c
> > > @@ -33,9 +33,11 @@
> > >  #include <asm-generic/div64.h>
> > >  #include <asm/byteorder.h>
> > >  #include <block.h>
> > > +#include <fcntl.h>
> > >  #include <disks.h>
> > >  #include <of.h>
> > >  #include <linux/err.h>
> > > +#include <cmdlinepart.h>
> > >  
> > >  #define MAX_BUFFER_NUMBER 0xffffffff
> > >  
> > > @@ -1527,6 +1529,122 @@ static void mci_info(struct device_d *dev)
> > >  		extract_mtd_year(mci));
> > >  }
> > >  
> > > +static char *print_size(uint64_t s)
> > > +{
> > > +	if (!(s & ((1 << 20) - 1)))
> > > +		return basprintf("%lldM", s >> 20);
> > > +	if (!(s & ((1 << 10) - 1)))
> > > +		return basprintf("%lldk", s >> 10);
> > > +	return basprintf("0x%lld", s);
> > 
> > s/lld/llx/
> 
> Why that? This will break the typical layout compared
> to all other users of the kernelcmdline syntax.

As I now realize you only ment the last line, this sure makes
sense. I will fix it. But the mtd layer I copied this from
has the same issue. Will fix that aswell.

Thanks,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
