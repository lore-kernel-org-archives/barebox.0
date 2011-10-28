Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJult-0002Jm-JU
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 22:19:31 +0000
Date: Sat, 29 Oct 2011 00:19:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111028221922.GF23421@pengutronix.de>
References: <20111028093456.GA7961@game.jcrosoft.org>
	<1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] add boot_config command support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Fri, Oct 28, 2011 at 05:37:39PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this just contain the bootmenu and dtb parsing can not yet boot for real
> 
> this will allow to create a boot config from a dtb file that can be provided
> by the OS to show a list a boot option
> 
> an example a file is in Documentation/bootsec.cfg
> 
> you can test using sandbox
> 
> diff --git a/Documentation/bootsec/bootsec.cfg b/Documentation/bootsec/bootsec.cfg
> new file mode 100644
> index 0000000..75160ee
> --- /dev/null
> +++ b/Documentation/bootsec/bootsec.cfg
> @@ -0,0 +1,104 @@
> +/dts-v1/;
> +
> +/ {
> +	data {
> +		kernel@1 {
> +			format = "uimage";
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/uImage-2.6.36";
> +		};
> +		initrd@1 {
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/initrd-2.6.36";
> +		};
> +
> +		kernel@2 {
> +			format = "zimage";
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/zImage-2.6.39";
> +		};
> +		initrd@2 {
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/initrd-2.6.39";
> +		};
> +
> +		kernel@3 {
> +			format = "uimage";
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/uImage-3.0.0";
> +		};
> +		initrd@3 {
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "/boot/inird-3.0.0";
> +		};
> +		fdt@3 {
> +			dev = "sda1";
> +			fs = "ext3";
> +			path = "boot/usb_a9g20.dtb";
> +		};
> +
> +		kernel@4 {
> +			format = "uimage";
> +			dev = "sda3";
> +			fs = "squashfs";
> +			path = "/boot/uImage-installer-3.0.0";
> +		};
> +		initrd@4 {
> +			dev = "sda3";
> +			fs = "squashfs";
> +			path = "/boot/initrd-installer-3.0.0";
> +		};

Why do you describe the device/fstype in each and every node? a
reference to a partition descriptions would be more convenient here.
Also it's strange that the patch is an absolute path and not a path
relative to the mountpoint.

> +	};
> +
> +	configuration {
> +		description = "Welcome on Barebox Boot Sequence";
> +		default = "linux_3_0_0";
> +		altboot = "installer";
> +		bootdelay = <5>;
> +		splash = /incbin/("splash_menu.bmp");
> +
> +		linux_2_6_36 {
> +			description = "Linux 2.6.36";
> +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";

We should be able to build the commandline out of its parts. A
monolithic string seems not very flexible.

> +			kernel = "kernel@1";
> +			initrd = "initrd@1";

phandles instead?

> +		};
> +
> +		linux_2_6_39 {
> +			description = "Linux 2.6.39";
> +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
> +			kernel = "kernel@2";
> +			initrd = "initrd@2";
> +		};
> +
> +		linux_3_0_0_bad {
> +			description = "Linux 3.0.0";
> +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
> +			kernel = "kernel@3";
> +			initrd = "initrd@3";
> +			fdt = "fdt@4";
> +		};
> +
> +		linux_3_0_0 {
> +			description = "Linux 3.0.0";
> +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
> +			kernel = "kernel@3";
> +			initrd = "initrd@3";
> +			fdt = "fdt@3";
> +		};
> +
> +		installer {
> +			description = "Installer Linux 3.0.0";
> +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda4 ro rootfstype=squashfs";
> +			splash = /incbin/("splash_installer.bmp");
> +			kernel = "kernel@4";
> +			initrd = "initrd@4";
> +		};
> +
> +#define OPTS		"f:dlc:b:"

This is used only once. It would be clearer to just use the string
instead.

> +
> +static void print_entries(void)
> +{
> +	struct boot_config_data *bed;
> +
> +	printf("[Kernel]\n");
> +
> +	list_for_each_entry(bed, boot_config_get_kernels(), list)
> +		printf("%s\n", bed->name);

So instead of the list_head directly you export it via
boot_config_get_kernels() which basically has the same effect but is
harder to read. Please do not do that.

> +	printf("[Initrd]\n");
> +
> +	list_for_each_entry(bed, boot_config_get_initrds(), list)
> +		printf("%s\n", bed->name);
> +
> +	printf("[FDT]\n");
> +
> +	list_for_each_entry(bed, boot_config_get_fdts(), list)
> +		printf("%s\n", bed->name);
> +
> +}
> +
> +static void print_boot_config_data(struct boot_config_data *bed)

What's a bed? Supposedly the thing I should go now.

> +{
> +	printf("name = '%s'\n", bed->name);
> +	printf("dev  = '%s'\n", bed->dev);
> +	printf("fs   = '%s'\n", bed->fs);
> +	printf("path = '%s'\n", bed->path);
> +}
> +
> +static void print_boot_config(struct boot_config *e)
> +{
> +	struct boot_config_var *v;
> +
> +	printf("Config '%s'\n\n", e->name);
> +
> +	v = boot_config_var_get_by_name(e, "description");

You have a mechanism to attach arbitrary key/value pairs to a struct
boot_config. Still you do not iterate over all over all variables in the
corresponding devicetree node, but instead only handle the variables
explicitely that you now about.

This does not make sense. struct boot_config should simply have a char
*description, char *cmdline and whatever else you need. Then you can
remove this boot_config_var_get_by_name() cruft.

> +	printf("description = %s\n", v->value);
> +	v = boot_config_var_get_by_name(e, "cmdline");
> +	printf("cmdline = '%s'\n", v->value);
> +	v = boot_config_var_get_by_name(e, "splash");
> +	if (v)
> +		printf("splash  = '%s'\n", v->value);
> +
> +	printf("[Kernel]\n");
> +	print_boot_config_data(e->kernel);
> +
> +	if (e->initrd) {
> +		printf("[Initrd]\n");
> +		print_boot_config_data(e->initrd);
> +	}
> +
> +	if (e->fdt) {
> +		printf("[fdt]\n");
> +		print_boot_config_data(e->fdt);
> +	}
> +}
> +
> +/*
> + * boot_config -l [-c config]
> + */

[...]

> +
> +static int do_boot_config(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct cmd_bood_config cbc;
> +	int opt;
> +	int ret = COMMAND_ERROR_USAGE;
> +
> +	memset(&cbc, 0, sizeof(struct cmd_bood_config));
> +
> +	while((opt = getopt(argc, argv, OPTS)) > 0) {
> +		switch(opt) {
> +		case 'f':
> +			cbc.action = action_load;
> +			cbc.filename = optarg;
> +			break;
> +		case 'd':
> +			boot_config_unload();
> +			break;
> +		case 'l':
> +			cbc.action = action_list;
> +			break;
> +		case 'b':
> +			cbc.action = action_boot;
> +		case 'c':
> +			cbc.config = optarg;
> +			break;
> +		}
> +	}
> +
> +	switch(cbc.action) {

What's this cbc.action thing about? It is only ever used in this
function.

> +	case action_list:
> +		ret = do_boot_config_list(&cbc);
> +		break;
> +	case action_load:
> +		ret = do_boot_config_load(&cbc);
> +		break;
> +	case action_boot:
> +		ret = do_boot_config_boot(&cbc);
> +		break;
> +
> +	};
> +
> +	if (ret)
> +		return COMMAND_ERROR_USAGE;

I don't know what errors you expect from above, but for sure it does not
necessarily mean that it's a usage error.

> +
> +	return 0;
> +}
> +

[,..]

>  
> diff --git a/common/boot_config.c b/common/boot_config.c
> new file mode 100644
> index 0000000..b60ce26
> --- /dev/null
> +++ b/common/boot_config.c
> @@ -0,0 +1,438 @@
> +/*
> + * (C) Copyright 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; version 2 of
> + * the License.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <readkey.h>
> +#include <errno.h>
> +#include <linux/err.h>
> +#include <boot_config.h>
> +#include <environment.h>
> +
> +int boot_config_debug;
> +static char *description;
> +static struct boot_config *default_boot;
> +static uint32_t bootdelay = -1;
> +
> +static LIST_HEAD(kernels);
> +static LIST_HEAD(initrds);
> +static LIST_HEAD(fdts);
> +static LIST_HEAD(configs);
> +
> +char* boot_config_get_description(void)
> +{
> +	return description;
> +}
> +
> +struct boot_config* boot_config_get_default_boot(void)
> +{
> +	return default_boot;
> +}
> +
> +uint32_t boot_config_get_bootdelay(void)
> +{
> +	return bootdelay;
> +}
> +
> +int boot_config_set_description(const char *s)
> +{
> +	if (!s)
> +		return -EINVAL;
> +	free(description);
> +	description = strdup(s);
> +
> +	if (!description)
> +		return -ENOMEM;
> +
> +	return 0;
> +}
> +
> +int boot_config_set_default_boot(struct boot_config *b)
> +{
> +	default_boot = b;
> +
> +	return 0;
> +}
> +
> +int boot_config_set_default_boot_by_name(const char *s)
> +{
> +	struct boot_config *b;
> +
> +	b = boot_config_get_by_name(s);
> +
> +	if (!b)
> +		return -EINVAL;
> +
> +	return boot_config_set_default_boot(b);
> +}
> +
> +int boot_config_set_bootdelay(uint32_t v)
> +{
> +	bootdelay = v;
> +
> +	return 0;
> +}
> +
> +struct list_head* boot_config_get_configs(void)
> +{
> +	return &configs;
> +}
> +
> +struct list_head* boot_config_get_kernels(void)
> +{
> +	return &kernels;
> +}
> +
> +struct list_head* boot_config_get_initrds(void)
> +{
> +	return &initrds;
> +}
> +
> +struct list_head* boot_config_get_fdts(void)
> +{
> +	return &fdts;
> +}

So much code just to handle some global data. You should collect this in
a struct and pass it around where you need it instead,

> +
> +int boot_config_item_init(struct boot_config *e)
> +{
> +	struct boot_config_var *v;
> +	int ret;
> +
> +	if (!e)
> +		return -EINVAL;
> +
> +	v = boot_config_var_get_by_name(e, "kernel");
> +	if (!v) {
> +		ret = -EINVAL;
> +		eprintf("Config %s: Missing kernel\n", e->name);
> +		goto err;
> +	}
> +	e->kernel = bed_list_get_by_name(&kernels, v->value);
> +	if (!e->kernel) {
> +		ret = -EINVAL;
> +		eprintf("Config %s: kernel '%s' not found\n", e->name, v->value);
> +		goto err;
> +	}
> +
> +	v = boot_config_var_get_by_name(e, "initrd");
> +	if (v) {
> +		e->initrd = bed_list_get_by_name(&initrds, v->value);
> +		if (!e->initrd) {
> +			ret = -EINVAL;
> +			eprintf("Config %s: initrd '%s' not found\n", e->name, v->value);
> +			goto err;
> +		}
> +	}
> +
> +	v = boot_config_var_get_by_name(e, "fdt");
> +	if (v) {
> +		e->fdt = bed_list_get_by_name(&fdts, v->value);
> +		if (!e->fdt) {
> +			ret = -EINVAL;
> +			eprintf("Config %s: fdt '%s' not found\n", e->name, v->value);
> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +err:
> +	return ret;
> +}
> +
> +int boot_config_add_by_name(const char *name, const char *desc,
> +			    const char *kernel, const char *cmdline,
> +			    const char *initrd, const char *fdt)
> +{
> +	struct boot_config *e = boot_config_alloc();
> +	int ret;
> +
> +	if (!e)
> +		return -ENOMEM;
> +
> +	if (boot_config_debug)
> +		printf("Boot '%s'\n", name);
> +
> +	if (boot_config_get_by_name(name))
> +		return -EEXIST;
> +
> +	e->name = strdup(name);
> +	if (!e->name) {
> +		ret = -ENOMEM;
> +		goto err_free;
> +	}
> +
> +	ret = boot_config_var_add(e, "description", desc);
> +	if (ret)
> +		goto err_free;
> +	ret = boot_config_var_add(e, "cmdline", cmdline);
> +	if (ret)
> +		goto err_free;
> +
> +	ret = boot_config_var_add(e, "kernel", kernel);
> +	if (ret)
> +		goto err_free;
> +
> +	if (initrd) {
> +		ret = boot_config_var_add(e, "initrd", initrd);
> +		if (ret)
> +			goto err_free;
> +	}
> +
> +	if (fdt) {
> +		ret = boot_config_var_add(e, "fdt", fdt);
> +		if (ret)
> +			goto err_free;
> +	}

I am not going to read further. Every struct boot_config seems to have a
clearly defined set of variables but instead of adding the corresponding
pointers to struct boot_config you have this strange
attach-key-value-pairs-to-c-struct in place.
Supposedly this is some leftover from earlier versions. Sending
non-finished patches as a RFC is perfectly fine, but in this case it's
sometimes really hard to see where you're heading to.

If you want to get this in someday it's going to be a long way.
Communicating with the Linux userspace using a devicetree means creating
an API which also means that we have to have the nice feeling that this API
can be stable. Right now it more looks to me as if the devicetree format is
an adhoc implementation of what you needed for your example.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
