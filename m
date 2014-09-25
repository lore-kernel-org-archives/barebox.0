Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XX2Db-0001g6-7Z
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 06:07:55 +0000
Date: Thu, 25 Sep 2014 08:07:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140925060732.GE4992@pengutronix.de>
References: <1411551191-27938-1-git-send-email-t.gamez@phytec.de>
 <1411551191-27938-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411551191-27938-2-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 2/2] commands: add of_display_timings
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Wed, Sep 24, 2014 at 11:33:11AM +0200, Teresa G=E1mez wrote:
> A lot of boards use display-timings nodes to define the timings of one or=
 more
> displays. This command makes it possible to list and select displays whic=
h are
> defined in a device tree.

Nice idea.

> +static int of_display_timing(struct device_node *root, void *timingpath)
> +{
> +	int ret =3D 0;
> +	struct device_node *display;
> +
> +	display =3D of_find_node_by_path_from(root, (char *) timingpath);

Unnecessary cast.

> +static int do_of_display_timings(int argc, char *argv[])
> +{
> +	int opt;
> +	int list =3D 0;
> +	int selected =3D 0;
> +	int ret =3D 0;
> +	struct device_node *root =3D NULL;
> +	struct device_node *internal_root =3D NULL;
> +	struct device_node *display =3D NULL;
> +	struct device_node *timings =3D NULL;
> +	char *timingpath =3D NULL;
> +	char *dtbfile =3D NULL;
> +
> +	while ((opt =3D getopt(argc, argv, "sS:lf:")) > 0) {
> +		switch (opt) {
> +		case 'l':
> +			list =3D 1;
> +			break;
> +		case 'f':
> +			dtbfile =3D optarg;
> +			break;

Do we really need this option? It can only be used for showing display
timings in an external dtb, not for manipulating it. If I plan to use
the external tree I can still do a oftree -f / oftree -l dtb to exchange
the internal tree.

> +		case 's':
> +			selected =3D 1;
> +			break;
> +		case 'S':
> +			timingpath =3D xzalloc(strlen(optarg) + 1);
> +			strcpy(timingpath, optarg);

You never free timingpath. But why are you making a copy of the string?
This shouldn't be necessary.

> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	/* Check if external dtb given */
> +	if (dtbfile) {
> +		void *fdt;
> +		size_t size;
> +
> +		fdt =3D read_file(dtbfile, &size);
> +		if (!fdt) {
> +			pr_err("unable to read %s: %s\n", dtbfile,
> +				strerror(errno));
> +			return -errno;
> +		}
> +
> +		if (file_detect_type(fdt, size) !=3D filetype_oftree) {
> +			pr_err("%s is not a oftree file.\n", dtbfile);
> +			return -EINVAL;

Here you lose memory.

> +		}
> +
> +		root =3D of_unflatten_dtb(fdt);

This must be freed after use with of_delete_node().

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
