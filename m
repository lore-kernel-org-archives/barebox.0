Delivery-date: Sat, 06 Sep 2025 02:13:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYY-008daq-2w
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:13:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYW-0000kr-K4
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:13:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMiscCJH1SxG/tPEsJuxvHt15jhQ6cCVbCuZTBk7xSs=; b=UlsdmpW1kMEcE3tK2cG3/aI+Py
	ALirvp28FlImgjiUOQROKoRmzhhI3e86RRv+QLs8sVzIoARWV/0YFpZGWC648TT4N3Zt8RzZ2LYGp
	n7Zo17gC65ErKzG1bBin5xX7RC47AcYepEt0L/bOzg62oclfUGFqWJFRG9z5y7kRLlErj2qO8rLVr
	aLgwgvnMHeQR/l7paQa3o0Mu3FosU40DolWaejP0mPACfINNAY3s0UyGI9gnt0LBLbSOw7nowOhzs
	nR0a8AskezdR0AkgghOAfSFDKxy7piFwlZeBx8KVx1J3/nEL9e6w3FoQDs9Pxyfua09rCoCRqEt7t
	uIpG38vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugXl-00000005VmW-15Bc;
	Sat, 06 Sep 2025 00:12:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubp0-000000041fI-38hH
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 19:10:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uuboz-0003jG-EE; Fri, 05 Sep 2025 21:10:05 +0200
Message-ID: <d7915489-2adb-4da9-8c39-99b501654f94@pengutronix.de>
Date: Fri, 5 Sep 2025 21:10:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-6-chalianis1@gmail.com>
 <4be211c4-ae79-4bd0-a906-672cc7ed25d5@pengutronix.de>
 <f5589de4f42267db92032c2b599053fbf5e05e23.camel@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <f5589de4f42267db92032c2b599053fbf5e05e23.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_121007_103584_B9663C57 
X-CRM114-Status: GOOD (  30.19  )
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

On 9/5/25 12:44 AM, anis chali wrote:
> Hi,
> 
>> We should rename the existing image.c to handover.c and keep it x86 only
>> and add your code without the historical baggage IMO.
> Ok, We can rename the file, do we need to create a shared file between them,
> beacuse we have all the code for reading the image and allocating in common 
> between the handover.c (comming) and the image.c, An option would be refactoring
> the handover to become just a branch that we take if a config is enabled, Knowing
> that we meybe can support efi stub in x86 with the same code in image.c, in that case 
> we maybe should just name it efi/payload/bootm.c and it will cover linux as efi application
> fitImage on all supported architectures??

I think it would be easiest if you just rename image.c to handover.c,
duplicate all its code in a new bootm.c, throw away all the x86/handover
specific stuff and implement the spec-conforming protocol without the
handover baggage. Consolidation can happen separately, once we have
something that works and is upstream.

>> Given that Sascha already commented on some things, I want to ask you to
>> squash your latest changes into this commit, have two separate files
>> (maybe call this one boot.c) and resend.
> 
> Okay, I’ll wait for your feedback before proceeding.

Sorry, I should have been clearer; The usual workflow is that you squash
requested changes into the original patch and then send a v2 (or v3, ...
etc.). I see that you addressed Sascha's feedback in a separate patch.

Please resend the series fully with feedback applied for the next round
of review.

Thanks,
Ahmad

> 
>> Thanks,
>> Ahmad
>>
>> This code is tested on many qemu EFI compilations comming from ovmf ubuntu
>>> package, tianocore efi for qemu, local edk2 build, and also tested on RPi3b
>>> 64 bit EFI from tianocore and a local build of edk2, more mchines will be
>>> tested soon. the test was for a full boot chain on RPi3b booting a fit image
>>> containing a kernel, an fdt, and a ramdisk with ostree initrd to mount an
>>> ostree root filesystem. for contribution in short term,
>>> 1. it would be nice to test with more hardware,
>>> 2. linux global checkup of efivars, efi capsule update, efi runtime services
>>> 3. The state.dtb to support barebox state to manage multiple system boot
>>>    and a recovery.
>>>    the case would be sys1 = new ostree commit, sys2 = old commit (rollback)
>>>    and a recovery boot system on readonly disk.
>>> 4. secure boot, PoC to check if there is a way to load TF-A from EFI
>>> and then load the efi payload from it and launch optee??
>>>
>> Signed-off-by: Chali Anis <[chalianis1@gmail.com](mailto:chalianis1@gmail.com)>
>>> ---
>>>  efi/payload/image.c | 457 ++++++++++++++++++++++++++++++++++++++------
>>>  1 file changed, 403 insertions(+), 54 deletions(-)
>>>
>> diff --git a/efi/payload/image.c b/efi/payload/image.c
>>> index 33c5e18dac27..38d52a32ea64 100644
>>> --- a/efi/payload/image.c
>>> +++ b/efi/payload/image.c
>>> @@ -25,6 +25,7 @@
>>>  #include <libfile.h>
>>>  #include <binfmt.h>
>>>  #include <wchar.h>
>>> +#include <image-fit.h>
>>>  #include <efi/efi-payload.h>
>>>  #include <efi/efi-device.h>
>>>  
>>> @@ -77,42 +78,41 @@ struct linux_kernel_header {
>>>  	uint32_t handover_offset;	/** */
>>>  } __attribute__ ((packed));
>>>  
>>> -static void *efi_read_file(const char *file, size_t *size)
>>> -{
>>> -	efi_physical_addr_t mem;
>>> -	efi_status_t efiret;
>>> -	struct stat s;
>>> -	char *buf;
>>> -	ssize_t ret;
>>> +struct efi_mem_resource {
>>> +	efi_physical_addr_t base;
>>> +	size_t size;
>>> +} __attribute__ ((packed));
>>>  
>>> -	buf = read_file(file, size);
>>> -	if (buf || errno != ENOMEM)
>>> -		return buf;
>>> +struct efi_image_data {
>>> +	struct image_data *data;
>>>  
>>> -	ret = stat(file, &s);
>>> -	if (ret)
>>> -		return NULL;
>>> +	efi_handle_t handle;
>>> +	struct efi_loaded_image *loaded_image;
>>>  
>>> -	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
>>> -				    EFI_LOADER_CODE,
>>> -				    DIV_ROUND_UP(s.st_size, EFI_PAGE_SIZE),
>>> -				    &mem);
>>> +	struct efi_mem_resource image_res;
>>> +	struct efi_mem_resource oftree_res;
>>> +	struct efi_mem_resource *initrd_res;
>>> +};
>>> +
>>> +
>>> +static void *efi_allocate_pages(efi_physical_addr_t *mem,
>>> +				size_t size,
>>> +				enum efi_allocate_type allocate_type,
>>> +				enum efi_memory_type mem_type)
>>> +{
>>> +	efi_status_t efiret;
>>> +
>>> +	efiret = BS->allocate_pages(allocate_type, mem_type,
>>> +				    DIV_ROUND_UP(size, EFI_PAGE_SIZE), mem);
>>>  	if (EFI_ERROR(efiret)) {
>>>  		errno = efi_errno(efiret);
>>>  		return NULL;
>>>  	}
>>>  
>>> -	buf = efi_phys_to_virt(mem);
>>> -
>>> -	ret = read_file_into_buf(file, buf, s.st_size);
>>> -	if (ret < 0)
>>> -		return NULL;
>>> -
>>> -	*size = ret;
>>> -	return buf;
>>> +	return efi_phys_to_virt(*mem);
>>>  }
>>>  
>>> -static void efi_free_file(void *_mem, size_t size)
>>> +static void efi_free_pages(void *_mem, size_t size)
>>>  {
>>>  	efi_physical_addr_t mem = efi_virt_to_phys(_mem);
>>>  
>>> @@ -122,28 +122,40 @@ static void efi_free_file(void *_mem, size_t size)
>>>  		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
>>>  }
>>>  
>>> -static int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
>>> -		efi_handle_t *h)
>>> +static int efi_load_file_image(const char *file,
>>> +			       struct efi_loaded_image **loaded_image,
>>> +			       efi_handle_t *h)
>>>  {
>>> +	efi_physical_addr_t mem;
>>>  	void *exe;
>>> +	char *buf;
>>>  	size_t size;
>>>  	efi_handle_t handle;
>>>  	efi_status_t efiret = EFI_SUCCESS;
>>>  
>>> -	exe = efi_read_file(file, &size);
>>> -	if (!exe)
>>> -		return -errno;
>>> +	buf = read_file(file, &size);
>>> +	if (!buf)
>>> +		return -ENOMEM;
>>>  
>>> -	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe, size,
>>> -			&handle);
>>> +	exe = efi_allocate_pages(&mem, size, EFI_ALLOCATE_ANY_PAGES,
>>> +				 EFI_LOADER_CODE);
>>> +	if (!exe) {
>>> +		pr_err("Failed to allocate pages for image\n");
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	memcpy(exe, buf, size);
>>> +
>>> +	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
>>> +				size, &handle);
>>>  	if (EFI_ERROR(efiret)) {
>>>  		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
>>>  		goto out;
>>>  	};
>>>  
>>>  	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
>>> -			(void **)loaded_image,
>>> -			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
>>> +				   (void **)loaded_image, efi_parent_image,
>>> +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
>>>  	if (EFI_ERROR(efiret)) {
>>>  		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
>>>  		BS->unload_image(handle);
>>> @@ -151,8 +163,10 @@ static int efi_load_image(const char *file, struct efi_loaded_image **loaded_ima
>>>  	}
>>>  
>>>  	*h = handle;
>>> +
>>> +	return 0;
>>>  out:
>>> -	efi_free_file(exe, size);
>>> +	efi_free_pages(exe, size);
>>>  	return -efi_errno(efiret);
>>>  }
>>>  
>>> @@ -171,20 +185,16 @@ static bool is_linux_image(enum filetype filetype, const void *base)
>>>  	return false;
>>>  }
>>>  
>>> -static int efi_execute_image(enum filetype filetype, const char *file)
>>> +static int efi_execute_image(efi_handle_t handle,
>>> +			     struct efi_loaded_image *loaded_image,
>>> +			     enum filetype filetype)
>>>  {
>>> -	efi_handle_t handle;
>>> -	struct efi_loaded_image *loaded_image;
>>>  	efi_status_t efiret;
>>>  	const char *options;
>>>  	bool is_driver;
>>> -	int ret;
>>> -
>>> -	ret = efi_load_image(file, &loaded_image, &handle);
>>> -	if (ret)
>>> -		return ret;
>>>  
>>> -	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
>>> +	is_driver =
>>> +		(loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
>>>  		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
>>>  
>>>  	if (is_linux_image(filetype, loaded_image->image_base)) {
>>> @@ -192,7 +202,8 @@ static int efi_execute_image(enum filetype filetype, const char *file)
>>>  		options = linux_bootargs_get();
>>>  		pr_info("add linux options '%s'\n", options);
>>>  		if (options) {
>>> -			loaded_image->load_options = xstrdup_char_to_wchar(options);
>>> +			loaded_image->load_options =
>>> +				xstrdup_char_to_wchar(options);
>>>  			loaded_image->load_options_size =
>>>  				(strlen(options) + 1) * sizeof(wchar_t);
>>>  		}
>>> @@ -216,11 +227,11 @@ static int efi_execute_image(enum filetype filetype, const char *file)
>>>  	return -efi_errno(efiret);
>>>  }
>>>  
>>> -typedef void(*handover_fn)(void *image, struct efi_system_table *table,
>>> -		struct linux_kernel_header *header);
>>> +typedef void (*handover_fn)(void *image, struct efi_system_table *table,
>>> +			    struct linux_kernel_header *header);
>>>  
>>>  static inline void linux_efi_handover(efi_handle_t handle,
>>> -		struct linux_kernel_header *header)
>>> +				      struct linux_kernel_header *header)
>>>  {
>>>  	handover_fn handover;
>>>  	uintptr_t addr;
>>> @@ -244,7 +255,7 @@ static int do_bootm_efi(struct image_data *data)
>>>  	struct efi_loaded_image *loaded_image;
>>>  	struct linux_kernel_header *image_header, *boot_header;
>>>  
>>> -	ret = efi_load_image(data->os_file, &loaded_image, &handle);
>>> +	ret = efi_load_file_image(data->os_file, &loaded_image, &handle);
>>>  	if (ret)
>>>  		return ret;
>>>  
>>> @@ -284,8 +295,9 @@ static int do_bootm_efi(struct image_data *data)
>>>  		boot_header->cmdline_size = strlen(options);
>>>  	}
>>>  
>>> -	boot_header->code32_start = efi_virt_to_phys(loaded_image->image_base +
>>> -			(image_header->setup_sects+1) * 512);
>>> +	boot_header->code32_start =
>>> +		efi_virt_to_phys(loaded_image->image_base +
>>> +				 (image_header->setup_sects + 1) * 512);
>>>  
>>>  	if (bootm_verbose(data)) {
>>>  		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
>>> @@ -311,15 +323,350 @@ static int do_bootm_efi(struct image_data *data)
>>>  	return 0;
>>>  }
>>>  
>>> +static bool ramdisk_is_fit(struct image_data *data)
>>> +{
>>> +	struct stat st;
>>> +
>>> +	if (bootm_signed_images_are_forced())
>>> +		return true;
>>> +
>>> +	if (data->initrd_file) {
>>> +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
>>> +			return false;
>>> +	}
>>> +
>>> +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
>>> +			data->fit_config, "ramdisk") : false;
>>> +}
>>> +
>>> +static bool fdt_is_fit(struct image_data *data)
>>> +{
>>> +	struct stat st;
>>> +
>>> +	if (bootm_signed_images_are_forced())
>>> +		return true;
>>> +
>>> +	if (data->oftree_file) {
>>> +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
>>> +			return false;
>>> +	}
>>> +
>>> +	return data->os_fit ? (bool)fit_has_image(data->os_fit,
>>> +			data->fit_config, "fdt") : false;
>>> +}
>>> +
>>> +static int efi_load_os(struct efi_image_data *e)
>>> +{
>>> +	efi_status_t efiret = EFI_SUCCESS;
>>> +	efi_physical_addr_t mem;
>>> +	size_t image_size = 0;
>>> +	void *image = NULL;
>>> +	void *vmem = NULL;
>>> +	int ret = 0;
>>> +
>>> +	if (e->data->os_fit) {
>>> +		image = (void *)e->data->fit_kernel;
>>> +		image_size = e->data->fit_kernel_size;
>>> +	} else if (e->data->os_file)
>>> +		return efi_load_file_image(e->data->os_file,
>>> +				&e->loaded_image, &e->handle);
>>> +
>>> +	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
>>> +				 EFI_LOADER_CODE);
>>> +	if (!vmem) {
>>> +		pr_err("Failed to allocate pages for image\n");
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	memcpy(vmem, image, image_size);
>>> +
>>> +	efiret = BS->load_image(false, efi_parent_image, efi_device_path, image,
>>> +				image_size, &e->handle);
>>> +	if (EFI_ERROR(efiret)) {
>>> +		ret = -efi_errno(efiret);
>>> +		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
>>> +		goto out_mem;
>>> +	};
>>> +
>>> +	efiret = BS->open_protocol(e->handle, &efi_loaded_image_protocol_guid,
>>> +				   (void **)&e->loaded_image, efi_parent_image,
>>> +				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
>>> +	if (EFI_ERROR(efiret)) {
>>> +		ret = -efi_errno(efiret);
>>> +		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
>>> +		goto out_unload;
>>> +	}
>>> +
>>> +	e->image_res.base = mem;
>>> +	e->image_res.size = image_size;
>>> +
>>> +	return 0;
>>> +
>>> +out_mem:
>>> +	efi_free_pages(vmem, image_size);
>>> +out_unload:
>>> +	BS->unload_image(e->handle);
>>> +	return ret;
>>> +}
>>> +
>>> +static void efi_unload_os(struct efi_image_data *e)
>>> +{
>>> +	BS->close_protocol(e->handle, &efi_loaded_image_protocol_guid,
>>> +				 efi_parent_image, NULL);
>>> +
>>> +	BS->unload_image(e->handle);
>>> +	efi_free_pages(efi_phys_to_virt(e->image_res.base),
>>> +				 e->image_res.size);
>>> +}
>>> +
>>> +static int efi_load_ramdisk(struct efi_image_data *e)
>>> +{
>>> +	void *vmem, *tmp = NULL;
>>> +	efi_physical_addr_t mem;
>>> +	efi_status_t efiret = EFI_SUCCESS;
>>> +	const void *initrd;
>>> +	unsigned long initrd_size;
>>> +	bool from_fit;
>>> +	int ret;
>>> +
>>> +	from_fit = ramdisk_is_fit(e->data);
>>> +
>>> +	if (from_fit) {
>>> +		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
>>> +				     "ramdisk", &initrd, &initrd_size);
>>> +		if (ret) {
>>> +			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
>>> +			       ERR_PTR(ret));
>>> +			return ret;
>>> +		}
>>> +	}
>>> +
>>> +	if (!from_fit) {
>>> +		if (!e->data->initrd_file)
>>> +			return 0;
>>> +
>>> +		pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
>>> +		tmp = read_file(e->data->initrd_file, &initrd_size);
>>> +		if (!tmp || initrd_size <= 0) {
>>> +			pr_err("Failed to read initrd from file: %s\n",
>>> +				e->data->initrd_file);
>>> +			return -EINVAL;
>>> +		}
>>> +		initrd = tmp;
>>> +	}
>>> +
>>> +	efiret = BS->allocate_pool(EFI_LOADER_DATA,
>>> +			sizeof(struct efi_mem_resource),
>>> +			(void **)&e->initrd_res);
>>> +	if (EFI_ERROR(efiret) || !e->initrd_res) {
>>> +		ret = -efi_errno(efiret);
>>> +		pr_err("Failed to allocate initrd %s/n", efi_strerror(efiret));
>>> +		goto free_mem;
>>> +	}
>>> +
>>> +	vmem = efi_allocate_pages(&mem, initrd_size,
>>> +				 EFI_ALLOCATE_MAX_ADDRESS, EFI_LOADER_DATA);
>>> +	if (!vmem) {
>>> +		pr_err("Failed to allocate pages for initrd data\n");
>>> +		ret = -ENOMEM;
>>> +		goto free_pool;
>>> +	}
>>> +
>>> +	memcpy(vmem, (void *)initrd, initrd_size);
>>> +	e->initrd_res->base = (uint64_t)mem;
>>> +	e->initrd_res->size = (uint64_t)initrd_size;
>>> +
>>> +	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL)) {
>>> +		efiret = BS->install_configuration_table(
>>> +			&efi_linux_initrd_media_guid,
>>> +			(void *)e->initrd_res);
>>> +		if (EFI_ERROR(efiret)) {
>>> +			ret = -efi_errno(efiret);
>>> +			pr_err("Failed to install INITRD %s/n",
>>> +					efi_strerror(efiret));
>>> +			goto free_pages;
>>> +		}
>>> +	} else {
>>> +		ret = efi_initrd_register(vmem, initrd_size);
>>> +		if (ret) {
>>> +			pr_err("Failed to register INITRD %s/n",
>>> +				strerror(efiret));
>>> +			goto free_pages;
>>> +		}
>>> +	}
>>> +
>>> +	if (!from_fit && tmp)
>>> +		free(tmp);
>>> +
>>> +	return 0;
>>> +
>>> +free_pages:
>>> +	efi_free_pages(vmem, initrd_size);
>>> +free_pool:
>>> +	BS->free_pool(e->initrd_res);
>>> +free_mem:
>>> +	if (!from_fit && tmp)
>>> +		free(tmp);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static void efi_unload_ramdisk(struct efi_image_data *e)
>>> +{
>>> +
>>> +	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL))
>>> +		BS->install_configuration_table(
>>> +			&efi_linux_initrd_media_guid, NULL);
>>> +	else
>>> +		efi_initrd_unregister();
>>> +
>>> +	efi_free_pages(efi_phys_to_virt(e->initrd_res->base),
>>> +				 e->initrd_res->size);
>>> +
>>> +	BS->free_pool(e->initrd_res);
>>> +	e->initrd_res = NULL;
>>> +}
>>> +
>>> +static int efi_load_fdt(struct efi_image_data *e)
>>> +{
>>> +	efi_status_t efiret = EFI_SUCCESS;
>>> +	efi_physical_addr_t mem;
>>> +	void *vmem, *tmp = NULL;
>>> +	const void *of_tree;
>>> +	unsigned long of_size;
>>> +	bool from_fit;
>>> +	int ret;
>>> +
>>> +	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
>>> +		return 0;
>>> +
>>> +	from_fit = fdt_is_fit(e->data);
>>> +	if (from_fit) {
>>> +		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
>>> +				     "fdt", &of_tree, &of_size);
>>> +		if (ret) {
>>> +			pr_err("Cannot open FDT image in FIT image: %pe\n",
>>> +			       ERR_PTR(ret));
>>> +			return ret;
>>> +		}
>>> +	}
>>> +
>>> +	if (!from_fit) {
>>> +		if (!e->data->oftree_file)
>>> +			return 0;
>>> +
>>> +		pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
>>> +		tmp = read_file(e->data->oftree_file, &of_size);
>>> +		if (!tmp || of_size <= 0) {
>>> +			pr_err("Failed to read initrd from file: %s\n",
>>> +				e->data->initrd_file);
>>> +			return -EINVAL;
>>> +		}
>>> +		of_tree = tmp;
>>> +	}
>>> +
>>> +	vmem = efi_allocate_pages(&mem, of_size + CONFIG_FDT_PADDING,
>>> +				 EFI_ALLOCATE_ANY_PAGES,
>>> +				 EFI_ACPI_RECLAIM_MEMORY);
>>> +	if (!vmem) {
>>> +		pr_err("Failed to allocate pages for FDT\n");
>>> +		goto free_file;
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	memcpy(vmem, of_tree, of_size);
>>> +
>>> +	efiret = BS->install_configuration_table(&efi_fdt_guid,
>>> +			(void *)mem);
>>> +	if (EFI_ERROR(efiret)) {
>>> +		pr_err("Failed to install FDT %s/n", efi_strerror(efiret));
>>> +		ret = -efi_errno(efiret);
>>> +		goto free_mem;
>>> +	}
>>> +
>>> +	e->oftree_res.base = mem;
>>> +	e->oftree_res.size = of_size + CONFIG_FDT_PADDING;
>>> +
>>> +	if (!from_fit && tmp)
>>> +		free(tmp);
>>> +
>>> +	return 0;
>>> +
>>> +free_mem:
>>> +	efi_free_pages(vmem, of_size);
>>> +free_file:
>>> +	if (!from_fit && tmp)
>>> +		free(tmp);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static void efi_unload_fdt(struct efi_image_data *e)
>>> +{
>>> +	BS->install_configuration_table(&efi_fdt_guid, NULL);
>>> +
>>> +	efi_free_pages(efi_phys_to_virt(e->oftree_res.base),
>>> +				 e->oftree_res.size);
>>> +}
>>> +
>>> +static int do_bootm_efi_stub(struct image_data *data)
>>> +{
>>> +	struct efi_image_data e = {.data = data};
>>> +	enum filetype type;
>>> +	int ret = 0;
>>> +
>>> +	ret = efi_load_os(&e);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	ret = efi_load_fdt(&e);
>>> +	if (ret)
>>> +		goto unload_os;
>>> +
>>> +	ret = efi_load_ramdisk(&e);
>>> +	if (ret)
>>> +		goto unload_oftree;
>>> +
>>> +	type = file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
>>> +	ret = efi_execute_image(e.handle, e.loaded_image, type);
>>> +	if (ret)
>>> +		goto unload_ramdisk;
>>> +
>>> +	return 0;
>>> +
>>> +unload_ramdisk:
>>> +	if (e.initrd_res)
>>> +		efi_unload_ramdisk(&e);
>>> +unload_oftree:
>>> +	efi_unload_fdt(&e);
>>> +unload_os:
>>> +	efi_unload_os(&e);
>>> +	return ret;
>>> +}
>>> +
>>>  static struct image_handler efi_handle_tr = {
>>>  	.name = "EFI Application",
>>>  	.bootm = do_bootm_efi,
>>>  	.filetype = filetype_exe,
>>>  };
>>>  
>>> +static struct image_handler efi_arm64_handle_tr = {
>>> +	.name = "EFI ARM64 Linux kernel",
>>> +	.bootm = do_bootm_efi_stub,
>>> +	.filetype = filetype_arm64_efi_linux_image,
>>> +};
>>> +
>>>  static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
>>>  {
>>> -	return efi_execute_image(b->type, file);
>>> +	int ret;
>>> +	efi_handle_t handle;
>>> +	struct efi_loaded_image *loaded_image;
>>> +
>>> +	ret = efi_load_file_image(file, &loaded_image, &handle);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	return efi_execute_image(handle, loaded_image, b->type);
>>>  }
>>>  
>>>  static struct binfmt_hook binfmt_efi_hook = {
>>> @@ -360,8 +707,10 @@ static int efi_register_image_handler(void)
>>>  	if (IS_ENABLED(CONFIG_X86))
>>>  		register_image_handler(&non_efi_handle_linux_x86);
>>>  
>>> -	if (IS_ENABLED(CONFIG_ARM64))
>>> +	if (IS_ENABLED(CONFIG_ARM64)) {
>>> +		register_image_handler(&efi_arm64_handle_tr);
>>>  		binfmt_register(&binfmt_arm64_efi_hook);
>>> +	}
>>>  
>>>  	return 0;
>>>  }
>>>
>>
>> ```
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



