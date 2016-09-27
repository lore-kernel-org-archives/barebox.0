Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boloA-000331-Mq
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 06:24:03 +0000
Date: Tue, 27 Sep 2016 08:23:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160927062340.u2tvhcgyio2l5ue7@pengutronix.de>
References: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
 <20160921080443.21522-1-iw3gtf@arcor.de>
 <20160921080443.21522-3-iw3gtf@arcor.de>
 <405969938.1037814.1474625516057.JavaMail.ngmail@webmail12.arcor-online.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <405969938.1037814.1474625516057.JavaMail.ngmail@webmail12.arcor-online.net>
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
Subject: Re: Re: [PATCH 2/2] commands: ubi: added the new command 'ubirename'
 to rename ubi volumes.
To: iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

On Fri, Sep 23, 2016 at 12:11:56PM +0200, iw3gtf@arcor.de wrote:
> Hi,
> 
> 
> ----- Original Nachricht ----
> Von:     Sascha Hauer <s.hauer@pengutronix.de>
> An:      Giorgio Dal Molin <iw3gtf@arcor.de>
> Datum:   22.09.2016 10:04
> Betreff: Re: [PATCH 2/2] commands: ubi: added the new command 'ubirename' to
>  rename ubi volumes.
> 
> > On Wed, Sep 21, 2016 at 10:04:43AM +0200, Giorgio Dal Molin wrote:
> > > From: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>
> > > 
> > > The syntax was taken from the corresponding command of the 'mts-utils'
> > > userland package:
> > > 
> > > # ubirename UBIDEV OLD_NAME NEW_NAME [OLD_NAME NEW_NAME ...]
> > > 
> > > Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
> > > ---
> > >  commands/ubi.c | 87
> > ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 87 insertions(+)
> > > 
> > > diff --git a/commands/ubi.c b/commands/ubi.c
> > > index 26b521f..3479340 100644
> > > --- a/commands/ubi.c
> > > +++ b/commands/ubi.c
> > > @@ -6,6 +6,8 @@
> > >  #include <errno.h>
> > >  #include <getopt.h>
> > >  #include <linux/mtd/mtd.h>
> > > +#include <linux/mtd/ubi.h>
> > > +#include <libgen.h>
> > >  #include <linux/kernel.h>
> > >  #include <linux/stat.h>
> > >  #include <linux/mtd/mtd-abi.h>
> > > @@ -306,3 +308,88 @@ BAREBOX_CMD_START(ubirmvol)
> > >  	BAREBOX_CMD_GROUP(CMD_GRP_PART)
> > >  	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
> > >  BAREBOX_CMD_END
> > > +
> > > +
> > > +static int get_vol_id(const char *vol_name)
> > > +{
> > > +	struct ubi_volume_desc *desc;
> > > +	struct cdev *vol_cdev;
> > > +	struct ubi_volume_info vi;
> > > +
> > > +	vol_cdev = cdev_by_name(vol_name);
> > > +	if(!vol_cdev) {
> > > +		perror("cdev_by_name");
> > > +		return -1;
> > > +	}
> > > +	desc = ubi_open_volume_cdev(vol_cdev, UBI_READONLY);
> > > +	if(IS_ERR(desc)) {
> > > +		perror("ubi_open_volume_cdev");
> > > +		return -1;
> > > +	}
> > > +	ubi_get_volume_info(desc, &vi);
> > > +	ubi_close_volume(desc);
> > > +
> > > +	return vi.vol_id;
> > > +};
> > 
> > This get_vol_id() is not particularly nice. Also I do not like having
> > the rename operation inside the ioctl parser as this means we cannot
> > make the ubirename code optional for users that do not need renaming.
> > 
> > I just sent out a series which should help you in this regard. Can you
> > base your code ontop of this?
> 
> I've noticed a problem in the 3rd patch ([PATCH 3/4] mtd: ubi: commands: use function API to access ubi volumes)
> of your last UBI serie: in the resulting code in 'commands/ubi.c', function 'do_ubirmvol()':
> 
> ...
> 	desc = ubi_open_volume_nm(ubinum, argv[2], UBI_EXCLUSIVE);
> 	if (IS_ERR(desc)) {
> 		ret = PTR_ERR(desc);
> 		printf("failed to open volume %s: %s\n", argv[2], strerror(-ret));
> 		goto err1;
> 	}
> 
> 	ret = ubi_api_remove_volume(desc, 0);
> 	if (ret)
> 		printf("failed to remove volume %s: %s\n", argv[2], strerror(-ret));
> 
> err1:
> 	ubi_close_volume(desc);
> err:
> 	close(fd);
> 
> 	return ret ? 1 : 0;
> }
> 
> You have a wrong 'goto err1': in that case the 'desc' pointer is not a memory address, it
> represent a negative error code and you cannot use it in ubi_close_volume(desc) (it segfaults).

Fixed that. Thanks for noting.

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
