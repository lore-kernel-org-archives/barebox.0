Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9QIW-0005OC-6g
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 07:49:50 +0000
Date: Mon, 8 Oct 2018 09:49:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008074936.7ilxnbq7sc5mphbu@pengutronix.de>
References: <20180119132825.26662-1-u.kleine-koenig@pengutronix.de>
 <20180119132825.26662-2-u.kleine-koenig@pengutronix.de>
 <20180122081234.jxgbiblpvgaoeou4@pengutronix.de>
 <20181002083310.p7cepdfsqljutsok@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181002083310.p7cepdfsqljutsok@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe,

On Tue, Oct 02, 2018 at 10:33:10AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Mon, Jan 22, 2018 at 09:12:34AM +0100, Sascha Hauer wrote:
> > On Fri, Jan 19, 2018 at 02:28:25PM +0100, Uwe Kleine-K=F6nig wrote:
> > > new file mode 100644
> > > index 000000000000..2f5c7ad69a37
> > > --- /dev/null
> > > +++ b/commands/mmc.c
> > > @@ -0,0 +1,171 @@
> > > +#include <command.h>
> > > +#include <mci.h>
> > > +#include <stdio.h>
> > > +#include <string.h>
> > > +
> > > +/* enh_area setmax <-y|-n|-c> /dev/mmcX */
> > > +static int do_mmc_enh_area(int argc, char *argv[])
> > > +{
> > > +	char *devname;
> > > +	struct mci *mci;
> > > +	u8 *ext_csd;
> > > +	int set_completed =3D 0;
> > > +	int ret;
> > > +
> > > +	if (argc !=3D 4 || strcmp(argv[1], "setmax") ||
> > > +	    argv[2][0] !=3D '-' ||
> > > +	    (argv[2][1] !=3D 'y' && argv[2][1] !=3D 'n' && argv[2][1] !=3D =
'c')) {
> > > +		printf("Usage: mmc enh_area setmax <-y|-n|-c> /dev/mmcX\n");
> > > +		return 1;
> > > +	}
> > =

> > I assume 'y' means 'yes', 'n' means 'no', but what does 'c' mean? It
> > doesn't seem to be implemented and none of these options is documented.
> =

> I'll rework to
> =

> 	enh_area setmax [-c] /dev/mmcX
> =

> and add some documentation.
> =

> > > +	if (argv[2][1] =3D=3D 'y')
> > > +		set_completed =3D 1;
> > > +
> > > +	devname =3D argv[3];
> > > +	if (!strncmp(devname, "/dev/", 5))
> > > +		devname +=3D 5;
> > > +
> > > +	mci =3D mci_get_device_by_name(devname);
> > > +	if (!mci) {
> > > +		printf("Failure to open %s as mci device\n", devname);
> > > +		return -ENOENT;
> > > +	}
> > =

> > This part is probably needed by all other future subcommands aswell.
> > Should it be an extra function?
> =

> Something like:
> =

> struct mci *mci_get_device_by_devname(const char *devname)
> {
> 	if (!strncmp(devname, "/dev/", 5))
> 		devname +=3D 5;

devpath_to_name() instead.

> =

> 	return mci_get_device_by_name(devname);
> }
> =

> ?
> =

> > > +	if (!(ext_csd[EXT_CSD_PARTITIONING_SUPPORT] & EXT_CSD_ENH_ATTRIBUTE=
_EN_MASK)) {
> > > +		printf("Device doesn't support enhanced area\n");
> > > +		ret =3D -EIO;
> > > +		goto error;
> > > +	}
> > > +
> > > +	if (ext_csd[EXT_CSD_PARTITION_SETTING_COMPLETED]) {
> > > +		printf("Partitioning already finalized\n");
> > > +		ret =3D -EIO;
> > > +		goto error;
> > > +	}
> > > +
> > > +	ret =3D mci_switch(mci, EXT_CSD_ERASE_GROUP_DEF, 1);
> > > +	if (ret) {
> > > +		printf("Failure to write to EXT_CSD_ERASE_GROUP_DEF\n");
> > > +		goto error;
> > =

> > This command is *very* verbose in the error path. Would it be enough to
> > just write the register number of the failed access instead of the name?
> =

> It prints a single line if an error happens. I'd not say this is too
> verbose. Do you care about the output or the binary size?

The latter.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
