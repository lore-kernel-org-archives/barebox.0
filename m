Delivery-date: Wed, 22 Apr 2026 11:11:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFTc5-00F2sG-02
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 11:11:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFTc3-0006LO-RV
	for lore@pengutronix.de; Wed, 22 Apr 2026 11:11:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KLvbYhApGFKgAGfu4a0HjfVp1G3XUt47hKvxMso2vsU=; b=nHx1ZkjzuMSiGUN9I991ORL5Mx
	o8glvXXuZwBXg5F4WzTK/n0yYTD5f2/YtjGChr0FaJPQkJ/4ybCfrZymzzZpMgpZskbefqrd5mzku
	HdqtQSpCEM6r5shXkd8cwwaZwjA+sBth43qyj7MzVMUwGj+tavR+w2OFjzO66rw+lJTXONxLhBDOU
	bt8ertPlo57C/TjNceESfcPu17ERXamCwYtF4iCgDvmzE9u6NI4f0GyDjNhNtVGMvP39YJhybBI0m
	Dzau1Wlt4UORB8xsk0roO3LM4Llnm553D3txLTKv6uWKhc30Es9YR58hOMYojOsuXwSIbgeGb7jF3
	NR1QA4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTbO-00000009ot1-0l7p;
	Wed, 22 Apr 2026 09:10:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTbK-00000009osS-3sjc
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 09:10:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wFTbI-0006Cw-0V; Wed, 22 Apr 2026 11:10:28 +0200
Message-ID: <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
Date: Wed, 22 Apr 2026 11:10:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_021031_278779_EA0D0630 
X-CRM114-Status: GOOD (  54.27  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

Thanks for your patch!

On 4/16/26 3:45 PM, Alexander Shiyan wrote:
> This adds support for the extlinux.conf configuration format, commonly
> used by Syslinux and many Linux distributions. The configuration file
> is typically located at /boot/extlinux/extlinux.conf or
> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> device tree, and command line options.
> 
> The implementation integrates with the existing boot entry framework:
> - The extlinux scanner discovers entries on mounted filesystems
> - Default label is turned into a boot entry
> - The "root=" parameter is automatically stripped from the append line
>   to allow barebox to inject the correct root device (via appendroot)
> - Bootm is used to load and start the kernel
> ---
> barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=mmc1.2
> barebox@Diasom DS-RK3568-SOM-EVB:/ boot
> ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> Booting entry 'extlinux: linux'
> extlinux: Booting extlinux label 'linux'
> Adding "root=/dev/mmcblk1p3" to Kernel commandline
> Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
> Loaded initrd from GZIP compressed /mnt/mmc1.2/boot/extlinux/../initrd.img to 0x000000000d390000-0x000000000fb48ca6
> commandline: mem=0xef600000 root=/dev/mmcblk1p3 console=ttyS2,1500000n8 ro systemd.unit=setup.target quiet splash  systemd.machine_id=181af2816b4c6b0aef77068e0ccc69ad
> Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  common/Kconfig    |  19 ++++
>  common/Makefile   |   1 +
>  common/extlinux.c | 271 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 291 insertions(+)
>  create mode 100644 common/extlinux.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index cd002865f7..bbffbfe92c 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -726,6 +726,25 @@ config BLSPEC
>  	  on a device and it allows the Operating System to install / update
>  	  kernels.
>  
> +config EXTLINUX
> +	bool
> +	prompt "Support extlinux.conf"
> +	depends on FLEXIBLE_BOOTARGS
> +	depends on !SHELL_NONE
> +	select BOOT
> +	select BOOTM
> +	select MMCBLKDEV_ROOTARG if MCI
> +	help
> +	  Enable this to let barebox parse extlinux.conf configuration files,
> +	  commonly used by the Syslinux bootloader and many Linux distributions
> +	  (e.g., on SD cards or USB drives).
> +	  extlinux.conf is typically located at /boot/extlinux/extlinux.conf or
> +	  /extlinux/extlinux.conf. It defines boot entries with kernel, initrd,
> +	  device tree, and command line options.
> +	  This option allows barebox to discover and boot operating systems
> +	  that follow the extlinux configuration format, providing a simple
> +	  and portable way to manage multiple boot options.
> +
>  config FLEXIBLE_BOOTARGS
>  	bool
>  	prompt "flexible Linux bootargs generation"
> diff --git a/common/Makefile b/common/Makefile
> index ac39ee4e3e..dda42c099a 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -9,6 +9,7 @@ obj-y				+= clock.o
>  pbl-$(CONFIG_PBL_CLOCKSOURCE)	+= clock.o
>  obj-y				+= console_common.o
>  obj-$(CONFIG_OFDEVICE)		+= deep-probe.o
> +obj-$(CONFIG_EXTLINUX)		+= extlinux.o
>  obj-y				+= startup.o
>  obj-y				+= misc.o
>  obj-pbl-y			+= memsize.o
> diff --git a/common/extlinux.c b/common/extlinux.c
> new file mode 100644
> index 0000000000..39d5191ecc
> --- /dev/null
> +++ b/common/extlinux.c
> @@ -0,0 +1,271 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> +
> +#define pr_fmt(fmt)     "extlinux: " fmt
> +
> +#include <boot.h>
> +#include <bootm.h>
> +#include <bootscan.h>
> +#include <common.h>
> +#include <environment.h>
> +#include <fs.h>
> +#include <globalvar.h>
> +#include <libfile.h>
> +#include <libgen.h>
> +#include <malloc.h>
> +#include <string.h>
> +
> +struct extlinux_entry {
> +	struct bootentry entry;
> +	char *rootpath;
> +	char *label;
> +	char *kernel;
> +	char *initrd;
> +	char *fdtdir;
> +	char *fdt;
> +	char *append;
> +};
> +
> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
> +{
> +	struct extlinux_entry *e =
> +		container_of(be, struct extlinux_entry, entry);
> +	char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
> +	struct bootm_data data = {};
> +	int ret;
> +
> +	bootm_data_init_defaults(&data);
> +
> +	data.dryrun = max_t(int, dryrun, data.dryrun);
> +	data.verbose = max(verbose, data.verbose);
> +	data.appendroot = true;

Not sure this is a good idea because of potential of clashing with
extlinux appended command line options.

> +
> +	kernel_abs = basprintf("%s/%s", e->rootpath, e->kernel);
> +	data.os_file = kernel_abs;
> +
> +	if (e->initrd) {
> +		initrd_abs = basprintf("%s/%s", e->rootpath, e->initrd);
> +		data.initrd_file = initrd_abs;
> +	}
> +
> +	if (e->fdt) {
> +		char *fdtdir = e->fdtdir ? : e->rootpath;
> +
> +		fdt_abs = basprintf("%s/%s", fdtdir, e->fdt);
> +		data.oftree_file = fdt_abs;
> +	}
> +
> +	if (e->append)
> +		globalvar_add_simple("linux.bootargs.dyn.extlinux", e->append);
> +
> +	pr_info("Booting extlinux label '%s'\n", e->label);
> +
> +	ret = bootm_boot(&data);

Please make use of new bootm_entry instead, so it can be used with devboot:

https://github.com/barebox/barebox/blob/next/Documentation/user/devboot.rst

> +	if (ret)
> +		pr_err("bootm failed: %s\n", strerror(-ret));
> +
> +	free(kernel_abs);
> +	free(initrd_abs);
> +	free(fdt_abs);
> +
> +	return ret;
> +}
> +
> +static void extlinux_entry_free(struct bootentry *be)
> +{
> +	struct extlinux_entry *e =
> +		container_of(be, struct extlinux_entry, entry);
> +
> +	free(e->rootpath);
> +	free(e->label);
> +	free(e->kernel);
> +	free(e->initrd);
> +	free(e->fdtdir);
> +	free(e->fdt);
> +	free(e->append);
> +	free(e);
> +}
> +
> +static char *remove_param(const char *params, const char *param)
> +{
> +	char *result, *dst;
> +	const char *src;
> +
> +	result = xmalloc(strlen(params) + 1);
> +
> +	src = params;
> +	dst = result;
> +
> +	while (*src) {
> +		if (!strncasecmp(src, param, strlen(param))) {
> +			while (*src && *src != ' ')
> +				src++;
> +
> +			src = skip_spaces(src);
> +
> +			continue;
> +		}
> +
> +		*dst++ = *src++;
> +	}
> +
> +	*dst = '\0';
> +
> +	return result;
> +}
> +
> +static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
> +						  const char *rootpath)
> +{
> +	char *buf, *bufptr, *line, *p, *default_label = NULL;
> +	struct extlinux_entry *entry = NULL;
> +
> +	bufptr = read_file(abspath, NULL);
> +	if (!bufptr)
> +		return ERR_PTR(-errno);
> +
> +	for (p = bufptr; *p; p++)
> +		if (*p == '\r')
> +			*p = '\n';

I think this can be dropped.

> +
> +	buf = bufptr;
> +	while ((line = strsep(&buf, "\n")) != NULL) {

And then you replace the set searched here with "\r\n"

> +		char *key, *val;
> +
> +		line = skip_spaces(line);
> +
> +		if (*line == '#' || *line == '\0')
> +			continue;
> +

Nitpick: I think below can be simplified to:

> +		key = line;
> +		val = strchr(line, ' ');
> +		if (!val)
> +			val = strchr(line, '\t');
> +		if (val) {
> +			*val++ = '\0';
> +			val = skip_spaces(val);
> +		} else
> +			continue;

key = strsep(&line, ' \t');
val = strsep(&line, '\n');
val = isempty(val) ? NULL : skip_spaces(val);



> +
> +		if (!default_label) {
> +			if (!strcasecmp(key, "DEFAULT"))
> +				default_label = xstrdup(val);
> +
> +			continue;
> +		}
> +
> +		if (!strcasecmp(key, "LABEL")) {
> +			if (!strcmp(val, default_label)) {

defaut_label might not have been set here?

You can use streq_ptr which includes NULL pointer checks.

> +				entry = xzalloc(sizeof(*entry));
> +				entry->label = xstrdup(val);
> +				entry->rootpath = dirname(xstrdup(abspath));
> +			} else if (entry)
> +				break;

Kernel coding style is keeping the { braces } for an else when the if
has some.

> +			continue;
> +		}
> +
> +		/*
> +		 * The same rootfs image may be launched from eMMC or SD card.
> +		 * Remove any hardcoded root= parameter from "append" to avoid
> +		 * conflicts, then let barebox automatically add the correct
> +		 * root= (via appendroot) based on the boot device.
> +		 */

I understand the thought process, but this feels very invasive. What if
the extlinux.conf files are on a different partition? I think that's not
too uncommon for systems that have a ROM-code mandated FAT partition anyway.

At the very least, make this dependent on a parameter being set, maybe
just global.bootm.appendroot?

> +		if (entry) {
> +			if (!strcasecmp(key, "KERNEL"))
> +				entry->kernel = xstrdup(val);
> +			else if (!strcasecmp(key, "INITRD"))
> +				entry->initrd = xstrdup(val);
> +			else if (!strcasecmp(key, "FDTDIR"))
> +				entry->fdtdir = xstrdup(val);
> +			else if (!strcasecmp(key, "FDT"))
> +				entry->fdt = xstrdup(val);
> +			else if (!strcasecmp(key, "APPEND"))
> +				entry->append = remove_param(val, "ROOT=");
> +			else
> +				pr_debug("Unhandled key: %s\n", key);

I would make this a pr_warn or at least a pr_info, so new users have an
easier time knowing why something doesn't work.

> +		}
> +	}
> +
> +	free(default_label);
> +	free(bufptr);
> +
> +	if (!entry || !entry->kernel) {
> +		if (entry)
> +			extlinux_entry_free(&entry->entry);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return entry;
> +}
> +
> +static int extlinux_scan_file(struct bootscanner *scanner,
> +			      struct bootentries *bootentries,
> +			      const char *configname)
> +{
> +	struct extlinux_entry *e;
> +	const char *rootpath;
> +
> +	if (!strends(configname, "extlinux.conf"))
> +		return 0;
> +
> +	rootpath = get_mounted_path(configname);
> +	if (IS_ERR(rootpath))
> +		return PTR_ERR(rootpath);

This means you don't support this file existing at a subdirectory of a
mountpoint. That can be useful though if one is using ostree or if we
include extlinux.conf files in the environment for testing.

Please add an intermediate __extlinux_scan_file that takes rootpath, see
how blspec does it.

> +
> +	e = parse_extlinux_conf(configname, rootpath);
> +	if (IS_ERR(e))
> +		return PTR_ERR(e);
> +
> +	e->entry.boot = extlinux_boot;
> +	e->entry.release = extlinux_entry_free;
> +	e->entry.path = xstrdup(configname);

xstrdup_const

> +	e->entry.title = basprintf("extlinux: %s", e->label);
> +	e->entry.description = basprintf("extlinux entry \'%s\" on %s",
> +					 e->label, rootpath);
> +	e->entry.me.type = MENU_ENTRY_NORMAL;
> +
> +	bootentries_add_entry(bootentries, &e->entry);
> +
> +	return 1;
> +}
> +
> +static int extlinux_scan_directory(struct bootscanner *scanner,
> +				   struct bootentries *bootentries,
> +				   const char *rootpath)
> +{
> +	char *path;
> +	struct stat s;
> +	int ret;
> +
> +	path = basprintf("%s/boot/extlinux/extlinux.conf", rootpath);

You mention both /boot/extlinux/extlinux and /extlinux/extlinux
as directory, but you only check one of them here.

Should you not check the second one as well?

> +	ret = stat(path, &s);
> +	if (!ret && S_ISREG(s.st_mode))

A extlinux.conf _directory_ is silently skipped by this. Intentional?

> +		ret = extlinux_scan_file(scanner, bootentries, path);

You should pass along rootpath here.

> +
> +	free(path);
> +
> +	return ret < 1 ? ret : 1;

This can be simplified to return ret;

> +}
> +
> +static struct bootscanner extlinux_scanner = {
> +	.name = "extlinux",
> +	.scan_file = extlinux_scan_file,
> +	.scan_directory = extlinux_scan_directory,

This implements

boot -l /mnt/mmc0.1/boot/extlinux/extlinux.conf
boot -l /mnt/mmc0.1/

and leaves the rest to the core.
I think that's fine, but can you check if the following work:

boot -l mmc0
boot -l /dev/mmc0
boot -l mmc0.1
boot -l /dev/mmc0.1

> +};
> +
> +static int extlinux_generate(struct bootentries *bootentries, const char *name)
> +{
> +	return bootentry_scan_generate(&extlinux_scanner, bootentries, name);
> +}
> +
> +static struct bootentry_provider extlinux_provider = {
> +	.name = "extlinux",
> +	.generate = extlinux_generate,

You need to set a negative priority here, so existing bootloader spec
support wins if both are available.

I think .priority = -25 is ok, so it's in-between blspec and efiboomgr.

> +};
> +
> +static int extlinux_init(void)
> +{
> +	return bootentry_register_provider(&extlinux_provider);
> +}
> +device_initcall(extlinux_init);


Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



