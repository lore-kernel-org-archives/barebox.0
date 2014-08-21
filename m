Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XKR4H-0000W0-QW
 for barebox@lists.infradead.org; Thu, 21 Aug 2014 12:02:14 +0000
Received: by mail-la0-f51.google.com with SMTP id pn19so8538349lab.10
 for <barebox@lists.infradead.org>; Thu, 21 Aug 2014 05:01:49 -0700 (PDT)
Date: Thu, 21 Aug 2014 16:15:07 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140821161507.8e0382473912fde0587f9443@gmail.com>
In-Reply-To: <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
References: <20140804192141.GO23235@pengutronix.de>
 <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] commands: of_dump switch to get fixed devictree
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, 21 Aug 2014 13:26:19 +0200
Jan Weitzel <j.weitzel@phytec.de> wrote:

> Add a switch to get the devicetree processed by the registered fixups.
> This is also whats the kernel gets.
> =

> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v3: create a copy of the internal devicetree before use of_fix_tree
> =

>  commands/of_dump.c |   31 +++++++++++++++++++++++++++++--
>  1 files changed, 29 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index cafde07..f82f0fd 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -34,16 +34,20 @@ static int do_of_dump(int argc, char *argv[])
>  {
>  	int opt;
>  	int ret;
> +	int fix =3D 0;
>  	struct device_node *root =3D NULL, *node, *of_free =3D NULL;
>  	char *dtbfile =3D NULL;
>  	size_t size;
>  	const char *nodename;
>  =

> -	while ((opt =3D getopt(argc, argv, "f:")) > 0) {
> +	while ((opt =3D getopt(argc, argv, "Ff:")) > 0) {
>  		switch (opt) {
>  		case 'f':
>  			dtbfile =3D optarg;
>  			break;
> +		case 'F':
> +			fix =3D 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -75,6 +79,28 @@ static int do_of_dump(int argc, char *argv[])
>  		of_free =3D root;
>  	} else {
>  		root =3D of_get_root_node();
> +
> +		if (fix) {
> +			/* create a copy of internal devicetree */
> +			void *fdt;
> +			fdt =3D of_flatten_dtb(root);
> +			root =3D of_unflatten_dtb(fdt);
> +
> +			free(fdt);
> +
> +			if (IS_ERR(root)) {
> +				ret =3D PTR_ERR(root);
> +				goto out;
> +			}
> +
> +			of_free =3D root;
> +		}
> +	}
> +
> +	if (fix) {
> +		ret =3D of_fix_tree(root);
> +		if (ret)
> +			goto out;
>  	}
>  =

>  	node =3D of_find_node_by_path_or_alias(root, nodename);
> @@ -96,12 +122,13 @@ out:
>  BAREBOX_CMD_HELP_START(of_dump)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devic=
etree\n")
> +BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree\n")
>  BAREBOX_CMD_HELP_END
>  =

>  BAREBOX_CMD_START(of_dump)
>  	.cmd		=3D do_of_dump,
>  	BAREBOX_CMD_DESC("dump devicetree nodes")
> -	BAREBOX_CMD_OPTS("[-f] [NODE]")
> +	BAREBOX_CMD_OPTS("[-fF] [NODE]")

This is a bit confusing. The '-f' option has one argument,
but '-F' option has noone. =


IMHO this solution is more accurate:

+	BAREBOX_CMD_OPTS("[-F] [-f NODE]")


>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
>  	BAREBOX_CMD_HELP(cmd_of_dump_help)
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
