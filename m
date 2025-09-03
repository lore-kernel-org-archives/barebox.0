Delivery-date: Wed, 03 Sep 2025 09:12:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthfM-007Yxa-0F
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 09:12:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthfK-0000Tu-Ib
	for lore@pengutronix.de; Wed, 03 Sep 2025 09:12:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/klXb16+uRCEYb8Hc41pCzK9n++jZ8F6LeXLKeftpk=; b=pCCqqGm87LjlCkoszxPBWrDW/l
	f4Y5JdjNWdrXLHLeCpuPiUF0cNVLpPZIo2V+f9y/wTSwHHAGZqrDVypj4nYxaEy4y9VIdIYdn+qXX
	bpN/5EdBFRa9betkzNeW2DLFufypKVfODMxUY9uIBsdCdCeZ2W8dyCEfhR09zgR4YsT8d7Q2QkPbp
	/YxTgeWmgdd1KD5lqIy/vSPOOKYjkD1bmWkXD1S29IE8hHqXqTlJMVBSxpF8ajJLjUwDXlXGE0UTR
	ysocTabbUBEPPIlpFHZyZLGuBEYwJxBgpe3TWa+KoUJK6XFXE/w+YHuKL5TB9H0VK590BjRcAiSfx
	tMGVMrpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthep-00000004xN4-1AaP;
	Wed, 03 Sep 2025 07:11:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthe6-00000004wxI-3Bvy
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 07:11:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uthe3-0000Ca-V5; Wed, 03 Sep 2025 09:11:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uthe3-003WPA-21;
	Wed, 03 Sep 2025 09:11:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uthe3-00HVsf-1j;
	Wed, 03 Sep 2025 09:11:03 +0200
Date: Wed, 3 Sep 2025 09:11:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: a.fatoum@pengutronix.de, barebox@lists.infradead.org
Message-ID: <aLfqB0Ma_UTaGKpG@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-6-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250831035542.1623695-6-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_001106_955160_9034715B 
X-CRM114-Status: GOOD (  26.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/7] efi: payload: add support for efi stub boot and fit
 image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Some things worth fixing below.


On Sat, Aug 30, 2025 at 11:55:41PM -0400, chalianis1@gmail.com wrote:
> +static int efi_load_file_image(const char *file,
> +			       struct efi_loaded_image **loaded_image,
> +			       efi_handle_t *h)
>  {
> +	efi_physical_addr_t mem;
>  	void *exe;
> +	char *buf;
>  	size_t size;
>  	efi_handle_t handle;
>  	efi_status_t efiret = EFI_SUCCESS;
>  
> -	exe = efi_read_file(file, &size);
> -	if (!exe)
> -		return -errno;
> +	buf = read_file(file, &size);
> +	if (!buf)
> +		return -ENOMEM;

buf is never freed, neither in the error nor in the success path.

>  
> -	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe, size,
> -			&handle);
> +	exe = efi_allocate_pages(&mem, size, EFI_ALLOCATE_ANY_PAGES,
> +				 EFI_LOADER_CODE);
> +	if (!exe) {
> +		pr_err("Failed to allocate pages for image\n");
> +		return -ENOMEM;
> +	}
> +
> +	memcpy(exe, buf, size);
> +
> +	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
> +				size, &handle);
>  	if (EFI_ERROR(efiret)) {
>  		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
>  		goto out;
>  	};
>  
>  	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
> -			(void **)loaded_image,
> -			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> +				   (void **)loaded_image, efi_parent_image,
> +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
>  	if (EFI_ERROR(efiret)) {
>  		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
>  		BS->unload_image(handle);
> @@ -151,8 +163,10 @@ static int efi_load_image(const char *file, struct efi_loaded_image **loaded_ima
>  	}
>  
>  	*h = handle;
> +
> +	return 0;
>  out:
> -	efi_free_file(exe, size);
> +	efi_free_pages(exe, size);
>  	return -efi_errno(efiret);
>  }
>  
> @@ -171,20 +185,16 @@ static bool is_linux_image(enum filetype filetype, const void *base)
>  	return false;
>  }
>  
> +static bool ramdisk_is_fit(struct image_data *data)
> +{
> +	struct stat st;
> +
> +	if (bootm_signed_images_are_forced())
> +		return true;
> +
> +	if (data->initrd_file) {
> +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> +			return false;
> +	}
> +
> +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> +			data->fit_config, "ramdisk") : false;
> +}
> +
> +static bool fdt_is_fit(struct image_data *data)
> +{
> +	struct stat st;
> +
> +	if (bootm_signed_images_are_forced())
> +		return true;
> +
> +	if (data->oftree_file) {
> +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> +			return false;
> +	}
> +
> +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> +			data->fit_config, "fdt") : false;

fit_has_image() can return an error code. Casting this to bool will
result in 'true' which is not what you want here.

> +}
> +
> +static int efi_load_os(struct efi_image_data *e)
> +{
> +	efi_status_t efiret = EFI_SUCCESS;
> +	efi_physical_addr_t mem;
> +	size_t image_size = 0;
> +	void *image = NULL;
> +	void *vmem = NULL;
> +	int ret = 0;
> +
> +	if (e->data->os_fit) {
> +		image = (void *)e->data->fit_kernel;
> +		image_size = e->data->fit_kernel_size;
> +	} else if (e->data->os_file)
> +		return efi_load_file_image(e->data->os_file,
> +				&e->loaded_image, &e->handle);

If neither of the above is true you continue with image = NULL and
image_size = 0. I think you need a else return -ESOMETHING here.

> +
> +	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
> +				 EFI_LOADER_CODE);
> +	if (!vmem) {
> +		pr_err("Failed to allocate pages for image\n");
> +		return -ENOMEM;
> +	}
> +
> +	memcpy(vmem, image, image_size);
> +
> +	efiret = BS->load_image(false, efi_parent_image, efi_device_path, image,
> +				image_size, &e->handle);
> +	if (EFI_ERROR(efiret)) {
> +		ret = -efi_errno(efiret);
> +		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
> +		goto out_mem;
> +	};
> +
> +	efiret = BS->open_protocol(e->handle, &efi_loaded_image_protocol_guid,
> +				   (void **)&e->loaded_image, efi_parent_image,
> +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> +	if (EFI_ERROR(efiret)) {
> +		ret = -efi_errno(efiret);
> +		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
> +		goto out_unload;
> +	}
> +
> +	e->image_res.base = mem;
> +	e->image_res.size = image_size;
> +
> +	return 0;
> +
> +out_mem:
> +	efi_free_pages(vmem, image_size);
> +out_unload:
> +	BS->unload_image(e->handle);
> +	return ret;
> +}
> +
> +static int efi_load_fdt(struct efi_image_data *e)
> +{
> +	efi_status_t efiret = EFI_SUCCESS;
> +	efi_physical_addr_t mem;
> +	void *vmem, *tmp = NULL;
> +	const void *of_tree;
> +	unsigned long of_size;
> +	bool from_fit;
> +	int ret;
> +
> +	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
> +		return 0;
> +
> +	from_fit = fdt_is_fit(e->data);
> +	if (from_fit) {
> +		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
> +				     "fdt", &of_tree, &of_size);
> +		if (ret) {
> +			pr_err("Cannot open FDT image in FIT image: %pe\n",
> +			       ERR_PTR(ret));
> +			return ret;
> +		}
> +	}
> +
> +	if (!from_fit) {

else instead?

> +		if (!e->data->oftree_file)
> +			return 0;
> +
> +		pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
> +		tmp = read_file(e->data->oftree_file, &of_size);
> +		if (!tmp || of_size <= 0) {
> +			pr_err("Failed to read initrd from file: %s\n",
> +				e->data->initrd_file);
> +			return -EINVAL;
> +		}
> +		of_tree = tmp;
> +	}
> +
> +	vmem = efi_allocate_pages(&mem, of_size + CONFIG_FDT_PADDING,
> +				 EFI_ALLOCATE_ANY_PAGES,
> +				 EFI_ACPI_RECLAIM_MEMORY);

Can you replace CONFIG_FDT_PADDING with a #define in this file? The
Kconfig option you introduced becomes visible for every user, but it
only has a meaning in special cases. I think on EFI machines we are not
scarce on memory, so you could allocate a much higher amount of memory,
say 128KiB to reduce the need to make this configurable.

> +	if (!vmem) {
> +		pr_err("Failed to allocate pages for FDT\n");
> +		goto free_file;
> +		return -ENOMEM;

This return is never reached. Also add ret = -ENOMEM before the goto.

> +	}
> +
> +	memcpy(vmem, of_tree, of_size);
> +
> +	efiret = BS->install_configuration_table(&efi_fdt_guid,
> +			(void *)mem);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("Failed to install FDT %s/n", efi_strerror(efiret));
> +		ret = -efi_errno(efiret);
> +		goto free_mem;
> +	}
> +
> +	e->oftree_res.base = mem;
> +	e->oftree_res.size = of_size + CONFIG_FDT_PADDING;
> +
> +	if (!from_fit && tmp)
> +		free(tmp);

No need to check, free() handles NULL pointers fine.

Some of the comments apply to efi_load_ramdisk() as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


