Delivery-date: Thu, 04 Jun 2026 12:42:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5Wu-002FIz-34
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 12:42:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5Wt-0002z5-Q0
	for lore@pengutronix.de; Thu, 04 Jun 2026 12:42:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=OYGSEHoJF9UOUtSFdivbnvM7jPvgBCgzSnnVe+Jl77g=; b=VjVhkdlwq/dIhXWGW2HQNU/Ikc
	RXjiK3DIcdYNSudp8XtHJk5Ei0acOQAnthpT0LHUZWqnsi8GWmxNt+r+zVzMZ1tWb0lkhqETOtvzH
	2J2HYONQ0UJEJMa+kGxWUqhpBSUXrVVqUxaO1PWB74Xikf+gcVa4YwoVfdpD9eIvFZ5pr9TqWVnjB
	MV/tConW7KjGJsN946/YWJ60EqPwHsMud4TcUULiPco+OjGa2Q/tTrpCgDUVw3nAiNO3HU/gFvm+k
	7IQH5x5Qk77//EGWlpDu2gN1lw7LZOm2KXALZ67WgYdB1M7AGWFJLshF7wdBTLlbOFXXv0dhMt5oM
	2jBLPUkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5VY-0000000Gah2-1qe9;
	Thu, 04 Jun 2026 10:41:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5VU-0000000Gagb-0IXA
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 10:41:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wV5VS-0002Pl-0A; Thu, 04 Jun 2026 12:40:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wV5VR-0013xT-34;
	Thu, 04 Jun 2026 12:40:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wV5VR-00000003tLy-3W7T;
	Thu, 04 Jun 2026 12:40:57 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <CAP1tNvRJvOqD4p74F5EHhaiwrh8-qXN_1X_byM6zfg1uNXSWtg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 10:40:57 +0000
Message-Id: <E1wV5VR-00000003tLy-3W7T@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_034100_293694_03D8C65A 
X-CRM114-Status: GOOD (  47.80  )
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
Cc: barebox@lists.infradead.org
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

On 2026-06-04 11:56, Alexander Shiyan wrote:
> Hello Sascha.
>=20
> This change is possible, but then the question arises of how to specify
> the default boot entry.

That's still a blind spot in barebox. Currently there is no way to
specify which entry is booted other than showing up the boot menu.

When I wrote the code I didn't have an idea how to specify an entry in a
reproducible way. Simply specifying the nth bootentry would break
whenever the numbering changes for whatever reason.

For now barebox will boot the entries in list order which means you
would have to make sure that the default entry is added to the front
of the list. You could use bootentries_add_entry_sorted() with the
compare function preferring the default entry for this.


Anyway, ...

> I'd probably prefer to simply specify in the description that we only use
> the DEFAULT entry.

That's fine for now as well.

Sascha

>=20
> Thanks!
>=20
> =D1=87=D1=82, 4 =D0=B8=D1=8E=D0=BD. 2026=E2=80=AF=D0=B3. =D0=B2 09:25, Sa=
scha Hauer <s.hauer@pengutronix.de>:
> >
> > Hi Alexander,
> >
> > On 2026-05-29 08:13, Alexander Shiyan wrote:
> > > This adds support for the extlinux.conf configuration format, commonly
> > > used by Syslinux and many Linux distributions. The configuration file
> > > is typically located at /boot/extlinux/extlinux.conf or
> > > /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> > > device tree, and command line options.
> > >
> > > The implementation integrates with the existing boot entry framework:
> > > - The extlinux scanner discovers entries on mounted filesystems.
> > > - The default LABEL is turned into a boot entry.
> > > - Bootm is used to load and start the kernel.
> > > ---
> > > barebox@Diasom DS-RK3568-SOM-EVB:/ global.bootm.appendroot=3Dtrue
> > > barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=3Dmmc1.2
> > > barebox@Diasom DS-RK3568-SOM-EVB:/ boot
> > > ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> > > Booting entry 'extlinux: linux'
> > > extlinux: Booting extlinux label 'linux'
> > > Adding "root=3D/dev/mmcblk1p3" to Kernel commandline
> > > Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vml=
inuz'
> > > commandline: root=3D/dev/mmcblk1p3 console=3DttyS2,1500000n8 ro syste=
md.unit=3Dsetup.target quiet splash systemd.machine_id=3D181af2816b4c6b0aef=
77068e0ccc69ad
> > > Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
> > >
> > > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > > ---
> > >  common/Kconfig    |  19 ++++
> > >  common/Makefile   |   1 +
> > >  common/extlinux.c | 243 ++++++++++++++++++++++++++++++++++++++++++++=
++
> > >  3 files changed, 263 insertions(+)
> > >  create mode 100644 common/extlinux.c
> > >
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index 047dd5390b..6f1eabdf8b 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -776,6 +776,25 @@ config BLSPEC
> > >         on a device and it allows the Operating System to install / u=
pdate
> > >         kernels.
> > >
> > > +config EXTLINUX
> > > +     bool
> > > +     prompt "Support extlinux.conf"
> > > +     depends on FLEXIBLE_BOOTARGS
> > > +     depends on !SHELL_NONE
> > > +     select BOOT
> > > +     select BOOTM
> > > +     select MMCBLKDEV_ROOTARG if MCI
> > > +     help
> > > +       Enable this to let barebox parse extlinux.conf configuration =
files,
> > > +       commonly used by the Syslinux bootloader and many Linux distr=
ibutions
> > > +       (e.g., on SD cards or USB drives).
> > > +       extlinux.conf is typically located at /boot/extlinux/extlinux=
.conf or
> > > +       /extlinux/extlinux.conf. It defines boot entries with kernel,=
 initrd,
> > > +       device tree, and command line options.
> > > +       This option allows barebox to discover and boot operating sys=
tems
> > > +       that follow the extlinux configuration format, providing a si=
mple
> > > +       and portable way to manage multiple boot options.
> > > +
> > >  config FLEXIBLE_BOOTARGS
> > >       bool
> > >       prompt "flexible Linux bootargs generation"
> > > diff --git a/common/Makefile b/common/Makefile
> > > index 21b6cecb3b..6b97edc2c3 100644
> > > --- a/common/Makefile
> > > +++ b/common/Makefile
> > > @@ -9,6 +9,7 @@ obj-y                         +=3D clock.o
> > >  pbl-$(CONFIG_PBL_CLOCKSOURCE)        +=3D clock.o
> > >  obj-y                                +=3D console_common.o
> > >  obj-$(CONFIG_OFDEVICE)               +=3D deep-probe.o
> > > +obj-$(CONFIG_EXTLINUX)               +=3D extlinux.o
> > >  obj-y                                +=3D startup.o
> > >  obj-y                                +=3D misc.o
> > >  obj-pbl-y                    +=3D memsize.o
> > > diff --git a/common/extlinux.c b/common/extlinux.c
> > > new file mode 100644
> > > index 0000000000..6ad01cc652
> > > --- /dev/null
> > > +++ b/common/extlinux.c
> > > @@ -0,0 +1,243 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> > > +
> > > +#define pr_fmt(fmt)     "extlinux: " fmt
> > > +
> > > +#include <boot.h>
> > > +#include <bootm.h>
> > > +#include <bootscan.h>
> > > +#include <common.h>
> > > +#include <environment.h>
> > > +#include <fs.h>
> > > +#include <globalvar.h>
> > > +#include <libfile.h>
> > > +#include <libgen.h>
> > > +#include <string.h>
> > > +
> > > +struct extlinux_entry {
> > > +     struct bootentry entry;
> > > +     char *rootpath;
> > > +     char *label;
> > > +     char *kernel;
> > > +     char *initrd;
> > > +     char *fdtdir;
> > > +     char *fdt;
> > > +     char *append;
> > > +};
> > > +
> > > +static int extlinux_boot(struct bootentry *entry, int verbose, int d=
ryrun)
> > > +{
> > > +     struct extlinux_entry *e =3D
> > > +             container_of(entry, struct extlinux_entry, entry);
> > > +     char *kernel_abs, *initrd_abs =3D NULL, *fdt_abs =3D NULL;
> > > +     struct bootm_data data =3D {};
> > > +     int ret;
> > > +
> > > +     bootm_data_init_defaults(&data);
> > > +
> > > +     data.dryrun =3D max_t(int, dryrun, data.dryrun);
> > > +     data.verbose =3D max(verbose, data.verbose);
> > > +
> > > +     kernel_abs =3D basprintf("%s/%s", e->rootpath, e->kernel);
> > > +     data.os_file =3D kernel_abs;
> > > +
> > > +     if (e->initrd) {
> > > +             initrd_abs =3D basprintf("%s/%s", e->rootpath, e->initr=
d);
> > > +             data.initrd_file =3D initrd_abs;
> > > +     }
> > > +
> > > +     if (e->fdt) {
> > > +             char *fdtdir =3D e->fdtdir ? : e->rootpath;
> > > +
> > > +             fdt_abs =3D basprintf("%s/%s", fdtdir, e->fdt);
> > > +             data.oftree_file =3D fdt_abs;
> > > +     }
> > > +
> > > +     if (e->append)
> > > +             globalvar_add_simple("linux.bootargs.dyn.bootentries",
> > > +                                  e->append);
> > > +
> > > +     pr_info("Booting extlinux label '%s'\n", e->label);
> > > +
> > > +     ret =3D bootm_entry(entry, &data);
> > > +     if (ret)
> > > +             pr_err("bootm failed: %pe\n", ERR_PTR(ret));
> > > +
> > > +     free(kernel_abs);
> > > +     free(initrd_abs);
> > > +     free(fdt_abs);
> > > +
> > > +     return ret;
> > > +}
> > > +
> > > +static void extlinux_entry_free(struct bootentry *entry)
> > > +{
> > > +     struct extlinux_entry *e =3D
> > > +             container_of(entry, struct extlinux_entry, entry);
> > > +
> > > +     free(e->rootpath);
> > > +     free(e->label);
> > > +     free(e->kernel);
> > > +     free(e->initrd);
> > > +     free(e->fdtdir);
> > > +     free(e->fdt);
> > > +     free(e->append);
> > > +     free(e);
> > > +}
> > > +
> > > +static struct extlinux_entry *parse_extlinux_conf(const char *abspat=
h,
> > > +                                               const char *rootpath)
> > > +{
> > > +     char *buf, *bufptr, *line, *default_label =3D NULL;
> > > +     struct extlinux_entry *entry =3D NULL;
> > > +
> > > +     bufptr =3D read_file(abspath, NULL);
> > > +     if (!bufptr)
> > > +             return ERR_PTR(-errno);
> > > +
> > > +     buf =3D bufptr;
> > > +     while ((line =3D strsep(&buf, "\n\r")) !=3D NULL) {
> > > +             char *key, *val;
> > > +
> > > +             line =3D skip_spaces(line);
> > > +
> > > +             if (*line =3D=3D '#' || *line =3D=3D '\0')
> > > +                     continue;
> > > +
> > > +             key =3D strsep(&line, " \t");
> > > +             val =3D isempty(line) ? NULL : skip_spaces(line);
> > > +             if (!key || !val)
> > > +                     continue;
> > > +
> > > +             if (!default_label) {
> > > +                     if (!strcasecmp(key, "DEFAULT"))
> > > +                             default_label =3D xstrdup(val);
> > > +
> > > +                     continue;
> > > +             }
> > > +
> > > +             if (!strcasecmp(key, "LABEL")) {
> > > +                     if (!strcmp(val, default_label)) {
> > > +                             entry =3D xzalloc(sizeof(*entry));
> > > +                             entry->label =3D xstrdup(val);
> > > +                             entry->rootpath =3D dirname(xstrdup(abs=
path));
> > > +                     } else if (entry) {
> > > +                             break;
> > > +                     }
> >
> > The extlinux format supports multiple entries, but you return here after
> > the first entry parsed. We should either document that we only support a
> > single entry or implement multiple entries.
> >
> > Unless I am overlooking something it should be quite straight forward to
> > implement multiple entries, just move the call to bootentries_add_entry=
()
> > into this loop.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


