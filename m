Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzKGd-0007FK-H5
 for barebox@lists.infradead.org; Wed, 26 Oct 2016 09:13:04 +0000
Date: Wed, 26 Oct 2016 11:12:41 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20161026091241.lkk5wnj4k4cmjvts@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
 <20161017132923.31834-4-m.grzeschik@pengutronix.de>
 <20161018060712.kqtkwxx73to6m434@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161018060712.kqtkwxx73to6m434@pengutronix.de>
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
Subject: Re: [PATCH 3/4] partitions/dos: add function to write partition table
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 18, 2016 at 08:07:12AM +0200, Sascha Hauer wrote:
> Hi Michael,
> 
> On Mon, Oct 17, 2016 at 03:29:22PM +0200, Michael Grzeschik wrote:
> > The function can be used to write an partition layout to the block device
> > based on its cdev layout. Only cdevs with flag DEVFS_PARTITION_IN_PT set
> > get written. The function also adds an static offset of 0x200000 to
> > ensure the mbr and bootloader will not be overwritten.
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  common/partitions/dos.c | 71 +++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/disks.h         |  1 +
> >  2 files changed, 72 insertions(+)
> > 
> > diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> > index 5f08e25..d7fa538 100644
> > --- a/common/partitions/dos.c
> > +++ b/common/partitions/dos.c
> > @@ -256,6 +256,77 @@ static void dos_partition(void *buf, struct block_device *blk,
> >  			&dsp->signature, "%08x", dsp);
> >  }
> >  
> > +static inline void hdimage_setup_chs(unsigned int lba, unsigned char *chs)
> > +{
> > +	const unsigned int hpc = 255;
> > +	const unsigned int spt = 63;
> > +	unsigned int s, c;
> > +
> > +	chs[0] = (lba/spt)%hpc;
> 
> Please run checkpatch over this. There are some stylistic flaws like
> missing whitespaces left and right of operators.

Thanks. I forgot to do that. It was an badly formatet template I used
here for reference. Will fix it.

> > +	c = (lba/(spt * hpc));
> > +	s = (lba > 0) ?(lba%spt + 1) : 0;
> > +	chs[1] = ((c & 0x300) >> 2) | (s & 0xff);
> > +	chs[2] = (c & 0xff);
> > +}
> > +
> > +int write_dos_partition_table(struct block_device *blk, struct list_head *cdevs)
> > +{
> > +	char part_table[6+4*sizeof(struct partition_entry)+2];
> > +	struct cdev *cdev, *ct;
> > +	void *buf;
> > +	int ret;
> > +	int n = 0;
> > +	char *ptr;
> > +
> > +	/* prepare partition table entry */
> > +	ptr = part_table;
> > +	memset(ptr, 0, sizeof(part_table));
> > +
> > +	/* skip disk signature */
> > +	ptr += 6;
> 
> It's even more important to skip this in the output buffer. This code
> should not change the disk signature.
> 
> > +	list_for_each_entry_safe(cdev, ct, cdevs, devices_list) {
> 
> Why _safe? You do not remove entries, do you?

No elements get changed in the iteration. I will change it.

> > +		if ((cdev->flags & DEVFS_IS_PARTITION) &&
> > +			(cdev->flags & DEVFS_PARTITION_IN_PT)) {
> 
> In a multiline if clause the second line should either start directly
> under the opening brace or indented with at least two more tabs than the
> opening if(), but using the same indention level as the conditional code
> makes it hard to read.

Will be changed.

> 
> > +			struct partition_entry *entry;
> 
> Instead of the silent test below, do a:
> 
> 			if (n == 4) {
> 				pr_warn("Only 4 partitions written to MBR\n");
> 				break;
> 			}
> 

Good thought. Will change.


> > +			entry = (struct partition_entry *)
> > +				(ptr + n * sizeof(struct partition_entry));
> > +
> > +			/* add static offset to skip the mbr and bootloader */
> > +			cdev->offset += 4096 * SECTOR_SIZE;
> > +
> > +			entry->type = 0x83;
> > +			entry->partition_start = cdev->offset / SECTOR_SIZE;
> > +			entry->partition_size = cdev->size / SECTOR_SIZE;
> 
> We should have a test if offset and/or size exceed the 32bit limit.
> 

Good point. Will add in v2.

> > +
> > +			hdimage_setup_chs(entry->partition_start,
> > +						entry->chs_begin);
> > +			hdimage_setup_chs(entry->partition_start +
> > +						entry->partition_size - 1,
> > +						entry->chs_end);
> > +			n++;
> > +		}
> > +		if (n == 4)
> > +			break;
> > +	}
> > +
> > +	ptr += 4 * sizeof(struct partition_entry);
> > +	ptr[0] = 0x55;
> > +	ptr[1] = 0xaa;
> > +
> > +	buf = read_mbr(blk);
> > +	if (!buf)
> > +		return -EIO;
> 
> You could move this to the top of the function and directly manipulate
> the input buffer.

Already prepared for v2.

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
