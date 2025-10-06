Delivery-date: Mon, 06 Oct 2025 13:41:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jan-004sLC-0s
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:41:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jam-0002M9-AL
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HGDXbHEvFm6E4a0WEDjqrW3/kloI1oLovWeoAyDhorc=; b=Frw/uQjoYSKB28lhm5VBDVXcVK
	eOHW9vGO8YnshGAoreKhlgx/JiQ+zG3ZzXlPisU3JzbmsnJ/g+bYI5Nprybsyph1nbtNqdFfI0SKQ
	bkpaSfXhV2Lu++UJ+Z1W3NF9jsMHU+JJZHSULLKSCaNPK2s6bP1/SkkpmIdldqZBZB6RQ4pD3wFYX
	XYGMLXpFzKVBvmw35aNThx5dvDP6O4SCqi16L1IhnKmzigz+L5zqophNQvmo7YcplT1NkWRYOx4U1
	m6DefkuFyvGAVVjctT39wR/8sETaKQDO7cldzkCH4ZLbfnImZzbodeLwOpY1SXmXm1iuIiqQ3rg2o
	DPZgtuOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jaM-0000000HVLX-3lzc;
	Mon, 06 Oct 2025 11:40:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jaL-0000000HVKw-0IOy
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:40:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v5jaJ-0002Ek-Ji; Mon, 06 Oct 2025 13:40:55 +0200
Message-ID: <e7b6d543-9d79-4aef-9bb6-b0367a7b7d89@pengutronix.de>
Date: Mon, 6 Oct 2025 13:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251006041512.1360284-1-chalianis1@gmail.com>
 <20251006041512.1360284-8-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251006041512.1360284-8-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_044057_269992_1F780E78 
X-CRM114-Status: GOOD (  29.81  )
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
Subject: Re: [PATCH 08/11] efi: payload: bootm: add support for efi stub boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/6/25 6:15 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Introduce support for booting Linux kernels with an EFI stub from the
> barebox EFI payload. This includes:
> 
> - Loading the kernel image via EFI LoadImage/StartImage
> - Installing the FDT into the EFI configuration table unless
>   EFI_FDT_FORCE is enabled
> - Providing the initrd either through the Initrd Media GUID or
>   the initrd media protocol
> - Registering image handlers for EFI applications, x86/ARM64 EFI
>   Linux kernels, and a fallback handler for non-EFI x86 Linux images
> - Adding Kconfig options to control FDT forcing and initrd installation
> 
> This enables barebox EFI payloads to directly boot Linux kernels with
> EFI stubs in a way compatible with the Linux EFI boot flow.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  efi/payload/Kconfig  |   6 +-
>  efi/payload/Makefile |   1 +
>  efi/payload/bootm.c  | 219 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 225 insertions(+), 1 deletion(-)
>  create mode 100644 efi/payload/bootm.c
> 
> diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
> index d0a46704a6b9..e3a6a72d6a1c 100644
> --- a/efi/payload/Kconfig
> +++ b/efi/payload/Kconfig
> @@ -27,7 +27,11 @@ config EFI_STUB
>  
>  config EFI_HANDOVER_PROTOCOL
>  	bool "EFI Handover protocol"
> -	default y
> +	depends on !EFI_PAYLOAD_BOOTM
>  	depends on X86
>  
> +config EFI_PAYLOAD_BOOTM
> +	bool "EFI bootm protocol"
> +	default !X86
> +
>  endif
> diff --git a/efi/payload/Makefile b/efi/payload/Makefile
> index d8b577bf3e23..083728c53cb4 100644
> --- a/efi/payload/Makefile
> +++ b/efi/payload/Makefile
> @@ -3,6 +3,7 @@
>  obj-y += init.o
>  obj-y += image.o
>  obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
> +obj-$(CONFIG_EFI_PAYLOAD_BOOTM) += bootm.o
>  obj-y += efi-initrd.o
>  obj-$(CONFIG_OFTREE) += fdt.o
>  bbenv-y += env-efi
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> new file mode 100644
> index 000000000000..d0e995be5d7c
> --- /dev/null
> +++ b/efi/payload/bootm.c
> @@ -0,0 +1,219 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * image.c - barebox EFI payload support
> + *
> + * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + */
> +
> +#define pr_fmt(fmt) "efi-bootm: " fmt
> +
> +#include <clock.h>
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <linux/ktime.h>
> +#include <memory.h>
> +#include <command.h>
> +#include <magicvar.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <io.h>
> +#include <efi.h>
> +#include <malloc.h>
> +#include <string.h>
> +#include <linux/err.h>
> +#include <boot.h>
> +#include <bootm.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <binfmt.h>
> +#include <wchar.h>
> +#include <image-fit.h>
> +#include <efi/efi-payload.h>
> +#include <efi/efi-device.h>
> +
> +#include "image.h"
> +#include "setup_header.h"
> +
> +static int efi_load_os(struct image_data *data,
> +		       struct efi_loaded_image **loaded_image,
> +		       efi_handle_t *handle)
> +{
> +	return efi_load_image(data->os_file, loaded_image, handle);
> +}
> +
> +static int efi_load_ramdisk(struct image_data *data, void **initrd)
> +{
> +	unsigned long initrd_size;
> +	void *initrd_mem;
> +	int ret;
> +
> +	if (!data->initrd_file)
> +		return 0;
> +
> +	pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
> +
> +	initrd_mem = read_file(data->initrd_file, &initrd_size);
> +	if (!initrd_mem) {
> +		ret = -errno;
> +		pr_err("Failed to read initrd from file '%s': %m\n",
> +		       data->initrd_file);
> +		return ret;
> +	}
> +
> +	ret = efi_initrd_register(initrd_mem, initrd_size);
> +	if (ret) {
> +		pr_err("Failed to register initrd: %pe\n", ERR_PTR(ret));
> +		goto free_mem;
> +	}
> +
> +	*initrd = initrd_mem;
> +
> +	return 0;
> +
> +free_mem:
> +	free(initrd);
> +
> +	return ret;
> +}
> +
> +static int efi_load_fdt(struct image_data *data, void **fdt)
> +{
> +	efi_physical_addr_t mem;
> +	efi_status_t efiret;
> +	void *of_tree, *vmem;
> +	unsigned long of_size;
> +	int ret;
> +
> +	if (!data->oftree_file)
> +		return 0;
> +
> +	pr_info("Loading devicetree from '%s'\n", data->oftree_file);
> +
> +	of_tree = read_file(data->oftree_file, &of_size);
> +	if (!of_tree) {
> +		ret = -errno;
> +		pr_err("Failed to read oftree: %m\n");
> +		return ret;
> +	}
> +
> +	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
> +				    EFI_ACPI_RECLAIM_MEMORY,
> +				    DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE), &mem);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("Failed to allocate pages for FDT: %s\n", efi_strerror(efiret));
> +		goto free_mem;
> +	}
> +
> +	vmem = efi_phys_to_virt(mem);
> +	memcpy(vmem, of_tree, of_size);
> +
> +	efiret = BS->install_configuration_table(&efi_fdt_guid, vmem);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("Failed to install FDT: %s\n", efi_strerror(efiret));
> +		goto free_efi_mem;
> +	}
> +
> +	*fdt = vmem;
> +	return 0;
> +
> +free_efi_mem:
> +	BS->free_pages(mem, DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
> +free_mem:
> +	free(of_tree);
> +	return -efi_errno(efiret);
> +}
> +
> +static void efi_unload_fdt(void *fdt)
> +{
> +	if (!fdt)
> +		return;
> +
> +	BS->install_configuration_table(&efi_fdt_guid, NULL);
> +	BS->free_pages(efi_virt_to_phys(fdt), SZ_2M);
> +}
> +
> +static int do_bootm_efi_stub(struct image_data *data)
> +{
> +	struct efi_loaded_image *loaded_image;
> +	void *fdt = NULL, *initrd = NULL;
> +	efi_handle_t handle;
> +	enum filetype type;
> +	int ret;
> +
> +	ret = efi_load_os(data, &loaded_image, &handle);
> +	if (ret)
> +		return ret;
> +
> +	ret = efi_load_fdt(data, &fdt);
> +	if (ret)
> +		goto unload_os;
> +
> +	ret = efi_load_ramdisk(data, &initrd);
> +	if (ret)
> +		goto unload_oftree;
> +
> +	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
> +	ret = efi_execute_image(handle, loaded_image, type);
> +	if (ret)
> +		goto unload_ramdisk;
> +
> +	return 0;
> +
> +unload_ramdisk:
> +	if (initrd)
> +		efi_initrd_unregister();
> +unload_oftree:
> +	efi_unload_fdt(fdt);
> +unload_os:
> +	BS->unload_image(handle);
> +
> +	return ret;
> +}
> +
> +static int efi_app_execute(struct image_data *data)
> +{
> +	struct efi_loaded_image *loaded_image;
> +	efi_handle_t handle;
> +	enum filetype type;
> +	int ret;
> +
> +	ret = efi_load_image(data->os_file, &loaded_image, &handle);
> +	if (ret)
> +		return ret;
> +
> +	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
> +
> +	return efi_execute_image(handle, loaded_image, type);
> +}
> +
> +static struct image_handler efi_app_handle_tr = {
> +	.name = "EFI Application",
> +	.bootm = efi_app_execute,
> +	.filetype = filetype_exe,
> +};
> +
> +static struct image_handler efi_x86_linux_handle_tr = {
> +	.name = "EFI X86 Linux kernel",
> +	.bootm = do_bootm_efi_stub,
> +	.filetype = filetype_x86_linux_image,
> +};
> +
> +static struct image_handler efi_arm64_handle_tr = {
> +	.name = "EFI ARM64 Linux kernel",
> +	.bootm = do_bootm_efi_stub,
> +	.filetype = filetype_arm64_efi_linux_image,
> +};
> +
> +static int efi_register_bootm_handler(void)
> +{
> +	register_image_handler(&efi_app_handle_tr);
> +
> +	if (IS_ENABLED(CONFIG_X86))
> +		register_image_handler(&efi_x86_linux_handle_tr);
> +
> +	if (IS_ENABLED(CONFIG_ARM64))
> +		register_image_handler(&efi_arm64_handle_tr);
> +
> +	return 0;
> +}
> +late_efi_initcall(efi_register_bootm_handler);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



