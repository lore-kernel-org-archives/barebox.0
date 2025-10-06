Delivery-date: Mon, 06 Oct 2025 13:41:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jb5-004sLo-0G
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jb4-0002Sd-C0
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k6fYVckAyegnHrbupGM5sxaSPpOCdnhMlNMN/ABUEWk=; b=tOyXkQeUlGoXuC73iTZT5zkIru
	D+f60IQrzQoZagPGiWSPiTsf2jW4mq+B947iMLpfXJAEriXwMCN9/Ouy1zmrFdSTTvPSuISgl1xi8
	ue6RISfYAtXVwd2qseexj2UIIKPPc7h5Xmq8EzzQ3vSVDg+8j2ojKdiVka2EFZQAspyDhDlTAQ2kx
	Rz21Qh3fTkCjhEBcgmXfzLtAPJ4/NwVOp8lTXrKSXufZWRHtlo/osWu2WvY0SsVKDendJ2airw7Nr
	GErG5I+l4nH86Aol8TsSZCXm24RmElJPNWemwFyuZGNEIgmpZOWcvPzQLTh4+xbLAYOlojzHP9JnF
	zI4dG6Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jah-0000000HVTI-2QGj;
	Mon, 06 Oct 2025 11:41:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jae-0000000HVRd-1yZb
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:41:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v5jac-0002Ik-OZ; Mon, 06 Oct 2025 13:41:14 +0200
Message-ID: <d59489be-c41c-4ed5-9276-0a5f79d35239@pengutronix.de>
Date: Mon, 6 Oct 2025 13:41:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
 <20251006041512.1360284-9-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251006041512.1360284-9-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_044116_515203_E0D5EB06 
X-CRM114-Status: GOOD (  22.24  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/11] efi: payload: bootm: add support for fit image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/6/25 6:15 AM, chalianis1@gmail.com wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> Extend the EFI payload boot flow to support loading kernel, initrd,
> and devicetree directly from a FIT image. When a FIT is present,
> the loader extracts the relevant subimages ("kernel", "ramdisk",
> and "fdt") also support falling back to external files when possible.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  efi/payload/Kconfig |   1 +
>  efi/payload/bootm.c | 125 ++++++++++++++++++++++++++++++++++++--------
>  2 files changed, 104 insertions(+), 22 deletions(-)
> 
> diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
> index e3a6a72d6a1c..4fb866210a69 100644
> --- a/efi/payload/Kconfig
> +++ b/efi/payload/Kconfig
> @@ -32,6 +32,7 @@ config EFI_HANDOVER_PROTOCOL
>  
>  config EFI_PAYLOAD_BOOTM
>  	bool "EFI bootm protocol"
> +	select BOOTM_FITIMAGE
>  	default !X86
>  
>  endif
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> index d0e995be5d7c..3e9ccd42bf7f 100644
> --- a/efi/payload/bootm.c
> +++ b/efi/payload/bootm.c
> @@ -34,11 +34,74 @@
>  #include "image.h"
>  #include "setup_header.h"
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
> +	return data->os_fit ? fit_has_image(data->os_fit,
> +			data->fit_config, "ramdisk") > 0 : false;
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
> +		if (!stat(data->oftree_file, &st) && st.st_size > 0)
> +			return false;
> +	}
> +
> +	return data->os_fit ? fit_has_image(data->os_fit,
> +			data->fit_config, "fdt") > 0 : false;
> +}
> +
>  static int efi_load_os(struct image_data *data,
>  		       struct efi_loaded_image **loaded_image,
>  		       efi_handle_t *handle)
>  {
> -	return efi_load_image(data->os_file, loaded_image, handle);
> +	efi_status_t efiret;
> +	efi_handle_t h;
> +
> +	if (!data->os_fit)
> +		return efi_load_image(data->os_file, loaded_image, handle);
> +
> +	if (!data->fit_kernel)
> +		return -ENOENT;
> +
> +	efiret = BS->load_image(false, efi_parent_image, efi_device_path,
> +				(void *)data->fit_kernel, data->fit_kernel_size, &h);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
> +		goto out_mem;
> +	};
> +
> +	efiret = BS->open_protocol(h, &efi_loaded_image_protocol_guid,
> +				   (void **)loaded_image, efi_parent_image,
> +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
> +		goto out_unload;
> +	}
> +
> +	*handle = h;
> +
> +	return 0;
> +
> +out_unload:
> +	BS->unload_image(h);
> +out_mem:
> +	return -efi_errno(efiret);
>  }
>  
>  static int efi_load_ramdisk(struct image_data *data, void **initrd)
> @@ -47,17 +110,26 @@ static int efi_load_ramdisk(struct image_data *data, void **initrd)
>  	void *initrd_mem;
>  	int ret;
>  
> -	if (!data->initrd_file)
> -		return 0;
> -
> -	pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
> -
> -	initrd_mem = read_file(data->initrd_file, &initrd_size);
> -	if (!initrd_mem) {
> -		ret = -errno;
> -		pr_err("Failed to read initrd from file '%s': %m\n",
> -		       data->initrd_file);
> -		return ret;
> +	if (ramdisk_is_fit(data)) {
> +		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
> +				     (const void **)&initrd_mem, &initrd_size);
> +		if (ret) {
> +			pr_err("Cannot open ramdisk image in FIT image: %m\n");
> +			return ret;
> +		}
> +	} else {
> +		if (!data->initrd_file)
> +			return 0;
> +
> +		pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
> +
> +		initrd_mem = read_file(data->initrd_file, &initrd_size);
> +		if (!initrd_mem) {
> +			ret = -errno;
> +			pr_err("Failed to read initrd from file '%s': %m\n",
> +			       data->initrd_file);
> +			return ret;
> +		}
>  	}
>  
>  	ret = efi_initrd_register(initrd_mem, initrd_size);
> @@ -84,16 +156,25 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
>  	unsigned long of_size;
>  	int ret;
>  
> -	if (!data->oftree_file)
> -		return 0;
> -
> -	pr_info("Loading devicetree from '%s'\n", data->oftree_file);
> -
> -	of_tree = read_file(data->oftree_file, &of_size);
> -	if (!of_tree) {
> -		ret = -errno;
> -		pr_err("Failed to read oftree: %m\n");
> -		return ret;
> +	if (fdt_is_fit(data)) {
> +		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
> +				     (const void **)&of_tree, &of_size);
> +		if (ret) {
> +			pr_err("Cannot open FDT image in FIT image: %m\n");
> +			return ret;
> +		}
> +	} else {
> +		if (!data->oftree_file)
> +			return 0;
> +
> +		pr_info("Loading devicetree from '%s'\n", data->oftree_file);
> +
> +		of_tree = read_file(data->oftree_file, &of_size);
> +		if (!of_tree) {
> +			ret = -errno;
> +			pr_err("Failed to read oftree: %m\n");
> +			return ret;
> +		}
>  	}
>  
>  	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



