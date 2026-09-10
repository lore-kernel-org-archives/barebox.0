Delivery-date: Thu, 10 Sep 2026 12:16:54 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4bpu-000XJA-1A
	for lore@lore.pengutronix.de;
	Thu, 10 Sep 2026 12:16:54 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="D6VpeHk/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9515F2021B3
	for <lore@pengutronix.de>; Thu, 10 Sep 2026 12:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dYx3B9PjD6AylyDyrpRDKmeT+jhpg8oyS+7NXEkZ9sE=; b=D6VpeHk/DrkH7dW7Ek2al2E8SH
	RXYB0BtmMtkGtqK4P3WV4Tc/u14+Tqka8o/C0kM9BQvBjHw6i726puxPCNb0ADVkZswrjUHJSkTsx
	L3fNdl9p+mWWuPc8ghhqA5K/xIHCJLNHJJrB9KbAJJ4pty9EHdhK/sRrpVduSN/S3CHGSRNXJ8tVC
	FsPWL2tR1WU+nGF/Kl2TGYJl8OxO8F7YA7XdMKnVllthv5hcEjiOeCPfGhs0jbnomOtIgIWUaG7Yn
	iR95iH4yBbd06qQZRjAkzJYo51r35gUMEwTmYB5wWQ1y7BgpFSW3Ye3jR3qyxg6fk6lJux9/Q56x+
	8WJKc7Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bpP-0000000E16u-2AF7;
	Thu, 10 Sep 2026 10:16:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bpM-0000000E15q-3pq3
	for barebox@lists.infradead.org;
	Thu, 10 Sep 2026 10:16:22 +0000
Received: from [IPv6:2a00:1f:ecc0:c901:c862:33ff:46fc:606f] (unknown [IPv6:2a00:1f:ecc0:c901:c862:33ff:46fc:606f])
	(Authenticated sender: fpg@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 618252018C1;
	Thu, 10 Sep 2026 12:16:17 +0200 (CEST)
Message-ID: <e9fae129f180a1f237fa5ec11388eeb3d0df6cc1.camel@pengutronix.de>
Subject: Re: [PATCH RFT 6/9] efi: add global.efi.bootargs for bootm'd EFI
 applications
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: fpg@pengutronix.de
Date: Thu, 10 Sep 2026 12:16:17 +0200
In-Reply-To: <20260826121956.2936414-7-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
	 <20260826121956.2936414-7-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_031621_259233_907BC0C3 
X-CRM114-Status: GOOD (  34.14  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 2026-08-26 at 14:17 +0200, Ahmad Fatoum wrote: > The
    load options of an EFI application booted via bootm can so far only be >
   influenced for EFI-stubbed Linux kernels and only via the Linux bo [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 6xehophajhp3rkannggw3ug5kxxmiuww
X-Rspamd-Queue-Id: 9515F2021B3
X-Spamd-Result: default: False [-57.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Wed, 2026-08-26 at 14:17 +0200, Ahmad Fatoum wrote:
> The load options of an EFI application booted via bootm can so far only b=
e
> influenced for EFI-stubbed Linux kernels and only via the Linux bootargs.
> There is no way to pass options to a generic EFI application like a shell
> or a boot loader, and no way to pass EFI-stub-specific options like initr=
d=3D
> or efi=3D to a kernel separately from what goes into the Linux bootargs.
>=20
> Add a global.efi.bootargs.* family of variables that works like
> global.linux.bootargs.*: all variables with that prefix are concatenated =
in
> lexicographical order and become the load options of any EFI application
> booted via bootm. For EFI-stubbed Linux kernels, the Linux bootargs are
> appended, so the kernel command line becomes
> "$global.efi.bootargs $global.linux.bootargs".
>=20
> The helper lives outside efi/payload and efi/loader, as the variable is
> meant to be used identically when barebox runs as EFI payload and when it
> runs as EFI loader. Executing an application directly from the shell keep=
s
> passing only the shell arguments and the legacy x86 handover protocol is
> unaffected, because it bypasses the EFI stub that would interpret the loa=
d
> options.
>=20
> Assisted-by: Claude:fable-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> =C2=A0common/boot.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0 1 +
> =C2=A0efi/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 2 +-
> =C2=A0efi/bootargs.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 65=
 ++++++++++++++++++++++++++++++++++++++++++
> =C2=A0efi/loader/bootm.c=C2=A0=C2=A0=C2=A0=C2=A0 | 27 ++++++++++++------
> =C2=A0efi/payload/bootm.c=C2=A0=C2=A0=C2=A0 | 23 ++++++++++-----
> =C2=A0include/efi/bootargs.h |=C2=A0 9 ++++++
> =C2=A0test/py/test_shell.py=C2=A0 | 26 +++++++++++++++++
> =C2=A07 files changed, 136 insertions(+), 17 deletions(-)
> =C2=A0create mode 100644 efi/bootargs.c
> =C2=A0create mode 100644 include/efi/bootargs.h
>=20
> diff --git a/common/boot.c b/common/boot.c
> index dc1441d0dc91..dce5c5330eeb 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -201,6 +201,7 @@ int boot_entry(struct bootentry *be, int verbose, int=
 dryrun)
> =C2=A0		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret=
));
> =C2=A0
> =C2=A0	globalvar_set_match("linux.bootargs.dyn.", "");
> +	globalvar_set_match("efi.bootargs.dyn.", "");
> =C2=A0
> =C2=A0	return ret;
> =C2=A0}
> diff --git a/efi/Makefile b/efi/Makefile
> index 7032e1fe1ded..4338e188db56 100644
> --- a/efi/Makefile
> +++ b/efi/Makefile
> @@ -6,4 +6,4 @@ obj-$(CONFIG_EFI_RUNTIME)	+=3D runtime/
> =C2=A0obj-$(CONFIG_EFI_GUID)		+=3D guid.o
> =C2=A0obj-$(CONFIG_EFI_DEVICEPATH)	+=3D devicepath.o
> =C2=A0obj-y				+=3D errno.o handle.o efivar.o efivar-filename.o
> -obj-y				+=3D initrd.o
> +obj-y				+=3D initrd.o bootargs.o
> diff --git a/efi/bootargs.c b/efi/bootargs.c
> new file mode 100644
> index 000000000000..4a238388ef3f
> --- /dev/null
> +++ b/efi/bootargs.c
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * bootargs.c - load options for EFI applications started via bootm
> + *
> + * Copyright (C) 2026 Ahmad Fatoum <a.fatoum@pengutronix.de>
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <magicvar.h>
> +#include <globalvar.h>
> +#include <bootargs.h>
> +#include <efi/bootargs.h>
> +
> +/**
> + * efi_bootargs_get() - compute load options for an EFI application
> + * @linux_image: whether the image is an EFI-stubbed Linux kernel
> + *
> + * All variables beginning with "global.efi.bootargs." are concatenated =
in
> + * lexicographical order. For Linux kernels, the Linux bootargs are appe=
nded,
> + * so the EFI stub sees them as the kernel command line.
> + *
> + * Return: newly allocated string to be freed by the caller or NULL
> + */
> +char *efi_bootargs_get(bool linux_image)
> +{
> +	const char *linux_args =3D NULL;
> +	char *efi_args, *options;
> +
> +	efi_args =3D globalvar_get_match("efi.bootargs.", " ");
> +	if (efi_args && !*efi_args) {
> +		free(efi_args);
> +		efi_args =3D NULL;
> +	}
> +
> +	if (linux_image)
> +		linux_args =3D linux_bootargs_get();
> +	if (linux_args && !*linux_args)
> +		linux_args =3D NULL;
> +
> +	if (efi_args && linux_args)
> +		options =3D xasprintf("%s %s", efi_args, linux_args);
> +	else if (linux_args)
> +		options =3D xstrdup(linux_args);
> +	else
> +		options =3D efi_args;
> +
> +	if (options !=3D efi_args)
> +		free(efi_args);
> +
> +	return options;
> +}
> +
> +static int efi_bootargs_init(void)
> +{
> +	globalvar_add_simple("efi.bootargs.base", NULL);
> +
> +	return 0;
> +}
> +late_initcall(efi_bootargs_init);
> +
> +BAREBOX_MAGICVAR(global.efi.bootargs.*,
> +		 "Load options of EFI applications started via bootm. Linux bootargs a=
re appended for EFI-stubbed
> kernels");
> +BAREBOX_MAGICVAR(global.efi.bootargs.dyn.*,
> +		 "Load options set by boot entries. Cleared after each boot entry");
> diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
> index a68db742e173..e3d654774831 100644
> --- a/efi/loader/bootm.c
> +++ b/efi/loader/bootm.c
> @@ -13,7 +13,6 @@
> =C2=A0#include <init.h>
> =C2=A0#include <driver.h>
> =C2=A0#include <io.h>
> -#include <bootargs.h>
> =C2=A0#include <malloc.h>
> =C2=A0#include <string.h>
> =C2=A0#include <linux/err.h>
> @@ -34,6 +33,7 @@
> =C2=A0#include <efi/services.h>
> =C2=A0#include <efi/error.h>
> =C2=A0#include <efi/initrd.h>
> +#include <efi/bootargs.h>
> =C2=A0#include <efi/devicepath.h>
> =C2=A0
> =C2=A0/**
> @@ -199,6 +199,7 @@ static int efi_loader_bootm(struct image_data *data)
> =C2=A0	resource_size_t start, end;
> =C2=A0	void *load_option =3D NULL;
> =C2=A0	u32 load_option_size =3D 0;
> +	char *options;
> =C2=A0	efi_handle_t handle;
> =C2=A0	struct efi_device_path *file_path =3D NULL;
> =C2=A0	struct efi_event *evt;
> @@ -215,19 +216,19 @@ static int efi_loader_bootm(struct image_data *data=
)
> =C2=A0	if (IS_ERR(os_res))
> =C2=A0		return PTR_ERR(os_res);
> =C2=A0
> -	if (filetype_is_linux_efi_image(data->kernel_type)) {
> -		const char *options;
> -
> -		options =3D linux_bootargs_get();
> -		if (options) {
> -			load_option =3D xstrdup_char_to_wchar(options);
> -			load_option_size =3D (strlen(options) + 1) * sizeof(wchar_t);
> -		}
> +	options =3D efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_t=
ype));

At this point you are in bootm and want to boot an image. There should be a=
nother way to tell bootm to include the
kernel command line arguments, because UKI's are MS-Dos executeables, even =
though they do contain the kernel to execute
and bootm will just silently drop all kernel command line parameters here.

Making bootm.appendroot completly useless, which is an advantage of using b=
arebox on x86.

Just indescrimently adding them would also not be good, as windows would al=
so be the same filetype. But maybe add a
magic variable to tell efi: "I'm sure, that this will be a kernel. Trust me=
 bro!"

/Fabian
> +	if (options) {
> +		load_option =3D xstrdup_char_to_wchar(options);
> +		load_option_size =3D (strlen(options) + 1) * sizeof(wchar_t);
> =C2=A0	}
> =C2=A0
> =C2=A0	file_path =3D efi_dp_from_file(AT_FDCWD, data->os_file);
> =C2=A0
> =C2=A0	pr_info("Loading %pD\n", file_path);
> +	if (data->verbose && options)
> +		pr_info("Load options: %s\n", options);
> +
> +	free(options);
> =C2=A0
> =C2=A0	/* Initialize EFI drivers */
> =C2=A0	efiret =3D efi_init_obj_list();
> @@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
> =C2=A0	/* Control is returned to us, disable EFI watchdog */
> =C2=A0	efi_set_watchdog(0);
> =C2=A0
> +	/*
> +	 * A still loaded driver would keep referencing the load options.
> +	 * efi_set_load_options() tolerates the already deleted handle of an
> +	 * application.
> +	 */
> +	efi_set_load_options(handle, 0, NULL);
> +	free(load_option);
> +
> =C2=A0	return -efi_errno(efiret);
> =C2=A0
> =C2=A0out:
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> index fe2d27b7ff10..491bafb66898 100644
> --- a/efi/payload/bootm.c
> +++ b/efi/payload/bootm.c
> @@ -22,7 +22,6 @@
> =C2=A0#include <string.h>
> =C2=A0#include <linux/err.h>
> =C2=A0#include <boot.h>
> -#include <bootargs.h>
> =C2=A0#include <bootm.h>
> =C2=A0#include <fs.h>
> =C2=A0#include <libfile.h>
> @@ -32,6 +31,7 @@
> =C2=A0#include <efi/payload/driver.h>
> =C2=A0#include <efi/error.h>
> =C2=A0#include <efi/initrd.h>
> +#include <efi/bootargs.h>
> =C2=A0
> =C2=A0#include "image.h"
> =C2=A0
> @@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
> =C2=A0	bool image_freed =3D false;
> =C2=A0	efi_handle_t handle =3D NULL; /* silence compiler warning */
> =C2=A0	enum filetype type;
> +	char *options;
> =C2=A0	int ret;
> =C2=A0
> =C2=A0	ret =3D efi_load_os(data, &loaded_image, &handle);
> @@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data=
)
> =C2=A0	if (data->dryrun)
> =C2=A0		goto unload_ramdisk;
> =C2=A0
> -	ret =3D efi_execute_image(handle, loaded_image, true, type,
> -				filetype_is_linux_efi_image(type) ?
> -				linux_bootargs_get() : NULL);
> +	options =3D efi_bootargs_get(filetype_is_linux_efi_image(type));
> +
> +	ret =3D efi_execute_image(handle, loaded_image, true, type, options);
> +
> +	free(options);
> =C2=A0
> =C2=A0	/* efi_execute_image takes care to unload the image on error,
> =C2=A0	 * so we set image_freed and fall through to freeing ramdisk
> @@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
> =C2=A0	struct efi_loaded_image *loaded_image;
> =C2=A0	efi_handle_t handle;
> =C2=A0	enum filetype type;
> +	char *options;
> =C2=A0	int ret;
> =C2=A0
> =C2=A0	ret =3D efi_load_image(data->os_file, &loaded_image, &handle);
> @@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
> =C2=A0
> =C2=A0	type =3D file_detect_type(loaded_image->image_base, PAGE_SIZE);
> =C2=A0
> +	options =3D efi_bootargs_get(filetype_is_linux_efi_image(type));
> +
> =C2=A0	if (data->dryrun) {
> =C2=A0		BS->unload_image(handle);
> +		free(options);
> =C2=A0		return 0;
> =C2=A0	}
> =C2=A0
> -	return efi_execute_image(handle, loaded_image, true, type,
> -				 filetype_is_linux_efi_image(type) ?
> -				 linux_bootargs_get() : NULL);
> +	ret =3D efi_execute_image(handle, loaded_image, true, type, options);
> +
> +	free(options);
> +
> +	return ret;
> =C2=A0}
> =C2=A0
> =C2=A0static int linux_efi_handover =3D true;
> diff --git a/include/efi/bootargs.h b/include/efi/bootargs.h
> new file mode 100644
> index 000000000000..dfd17261ff9d
> --- /dev/null
> +++ b/include/efi/bootargs.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __EFI_BOOTARGS_H
> +#define __EFI_BOOTARGS_H
> +
> +#include <linux/types.h>
> +
> +char *efi_bootargs_get(bool linux_image);
> +
> +#endif /* __EFI_BOOTARGS_H */
> diff --git a/test/py/test_shell.py b/test/py/test_shell.py
> index 23c2d5dbb0b6..05090ae07be0 100644
> --- a/test/py/test_shell.py
> +++ b/test/py/test_shell.py
> @@ -155,3 +155,29 @@ def test_barebox_test_var_exists(barebox, barebox_co=
nfig):
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0 # Clean up
> =C2=A0=C2=A0=C2=A0=C2=A0 barebox.run_check('rm /tmp/testvars')
> +
> +
> +def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
> +=C2=A0=C2=A0=C2=A0 skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CON=
FIG_CMD_GLOBAL",
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "CONFIG_CMD_ECHO")
> +
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("echo -o /env/boot/dyntest '#!/bin/=
sh'")
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("echo -a /env/boot/dyntest "
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "'global linux.boota=
rgs.dyn.test=3Dlinux-dyn'")
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("echo -a /env/boot/dyntest "
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "'global efi.bootarg=
s.dyn.test=3Defi-dyn'")
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("echo -a /env/boot/dyntest "
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "'global efi.bootarg=
s.nodyntest=3Defi-static'")
> +
> +=C2=A0=C2=A0=C2=A0 # Run the script, but don't actually boot anything
> +=C2=A0=C2=A0=C2=A0 barebox.run("boot -d -d dyntest")
> +
> +=C2=A0=C2=A0=C2=A0 # .dyn. variables must not leak into subsequent boot =
entries
> +=C2=A0=C2=A0=C2=A0 assert barebox.run_check("echo ${global.linux.bootarg=
s.dyn.test}") =3D=3D [""]
> +=C2=A0=C2=A0=C2=A0 assert barebox.run_check("echo ${global.efi.bootargs.=
dyn.test}") =3D=3D [""]
> +=C2=A0=C2=A0=C2=A0 # ... but other variables are left alone
> +=C2=A0=C2=A0=C2=A0 assert barebox.run_check("echo ${global.efi.bootargs.=
nodyntest}") =3D=3D \
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ["efi-static"]
> +
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("global -r efi.bootargs.nodyntest")
> +=C2=A0=C2=A0=C2=A0 barebox.run_check("rm /env/boot/dyntest")


