Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wj7Dh-00079x-KG
 for barebox@lists.infradead.org; Sat, 10 May 2014 13:21:42 +0000
Received: by mail-la0-f54.google.com with SMTP id pv20so693587lab.27
 for <barebox@lists.infradead.org>; Sat, 10 May 2014 06:21:17 -0700 (PDT)
Date: Sat, 10 May 2014 17:32:04 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140510173204.4b41ae82e107200370edface@gmail.com>
In-Reply-To: <536D5DBF.7040708@exegin.com>
References: <536D5DBF.7040708@exegin.com>
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
Subject: Re: [PATCH] Add readmem command to read values out of memory.
To: Owen Kirby <osk@exegin.com>
Cc: barebox@lists.infradead.org

On Fri, 09 May 2014 15:59:11 -0700
Owen Kirby <osk@exegin.com> wrote:

Can we simply add an addition option to existing 'md' command?

> From 299ffc6a961c807b118605bdd9e736c7b096fec9 Mon Sep 17 00:00:00 2001
> From: Owen Kirby <osk@exegin.com>
> Date: Fri, 9 May 2014 15:14:30 -0700
> Subject: [PATCH] Add readmem command to read values out of memory.
> =

> I was trying to do something conditionally from a shell script based on t=
he type
> of image present in flash, and finding it rather cumbersome to do. So I a=
dded a
> command that reads values out of memory and into shell variables as hexad=
ecimal.
> =

> Signed-off-by: Owen Kirby <osk@exegin.com>
> ---
>  commands/Kconfig   |    8 ++++
>  commands/Makefile  |    1 +
>  commands/readmem.c |  103 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 112 insertions(+)
>  create mode 100644 commands/readmem.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index cc014f3..52fa0df 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -367,6 +367,14 @@ config CMD_MEMSET
>  	  the memset command allows to set regions of memory and files to
>  	  a specific value.
>  =

> +config CMD_READMEM
> +	tristate
> +	default y
> +	select CMD_MEMORY
> +	prompt "readmem"
> +	help
> +	  the readmem command reads values from memory into a shell variable.
> +
>  config CMD_CRC
>  	tristate
>  	select CRC32
> diff --git a/commands/Makefile b/commands/Makefile
> index e463031..a01e642 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_CMD_MW)		+=3D mw.o
>  obj-$(CONFIG_CMD_MEMCMP)	+=3D memcmp.o
>  obj-$(CONFIG_CMD_MEMCPY)	+=3D memcpy.o
>  obj-$(CONFIG_CMD_MEMSET)	+=3D memset.o
> +obj-$(CONFIG_CMD_READMEM)	+=3D readmem.o
>  obj-$(CONFIG_CMD_EDIT)		+=3D edit.o
>  obj-$(CONFIG_CMD_EXEC)		+=3D exec.o
>  obj-$(CONFIG_CMD_SLEEP)		+=3D sleep.o
> diff --git a/commands/readmem.c b/commands/readmem.c
> new file mode 100644
> index 0000000..7070637
> --- /dev/null
> +++ b/commands/readmem.c
> @@ -0,0 +1,103 @@
> +/*
> + * (C) Copyright 2014
> + * Owen Kirby, Exegin Technologies Limited, osk@exegin.com
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <getopt.h>
> +#include <linux/stat.h>
> +#include <xfuncs.h>
> +#include <environment.h>
> +
> +extern char *mem_rw_buf;
> +
> +static int do_readmem(int argc, char *argv[])
> +{
> +	loff_t src;
> +	int	ret =3D 0;
> +	int fd;
> +	char *filename =3D "/dev/mem";
> +	char *varname;
> +	int mode =3D O_RWSIZE_4;
> +	int swab =3D 0;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
> +			&swab) < 0)
> +		return 1;
> +
> +	if (optind + 2 > argc)
> +		return COMMAND_ERROR_USAGE;
> +
> +	src =3D strtoull_suffix(argv[optind], NULL, 0);
> +	varname =3D argv[optind+1];
> +	fd =3D open_and_lseek(filename, mode | O_RDONLY, src);
> +	if (fd < 0)
> +		return 1;
> +
> +	/* Read the magic var. */
> +	if (read(fd, mem_rw_buf, mode >> O_RWSIZE_SHIFT) < 0) {
> +		perror("read");
> +		ret =3D 1;
> +	}
> +	/* Set the environment variable. */
> +	else if (mode =3D=3D O_RWSIZE_4) {
> +		u32 res =3D *(uint *)mem_rw_buf;
> +		char buf[sizeof(res)*2+1];
> +		sprintf(buf, "%08x", swab ? __swab32(res) : res);
> +		setenv(varname, buf);
> +	} else if (mode =3D=3D O_RWSIZE_2) {
> +		u16 res =3D *(ushort *)mem_rw_buf;
> +		char buf[sizeof(res)*2+1];
> +		sprintf(buf, "%04x", swab ? __swab16(res) : res);
> +		setenv(varname, buf);
> +	} else {
> +		char buf[sizeof(u_char)*2+1];
> +		sprintf(buf, "%02x", *(u_char *)mem_rw_buf);
> +		setenv(varname, buf);
> +	}
> +	close(fd);
> +	return ret;
> +}
> +
> +static const __maybe_unused char cmd_readmem_help[] =3D
> +"Usage: readmem [OPTIONS] <src> VAR\n"
> +"\n"
> +"options:\n"
> +"  -s <file>   source file (default /dev/mem)\n"
> +"  -b          read a byte\n"
> +"  -w          read a halfword (16bit)\n"
> +"  -l          read a word (32bit)\n"
> +"  -x          swap bytes\n"
> +"\n"
> +"read a magic value from <src> into variable VAR.\n";
> +
> +BAREBOX_CMD_START(readmem)
> +	.cmd		=3D do_readmem,
> +	.usage		=3D "read magic values from memory",
> +	BAREBOX_CMD_HELP(cmd_readmem_help)
> +BAREBOX_CMD_END
> +
> -- =

> 1.7.9.5
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
