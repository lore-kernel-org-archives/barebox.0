Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn2Z7-0003m9-BO
 for barebox@lists.infradead.org; Wed, 21 May 2014 09:12:02 +0000
Received: by mail-lb0-f172.google.com with SMTP id l4so1346954lbv.3
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 02:11:21 -0700 (PDT)
Date: Wed, 21 May 2014 13:22:28 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140521132228.aeeab4590eb6731f0654c785@gmail.com>
In-Reply-To: <1400659362.4772.13.camel@mars>
References: <1400606875.26128.1.camel@mars> <20140520180830.GA4321@omega>
 <1400617760.26128.270.camel@mars> <20140521034438.GA10482@omega>
 <1400659362.4772.13.camel@mars>
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
Subject: Re: [PATCH v2] commands: add 'findstr' to search file for string
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Wed, 21 May 2014 10:02:42 +0200
Christoph Fritz <chf.fritz@googlemail.com> wrote:

> Command 'findstr' can be for example used to find string

We already have some commands with string.h style names:
  memcmp, memcpy, memset

Can we use 'strstr' name for your new command?

Another proposition:
 can we add <offset from file start> and <no more N characters to search> p=
arameters?

Using these parameters you can speed up your search and use your command wi=
th /dev/mem.

> "MAC=3D1C:BA:8C:F3:82:BB" in file /dev/eeprom0 to set an
> appropriate environment variable:
> =

>  $ findstr -o 16 -l 17 -t eth0.ethaddr pcm051_eth0_MAC=3D /dev/eeprom0
> =

> Usage: findstr [OPTIONS] <STRING> <FILE>
> Find ASCII string in file and print it
> -o <offset>     set offset of string which gets printed
> -l <length>     set length of string which gets printed
> -t <var>        print into variable instead of stdio
> =

> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
> Changes in v2:
>  - fix Kconfig: 'default n' is default
>  - add default branch to switch
>  - fix search string read-buffer overlap
> ---
>  commands/Kconfig   |    6 +++
>  commands/Makefile  |    1 +
>  commands/findstr.c |  140 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 commands/findstr.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3ef8860..a795da9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -149,6 +149,12 @@ config CMD_GLOBAL
>  	help
>  	  The global command allows to create global variables
>  =

> +config CMD_FINDSTR
> +	tristate
> +	prompt "findstr"
> +	help
> +	  Find ASCII string in file.
> +
>  endmenu
>  =

>  menu "file commands"
> diff --git a/commands/Makefile b/commands/Makefile
> index f927d21..580b137 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -97,3 +97,4 @@ obj-$(CONFIG_CMD_READF)		+=3D readf.o
>  obj-$(CONFIG_CMD_MENUTREE)	+=3D menutree.o
>  obj-$(CONFIG_CMD_2048)		+=3D 2048.o
>  obj-$(CONFIG_CMD_REGULATOR)	+=3D regulator.o
> +obj-$(CONFIG_CMD_FINDSTR)	+=3D findstr.o
> diff --git a/commands/findstr.c b/commands/findstr.c
> new file mode 100644
> index 0000000..934c300
> --- /dev/null
> +++ b/commands/findstr.c
> @@ -0,0 +1,140 @@
> +/*
> + * Copyright (c) 2014 Christoph Fritz <chf.fritz@googlemail.com>
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
> + *
> + */
> +
> +/**
> + * @file
> + * @brief Find string in file
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <getopt.h>
> +#include <environment.h>
> +
> +#define FINDSTR_BUF_SIZE	RW_BUF_SIZE
> +
> +extern char *mem_rw_buf;
> +
> +/**
> + * @param[in] argc Argument count from command line
> + * @param[in] argv List of input arguments
> + */
> +static int do_findstr(int argc, char *argv[])
> +{
> +	int opt, fd, r, ret =3D 1;
> +	loff_t len =3D 0, offset =3D 0, idx =3D 0;
> +	u_char *s, *t =3D NULL, *v =3D (u_char *)mem_rw_buf;
> +	unsigned int v_idx, s_idx =3D 0;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	while ((opt =3D getopt(argc, argv, "o:l:t:")) > 0) {
> +		switch (opt) {
> +		case 'o':
> +			offset =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'l':
> +			len =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 't':
> +			t =3D optarg;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (argc - optind !=3D 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	s =3D argv[optind];
> +
> +	fd =3D open(argv[optind+1], O_RDONLY);
> +	if (fd < 0)
> +		return COMMAND_ERROR_USAGE;
> +
> +	while (1) {
> +		r =3D read(fd, mem_rw_buf, FINDSTR_BUF_SIZE);
> +		if (r < 0) {
> +			ret =3D -EIO;
> +			goto out;
> +		}
> +		if (!r)
> +			break;
> +
> +		v_idx =3D 0;
> +
> +		while (r) {
> +			if (v[v_idx] =3D=3D s[s_idx])
> +				s_idx++;
> +			else
> +				s_idx =3D 0;
> +
> +			idx++;
> +			v_idx++;
> +
> +			if (s_idx =3D=3D strlen(s)) {	/* found */
> +				loff_t hit =3D idx - strlen(s);
> +
> +				if (lseek(fd, hit + offset, SEEK_SET) < 0) {
> +					ret =3D -EIO;
> +					goto out;
> +				}
> +
> +				if (!len)
> +					len =3D strlen(s);
> +				r =3D read(fd, mem_rw_buf, len);
> +				if (r !=3D len) {
> +					ret =3D -EIO;
> +					goto out;
> +				}
> +
> +				v[r] =3D '\0';
> +
> +				if (t)
> +					setenv(t, v);
> +				else
> +					printf("%s\n", v);
> +
> +				ret =3D 0;
> +				goto out;
> +			}
> +			r--;
> +		}
> +	}
> +out:
> +	close(fd);
> +	return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(findstr)
> +BAREBOX_CMD_HELP_USAGE("findstr [OPTIONS] <STRING> <FILE>\n")
> +BAREBOX_CMD_HELP_SHORT("Find ASCII string in file and print it\n")
> +BAREBOX_CMD_HELP_OPT("-o <offset>", "set offset of string which gets pri=
nted\n")
> +BAREBOX_CMD_HELP_OPT("-l <length>", "set length of string which gets pri=
nted\n")
> +BAREBOX_CMD_HELP_OPT("-t <var>", "print into variable instead of stdio\n=
")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(findstr)
> +	.cmd		=3D do_findstr,
> +	.usage		=3D "findstr [OPTIONS] <STRING> <FILE>",
> +	BAREBOX_CMD_HELP(cmd_findstr_help)
> +BAREBOX_CMD_END
> -- =

> 1.7.10.4
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
