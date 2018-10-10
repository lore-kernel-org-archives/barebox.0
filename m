Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gA8Eg-0006iM-Kx
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 06:44:48 +0000
Date: Wed, 10 Oct 2018 08:44:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181010064429.dbslv4umft4fetdk@pengutronix.de>
References: <20181008074936.7ilxnbq7sc5mphbu@pengutronix.de>
 <20181008082921.26922-1-u.kleine-koenig@pengutronix.de>
 <20181008082921.26922-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008082921.26922-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v3 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 08, 2018 at 10:29:21AM +0200, Uwe Kleine-K=F6nig wrote:
> The command structure allows adding more subcommands and is designed to
> match the Linux program mmc from the mmc-utils. So later more commands
> can easily be added if need be.
> =

> Compared to mmc-utils'
> =

> 	mmc enh_area set <-y|-n|-c> <start KiB> <length KiB> <device>
> =

> the command that is implemented here (
> =

> 	mmc enh_area setmax [-c] <device>
> =

> ) is easier to use (because you don't have to check the maximal allowed
> size by reading some registers and calculate the available size from
> them (which then must be calculated back to register values by the mmc
> command)) but less flexible as it doesn't allow all the crazy
> possibilities specified in the eMMC standard but just creates an
> enhanced area with maximal size.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> +static u8 *mci_get_ext_csd(struct mci *mci)
> +{
> +	u8 *ext_csd;
> +	int ret;
> +
> +	ext_csd =3D xmalloc(512);
> +
> +	ret =3D mci_send_ext_csd(mci, ext_csd);
> +	if (ret) {
> +		printf("Failure to read EXT_CSD register\n");
> +		return ERR_PTR(-EIO);

Please free malloced memory.

> +	}
> +
> +	return ext_csd;
> +}
> +
> +/* enh_area setmax [-c] /dev/mmcX */
> +static int do_mmc_enh_area(int argc, char *argv[])
> +{
> +	char *devpath;
> +	struct mci *mci;
> +	u8 *ext_csd;
> +	int set_completed =3D 0;
> +	int ret;
> +
> +	if (argc < 2 || strcmp(argv[1], "setmax") !=3D 0)
> +		goto usage;
> +
> +	if (argc =3D=3D 3) {
> +		/* enh_area setmax /dev/mmcX */
> +		devpath =3D argv[2];
> +		set_completed =3D false;
> +	} else if (argc =3D=3D 4 || strcmp(argv[2], "-c") =3D=3D 0) {
> +		/* enh_area setmax -c /dev/mmcX */
> +		devpath =3D argv[3];
> +		set_completed =3D true;
> +	} else {

This option parsing already is quite hard to read and will be harder if
it is extended in the future. Can't we use getopt() here?

Usage:
enh_area [options] <mmcdev>
 -m	Use maximum available space
 -c	complete partitioning

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
