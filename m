Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzKDc-00051S-Bx
 for barebox@lists.infradead.org; Wed, 26 Oct 2016 09:09:57 +0000
Date: Wed, 26 Oct 2016 11:09:33 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20161026090933.qdzlqhv4blwx5idq@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
 <20161017132923.31834-5-m.grzeschik@pengutronix.de>
 <20161018062322.wje6gucvkt42v7oa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161018062322.wje6gucvkt42v7oa@pengutronix.de>
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

On Tue, Oct 18, 2016 at 08:23:22AM +0200, Sascha Hauer wrote:
> On Mon, Oct 17, 2016 at 03:29:23PM +0200, Michael Grzeschik wrote:
> > With this patch it is possible to write an mbr partition table to the
> > mci block device. By setting the device property "dos_partitions" of the
> > mmc device node, it is possible to write back the new partition layout
> > in the common cmdlinepart notation. The property can also be read back.
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  drivers/mci/mci-core.c | 122 +++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 122 insertions(+)
> > 
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 4e176f7..c0013a1 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -33,9 +33,11 @@
> >  #include <asm-generic/div64.h>
> >  #include <asm/byteorder.h>
> >  #include <block.h>
> > +#include <fcntl.h>
> >  #include <disks.h>
> >  #include <of.h>
> >  #include <linux/err.h>
> > +#include <cmdlinepart.h>
> >  
> >  #define MAX_BUFFER_NUMBER 0xffffffff
> >  
> > @@ -1527,6 +1529,122 @@ static void mci_info(struct device_d *dev)
> >  		extract_mtd_year(mci));
> >  }
> >  
> > +static char *print_size(uint64_t s)
> > +{
> > +	if (!(s & ((1 << 20) - 1)))
> > +		return basprintf("%lldM", s >> 20);
> > +	if (!(s & ((1 << 10) - 1)))
> > +		return basprintf("%lldk", s >> 10);
> > +	return basprintf("0x%lld", s);
> 
> s/lld/llx/

Why that? This will break the typical layout compared
to all other users of the kernelcmdline syntax.

> > +}
> > +
> > +static int print_part(char *buf, int bufsize, struct cdev *cdev, int is_last)
> > +{
> > +	char *size = print_size(cdev->size);
> > +	int ret;
> > +
> > +	if (!size) {
> > +		ret = -ENOMEM;
> > +		goto out;
> > +	}
> > +
> > +	ret = snprintf(buf, bufsize, "%s(%s)%s", size,
> > +			cdev->partname,
> > +			is_last ? "" : ",");
> > +out:
> > +	free(size);
> > +
> > +	return ret;
> > +}
> > +
> > +static int print_parts(char *buf, int bufsize, struct mci *mci)
> > +{
> > +	struct cdev *cdev, *ct;
> > +	int ret = 0;
> > +
> > +	list_for_each_entry_safe(cdev, ct, &mci->dev.cdevs, devices_list) {
> 
> safe_?

Sure. We don't change the list.

> > +		if ((cdev->flags & DEVFS_IS_PARTITION) &&
> > +			(cdev->flags & DEVFS_PARTITION_IN_PT)) {
> > +			int now;
> > +			int is_last = 0;
> > +			struct list_head *nh = (cdev)->devices_list.next;
> > +			struct cdev *next = container_of(nh, typeof(*(cdev)), devices_list);
> > +
> > +			if (list_is_last(&cdev->devices_list, &mci->dev.cdevs) ||
> > +				!(next->flags & DEVFS_PARTITION_IN_PT))
> > +				is_last = 1;
> 
> Is this test safe? What if the next partition does not have the
> DEVFS_PARTITION_IN_PT flag set, but the one after that has? Maybe you
> have to count the number of partitions in a first pass.


Yes. That's a good point. Will fix that.

> > +
> > +			now = print_part(buf, bufsize, cdev, is_last);
> > +			if (now < 0)
> > +				return now;
> > +
> > +			if (buf && bufsize) {
> > +				buf += now;
> > +				bufsize -= now;
> > +			}
> > +			ret += now;
> > +		}
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static const char *mci_partition_get(struct device_d *dev, struct param_d *p)
> > +{
> > +	struct mci *mci = container_of(dev, struct mci, dev);
> > +	int len = 0;
> > +
> > +	free(p->value);
> > +
> > +	len = print_parts(NULL, 0, mci);
> > +	p->value = xzalloc(len + 1);
> > +	print_parts(p->value, len + 1, mci);
> > +
> > +	return p->value;
> > +}
> > +
> > +#ifdef CONFIG_BLOCK_WRITE
> > +static int mci_partition_set(struct device_d *dev, struct param_d *p, const char *val)
> > +{
> > +	struct mci *mci = container_of(dev, struct mci, dev);
> > +	struct cdev *cdev, *ct;
> > +	int ret;
> > +
> > +	if (!val)
> > +		return -EINVAL;
> > +
> > +	/* remove all partition cdevs with DEVFS_IS_PARTITION set */
> > +	list_for_each_entry_safe(cdev, ct, &mci->dev.cdevs, devices_list) {
> > +		if ((cdev->flags & DEVFS_IS_PARTITION) &&
> > +			(cdev->flags & DEVFS_PARTITION_IN_PT))
> > +			ret = devfs_del_partition(cdev->name);
> > +			if (ret)
> > +				return ret;
> > +	}
> > +
> > +	/* read back the prepared partition layot from dos_partitions param */
> 
> s/layot/layout/
> 

Jupp.

> > +	ret = cmdlinepart_do_parse(mci->cdevname, val, mci->capacity,
> > +			CMDLINEPART_ADD_DEVNAME | CMDLINEPART_ADD_TO_PT);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* write the MBR partition layout based on cdevs with DEVFS_IS_PARTITION set  */
> > +	for (int i = 0; i < mci->nr_parts; i++) {
> > +		struct mci_part *part = &mci->part[i];
> > +		if (part->area_type == MMC_BLK_DATA_AREA_MAIN) {
> > +			ret = write_dos_partition_table(&part->blk,
> > +							&mci->dev.cdevs);
> > +			if (ret != 0) {
> > +				dev_warn(&mci->dev, "Could not write partition table\n");
> > +				return ret;
> > +			}
> > +		}
> > +	}
> > +
> > +	return ret;
> > +}
> > +#endif
> > +
> >  /**
> >   * Check if the MCI card is already probed
> >   * @param mci MCI device instance
> > @@ -1786,6 +1904,10 @@ int mci_register(struct mci_host *host)
> >  	mci->param_probe = dev_add_param_bool(&mci->dev, "probe",
> >  			mci_set_probe, NULL, &mci->probe, mci);
> >  
> > +#ifdef CONFIG_BLOCK_WRITE
> > +	dev_add_param(&mci->dev, "dos_partitions", mci_partition_set, mci_partition_get, 0);
> > +#endif
> 
> Use IS_ENABLED()
> 
> Other than that this code should be attached to parse_partition_table()
> rather than making this mci specific.
> We probably can safely write a dos partition table to an unpartitioned
> device, but should refuse to create/manipulate a dos partition table
> when a EFI partition table exists.

I will have that fixed in v2, until I figured out how to integrate that properly.

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
