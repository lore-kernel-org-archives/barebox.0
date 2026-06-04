Delivery-date: Thu, 04 Jun 2026 10:58:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV3u9-002DlH-24
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 10:58:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV3u8-0001W7-Hy
	for lore@pengutronix.de; Thu, 04 Jun 2026 10:58:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NvbIstBsCjt85qcUvZg5aHLaTYL+DcHd2gU7BIV0jrg=; b=UJ6gGiZUUKGpe7lzgaLofO2rPp
	9uc6xcSg/QrUkOvGuRDsyoX32ugIICQm2mvSC5fqacu4Ym6UJ31Lk6UtD3DNAZjH5VvZugKMyWE5Y
	J/Hg1cChjbw+PAr6Kg6wMCUC+9Wgo8IiEnlSEKLle3G2Z2VC2wSicKEMRcnJlx35JWD6W6EFc+Quo
	avEXqdlzwKgTT129lbL21OmMkM9Wpv35hQUj1BhLOCOb2MCgNWSxzIV+Sged8sD9DVX5jtCYudMm7
	kbQdHkI+ZufdSl3Jn+gx9ZTAJSHaS03PXWBjMlGN92NwdEff1zzlMoYvU/2aIPXFklENrIlePtPid
	BHblW18A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3sy-0000000GRhd-21JN;
	Thu, 04 Jun 2026 08:57:08 +0000
Received: from mail-dl1-x1230.google.com ([2607:f8b0:4864:20::1230])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3sv-0000000GRh6-3KlT
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 08:57:07 +0000
Received: by mail-dl1-x1230.google.com with SMTP id a92af1059eb24-137bd9ed2b1so1042943c88.1
        for <barebox@lists.infradead.org>; Thu, 04 Jun 2026 01:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780563425; cv=none;
        d=google.com; s=arc-20240605;
        b=f0Ci70+85jdUovvh1HPPFk0dul1NSjNu6zqnhRZ8gTJKnxaFRwVld+e6fMusfFRryi
         adbczqv2XRCucoMhmFEuOAO98+rWQYQG1wEOUu1hvB53ixeJVrfpamiRfOhjdhe6n0Nz
         WLvQXO+OiEypPQpoPVn5IRwZPpauTSmuraBD64AtyhWY4PmAT+Hv2+bCkMaY19hp/jP/
         dzDmMC6iuaYNaHdWoyOcphJGB0QZpih/wpNSDwA/n62kGeW3s2DTRGoewSUX5vxlc+ae
         FK108C7Z5+VW00MXorVtX66PjNnsnrd0jwVkFhySccBdd24vduVN3rgAPwlbyDkTr5Tr
         JdFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NvbIstBsCjt85qcUvZg5aHLaTYL+DcHd2gU7BIV0jrg=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=BEY3I7m5xPPLIVCNBqrCbHWxaHXu+FNMb0jGXSWaRbcsvVb7+mr6IV3fcIDGpBRphk
         CN9CfAmd5ZlqKrbeNi0wq0V5Y3pbDsaII//vWsQ3Eyn0+Xwkzlw/eWDBUohL5DDreOEq
         SAnXgvyn7CVSvLrZGveYKYA0OsNAWtu3WFEEyuS97WvmExdoPp/JO5qxx9LloFaeBFW5
         BP3WL54U2hX3WWatpBEYg9bR8KcrQp5tOqga8BZ/ayBbCdVclOHe5gJ+7ESKfDdapVvm
         ep6nIpP0yRtZoPRTHyTizMQ3klrrOzkuClaqojcAvB9Sa3Pd1EChf1xb0DSkYdXs6rWO
         TkbA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780563425; x=1781168225; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvbIstBsCjt85qcUvZg5aHLaTYL+DcHd2gU7BIV0jrg=;
        b=E7m686LFqpZeaouRcKQkmXvmHyLWpxLvrZXIW1mEiyVQkITRS4wOUtOs8gTSJXbugA
         ld1OwcGcebDtMw9zwKkqkREuau1PVuwmvivhbiBixBit6zXFZQUxWQWTnuwnzt7nc2NT
         /y17vGQ024KcDoznShZDdd1GOzTOWZ1Y/qSxPgKu+WYSTl6V6ih7IRf5i0nzFH1HTWjR
         l1Y5TeKTerEhC60unS+vYLd0i7bjhbuyMpWQ0K1qrpakxaV7JnHHC/KZ/4CUOSsCMPSo
         f5FWVKKQ+yU2Xni3zpFwi8fxpAd4SsodRNC6hHVkL6h0LsIlsc5SBJ2uB9fRucynjkMv
         2tWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780563425; x=1781168225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NvbIstBsCjt85qcUvZg5aHLaTYL+DcHd2gU7BIV0jrg=;
        b=ior4AkkzDnaSrW8KuX0MiW8fVPTWGETHl9/yUFBCHEuYa98bxlyGTpBO/DyDHqsKvM
         robeadMNWx3N8gq+5n0LwnHSeuOl96YDLN0iv2TXEg/T109drZ3kU763xSUgUhZTtS4B
         N4mPv5GSvpt2F9NRh+MfgXderMuytYb6avywIy9izVCiSDv9j8i462yc7eFf5iH9jeG/
         zHbGaAyE8zO6K8SYw37y2uiaez0lh1d1p607G5OxEC/oFBAae020pp7H+ZnVwdLhNjOZ
         Zf2cs4ZqyYjCdPpPi8vv0s9nWsiIAcCqGvy6djw/GN9unwSaH03W98IIrB4SEkGb31bG
         7YfA==
X-Gm-Message-State: AOJu0YxUN7h+mqLNoqBwTL9QLE10CR1XFeGvzb8Fk++FW934DmaNCKgt
	QWcSwXz/TnxiQ53VVjIWKBxDAPixlB73kXKhrAaCU3pwf7n9THFulw/zzYNdjs6hYoc6D40WvYJ
	Jli7eQz6dTY3mQIPdbbNaWUx3STC1AIPL42j4
X-Gm-Gg: Acq92OGc5jBNn1KchD5TXWyjH3CLpmB8wOjgFmrXKp5j+Ge6a8B+xvAGHnPOttI3Vrd
	3hvNN3O5Nfq6DtoJ4ObrfAU28iNwLA8jN8abX6JQqizvOPhd4S2XI96gKVbW3cd6DXigd8AbvZB
	QP8HGF9gK0pDNm70E24AH1bJLCHBuuZCy6QvToOe5N35MvTZTJRFJD45FsJ8R4UV1fBloQnX1/6
	NQP8pcjNxpVgz1GPiqtFh3WXrYy1cMnmw1fJyZXxqO093jmSW7CsfsMQ0XKLq56LGcd2JbIDQth
	5uZzQwJV7nJ5e71R
X-Received: by 2002:a05:7022:4393:b0:137:f875:c1de with SMTP id
 a92af1059eb24-137f875c3d9mr2906974c88.22.1780563424450; Thu, 04 Jun 2026
 01:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260529051347.1373331-1-eagle.alexander923@gmail.com> <E1wV1Vo-00000003qL5-1qY3@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1wV1Vo-00000003qL5-1qY3@pty.whiteo.stw.pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 4 Jun 2026 11:56:52 +0300
X-Gm-Features: AVHnY4LAuLMAcHM_BI-akwp7t7wHHWfeIBAfgOEdksZihmISHF5l7jfQfGMzRQk
Message-ID: <CAP1tNvRJvOqD4p74F5EHhaiwrh8-qXN_1X_byM6zfg1uNXSWtg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_015705_844279_C9E40ABE 
X-CRM114-Status: GOOD (  40.57  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

This change is possible, but then the question arises of how to specify
the default boot entry.
I'd probably prefer to simply specify in the description that we only use
the DEFAULT entry.

Thanks!

=D1=87=D1=82, 4 =D0=B8=D1=8E=D0=BD. 2026=E2=80=AF=D0=B3. =D0=B2 09:25, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On 2026-05-29 08:13, Alexander Shiyan wrote:
> > This adds support for the extlinux.conf configuration format, commonly
> > used by Syslinux and many Linux distributions. The configuration file
> > is typically located at /boot/extlinux/extlinux.conf or
> > /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> > device tree, and command line options.
> >
> > The implementation integrates with the existing boot entry framework:
> > - The extlinux scanner discovers entries on mounted filesystems.
> > - The default LABEL is turned into a boot entry.
> > - Bootm is used to load and start the kernel.
> > ---
> > barebox@Diasom DS-RK3568-SOM-EVB:/ global.bootm.appendroot=3Dtrue
> > barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=3Dmmc1.2
> > barebox@Diasom DS-RK3568-SOM-EVB:/ boot
> > ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> > Booting entry 'extlinux: linux'
> > extlinux: Booting extlinux label 'linux'
> > Adding "root=3D/dev/mmcblk1p3" to Kernel commandline
> > Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlin=
uz'
> > commandline: root=3D/dev/mmcblk1p3 console=3DttyS2,1500000n8 ro systemd=
.unit=3Dsetup.target quiet splash systemd.machine_id=3D181af2816b4c6b0aef77=
068e0ccc69ad
> > Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  common/Kconfig    |  19 ++++
> >  common/Makefile   |   1 +
> >  common/extlinux.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 263 insertions(+)
> >  create mode 100644 common/extlinux.c
> >
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 047dd5390b..6f1eabdf8b 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -776,6 +776,25 @@ config BLSPEC
> >         on a device and it allows the Operating System to install / upd=
ate
> >         kernels.
> >
> > +config EXTLINUX
> > +     bool
> > +     prompt "Support extlinux.conf"
> > +     depends on FLEXIBLE_BOOTARGS
> > +     depends on !SHELL_NONE
> > +     select BOOT
> > +     select BOOTM
> > +     select MMCBLKDEV_ROOTARG if MCI
> > +     help
> > +       Enable this to let barebox parse extlinux.conf configuration fi=
les,
> > +       commonly used by the Syslinux bootloader and many Linux distrib=
utions
> > +       (e.g., on SD cards or USB drives).
> > +       extlinux.conf is typically located at /boot/extlinux/extlinux.c=
onf or
> > +       /extlinux/extlinux.conf. It defines boot entries with kernel, i=
nitrd,
> > +       device tree, and command line options.
> > +       This option allows barebox to discover and boot operating syste=
ms
> > +       that follow the extlinux configuration format, providing a simp=
le
> > +       and portable way to manage multiple boot options.
> > +
> >  config FLEXIBLE_BOOTARGS
> >       bool
> >       prompt "flexible Linux bootargs generation"
> > diff --git a/common/Makefile b/common/Makefile
> > index 21b6cecb3b..6b97edc2c3 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -9,6 +9,7 @@ obj-y                         +=3D clock.o
> >  pbl-$(CONFIG_PBL_CLOCKSOURCE)        +=3D clock.o
> >  obj-y                                +=3D console_common.o
> >  obj-$(CONFIG_OFDEVICE)               +=3D deep-probe.o
> > +obj-$(CONFIG_EXTLINUX)               +=3D extlinux.o
> >  obj-y                                +=3D startup.o
> >  obj-y                                +=3D misc.o
> >  obj-pbl-y                    +=3D memsize.o
> > diff --git a/common/extlinux.c b/common/extlinux.c
> > new file mode 100644
> > index 0000000000..6ad01cc652
> > --- /dev/null
> > +++ b/common/extlinux.c
> > @@ -0,0 +1,243 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> > +
> > +#define pr_fmt(fmt)     "extlinux: " fmt
> > +
> > +#include <boot.h>
> > +#include <bootm.h>
> > +#include <bootscan.h>
> > +#include <common.h>
> > +#include <environment.h>
> > +#include <fs.h>
> > +#include <globalvar.h>
> > +#include <libfile.h>
> > +#include <libgen.h>
> > +#include <string.h>
> > +
> > +struct extlinux_entry {
> > +     struct bootentry entry;
> > +     char *rootpath;
> > +     char *label;
> > +     char *kernel;
> > +     char *initrd;
> > +     char *fdtdir;
> > +     char *fdt;
> > +     char *append;
> > +};
> > +
> > +static int extlinux_boot(struct bootentry *entry, int verbose, int dry=
run)
> > +{
> > +     struct extlinux_entry *e =3D
> > +             container_of(entry, struct extlinux_entry, entry);
> > +     char *kernel_abs, *initrd_abs =3D NULL, *fdt_abs =3D NULL;
> > +     struct bootm_data data =3D {};
> > +     int ret;
> > +
> > +     bootm_data_init_defaults(&data);
> > +
> > +     data.dryrun =3D max_t(int, dryrun, data.dryrun);
> > +     data.verbose =3D max(verbose, data.verbose);
> > +
> > +     kernel_abs =3D basprintf("%s/%s", e->rootpath, e->kernel);
> > +     data.os_file =3D kernel_abs;
> > +
> > +     if (e->initrd) {
> > +             initrd_abs =3D basprintf("%s/%s", e->rootpath, e->initrd)=
;
> > +             data.initrd_file =3D initrd_abs;
> > +     }
> > +
> > +     if (e->fdt) {
> > +             char *fdtdir =3D e->fdtdir ? : e->rootpath;
> > +
> > +             fdt_abs =3D basprintf("%s/%s", fdtdir, e->fdt);
> > +             data.oftree_file =3D fdt_abs;
> > +     }
> > +
> > +     if (e->append)
> > +             globalvar_add_simple("linux.bootargs.dyn.bootentries",
> > +                                  e->append);
> > +
> > +     pr_info("Booting extlinux label '%s'\n", e->label);
> > +
> > +     ret =3D bootm_entry(entry, &data);
> > +     if (ret)
> > +             pr_err("bootm failed: %pe\n", ERR_PTR(ret));
> > +
> > +     free(kernel_abs);
> > +     free(initrd_abs);
> > +     free(fdt_abs);
> > +
> > +     return ret;
> > +}
> > +
> > +static void extlinux_entry_free(struct bootentry *entry)
> > +{
> > +     struct extlinux_entry *e =3D
> > +             container_of(entry, struct extlinux_entry, entry);
> > +
> > +     free(e->rootpath);
> > +     free(e->label);
> > +     free(e->kernel);
> > +     free(e->initrd);
> > +     free(e->fdtdir);
> > +     free(e->fdt);
> > +     free(e->append);
> > +     free(e);
> > +}
> > +
> > +static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
> > +                                               const char *rootpath)
> > +{
> > +     char *buf, *bufptr, *line, *default_label =3D NULL;
> > +     struct extlinux_entry *entry =3D NULL;
> > +
> > +     bufptr =3D read_file(abspath, NULL);
> > +     if (!bufptr)
> > +             return ERR_PTR(-errno);
> > +
> > +     buf =3D bufptr;
> > +     while ((line =3D strsep(&buf, "\n\r")) !=3D NULL) {
> > +             char *key, *val;
> > +
> > +             line =3D skip_spaces(line);
> > +
> > +             if (*line =3D=3D '#' || *line =3D=3D '\0')
> > +                     continue;
> > +
> > +             key =3D strsep(&line, " \t");
> > +             val =3D isempty(line) ? NULL : skip_spaces(line);
> > +             if (!key || !val)
> > +                     continue;
> > +
> > +             if (!default_label) {
> > +                     if (!strcasecmp(key, "DEFAULT"))
> > +                             default_label =3D xstrdup(val);
> > +
> > +                     continue;
> > +             }
> > +
> > +             if (!strcasecmp(key, "LABEL")) {
> > +                     if (!strcmp(val, default_label)) {
> > +                             entry =3D xzalloc(sizeof(*entry));
> > +                             entry->label =3D xstrdup(val);
> > +                             entry->rootpath =3D dirname(xstrdup(abspa=
th));
> > +                     } else if (entry) {
> > +                             break;
> > +                     }
>
> The extlinux format supports multiple entries, but you return here after
> the first entry parsed. We should either document that we only support a
> single entry or implement multiple entries.
>
> Unless I am overlooking something it should be quite straight forward to
> implement multiple entries, just move the call to bootentries_add_entry()
> into this loop.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


