Delivery-date: Thu, 04 Jun 2026 08:35:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1fd-002Bf2-1U
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:35:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1fc-0005Wx-Bw
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:35:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=LxJKUgThnng5d6EhHAlIjBO0fhxz5bkz0yf8QUuvGn4=; b=vPLdPOPXMSyObF2rEJzTCJ1Lfr
	4DArt4AoLrFMrMizutso+pz9Ebwdnt4HtEJ6yCvj1F9zHHHvmjAw0sejQUhYAXPJOKIxLtIkRc2lB
	//hmsGyAbKWMYTZOvwnxWuFZqoW2m+HzNNnaZTYf+Pw4oiwP9CC6EZIZZqNyQYkyiE8K37MDMC4u9
	Kfs0PJ6I20tt885xCJFhpv7qFPAjAyLl6rLfW5unKU+VqxQ77mhACoCGFNyJOXxVuBqghyMQqhEnk
	eK7YLrUOHOpFNILm16sbvh0oJ+L6wNBSXrK+6owViyVz6LvCPqEi70PQGBxd94tHjW5Bwh8d0kK5M
	1Kn78TGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1Vt-0000000GDmV-2QCC;
	Thu, 04 Jun 2026 06:25:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1Vr-0000000GDm4-0EWE
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:25:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wV1Vo-0004KL-Np; Thu, 04 Jun 2026 08:25:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wV1Vo-00125j-1j;
	Thu, 04 Jun 2026 08:25:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wV1Vo-00000003qL5-1qY3;
	Thu, 04 Jun 2026 08:25:04 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org, "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <20260529051347.1373331-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 06:25:04 +0000
Message-Id: <E1wV1Vo-00000003qL5-1qY3@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_232507_275650_26522B1C 
X-CRM114-Status: GOOD (  34.08  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 2026-05-29 08:13, Alexander Shiyan wrote:
> This adds support for the extlinux.conf configuration format, commonly
> used by Syslinux and many Linux distributions. The configuration file
> is typically located at /boot/extlinux/extlinux.conf or
> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> device tree, and command line options.
>=20
> The implementation integrates with the existing boot entry framework:
> - The extlinux scanner discovers entries on mounted filesystems.
> - The default LABEL is turned into a boot entry.
> - Bootm is used to load and start the kernel.
> ---
> barebox@Diasom DS-RK3568-SOM-EVB:/ global.bootm.appendroot=3Dtrue
> barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=3Dmmc1.2
> barebox@Diasom DS-RK3568-SOM-EVB:/ boot
> ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> Booting entry 'extlinux: linux'
> extlinux: Booting extlinux label 'linux'
> Adding "root=3D/dev/mmcblk1p3" to Kernel commandline
> Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
> commandline: root=3D/dev/mmcblk1p3 console=3DttyS2,1500000n8 ro systemd.u=
nit=3Dsetup.target quiet splash systemd.machine_id=3D181af2816b4c6b0aef7706=
8e0ccc69ad
> Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
>=20
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  common/Kconfig    |  19 ++++
>  common/Makefile   |   1 +
>  common/extlinux.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 263 insertions(+)
>  create mode 100644 common/extlinux.c
>=20
> diff --git a/common/Kconfig b/common/Kconfig
> index 047dd5390b..6f1eabdf8b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -776,6 +776,25 @@ config BLSPEC
>  	  on a device and it allows the Operating System to install / update
>  	  kernels.
> =20
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
> index 21b6cecb3b..6b97edc2c3 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -9,6 +9,7 @@ obj-y				+=3D clock.o
>  pbl-$(CONFIG_PBL_CLOCKSOURCE)	+=3D clock.o
>  obj-y				+=3D console_common.o
>  obj-$(CONFIG_OFDEVICE)		+=3D deep-probe.o
> +obj-$(CONFIG_EXTLINUX)		+=3D extlinux.o
>  obj-y				+=3D startup.o
>  obj-y				+=3D misc.o
>  obj-pbl-y			+=3D memsize.o
> diff --git a/common/extlinux.c b/common/extlinux.c
> new file mode 100644
> index 0000000000..6ad01cc652
> --- /dev/null
> +++ b/common/extlinux.c
> @@ -0,0 +1,243 @@
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
> +static int extlinux_boot(struct bootentry *entry, int verbose, int dryru=
n)
> +{
> +	struct extlinux_entry *e =3D
> +		container_of(entry, struct extlinux_entry, entry);
> +	char *kernel_abs, *initrd_abs =3D NULL, *fdt_abs =3D NULL;
> +	struct bootm_data data =3D {};
> +	int ret;
> +
> +	bootm_data_init_defaults(&data);
> +
> +	data.dryrun =3D max_t(int, dryrun, data.dryrun);
> +	data.verbose =3D max(verbose, data.verbose);
> +
> +	kernel_abs =3D basprintf("%s/%s", e->rootpath, e->kernel);
> +	data.os_file =3D kernel_abs;
> +
> +	if (e->initrd) {
> +		initrd_abs =3D basprintf("%s/%s", e->rootpath, e->initrd);
> +		data.initrd_file =3D initrd_abs;
> +	}
> +
> +	if (e->fdt) {
> +		char *fdtdir =3D e->fdtdir ? : e->rootpath;
> +
> +		fdt_abs =3D basprintf("%s/%s", fdtdir, e->fdt);
> +		data.oftree_file =3D fdt_abs;
> +	}
> +
> +	if (e->append)
> +		globalvar_add_simple("linux.bootargs.dyn.bootentries",
> +				     e->append);
> +
> +	pr_info("Booting extlinux label '%s'\n", e->label);
> +
> +	ret =3D bootm_entry(entry, &data);
> +	if (ret)
> +		pr_err("bootm failed: %pe\n", ERR_PTR(ret));
> +
> +	free(kernel_abs);
> +	free(initrd_abs);
> +	free(fdt_abs);
> +
> +	return ret;
> +}
> +
> +static void extlinux_entry_free(struct bootentry *entry)
> +{
> +	struct extlinux_entry *e =3D
> +		container_of(entry, struct extlinux_entry, entry);
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
> +static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
> +						  const char *rootpath)
> +{
> +	char *buf, *bufptr, *line, *default_label =3D NULL;
> +	struct extlinux_entry *entry =3D NULL;
> +
> +	bufptr =3D read_file(abspath, NULL);
> +	if (!bufptr)
> +		return ERR_PTR(-errno);
> +
> +	buf =3D bufptr;
> +	while ((line =3D strsep(&buf, "\n\r")) !=3D NULL) {
> +		char *key, *val;
> +
> +		line =3D skip_spaces(line);
> +
> +		if (*line =3D=3D '#' || *line =3D=3D '\0')
> +			continue;
> +
> +		key =3D strsep(&line, " \t");
> +		val =3D isempty(line) ? NULL : skip_spaces(line);
> +		if (!key || !val)
> +			continue;
> +
> +		if (!default_label) {
> +			if (!strcasecmp(key, "DEFAULT"))
> +				default_label =3D xstrdup(val);
> +
> +			continue;
> +		}
> +
> +		if (!strcasecmp(key, "LABEL")) {
> +			if (!strcmp(val, default_label)) {
> +				entry =3D xzalloc(sizeof(*entry));
> +				entry->label =3D xstrdup(val);
> +				entry->rootpath =3D dirname(xstrdup(abspath));
> +			} else if (entry) {
> +				break;
> +			}

The extlinux format supports multiple entries, but you return here after
the first entry parsed. We should either document that we only support a
single entry or implement multiple entries.

Unless I am overlooking something it should be quite straight forward to
implement multiple entries, just move the call to bootentries_add_entry()
into this loop.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


