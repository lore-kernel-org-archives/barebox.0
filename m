Delivery-date: Mon, 06 Oct 2025 13:32:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jRq-004sDr-0B
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:32:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jRp-0000x9-4M
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+mwjnOEFoR5RSlu9H8BR+nYdKdbgBT3/oSEbdb+5GLA=; b=JN2jInvp4412yr+P9Cz5IrmhAp
	dkldoMl9WBs9uuiWGERGZHYSNOEe14M6mAZv0HIBVlr19iky7oN79dEtK4dhCSa5WwG+0ibBPP60Z
	xoPBL/UZFZJt51rdnZGD4Id8l8UdzIxh+H3iJnojevMRQtQX+5klQWqv6FpFcHX+yupgbDSlAJ5lo
	mfvYfGz/C1PyuX7hxG8Y7Xe3c14BHJKM0X5q7Pg57D5fnpq74/LSlIbZyYqCLvcx5GFdbT31ExAGO
	I04VpIlXo/kGDyESiUhwkRkG6rUQSSxHpiCJeHelkmMI9BfedfTTXLtLO015oMTuWkAIPg331KLdY
	Z81+7wwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jRB-0000000HU8e-0mJB;
	Mon, 06 Oct 2025 11:31:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jR7-0000000HU6a-43x0
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:31:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v5jR4-0000q7-AM; Mon, 06 Oct 2025 13:31:22 +0200
Message-ID: <af366760-456a-4eaa-b8a5-f3dc4f73b0e5@pengutronix.de>
Date: Mon, 6 Oct 2025 13:31:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
 <20251006041512.1360284-3-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251006041512.1360284-3-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_043126_167118_2DC63422 
X-CRM114-Status: GOOD (  25.40  )
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
Subject: Re: [PATCH 03/11] efi: payload: add support for EFI initrd media
 protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/6/25 6:15 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Implement the EFI initrd media protocol, which allows registering an
> initramfs data to be loaded by the linux after vi EFI Initrd Media
> protocol.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  efi/guid.c                |   4 ++
>  efi/payload/Makefile      |   1 +
>  efi/payload/efi-initrd.c  | 104 ++++++++++++++++++++++++++++++++++++++
>  include/efi.h             |   4 ++
>  include/efi/efi-payload.h |   3 ++
>  5 files changed, 116 insertions(+)
>  create mode 100644 efi/payload/efi-initrd.c
> 
> diff --git a/efi/guid.c b/efi/guid.c
> index ef230a2b2403..46440c9f3328 100644
> --- a/efi/guid.c
> +++ b/efi/guid.c
> @@ -44,6 +44,7 @@ const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
>  const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
>  const efi_guid_t efi_device_path_utilities_protocol_guid =
>  	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
> +const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
>  
>  #define EFI_GUID_STRING(guid, short, long) do {	\
>  	if (!efi_guidcmp(guid, *g))		\
> @@ -128,5 +129,8 @@ const char *efi_guid_string(efi_guid_t *g)
>  	EFI_GUID_STRING(EFI_ISCSIDXE_INF_GUID, "IScsiDxe.inf", "EFI IScsiDxe.inf File GUID");
>  	EFI_GUID_STRING(EFI_VLANCONFIGDXE_INF_GUID, "VlanConfigDxe.inf", "EFI VlanConfigDxe.inf File GUID");
>  
> +	/* Ramdisk */
> +	EFI_GUID_STRING(EFI_LINUX_INITRD_MEDIA_GUID, "Initrd Media", "EFI Linux Initrd Media GUID");
> +
>  	return "unknown";
>  }
> diff --git a/efi/payload/Makefile b/efi/payload/Makefile
> index a4a0332a8288..1250535302d3 100644
> --- a/efi/payload/Makefile
> +++ b/efi/payload/Makefile
> @@ -2,6 +2,7 @@
>  
>  obj-y += init.o
>  obj-y += image.o
> +obj-y += efi-initrd.o
>  obj-$(CONFIG_OFTREE) += fdt.o
>  bbenv-y += env-efi
>  obj-$(CONFIG_CMD_IOMEM) += iomem.o
> diff --git a/efi/payload/efi-initrd.c b/efi/payload/efi-initrd.c
> new file mode 100644
> index 000000000000..ddc21704a8e0
> --- /dev/null
> +++ b/efi/payload/efi-initrd.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * efi-initrd.c - barebox EFI payload support
> + *
> + * Copyright (c) 2025 Anis Chali <chalianis1@gmail.com>
> + * Copyright (C) 2025 Ahmad Fatoum <a.fatoum@pengutronix.de>
> + */
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <linux/hw_random.h>
> +#include <efi.h>
> +#include <efi/efi-device.h>
> +#include <efi/device-path.h>
> +#include <efi/efi-payload.h>
> +
> +static efi_status_t EFIAPI efi_initrd_load_file2(
> +	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
> +	bool boot_policy, unsigned long *buffer_size, void *buffer);
> +
> +static const struct {
> +	struct efi_device_path_vendor vendor;
> +	struct efi_device_path end;
> +} __packed initrd_dev_path = {
> +	{ {
> +		  DEVICE_PATH_TYPE_MEDIA_DEVICE,
> +		  DEVICE_PATH_SUB_TYPE_VENDOR_PATH,
> +		  sizeof(initrd_dev_path.vendor),
> +	  },
> +	EFI_LINUX_INITRD_MEDIA_GUID },
> +	{ DEVICE_PATH_TYPE_END, DEVICE_PATH_SUB_TYPE_END,
> +		DEVICE_PATH_END_LENGTH }
> +};
> +
> +static struct linux_initrd {
> +	struct efi_load_file_protocol base;
> +	void *start;
> +	size_t size;
> +	efi_handle_t lf2_handle;
> +} initrd;
> +
> +#define to_linux_initrd(x) container_of(x, struct linux_initrd, base)
> +
> +static efi_status_t EFIAPI efi_initrd_load_file2(
> +	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
> +	bool boot_policy, unsigned long *buffer_size, void *buffer)
> +{
> +
> +	struct linux_initrd *initrd = to_linux_initrd(this);
> +
> +	if (!this || this != &initrd->base || !buffer_size)
> +		return EFI_INVALID_PARAMETER;
> +
> +	if (file_path->type != initrd_dev_path.end.type ||
> +	    file_path->sub_type != initrd_dev_path.end.sub_type)
> +		return EFI_INVALID_PARAMETER;
> +
> +	if (boot_policy)
> +		return EFI_UNSUPPORTED;
> +
> +	if (!buffer || *buffer_size < initrd->size) {
> +		*buffer_size = initrd->size;
> +		return EFI_BUFFER_TOO_SMALL;
> +	} else {
> +		memcpy(buffer, initrd->start, initrd->size);
> +		*buffer_size = initrd->size;
> +	}
> +
> +	return EFI_SUCCESS;
> +}
> +
> +int efi_initrd_register(void *initrd_base, size_t initrd_sz)
> +{
> +	efi_status_t efiret;
> +	int ret;
> +
> +	initrd.base.load_file = efi_initrd_load_file2;
> +	initrd.start = initrd_base;
> +	initrd.size = initrd_sz;
> +
> +	efiret = BS->install_multiple_protocol_interfaces(
> +		&initrd.lf2_handle, &efi_load_file2_protocol_guid, &initrd.base,
> +		&efi_device_path_protocol_guid, &initrd_dev_path, NULL);
> +	if (EFI_ERROR(efiret)) {
> +		pr_err("Failed to install protocols for INITRD %s\n",
> +		       efi_strerror(efiret));
> +		ret = -efi_errno(efiret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +void efi_initrd_unregister(void)
> +{
> +	if (!initrd.base.load_file)
> +		return;
> +
> +	BS->uninstall_multiple_protocol_interfaces(
> +		initrd.lf2_handle, &efi_device_path_protocol_guid, &initrd_dev_path,
> +		&efi_load_file2_protocol_guid, &initrd.base, NULL);
> +
> +	initrd.base.load_file = NULL;
> +}
> \ No newline at end of file
> diff --git a/include/efi.h b/include/efi.h
> index 40b69fdb0188..bd339ea097c3 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -558,6 +558,9 @@ extern struct efi_runtime_services *RT;
>  #define EFI_DRIVER_BINDING_PROTOCOL_GUID \
>      EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
>  
> +#define EFI_LINUX_INITRD_MEDIA_GUID \
> +	EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
> +
>  struct efi_driver_binding_protocol {
>  	efi_status_t (EFIAPI * supported)(
>  			struct efi_driver_binding_protocol *this,
> @@ -603,6 +606,7 @@ extern const efi_guid_t efi_guid_event_group_reset_system;
>  extern const efi_guid_t efi_load_file_protocol_guid;
>  extern const efi_guid_t efi_load_file2_protocol_guid;
>  extern const efi_guid_t efi_device_path_utilities_protocol_guid;
> +extern const efi_guid_t efi_linux_initrd_media_guid;
>  
>  struct efi_config_table {
>  	efi_guid_t guid;
> diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
> index fe45864dd8a7..d8e66a187a87 100644
> --- a/include/efi/efi-payload.h
> +++ b/include/efi/efi-payload.h
> @@ -34,4 +34,7 @@ int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
>  void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
>  			 size_t *memsize, enum efi_memory_type mem_type);
>  
> +int efi_initrd_register(void *initrd, size_t initrd_size);
> +void efi_initrd_unregister(void);
> +
>  #endif

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



