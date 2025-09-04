Delivery-date: Thu, 04 Sep 2025 09:04:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu40o-007wXS-19
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 09:04:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu40n-0006qK-2D
	for lore@pengutronix.de; Thu, 04 Sep 2025 09:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4EzwNV8ZkjuZCUHqjQO2CVZ/EoVMJj+xbCFJQgyXyKY=; b=D0Ak42PvWZV+fQOuBQj0ITXAsb
	xgJrMMgAK/B/K7OHmRz9qkEfGvrrQ/3E/olew/Z3V1juxeLI1B9bNmJl3+1Wr055ZVDc3Sfdp1Crg
	Ebk0RLzG74Vd9N7LGmyNMlbeV7Vf6E2ssng2ndc62bQySwXm1G05cGxnyBRs6wTAndY5YDIUNnLJ6
	j4vLHPCNgbrJ7akoUUdxOIQkDN8nhtaAHzS1HVf1fKOYZBcJNBbQYQFM6za6/KbaoS2txPzjO9FgS
	2OPHA4B8UJoBq9njmrBZNAgrohgdv34UYcdSMU6kvQ4PD8lt/wqBMaV9CqoBU/l77XbfO8Oc2ORPG
	0fHZ5KzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu40I-00000009jMC-2VIN;
	Thu, 04 Sep 2025 07:03:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3zz-00000009jIQ-2XBP
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 07:03:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu3zy-0006aq-7K; Thu, 04 Sep 2025 09:03:10 +0200
Message-ID: <4c8ede4a-4330-4bdd-b0d7-9b327accab3d@pengutronix.de>
Date: Thu, 4 Sep 2025 09:03:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250904012322.340813-1-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250904012322.340813-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_000311_648417_8EB4252B 
X-CRM114-Status: GOOD (  22.88  )
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
Subject: Re: [PATCH] efi: payload: image: fix many issues in the code.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Anis,

Sidenote: majority of commit messages don't have a trailing period,
so you may want to drop it for uniformity.

On 04.09.25 03:23, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> fix memory free missing.
> fix unrechable code issue.
> set the fdt memory to a fixed 128KB.
> fix oftree_file exist check.

You appear to be patching code that's not yet upstream.
The version of efi/payload/image.c that's in next right now
has no oftree support.

Please squash the changes into your code and resend, but you can
wait a day until I had a chance to review it as well.


Cheers,
Ahmad

> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  efi/payload/image.c | 56 +++++++++++++++++++++++++++------------------
>  1 file changed, 34 insertions(+), 22 deletions(-)
> 
> diff --git a/efi/payload/image.c b/efi/payload/image.c
> index 38d52a32ea64..9fcc27ffaa78 100644
> --- a/efi/payload/image.c
> +++ b/efi/payload/image.c
> @@ -132,6 +132,7 @@ static int efi_load_file_image(const char *file,
>  	size_t size;
>  	efi_handle_t handle;
>  	efi_status_t efiret = EFI_SUCCESS;
> +	int ret;
>  
>  	buf = read_file(file, &size);
>  	if (!buf)
> @@ -141,7 +142,8 @@ static int efi_load_file_image(const char *file,
>  				 EFI_LOADER_CODE);
>  	if (!exe) {
>  		pr_err("Failed to allocate pages for image\n");
> -		return -ENOMEM;
> +		ret = -ENOMEM;
> +		goto free_buf;
>  	}
>  
>  	memcpy(exe, buf, size);
> @@ -149,25 +151,32 @@ static int efi_load_file_image(const char *file,
>  	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
>  				size, &handle);
>  	if (EFI_ERROR(efiret)) {
> +		ret = -efi_errno(efiret);
>  		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
> -		goto out;
> -	};
> +		goto free_mem;
> +	}
>  
>  	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
>  				   (void **)loaded_image, efi_parent_image,
>  				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
>  	if (EFI_ERROR(efiret)) {
> +		ret = -efi_errno(efiret);
>  		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
>  		BS->unload_image(handle);
> -		goto out;
> +		goto free_mem;
>  	}
>  
>  	*h = handle;
> +	free(buf);
>  
>  	return 0;
> -out:
> +
> +free_mem:
>  	efi_free_pages(exe, size);
> -	return -efi_errno(efiret);
> +free_buf:
> +	free(buf);
> +
> +	return ret;
>  }
>  
>  static bool is_linux_image(enum filetype filetype, const void *base)
> @@ -335,8 +344,8 @@ static bool ramdisk_is_fit(struct image_data *data)
>  			return false;
>  	}
>  
> -	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> -			data->fit_config, "ramdisk") : false;
> +	return data->os_fit ? fit_has_image(data->os_fit,
> +			data->fit_config, "ramdisk") > 0 : false;
>  }
>  
>  static bool fdt_is_fit(struct image_data *data)
> @@ -347,12 +356,12 @@ static bool fdt_is_fit(struct image_data *data)
>  		return true;
>  
>  	if (data->oftree_file) {
> -		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> +		if (!stat(data->oftree_file, &st) && st.st_size > 0)
>  			return false;
>  	}
>  
> -	return data->os_fit ? (bool)fit_has_image(data->os_fit,
> -			data->fit_config, "fdt") : false;
> +	return data->os_fit ? fit_has_image(data->os_fit,
> +			data->fit_config, "fdt") > 0 : false;
>  }
>  
>  static int efi_load_os(struct efi_image_data *e)
> @@ -364,12 +373,15 @@ static int efi_load_os(struct efi_image_data *e)
>  	void *vmem = NULL;
>  	int ret = 0;
>  
> -	if (e->data->os_fit) {
> -		image = (void *)e->data->fit_kernel;
> -		image_size = e->data->fit_kernel_size;
> -	} else if (e->data->os_file)
> +	if (!e->data->os_fit)
>  		return efi_load_file_image(e->data->os_file,
> -				&e->loaded_image, &e->handle);
> +			&e->loaded_image, &e->handle);
> +
> +	image = (void *)e->data->fit_kernel;
> +	image_size = e->data->fit_kernel_size;
> +
> +	if (image_size <= 0 || !image)
> +		return -EINVAL;
>  
>  	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
>  				 EFI_LOADER_CODE);
> @@ -565,13 +577,13 @@ static int efi_load_fdt(struct efi_image_data *e)
>  		of_tree = tmp;
>  	}
>  
> -	vmem = efi_allocate_pages(&mem, of_size + CONFIG_FDT_PADDING,
> +	vmem = efi_allocate_pages(&mem, SZ_128K,
>  				 EFI_ALLOCATE_ANY_PAGES,
>  				 EFI_ACPI_RECLAIM_MEMORY);
>  	if (!vmem) {
>  		pr_err("Failed to allocate pages for FDT\n");
> +		ret = -ENOMEM;
>  		goto free_file;
> -		return -ENOMEM;
>  	}
>  
>  	memcpy(vmem, of_tree, of_size);
> @@ -585,17 +597,17 @@ static int efi_load_fdt(struct efi_image_data *e)
>  	}
>  
>  	e->oftree_res.base = mem;
> -	e->oftree_res.size = of_size + CONFIG_FDT_PADDING;
> +	e->oftree_res.size = SZ_128K;
>  
> -	if (!from_fit && tmp)
> +	if (!from_fit)
>  		free(tmp);
>  
>  	return 0;
>  
>  free_mem:
> -	efi_free_pages(vmem, of_size);
> +	efi_free_pages(vmem, SZ_128K);
>  free_file:
> -	if (!from_fit && tmp)
> +	if (!from_fit)
>  		free(tmp);
>  
>  	return ret;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


