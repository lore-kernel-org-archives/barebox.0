Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNKiZ-00029O-GL
 for barebox@lists.infradead.org; Mon, 28 May 2018 16:10:22 +0000
Date: Mon, 28 May 2018 18:09:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180528160943.nysdaeopgljdxss2@pengutronix.de>
References: <6e5f1325e3a931af10bf586e9a049692c8db1d63.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e5f1325e3a931af10bf586e9a049692c8db1d63.camel@allegion.com>
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
Subject: Re: [PATCH v2] commands/of_property: add option to apply changes as
 fixup
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 25, 2018 at 09:38:56AM +0000, Baeuerle, Florian wrote:
> Add an -f option to the of_property command, which defers the device
> tree modification until boot time and thus applies the modification as a
> fixup on the linux device tree.
> =

> Signed-off-by: Florian B=E4uerle <florian.baeuerle@allegion.com>
> ---
>  commands/of_property.c | 191 +++++++++++++++++++++++++++++------------
>  1 file changed, 138 insertions(+), 53 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/commands/of_property.c b/commands/of_property.c
> index 2bc08f2da..d0b923f4f 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -30,6 +30,7 @@
>  #include <errno.h>
>  #include <getopt.h>
>  #include <init.h>
> +#include <xfuncs.h>
>  =

>  static int of_parse_prop_cells(char * const *newval, int count, char *da=
ta, int *len)
>  {
> @@ -198,17 +199,126 @@ static int of_parse_prop(char * const *newval, int=
 count, char *data, int *len)
>  	}
>  }
>  =

> +struct of_fixup_property_data {
> +	char *path;
> +	char *propname;
> +	void *data;
> +	int len;
> +};
> +
> +static int do_of_property_delete_now(struct device_node *root, const cha=
r *path,
> +		const char *propname);
> +static int do_of_property_set_now(struct device_node *root, const char *=
path,
> +		const char *propname, void *data, int len);
> +
> +static int of_fixup_property_set(struct device_node *root, void *context)
> +{
> +	struct of_fixup_property_data *fixup =3D context;
> +
> +	return do_of_property_set_now(root, fixup->path, fixup->propname,
> +			fixup->data, fixup->len);
> +}
> +
> +static int of_fixup_property_delete(struct device_node *root, void *cont=
ext)
> +{
> +	struct of_fixup_property_data *fixup =3D context;
> +
> +	return do_of_property_delete_now(root, fixup->path, fixup->propname);
> +}
> +
> +static int do_of_property_set_fixup(const char *path, const char *propna=
me,
> +		void *data, int len)
> +{
> +	struct of_fixup_property_data *fixup;
> +
> +	fixup =3D xzalloc(sizeof(*fixup));
> +	fixup->path =3D xstrdup(path);
> +	fixup->propname =3D xstrdup(propname);
> +	fixup->data =3D data;
> +	fixup->len =3D len;
> +
> +	return of_register_fixup(of_fixup_property_set, (void *)fixup);
> +}
> +
> +static int do_of_property_delete_fixup(const char *path, const char *pro=
pname)
> +{
> +	struct of_fixup_property_data *fixup;
> +
> +	fixup =3D xzalloc(sizeof(*fixup));
> +	fixup->path =3D xstrdup(path);
> +	fixup->propname =3D xstrdup(propname);
> +	fixup->data =3D NULL;
> +	fixup->len =3D 0;
> +
> +	return of_register_fixup(of_fixup_property_delete, (void *)fixup);
> +}
> +
> +static int do_of_property_set_now(struct device_node *root, const char *=
path,
> +		const char *propname, void *data, int len)
> +{
> +	struct device_node *node =3D of_find_node_by_path_or_alias(root, path);
> +	struct property *pp;
> +
> +	if (!node) {
> +		printf("Cannot find nodepath %s\n", path);
> +		return -ENOENT;
> +	}
> +
> +	pp =3D of_find_property(node, propname, NULL);
> +
> +	if (pp) {
> +		free(pp->value);
> +		pp->value_const =3D NULL;
> +
> +		/* limit property data to the actual size */
> +		if (len)
> +			pp->value =3D xrealloc(data, len);
> +		else
> +			pp->value =3D NULL;
> +
> +		pp->length =3D len;
> +	} else {
> +		pp =3D of_new_property(node, propname, data, len);
> +		if (!pp) {
> +			printf("Cannot create property %s\n", propname);
> +			return -ENOMEM;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int do_of_property_delete_now(struct device_node *root, const cha=
r *path,
> +		const char *propname)
> +{
> +	struct device_node *node =3D of_find_node_by_path_or_alias(root, path);
> +	struct property *pp;
> +
> +	if (!node) {
> +		printf("Cannot find nodepath %s\n", path);
> +		return -ENOENT;
> +	}
> +
> +	pp =3D of_find_property(node, propname, NULL);
> +	if (!pp) {
> +		printf("Cannot find property %s\n", propname);
> +		return -ENOENT;
> +	}
> +
> +	of_delete_property(pp);
> +
> +	return 0;
> +}
> +
>  static int do_of_property(int argc, char *argv[])
>  {
>  	int opt;
>  	int delete =3D 0;
>  	int set =3D 0;
> -	int ret;
> +	int fixup =3D 0;
>  	char *path =3D NULL, *propname =3D NULL;
> -	struct device_node *node =3D NULL;
> -	struct property *pp =3D NULL;
>  =

> -	while ((opt =3D getopt(argc, argv, "ds")) > 0) {
> +	while ((opt =3D getopt(argc, argv, "dsf")) > 0) {
>  		switch (opt) {
>  		case 'd':
>  			delete =3D 1;
> @@ -216,6 +326,9 @@ static int do_of_property(int argc, char *argv[])
>  		case 's':
>  			set =3D 1;
>  			break;
> +		case 'f':
> +			fixup =3D 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -224,44 +337,19 @@ static int do_of_property(int argc, char *argv[])
>  	if (optind =3D=3D argc)
>  		return COMMAND_ERROR_USAGE;
>  =

> -	if (optind < argc) {
> +	if (optind < argc)
>  		path =3D argv[optind];
> -		node =3D of_find_node_by_path_or_alias(NULL, path);
> -		if (!node) {
> -			printf("Cannot find nodepath %s\n", path);
> -			return -ENOENT;
> -		}
> -	}
>  =

> -	if (optind + 1 < argc) {
> +	if (optind + 1 < argc)
>  		propname =3D argv[optind + 1];
>  =

> -		pp =3D of_find_property(node, propname, NULL);
> -		if (!set && !pp) {
> -			printf("Cannot find property %s\n", propname);
> -			return -ENOENT;
> -		}
> -	}
> -
>  	debug("path: %s propname: %s\n", path, propname);
>  =

> -	if (delete) {
> -		if (!node || !pp)
> -			return COMMAND_ERROR_USAGE;
> -
> -		of_delete_property(pp);
> -
> -		return 0;
> -	}
> -
>  	if (set) {
> -		int num_args =3D argc - optind - 2;
> +		int ret;
>  		int len;
>  		void *data;
>  =

> -		if (!node)
> -			return COMMAND_ERROR_USAGE;
> -
>  		/*
>  		 * standard console buffer size. The result won't be bigger than the
>  		 * string input.
> @@ -270,42 +358,39 @@ static int do_of_property(int argc, char *argv[])
>  		if (!data)
>  			return -ENOMEM;
>  =

> -		ret =3D of_parse_prop(&argv[optind + 2], num_args, data, &len);
> +		ret =3D of_parse_prop(&argv[optind + 2], argc - optind - 2, data, &len=
);
>  		if (ret) {
>  			free(data);
>  			return ret;
>  		}
>  =

> -		if (pp) {
> -			free(pp->value);
> -			pp->value_const =3D NULL;
> -
> -			/* limit property data to the actual size */
> -			if (len) {
> -				pp->value =3D xrealloc(data, len);
> -			} else {
> -				pp->value =3D NULL;
> +		if (fixup) {
> +			ret =3D do_of_property_set_fixup(path, propname, data, len);
> +			if (ret)
>  				free(data);
> -			}
> -
> -			pp->length =3D len;
>  		} else {
> -			pp =3D of_new_property(node, propname, data, len);
> -			if (!pp) {
> -				printf("Cannot create property %s\n", propname);
> -				free(data);
> -				return 1;
> -			}
> +			ret =3D do_of_property_set_now(NULL, path, propname, data, len);
> +			free(data);
>  		}
> +
> +		return ret;
>  	}
>  =

> -	return 0;
> +	if (delete) {
> +		if (fixup)
> +			return do_of_property_delete_fixup(path, propname);
> +		else
> +			return do_of_property_delete_now(NULL, path, propname);
> +	}
> +
> +	return COMMAND_ERROR_USAGE;
>  }
>  =

>  BAREBOX_CMD_HELP_START(of_property)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-s",  "set property to value")
>  BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
> +BAREBOX_CMD_HELP_OPT ("-f",  "set/delete as a fixup (defer the action un=
til booting)")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
>  BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not =
beginning with a digit are")
> @@ -317,7 +402,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(of_property)
>  	.cmd		=3D do_of_property,
>  	BAREBOX_CMD_DESC("handle device tree properties")
> -	BAREBOX_CMD_OPTS("[-sd] NODE [PROPERTY] [VALUES]")
> +	BAREBOX_CMD_OPTS("[-sd] [-f] NODE [PROPERTY] [VALUES]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_COMPLETE(devicetree_complete)
>  	BAREBOX_CMD_HELP(cmd_of_property_help)
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
