Delivery-date: Fri, 05 Sep 2025 04:23:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM72-008HFd-2j
	for lore@lore.pengutronix.de;
	Fri, 05 Sep 2025 04:23:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM70-0000Kl-OS
	for lore@pengutronix.de; Fri, 05 Sep 2025 04:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rmLk/2SjbnSbiR4RGFPgfItTEc1ZuSq/MgjJElS1W3U=; b=Syq/2W0gphrnMWwz8/6+e9KMxZ
	6TXLtayQg46fCqWxRqahDjirmTy3jlIDJVq9vxwEteSRaqJdRWnvBrSA1cfla42il7gxkZD3J6kl6
	mAUhm0UWOHspo4iz1wU4jCVjGAj1kpvXZX5D/ZaCLBzZtBhcdmPApd5LaFEKwVxYqj4Yx2aD3VK/n
	oyunPnk10ZIW33EvnSvdCY7M70CCXN/gCTfO3ALAp0k7ZeWasFnkQPmnrYHfpIA2U5DZglAS+ywN0
	YM3Icpsb71O1M9wXIJV7dPsGufMf0BnTxfvn3vP0V5BcZjyCzvGeDTUb/OWfqiHA/dMc6erBtgoBy
	YkNnE1kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM6L-0000000G5JV-1kwe;
	Fri, 05 Sep 2025 02:22:57 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuIhL-0000000Ewx8-2bwH
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 22:44:56 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-7220d7dea27so12554406d6.1
        for <barebox@lists.infradead.org>; Thu, 04 Sep 2025 15:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757025894; x=1757630694; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rmLk/2SjbnSbiR4RGFPgfItTEc1ZuSq/MgjJElS1W3U=;
        b=VyJkRE7Lm89GJyulNJ4t3s9ZbSNFm1qehA0wLmdVGvjQRlRmIjrwOu2jGSkw54gPhe
         MC7/m4dVlfaym0wrL41127gw6TuR6apA4yCHfczHPaSPb1KMiM91ztIRKw//7f+to4Y+
         50/tQ4CfrGoym8LcE8CedUMlz/dQ8wJpOiwy6IwOZiA/0XOMClCkRXzVPGBxUQJgfapw
         WFDy9zkYG2DmTOGklJ4I3MP6CnMgiuvPsN+ET3pw1UDtdq3V8ELQV2g0mgdQlAE+Fo0w
         IPOVYM65Zd2I/nUZcXzKD3krheyZycUUt8x6ZR26jToByHEaPMLAxHQDsnTVsCbkCSnZ
         9/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757025894; x=1757630694;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rmLk/2SjbnSbiR4RGFPgfItTEc1ZuSq/MgjJElS1W3U=;
        b=oO8Yak5q3SsJPREy5r7VKARdgat9cgzRZsOB+9irQbbIT2TD1EYAoWMDaZs028zAxq
         JNHH168EVzMx9lOttxdXlMmNEOu3y7StbZMRhOHkbKA9mp09I/GdwPO0E6wjihv2cmQW
         DiuLhNIj98ZWOmyiAVbkHnJMJh5zvZmVxjsvgbh7hLd5x2hEq1yJnC6feI7A31NJxxJs
         L51g7AxBfg/0WC8R94rVUg9bD2Ij780T6Kd4C+cDe2KXJvawpXjI6YNTIlHATyvYW+MF
         LO3M1X7/u03MsTUls+NRJM5c+fTHrVVu/kteR68Y7beF93fkF69tqq5f0ykmG9GPyvl8
         bMWA==
X-Gm-Message-State: AOJu0YzYc+HoUcLkcFamml+wOaR506r1/pi6oCwRidSW8FNMi3YaaMwR
	Jidc1gTbxfGte/s5NJwZQ1czXQ+BJ2s15JcQjWdPcbbLAY5anJgDPjn/egeR2SxxlZ0=
X-Gm-Gg: ASbGncudjHXEO8k6p/hQ6090LNamEXpLBCDv9cE7dWwjMN30/Rz9kNSCIwTqaFzAodl
	MeKjD/stZeWGqxcQXcm2OnGeFXzYaODsdsicaY+mOwfqfxyqze23ypICk5KPq4H8flsN4lQY7Yg
	stsBen8YkDifkFVkRpc1X085Tbm2FImyDoSV2uGg84BAkqipg1wOOYneq+//fpSi0x5Ao1tICWD
	+6ZZtwRVIgdG0ZsOr7YJrzsKlELCbwas6lYuB6gLFNlTv7lfNQdMY+8404BB6Cm2oG2APdH7rU6
	92nf5jEoPHJ1diSqqvc0n00cDzYlmvoFCMf7B2X39Q0SB55UV2/jVLYRo+Zuub/UUNXDkC4zxi8
	ZrnKw6CqTMbWCjhXWnJxsvd1/kAzFAT9ht5wwXXaQ+GsMA+NsFFZAg51JhVHEqrvMNhTJiR6jZW
	aNUPG+AuIQI79ogRz5JI/zgFL4OIpT9M3/XPnhlGeC2BWm34EX0ZYHzuALdsk=
X-Google-Smtp-Source: AGHT+IFKc98HdG9YbNZ8GdRn/RZPWgCG9BMfx58jJ3RcK++36fsHhjTTLM8eqrAgQ3jVOqH+KChfaQ==
X-Received: by 2002:a05:6214:76b:b0:717:4378:b604 with SMTP id 6a1803df08f44-7174378d2c8mr222483576d6.58.1757025894368;
        Thu, 04 Sep 2025 15:44:54 -0700 (PDT)
Received: from ?IPv6:2607:fa49:8c41:2600:dd39:d089:1496:e8e1? ([2607:fa49:8c41:2600:dd39:d089:1496:e8e1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720b55cf91bsm54874716d6.52.2025.09.04.15.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 15:44:53 -0700 (PDT)
Message-ID: <f5589de4f42267db92032c2b599053fbf5e05e23.camel@gmail.com>
From: anis chali <chalianis1@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Thu, 04 Sep 2025 18:44:52 -0400
In-Reply-To: <4be211c4-ae79-4bd0-a906-672cc7ed25d5@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
	 <20250831035542.1623695-6-chalianis1@gmail.com>
	 <4be211c4-ae79-4bd0-a906-672cc7ed25d5@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_154455_673580_62044397 
X-CRM114-Status: GOOD (  34.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/7] efi: payload: add support for efi stub boot and fit
 image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

> We should rename the existing image.c to handover.c and keep it x86 only
> and add your code without the historical baggage IMO.
Ok, We can rename the file, do we need to create a shared file between them=
,
beacuse we have all the code for reading the image and allocating in common=
=20
between the handover.c (comming) and the image.c, An option would be refact=
oring
the handover to become just a branch that we take if a config is enabled, K=
nowing
that we meybe can support efi stub in x86 with the same code in image.c, in=
 that case=20
we maybe should just name it efi/payload/bootm.c and it will cover linux as=
 efi application
fitImage on all supported architectures??

> Given that Sascha already commented on some things, I want to ask you to
> squash your latest changes into this commit, have two separate files
> (maybe call this one boot.c) and resend.

Okay, I=E2=80=99ll wait for your feedback before proceeding.

> Thanks,
> Ahmad
>=20
> This code is tested on many qemu EFI compilations comming from ovmf ubunt=
u
> > package, tianocore efi for qemu, local edk2 build, and also tested on R=
Pi3b
> > 64 bit EFI from tianocore and a local build of edk2, more mchines will =
be
> > tested soon. the test was for a full boot chain on RPi3b booting a fit =
image
> > containing a kernel, an fdt, and a ramdisk with ostree initrd to mount =
an
> > ostree root filesystem. for contribution in short term,
> > 1. it would be nice to test with more hardware,
> > 2. linux global checkup of efivars, efi capsule update, efi runtime ser=
vices
> > 3. The state.dtb to support barebox state to manage multiple system boo=
t
> >    and a recovery.
> >    the case would be sys1 =3D new ostree commit, sys2 =3D old commit (r=
ollback)
> >    and a recovery boot system on readonly disk.
> > 4. secure boot, PoC to check if there is a way to load TF-A from EFI
> > and then load the efi payload from it and launch optee??
> >=20
> Signed-off-by: Chali Anis <[chalianis1@gmail.com](mailto:chalianis1@gmail=
.com)>
> > ---
> >  efi/payload/image.c | 457 ++++++++++++++++++++++++++++++++++++++------
> >  1 file changed, 403 insertions(+), 54 deletions(-)
> >=20
> diff --git a/efi/payload/image.c b/efi/payload/image.c
> > index 33c5e18dac27..38d52a32ea64 100644
> > --- a/efi/payload/image.c
> > +++ b/efi/payload/image.c
> > @@ -25,6 +25,7 @@
> >  #include <libfile.h>
> >  #include <binfmt.h>
> >  #include <wchar.h>
> > +#include <image-fit.h>
> >  #include <efi/efi-payload.h>
> >  #include <efi/efi-device.h>
> > =20
> > @@ -77,42 +78,41 @@ struct linux_kernel_header {
> >  	uint32_t handover_offset;	/** */
> >  } __attribute__ ((packed));
> > =20
> > -static void *efi_read_file(const char *file, size_t *size)
> > -{
> > -	efi_physical_addr_t mem;
> > -	efi_status_t efiret;
> > -	struct stat s;
> > -	char *buf;
> > -	ssize_t ret;
> > +struct efi_mem_resource {
> > +	efi_physical_addr_t base;
> > +	size_t size;
> > +} __attribute__ ((packed));
> > =20
> > -	buf =3D read_file(file, size);
> > -	if (buf || errno !=3D ENOMEM)
> > -		return buf;
> > +struct efi_image_data {
> > +	struct image_data *data;
> > =20
> > -	ret =3D stat(file, &s);
> > -	if (ret)
> > -		return NULL;
> > +	efi_handle_t handle;
> > +	struct efi_loaded_image *loaded_image;
> > =20
> > -	efiret =3D BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
> > -				    EFI_LOADER_CODE,
> > -				    DIV_ROUND_UP(s.st_size, EFI_PAGE_SIZE),
> > -				    &mem);
> > +	struct efi_mem_resource image_res;
> > +	struct efi_mem_resource oftree_res;
> > +	struct efi_mem_resource *initrd_res;
> > +};
> > +
> > +
> > +static void *efi_allocate_pages(efi_physical_addr_t *mem,
> > +				size_t size,
> > +				enum efi_allocate_type allocate_type,
> > +				enum efi_memory_type mem_type)
> > +{
> > +	efi_status_t efiret;
> > +
> > +	efiret =3D BS->allocate_pages(allocate_type, mem_type,
> > +				    DIV_ROUND_UP(size, EFI_PAGE_SIZE), mem);
> >  	if (EFI_ERROR(efiret)) {
> >  		errno =3D efi_errno(efiret);
> >  		return NULL;
> >  	}
> > =20
> > -	buf =3D efi_phys_to_virt(mem);
> > -
> > -	ret =3D read_file_into_buf(file, buf, s.st_size);
> > -	if (ret < 0)
> > -		return NULL;
> > -
> > -	*size =3D ret;
> > -	return buf;
> > +	return efi_phys_to_virt(*mem);
> >  }
> > =20
> > -static void efi_free_file(void *_mem, size_t size)
> > +static void efi_free_pages(void *_mem, size_t size)
> >  {
> >  	efi_physical_addr_t mem =3D efi_virt_to_phys(_mem);
> > =20
> > @@ -122,28 +122,40 @@ static void efi_free_file(void *_mem, size_t size=
)
> >  		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
> >  }
> > =20
> > -static int efi_load_image(const char *file, struct efi_loaded_image **=
loaded_image,
> > -		efi_handle_t *h)
> > +static int efi_load_file_image(const char *file,
> > +			       struct efi_loaded_image **loaded_image,
> > +			       efi_handle_t *h)
> >  {
> > +	efi_physical_addr_t mem;
> >  	void *exe;
> > +	char *buf;
> >  	size_t size;
> >  	efi_handle_t handle;
> >  	efi_status_t efiret =3D EFI_SUCCESS;
> > =20
> > -	exe =3D efi_read_file(file, &size);
> > -	if (!exe)
> > -		return -errno;
> > +	buf =3D read_file(file, &size);
> > +	if (!buf)
> > +		return -ENOMEM;
> > =20
> > -	efiret =3D BS->load_image(false, efi_parent_image, efi_device_path, e=
xe, size,
> > -			&handle);
> > +	exe =3D efi_allocate_pages(&mem, size, EFI_ALLOCATE_ANY_PAGES,
> > +				 EFI_LOADER_CODE);
> > +	if (!exe) {
> > +		pr_err("Failed to allocate pages for image\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	memcpy(exe, buf, size);
> > +
> > +	efiret =3D BS->load_image(false, efi_parent_image, efi_device_path, e=
xe,
> > +				size, &handle);
> >  	if (EFI_ERROR(efiret)) {
> >  		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
> >  		goto out;
> >  	};
> > =20
> >  	efiret =3D BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
> > -			(void **)loaded_image,
> > -			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> > +				   (void **)loaded_image, efi_parent_image,
> > +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> >  	if (EFI_ERROR(efiret)) {
> >  		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
> >  		BS->unload_image(handle);
> > @@ -151,8 +163,10 @@ static int efi_load_image(const char *file, struct=
 efi_loaded_image **loaded_ima
> >  	}
> > =20
> >  	*h =3D handle;
> > +
> > +	return 0;
> >  out:
> > -	efi_free_file(exe, size);
> > +	efi_free_pages(exe, size);
> >  	return -efi_errno(efiret);
> >  }
> > =20
> > @@ -171,20 +185,16 @@ static bool is_linux_image(enum filetype filetype=
, const void *base)
> >  	return false;
> >  }
> > =20
> > -static int efi_execute_image(enum filetype filetype, const char *file)
> > +static int efi_execute_image(efi_handle_t handle,
> > +			     struct efi_loaded_image *loaded_image,
> > +			     enum filetype filetype)
> >  {
> > -	efi_handle_t handle;
> > -	struct efi_loaded_image *loaded_image;
> >  	efi_status_t efiret;
> >  	const char *options;
> >  	bool is_driver;
> > -	int ret;
> > -
> > -	ret =3D efi_load_image(file, &loaded_image, &handle);
> > -	if (ret)
> > -		return ret;
> > =20
> > -	is_driver =3D (loaded_image->image_code_type =3D=3D EFI_BOOT_SERVICES=
_CODE) ||
> > +	is_driver =3D
> > +		(loaded_image->image_code_type =3D=3D EFI_BOOT_SERVICES_CODE) ||
> >  		(loaded_image->image_code_type =3D=3D EFI_RUNTIME_SERVICES_CODE);
> > =20
> >  	if (is_linux_image(filetype, loaded_image->image_base)) {
> > @@ -192,7 +202,8 @@ static int efi_execute_image(enum filetype filetype=
, const char *file)
> >  		options =3D linux_bootargs_get();
> >  		pr_info("add linux options '%s'\n", options);
> >  		if (options) {
> > -			loaded_image->load_options =3D xstrdup_char_to_wchar(options);
> > +			loaded_image->load_options =3D
> > +				xstrdup_char_to_wchar(options);
> >  			loaded_image->load_options_size =3D
> >  				(strlen(options) + 1) * sizeof(wchar_t);
> >  		}
> > @@ -216,11 +227,11 @@ static int efi_execute_image(enum filetype filety=
pe, const char *file)
> >  	return -efi_errno(efiret);
> >  }
> > =20
> > -typedef void(*handover_fn)(void *image, struct efi_system_table *table=
,
> > -		struct linux_kernel_header *header);
> > +typedef void (*handover_fn)(void *image, struct efi_system_table *tabl=
e,
> > +			    struct linux_kernel_header *header);
> > =20
> >  static inline void linux_efi_handover(efi_handle_t handle,
> > -		struct linux_kernel_header *header)
> > +				      struct linux_kernel_header *header)
> >  {
> >  	handover_fn handover;
> >  	uintptr_t addr;
> > @@ -244,7 +255,7 @@ static int do_bootm_efi(struct image_data *data)
> >  	struct efi_loaded_image *loaded_image;
> >  	struct linux_kernel_header *image_header, *boot_header;
> > =20
> > -	ret =3D efi_load_image(data->os_file, &loaded_image, &handle);
> > +	ret =3D efi_load_file_image(data->os_file, &loaded_image, &handle);
> >  	if (ret)
> >  		return ret;
> > =20
> > @@ -284,8 +295,9 @@ static int do_bootm_efi(struct image_data *data)
> >  		boot_header->cmdline_size =3D strlen(options);
> >  	}
> > =20
> > -	boot_header->code32_start =3D efi_virt_to_phys(loaded_image->image_ba=
se +
> > -			(image_header->setup_sects+1) * 512);
> > +	boot_header->code32_start =3D
> > +		efi_virt_to_phys(loaded_image->image_base +
> > +				 (image_header->setup_sects + 1) * 512);
> > =20
> >  	if (bootm_verbose(data)) {
> >  		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
> > @@ -311,15 +323,350 @@ static int do_bootm_efi(struct image_data *data)
> >  	return 0;
> >  }
> > =20
> > +static bool ramdisk_is_fit(struct image_data *data)
> > +{
> > +	struct stat st;
> > +
> > +	if (bootm_signed_images_are_forced())
> > +		return true;
> > +
> > +	if (data->initrd_file) {
> > +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> > +			return false;
> > +	}
> > +
> > +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> > +			data->fit_config, "ramdisk") : false;
> > +}
> > +
> > +static bool fdt_is_fit(struct image_data *data)
> > +{
> > +	struct stat st;
> > +
> > +	if (bootm_signed_images_are_forced())
> > +		return true;
> > +
> > +	if (data->oftree_file) {
> > +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> > +			return false;
> > +	}
> > +
> > +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> > +			data->fit_config, "fdt") : false;
> > +}
> > +
> > +static int efi_load_os(struct efi_image_data *e)
> > +{
> > +	efi_status_t efiret =3D EFI_SUCCESS;
> > +	efi_physical_addr_t mem;
> > +	size_t image_size =3D 0;
> > +	void *image =3D NULL;
> > +	void *vmem =3D NULL;
> > +	int ret =3D 0;
> > +
> > +	if (e->data->os_fit) {
> > +		image =3D (void *)e->data->fit_kernel;
> > +		image_size =3D e->data->fit_kernel_size;
> > +	} else if (e->data->os_file)
> > +		return efi_load_file_image(e->data->os_file,
> > +				&e->loaded_image, &e->handle);
> > +
> > +	vmem =3D efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
> > +				 EFI_LOADER_CODE);
> > +	if (!vmem) {
> > +		pr_err("Failed to allocate pages for image\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	memcpy(vmem, image, image_size);
> > +
> > +	efiret =3D BS->load_image(false, efi_parent_image, efi_device_path, i=
mage,
> > +				image_size, &e->handle);
> > +	if (EFI_ERROR(efiret)) {
> > +		ret =3D -efi_errno(efiret);
> > +		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
> > +		goto out_mem;
> > +	};
> > +
> > +	efiret =3D BS->open_protocol(e->handle, &efi_loaded_image_protocol_gu=
id,
> > +				   (void **)&e->loaded_image, efi_parent_image,
> > +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> > +	if (EFI_ERROR(efiret)) {
> > +		ret =3D -efi_errno(efiret);
> > +		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
> > +		goto out_unload;
> > +	}
> > +
> > +	e->image_res.base =3D mem;
> > +	e->image_res.size =3D image_size;
> > +
> > +	return 0;
> > +
> > +out_mem:
> > +	efi_free_pages(vmem, image_size);
> > +out_unload:
> > +	BS->unload_image(e->handle);
> > +	return ret;
> > +}
> > +
> > +static void efi_unload_os(struct efi_image_data *e)
> > +{
> > +	BS->close_protocol(e->handle, &efi_loaded_image_protocol_guid,
> > +				 efi_parent_image, NULL);
> > +
> > +	BS->unload_image(e->handle);
> > +	efi_free_pages(efi_phys_to_virt(e->image_res.base),
> > +				 e->image_res.size);
> > +}
> > +
> > +static int efi_load_ramdisk(struct efi_image_data *e)
> > +{
> > +	void *vmem, *tmp =3D NULL;
> > +	efi_physical_addr_t mem;
> > +	efi_status_t efiret =3D EFI_SUCCESS;
> > +	const void *initrd;
> > +	unsigned long initrd_size;
> > +	bool from_fit;
> > +	int ret;
> > +
> > +	from_fit =3D ramdisk_is_fit(e->data);
> > +
> > +	if (from_fit) {
> > +		ret =3D fit_open_image(e->data->os_fit, e->data->fit_config,
> > +				     "ramdisk", &initrd, &initrd_size);
> > +		if (ret) {
> > +			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
> > +			       ERR_PTR(ret));
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	if (!from_fit) {
> > +		if (!e->data->initrd_file)
> > +			return 0;
> > +
> > +		pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
> > +		tmp =3D read_file(e->data->initrd_file, &initrd_size);
> > +		if (!tmp || initrd_size <=3D 0) {
> > +			pr_err("Failed to read initrd from file: %s\n",
> > +				e->data->initrd_file);
> > +			return -EINVAL;
> > +		}
> > +		initrd =3D tmp;
> > +	}
> > +
> > +	efiret =3D BS->allocate_pool(EFI_LOADER_DATA,
> > +			sizeof(struct efi_mem_resource),
> > +			(void **)&e->initrd_res);
> > +	if (EFI_ERROR(efiret) || !e->initrd_res) {
> > +		ret =3D -efi_errno(efiret);
> > +		pr_err("Failed to allocate initrd %s/n", efi_strerror(efiret));
> > +		goto free_mem;
> > +	}
> > +
> > +	vmem =3D efi_allocate_pages(&mem, initrd_size,
> > +				 EFI_ALLOCATE_MAX_ADDRESS, EFI_LOADER_DATA);
> > +	if (!vmem) {
> > +		pr_err("Failed to allocate pages for initrd data\n");
> > +		ret =3D -ENOMEM;
> > +		goto free_pool;
> > +	}
> > +
> > +	memcpy(vmem, (void *)initrd, initrd_size);
> > +	e->initrd_res->base =3D (uint64_t)mem;
> > +	e->initrd_res->size =3D (uint64_t)initrd_size;
> > +
> > +	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL)) {
> > +		efiret =3D BS->install_configuration_table(
> > +			&efi_linux_initrd_media_guid,
> > +			(void *)e->initrd_res);
> > +		if (EFI_ERROR(efiret)) {
> > +			ret =3D -efi_errno(efiret);
> > +			pr_err("Failed to install INITRD %s/n",
> > +					efi_strerror(efiret));
> > +			goto free_pages;
> > +		}
> > +	} else {
> > +		ret =3D efi_initrd_register(vmem, initrd_size);
> > +		if (ret) {
> > +			pr_err("Failed to register INITRD %s/n",
> > +				strerror(efiret));
> > +			goto free_pages;
> > +		}
> > +	}
> > +
> > +	if (!from_fit && tmp)
> > +		free(tmp);
> > +
> > +	return 0;
> > +
> > +free_pages:
> > +	efi_free_pages(vmem, initrd_size);
> > +free_pool:
> > +	BS->free_pool(e->initrd_res);
> > +free_mem:
> > +	if (!from_fit && tmp)
> > +		free(tmp);
> > +
> > +	return ret;
> > +}
> > +
> > +static void efi_unload_ramdisk(struct efi_image_data *e)
> > +{
> > +
> > +	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL))
> > +		BS->install_configuration_table(
> > +			&efi_linux_initrd_media_guid, NULL);
> > +	else
> > +		efi_initrd_unregister();
> > +
> > +	efi_free_pages(efi_phys_to_virt(e->initrd_res->base),
> > +				 e->initrd_res->size);
> > +
> > +	BS->free_pool(e->initrd_res);
> > +	e->initrd_res =3D NULL;
> > +}
> > +
> > +static int efi_load_fdt(struct efi_image_data *e)
> > +{
> > +	efi_status_t efiret =3D EFI_SUCCESS;
> > +	efi_physical_addr_t mem;
> > +	void *vmem, *tmp =3D NULL;
> > +	const void *of_tree;
> > +	unsigned long of_size;
> > +	bool from_fit;
> > +	int ret;
> > +
> > +	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
> > +		return 0;
> > +
> > +	from_fit =3D fdt_is_fit(e->data);
> > +	if (from_fit) {
> > +		ret =3D fit_open_image(e->data->os_fit, e->data->fit_config,
> > +				     "fdt", &of_tree, &of_size);
> > +		if (ret) {
> > +			pr_err("Cannot open FDT image in FIT image: %pe\n",
> > +			       ERR_PTR(ret));
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	if (!from_fit) {
> > +		if (!e->data->oftree_file)
> > +			return 0;
> > +
> > +		pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
> > +		tmp =3D read_file(e->data->oftree_file, &of_size);
> > +		if (!tmp || of_size <=3D 0) {
> > +			pr_err("Failed to read initrd from file: %s\n",
> > +				e->data->initrd_file);
> > +			return -EINVAL;
> > +		}
> > +		of_tree =3D tmp;
> > +	}
> > +
> > +	vmem =3D efi_allocate_pages(&mem, of_size + CONFIG_FDT_PADDING,
> > +				 EFI_ALLOCATE_ANY_PAGES,
> > +				 EFI_ACPI_RECLAIM_MEMORY);
> > +	if (!vmem) {
> > +		pr_err("Failed to allocate pages for FDT\n");
> > +		goto free_file;
> > +		return -ENOMEM;
> > +	}
> > +
> > +	memcpy(vmem, of_tree, of_size);
> > +
> > +	efiret =3D BS->install_configuration_table(&efi_fdt_guid,
> > +			(void *)mem);
> > +	if (EFI_ERROR(efiret)) {
> > +		pr_err("Failed to install FDT %s/n", efi_strerror(efiret));
> > +		ret =3D -efi_errno(efiret);
> > +		goto free_mem;
> > +	}
> > +
> > +	e->oftree_res.base =3D mem;
> > +	e->oftree_res.size =3D of_size + CONFIG_FDT_PADDING;
> > +
> > +	if (!from_fit && tmp)
> > +		free(tmp);
> > +
> > +	return 0;
> > +
> > +free_mem:
> > +	efi_free_pages(vmem, of_size);
> > +free_file:
> > +	if (!from_fit && tmp)
> > +		free(tmp);
> > +
> > +	return ret;
> > +}
> > +
> > +static void efi_unload_fdt(struct efi_image_data *e)
> > +{
> > +	BS->install_configuration_table(&efi_fdt_guid, NULL);
> > +
> > +	efi_free_pages(efi_phys_to_virt(e->oftree_res.base),
> > +				 e->oftree_res.size);
> > +}
> > +
> > +static int do_bootm_efi_stub(struct image_data *data)
> > +{
> > +	struct efi_image_data e =3D {.data =3D data};
> > +	enum filetype type;
> > +	int ret =3D 0;
> > +
> > +	ret =3D efi_load_os(&e);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D efi_load_fdt(&e);
> > +	if (ret)
> > +		goto unload_os;
> > +
> > +	ret =3D efi_load_ramdisk(&e);
> > +	if (ret)
> > +		goto unload_oftree;
> > +
> > +	type =3D file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
> > +	ret =3D efi_execute_image(e.handle, e.loaded_image, type);
> > +	if (ret)
> > +		goto unload_ramdisk;
> > +
> > +	return 0;
> > +
> > +unload_ramdisk:
> > +	if (e.initrd_res)
> > +		efi_unload_ramdisk(&e);
> > +unload_oftree:
> > +	efi_unload_fdt(&e);
> > +unload_os:
> > +	efi_unload_os(&e);
> > +	return ret;
> > +}
> > +
> >  static struct image_handler efi_handle_tr =3D {
> >  	.name =3D "EFI Application",
> >  	.bootm =3D do_bootm_efi,
> >  	.filetype =3D filetype_exe,
> >  };
> > =20
> > +static struct image_handler efi_arm64_handle_tr =3D {
> > +	.name =3D "EFI ARM64 Linux kernel",
> > +	.bootm =3D do_bootm_efi_stub,
> > +	.filetype =3D filetype_arm64_efi_linux_image,
> > +};
> > +
> >  static int efi_execute(struct binfmt_hook *b, char *file, int argc, ch=
ar **argv)
> >  {
> > -	return efi_execute_image(b->type, file);
> > +	int ret;
> > +	efi_handle_t handle;
> > +	struct efi_loaded_image *loaded_image;
> > +
> > +	ret =3D efi_load_file_image(file, &loaded_image, &handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return efi_execute_image(handle, loaded_image, b->type);
> >  }
> > =20
> >  static struct binfmt_hook binfmt_efi_hook =3D {
> > @@ -360,8 +707,10 @@ static int efi_register_image_handler(void)
> >  	if (IS_ENABLED(CONFIG_X86))
> >  		register_image_handler(&non_efi_handle_linux_x86);
> > =20
> > -	if (IS_ENABLED(CONFIG_ARM64))
> > +	if (IS_ENABLED(CONFIG_ARM64)) {
> > +		register_image_handler(&efi_arm64_handle_tr);
> >  		binfmt_register(&binfmt_arm64_efi_hook);
> > +	}
> > =20
> >  	return 0;
> >  }
> >=20
>=20
> ```


