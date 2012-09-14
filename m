Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCUoX-0007YF-Cr
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 12:16:07 +0000
Message-ID: <1347624946.3037.3.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 14 Sep 2012 14:15:46 +0200
In-Reply-To: <1347608713-10133-2-git-send-email-s.hauer@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
 <1347608713-10133-2-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] Add barebox update infrastructure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 14.09.2012, 09:45 +0200 schrieb Sascha Hauer:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig          |    5 +++
>  commands/Makefile         |    1 +
>  commands/barebox-update.c |   80 +++++++++++++++++++++++++++++++++
>  common/Kconfig            |    3 ++
>  common/Makefile           |    1 +
>  common/bbu.c              |  110 +++++++++++++++++++++++++++++++++++++++++++++
>  include/bbu.h             |   37 +++++++++++++++
>  7 files changed, 237 insertions(+)
>  create mode 100644 commands/barebox-update.c
>  create mode 100644 common/bbu.c
>  create mode 100644 include/bbu.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index f2756cc..0ed0d69 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -470,6 +470,11 @@ config CMD_OFTREE
>  	prompt "oftree"
>  	select FDT
>  
> +config CMD_BAREBOX_UPDATE
> +	tristate
> +	select BAREBOX_UPDATE
> +	prompt "barebox-update"
> +
>  endmenu
>  
>  config CMD_TIMEOUT
> diff --git a/commands/Makefile b/commands/Makefile
> index ccebd7f..62762de 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -74,3 +74,4 @@ obj-$(CONFIG_CMD_BASENAME)	+= basename.o
>  obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
>  obj-$(CONFIG_CMD_READLINK)	+= readlink.o
>  obj-$(CONFIG_CMD_LN)		+= ln.o
> +obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
> diff --git a/commands/barebox-update.c b/commands/barebox-update.c
> new file mode 100644
> index 0000000..db8ae7d
> --- /dev/null
> +++ b/commands/barebox-update.c
> @@ -0,0 +1,80 @@
> +/*
> + * barebox-update.c - update barebox
> + *
> + * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
> +#include <common.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <bbu.h>
> +#include <fs.h>
> +
> +static int do_barebox_update(int argc, char *argv[])
> +{
> +	int opt, ret;
> +	struct bbu_data data = {};
> +
> +	while ((opt = getopt(argc, argv, "t:yf:l")) > 0) {
> +		switch (opt) {
> +		case 'f':
> +			data.force = simple_strtoul(optarg, NULL, 0);
> +			data.flags |= BBU_FLAG_FORCE;
> +			break;
> +		case 't':
> +			data.handler_name = optarg;
> +			break;
> +		case 'y':
> +			data.flags |= BBU_FLAG_YES;
> +			break;
> +		case 'l':
> +			printf("registered handlers:\n");
> +			bbu_handlers_list();
> +			return 0;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (!(argc - optind))
> +		return COMMAND_ERROR_USAGE;
> +
> +	data.imagefile = argv[optind];
> +
> +	data.image = read_file(data.imagefile, &data.len);
> +	if (!data.image)
> +		return -errno;
> +
> +	ret = barebox_update(&data);
> +
> +	free(data.image);
> +
> +	return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(barebox_update)
> +BAREBOX_CMD_HELP_USAGE("barebox_update [OPTIONS <image>]\n")
image is mandatory
> +BAREBOX_CMD_HELP_OPT("-t <target>", "\n")
> +BAREBOX_CMD_HELP_OPT("-y\t", "yes. Do not ask for confirmation\n")
> +BAREBOX_CMD_HELP_OPT("-f <level>", "Set force level\n")
> +BAREBOX_CMD_HELP_OPT("-l\t", "list registered targets\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(barebox_update)
> +	.cmd		= do_barebox_update,
> +	.usage		= "update barebox",
> +	BAREBOX_CMD_HELP(cmd_barebox_update_help)
> +BAREBOX_CMD_END
> diff --git a/common/Kconfig b/common/Kconfig
> index b97392c..a6f6c0f 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -58,6 +58,9 @@ config GLOBALVAR
>  config STDDEV
>  	bool
>  
> +config BAREBOX_UPDATE
> +	bool
> +
>  menu "General Settings              "
>  
>  config LOCALVERSION
> diff --git a/common/Makefile b/common/Makefile
> index df9f301..07c422a 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -37,6 +37,7 @@ obj-$(CONFIG_MENU) += menu.o
>  obj-$(CONFIG_PASSWORD) += password.o
>  obj-$(CONFIG_MODULES) += module.o
>  obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
> +obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
>  extra-$(CONFIG_MODULES) += module.lds
>  
>  ifdef CONFIG_DEFAULT_ENVIRONMENT
> diff --git a/common/bbu.c b/common/bbu.c
> new file mode 100644
> index 0000000..928c34b
> --- /dev/null
> +++ b/common/bbu.c
> @@ -0,0 +1,110 @@
> +/*
> + * bbu.c - barebox update functions
> + *
> + * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
> +#include <common.h>
> +#include <bbu.h>
> +#include <linux/list.h>
> +#include <errno.h>
> +#include <readkey.h>
> +
> +static LIST_HEAD(bbu_image_handlers);
> +
> +int bbu_force(struct bbu_data *data, const char *fmt, ...)
> +{
> +	va_list args;
> +
> +	printf("UPDATE: ");
> +
> +	va_start(args, fmt);
> +
> +	vprintf(fmt, args);
> +
> +	va_end(args);
> +
> +	if (!(data->flags & BBU_FLAG_FORCE))
> +		goto out;
> +
> +	if (!data->force)
> +		goto out;
> +
> +	data->force--;
> +
> +	printf(" (forced)\n");
> +
> +	return 1;
> +out:
> +	printf("\n");
> +
> +	return 0;
> +}
> +
> +int bbu_confirm(struct bbu_data *data)
> +{
> +	int key;
> +
> +	if (data->flags & BBU_FLAG_YES)
> +		return 1;
> +
> +	printf("update barebox from %s to %s (y/n)?\n",
> +			data->imagefile, data->handler_name);
> +
> +	key = read_key();
> +	if (key == 'y')
> +		return 1;
> +	return 0;
> +}
> +
> +int barebox_update(struct bbu_data *data)
> +{
> +	struct bbu_handler *handler;
> +	int ret;
> +
> +	list_for_each_entry(handler, &bbu_image_handlers, list) {
> +		if (!data->handler_name) {
> +			if (handler->flags & BBU_HANDLER_FLAG_DEFAULT) {
> +				data->handler_name = handler->name;
> +				goto found;
> +			}
> +			continue;
> +		}
> +		if (!strcmp(handler->name, data->handler_name))
> +			goto found;
> +	}
> +
> +	return -ENODEV;
> +
> +found:
> +
> +	ret = handler->handler(handler, data);
> +	return ret;
> +}
> +
> +void bbu_handlers_list(void)
> +{
> +	struct bbu_handler *handler;
> +
> +	list_for_each_entry(handler, &bbu_image_handlers, list)
> +		printf("%s%s\n", handler->name,
> +				handler->flags & BBU_HANDLER_FLAG_DEFAULT ?
> +				" (default)" : "");
> +}
> +
> +int bbu_register_handler(struct bbu_handler *handler)
> +{
> +	list_add_tail(&handler->list, &bbu_image_handlers);
> +	return 0;
> +}
> diff --git a/include/bbu.h b/include/bbu.h
> new file mode 100644
> index 0000000..ce1a608
> --- /dev/null
> +++ b/include/bbu.h
> @@ -0,0 +1,37 @@
> +#ifndef __INCLUDE_BBU_H
> +#define __INCLUDE_BBU_H
> +
> +struct bbu_data {
> +#define BBU_FLAG_FORCE	(1 << 0)
> +#define BBU_FLAG_YES	(1 << 1)
> +	unsigned long flags;
> +	int force;
> +	void *image;
> +	const char *imagefile;
> +	size_t len;
> +	const char *handler_name;
> +};
> +
> +struct bbu_handler {
> +	int (*handler)(struct bbu_handler *, struct bbu_data *);
> +	void *handler_data;
> +	const char *name;
> +	struct list_head list;
> +#define BBU_HANDLER_FLAG_DEFAULT	(1 << 0)
> +	unsigned long flags;
> +};
> +
> +int bbu_force(struct bbu_data *, const char *fmt, ...)
> +	__attribute__ ((format(__printf__, 2, 3)));
> +
> +int bbu_confirm(struct bbu_data *);
> +
> +int bbu_register_handler(struct bbu_handler *);
> +
> +int barebox_update(struct bbu_data *);
> +
> +int barebox_arm_update(struct bbu_handler *, struct bbu_data *data);
> +
> +void bbu_handlers_list(void);
> +
> +#endif /* __INCLUDE_BBU_H */



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
