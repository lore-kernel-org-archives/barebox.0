Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeMQp-0002fk-GT
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 10:03:20 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2D839FFCD1B
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2013 11:04:32 +0100 (CET)
Date: Thu, 7 Nov 2013 11:04:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131107100456.GJ26639@ns203013.ovh.net>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 2/3] FPGA: add a programming command
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

	I really do not like it

	we need to have an API to load firmware same a Linux

	and then provide the file name to the dev via params

Best Regards,
J.
On 15:24 Wed 06 Nov     , Juergen Beisert wrote:
> This command is a simple frontend to the FPGA programming handler manager.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  commands/Kconfig    |  10 +++++
>  commands/Makefile   |   1 +
>  commands/fpgaload.c | 117 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 128 insertions(+)
>  create mode 100644 commands/fpgaload.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 9738ec4..bb4ccaf 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -605,6 +605,16 @@ config CMD_BAREBOX_UPDATE
>  	select BAREBOX_UPDATE
>  	prompt "barebox-update"
>  
> +config CMD_FPGALOAD
> +	bool
> +	select FPGAMANAGER
> +	prompt "fpgaload"
> +	help
> +	  Provides the "fpgaload" command which deals with FPGA firmware to
> +	  download it into an FPGA device. This command uses the FPGA manager
> +	  framework to hide the details about how program a specific FPGA
> +	  device.
> +
>  config CMD_TIMEOUT
>  	tristate
>  	prompt "timeout"
> diff --git a/commands/Makefile b/commands/Makefile
> index 58d27fa..864ca0c 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -93,3 +93,4 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
>  obj-$(CONFIG_CMD_DETECT)	+= detect.o
>  obj-$(CONFIG_CMD_BOOT)		+= boot.o
>  obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
> +obj-$(CONFIG_CMD_FPGALOAD)	+= fpgaload.o
> diff --git a/commands/fpgaload.c b/commands/fpgaload.c
> new file mode 100644
> index 0000000..677ff73
> --- /dev/null
> +++ b/commands/fpgaload.c
> @@ -0,0 +1,117 @@
> +/*
> + * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
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
> +#include <command.h>
> +#include <getopt.h>
> +#include <fpgamgr.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <linux/stat.h>
> +
> +static int fpgaload_write_data(struct fpga_mgr *mgr, const char *firmware)
> +{
> +	int fd, ret;
> +	struct stat s;
> +	size_t sz;
> +	unsigned char buffer[256]; /* must always be a multiple of 8 bytes! */
> +
> +	ret = stat(firmware, &s);
> +	if (ret != 0) {
> +		printf("Unable to access file '%s'\n", firmware);
> +		return -EINVAL;
> +	}
> +
> +	fd = open(firmware, O_RDONLY);
> +	if (fd < 0)
> +		return fd;
> +
> +	do {
> +		sz = read(fd, buffer, sizeof(buffer));
> +		if (sz == 0)
> +			break;
> +		ret = fpgamgr_prog_fpga(mgr, buffer, sz);
> +		if (ret < 0)
> +			break;
> +	} while (1);
> +
> +	close(fd);
> +	return 0;
> +}
> +
> +static int do_fpgaload(int argc, char *argv[])
> +{
> +	int ret, opt, index = -1;
> +	const char *name = NULL, *firmware;
> +	struct fpga_mgr *mgr;
> +
> +	while ((opt = getopt(argc, argv, "t:i:l")) > 0) {
> +		switch (opt) {
> +		case 't':
> +			name = optarg;
> +			break;
> +		case 'i':
> +			index = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'l':
> +			printf("registered programming handlers:\n");
> +			fpgamgr_handlers_list();
> +			return 0;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (!(argc - optind))
> +		return COMMAND_ERROR_USAGE;
> +
> +	firmware = argv[optind];
> +
> +	mgr = fpgamgr_find_handler(name, index);
> +	if (mgr == NULL) {
> +		printf("No such programming handler found\n");
> +		return 1;
> +	}
> +
> +	ret = fpgamgr_open_fpga(mgr);
> +	if (ret == -ENOSYS) {
> +		/* this might be a bug... */
> +		pr_debug("No programming initiater function defined\n");
> +	}
> +
> +	ret = fpgaload_write_data(mgr, firmware);
> +	if (ret != 0)
> +		return 1;
> +
> +	ret = fpgamgr_close_fpga(mgr);
> +	if (ret == -ENOSYS) {
> +		/* this might be a bug... */
> +		pr_debug("No programming finisher function defined\n");
> +	}
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(fpgaload)
> +BAREBOX_CMD_HELP_USAGE("fpgaload [OPTIONS] <firmware>\n")
> +BAREBOX_CMD_HELP_SHORT("Program a firmware file content into an FPGA\n")
> +BAREBOX_CMD_HELP_OPT("-t <target>", "define the FPGA handler by name\n")
> +BAREBOX_CMD_HELP_OPT("-i <index>", "define the FPGA handler by index\n")
> +BAREBOX_CMD_HELP_OPT("-l\t", "list registered FPGAs\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(fpgaload)
> +	.cmd = do_fpgaload,
> +	.usage = "program an FPGA",
> +	BAREBOX_CMD_HELP(cmd_fpgaload_help)
> +BAREBOX_CMD_END
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
