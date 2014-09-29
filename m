Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XYU5l-0007a6-IB
 for barebox@lists.infradead.org; Mon, 29 Sep 2014 06:05:50 +0000
Date: Mon, 29 Sep 2014 08:05:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140929060525.GQ4992@pengutronix.de>
References: <1411730551-26605-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411730551-26605-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2] commands: add of_display_timings
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 26, 2014 at 01:22:31PM +0200, Teresa G=E1mez wrote:
> A lot of boards use display-timings nodes to define the timings of one or=
 more
> displays. This command makes it possible to list and select displays whic=
h are
> defined in a device tree.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
> Changes v2:
> - removed cast
> - added free(ftd)
> - freed root
> =

>  commands/Kconfig              |   15 ++++
>  commands/Makefile             |    1 +
>  commands/of_display_timings.c |  182 +++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 198 insertions(+), 0 deletions(-)
>  create mode 100644 commands/of_display_timings.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3a49baf..0563e63 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1973,6 +1973,21 @@ config CMD_OF_PROPERTY
>  	  [00 11 22 .. nn]  - byte stream
>  	  If the value does not start with '<' or '[' it is interpreted as stri=
ng
>  =

> +config CMD_OF_DISPLAY_TIMINGS
> +	tristate
> +	select OFTREE
> +	prompt "of_display_timings"
> +	help
> +	  List and select display timings
> +
> +	  Usage: of_display_timings [-lS] [-s path] [-f dtb]
> +
> +	  Options:
> +		  -l		list path of all available display-timings
> +		  -S		list path of all selected display-timings
> +		  -s path	select display-timings and register oftree fixup
> +		  -f dtb	work on dtb. Has no effect on -s option
> +
>  config CMD_OFTREE
>  	tristate
>  	select OFTREE
> diff --git a/commands/Makefile b/commands/Makefile
> index 52b6137..f5ecbe6 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -76,6 +76,7 @@ obj-$(CONFIG_CMD_OFTREE)	+=3D oftree.o
>  obj-$(CONFIG_CMD_OF_PROPERTY)	+=3D of_property.o
>  obj-$(CONFIG_CMD_OF_NODE)	+=3D of_node.o
>  obj-$(CONFIG_CMD_OF_DUMP)	+=3D of_dump.o
> +obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS)	+=3D of_display_timings.o
>  obj-$(CONFIG_CMD_MAGICVAR)	+=3D magicvar.o
>  obj-$(CONFIG_CMD_IOMEM)		+=3D iomemport.o
>  obj-$(CONFIG_CMD_LINUX_EXEC)	+=3D linux_exec.o
> diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
> new file mode 100644
> index 0000000..9a6f8c8
> --- /dev/null
> +++ b/commands/of_display_timings.c
> @@ -0,0 +1,182 @@
> +/*
> + * of_display_timings.c - list and select display_timings
> + *
> + * Copyright (c) 2014 Teresa G=E1mez <t.gamez@phytec.de> PHYTEC Messtech=
nik GmbH
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <filetype.h>
> +#include <libfile.h>
> +#include <of.h>
> +#include <command.h>
> +#include <malloc.h>
> +#include <complete.h>
> +#include <asm/byteorder.h>
> +#include <getopt.h>
> +#include <linux/err.h>
> +#include <string.h>
> +
> +static int of_display_timing(struct device_node *root, void *timingpath)
> +{
> +	int ret =3D 0;
> +	struct device_node *display;
> +
> +	display =3D of_find_node_by_path_from(root, timingpath);
> +	if (!display) {
> +		pr_err("Path to display-timings is not vaild.\n");
> +		ret =3D -EINVAL;
> +		goto out;
> +	}
> +
> +	ret =3D of_set_property_to_child_phandle(display, "native-mode");
> +	if (ret)
> +		pr_err("Could not set display\n");
> +out:
> +	return ret;
> +}
> +
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
> +		case 's':
> +			selected =3D 1;
> +			break;
> +		case 'S':
> +			timingpath =3D xzalloc(strlen(optarg) + 1);
> +			strcpy(timingpath, optarg);
> +			break;

You're right, there's no place to free this string.

BTW we have xstrdup for duplicating strings.


> +		/*
> +		 * We set the external node to our internal node as
> +		 * long as the command runs. This makes life easier to
> +		 * use of tree functions. We backup the internal root node
> +		 * and set it back at the end.
> +		 */
> +		internal_root =3D of_get_root_node();
> +		of_set_root_node(NULL);
> +		of_set_root_node(root);

Since the only device tree function you are using is
for_each_node_by_name(), could you add a:

#define for_each_node_by_name_from(dn, root, name) \
	for (dn =3D of_find_node_by_name(root, name); dn; \
	     dn =3D of_find_node_by_name(dn, name))

to include/of.h and remove the temporary overwriting of the
internal device tree?

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
