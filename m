Delivery-date: Mon, 06 Oct 2025 13:33:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jSh-004sEu-2p
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:33:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jSg-0001Bw-Ut
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:33:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hhy/rn4HQGItr/42xRRHVyV6AgXsvNfdEGnxSgFsp74=; b=w/31i80W6HCaw6LNwE6GrsdvZC
	m177aiDB4BHyjn4x0jsnnTbjmZmoe82MuO/lYDi739uiwwDSMvbyw6Vd3U1+KG3bG3aKJQCgOqtJd
	WAH5bJYe/1uIoqAtjKQJ4uzQWX1R9+tqMox+syQSKu8Uh8pNPdehHokt68xtdmdLMtTN985P7TCV4
	i42sS9zL6Jrk4QNS4EeynnkvU0xesA4Ov06c/Enzz97K5XO9C4xP54Q6aFeyDytSPmnByBuNhYfUx
	8rKJGR/AUrP3btyzlsA8xRGULMyZIMcr32SCEUHsZn2sjg32NU1Yru8eO54iT/2FJw7YP78fjO9ft
	A8ozYwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jSH-0000000HUOU-1P7o;
	Mon, 06 Oct 2025 11:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jSF-0000000HUNU-0OSo
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:32:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v5jSD-00013d-EM; Mon, 06 Oct 2025 13:32:33 +0200
Message-ID: <87b37585-46c9-4f50-b73c-91a517ef4547@pengutronix.de>
Date: Mon, 6 Oct 2025 13:32:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
 <20251006041512.1360284-6-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251006041512.1360284-6-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_043235_285599_DA7354B1 
X-CRM114-Status: GOOD (  24.17  )
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
Subject: Re: [PATCH 06/11] efi: payload: earlymem: allocate only the barebox
 needs in term of memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/6/25 6:15 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> With TLSF now able to invoke a callback to request additional memory on
> demand, limit early allocations to what barebox strictly requires and have
> everything handled via the request callback. This ensures more deterministic
> behavior and reduces the risk of OOM conditions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> Signed-off-by: Chali Anis <chalianis1@gmail.com>\

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/tlsf_malloc.c       | 18 ++++++++++++++++++
>  efi/payload/Kconfig        |  1 +
>  efi/payload/early-mem.c    | 19 ++++---------------
>  efi/payload/entry-multi.c  |  5 ++---
>  efi/payload/entry-single.c |  5 ++---
>  efi/payload/init.c         | 15 +++++++++++++++
>  include/efi/efi-payload.h  |  2 +-
>  include/malloc.h           |  1 +
>  8 files changed, 44 insertions(+), 22 deletions(-)
> 
> diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
> index 74089fe7f390..d3b665a2fc40 100644
> --- a/common/tlsf_malloc.c
> +++ b/common/tlsf_malloc.c
> @@ -11,11 +11,14 @@
>  #include <stdio.h>
>  #include <module.h>
>  #include <tlsf.h>
> +#include <linux/sizes.h>
> +#include <linux/log2.h>
>  
>  #include <linux/kasan.h>
>  #include <linux/list.h>
>  
>  tlsf_t tlsf_mem_pool;
> +static void (*malloc_request_store)(size_t bytes);
>  
>  struct pool_entry {
>  	pool_t pool;
> @@ -124,3 +127,18 @@ void *malloc_add_pool(void *mem, size_t bytes)
>  
>  	return (void *)new_pool;
>  }
> +
> +static void tlsf_request_store(tlsf_t tlsf, size_t bytes)
> +{
> +	size_t size;
> +
> +	size = __roundup_pow_of_two(bytes + sizeof(struct pool_entry));
> +
> +	malloc_request_store(max_t(size_t, SZ_8M, size));
> +}
> +
> +void malloc_register_store(void (*cb)(size_t bytes))
> +{
> +	malloc_request_store = cb;
> +	tlsf_register_store(tlsf_mem_pool, tlsf_request_store);
> +}
> diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
> index 9263d59de94a..a403acc81a93 100644
> --- a/efi/payload/Kconfig
> +++ b/efi/payload/Kconfig
> @@ -15,6 +15,7 @@ config EFI_PAYLOAD
>  	select BLOCK
>  	select PARTITION_DISK
>  	select HW_HAS_PCI
> +	select MALLOC_TLSF
>  
>  config HAVE_EFI_STUB
>  	bool
> diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
> index 0f79a8c30694..c5e94b33a756 100644
> --- a/efi/payload/early-mem.c
> +++ b/efi/payload/early-mem.c
> @@ -6,28 +6,17 @@
>  #include <efi/efi-payload.h>
>  
>  void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
> -			 size_t *memsize, enum efi_memory_type mem_type)
> +			 size_t memsize, enum efi_memory_type mem_type)
>  {
>  	struct efi_boot_services *bs = sys_table->boottime;
> -	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
>  	efi_physical_addr_t mem;
>  	efi_status_t efiret;
>  
> -	if (IS_ENABLED(CONFIG_X86)) {
> -		/* Try to stay clear of memory mapped devices */
> -		alloc_type = EFI_ALLOCATE_MAX_ADDRESS;
> -		mem = SZ_1G - 1;
> -	}
> -
> -	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
> -		efiret  = bs->allocate_pages(alloc_type, mem_type,
> -					     *memsize / EFI_PAGE_SIZE, &mem);
> -		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
> -			break;
> -	}
> +	efiret  = bs->allocate_pages(EFI_ALLOCATE_ANY_PAGES, mem_type,
> +					     memsize / EFI_PAGE_SIZE, &mem);
>  	if (EFI_ERROR(efiret))
>  		panic("failed to allocate %zu byte memory pool: 0x%lx\n",
> -		      *memsize, efiret);
> +		      memsize, efiret);
>  
>  	return efi_phys_to_virt(mem);
>  }
> diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
> index d5d54cdf70a1..82f3dfffe870 100644
> --- a/efi/payload/entry-multi.c
> +++ b/efi/payload/entry-multi.c
> @@ -23,7 +23,6 @@ static void efi_putc(void *ctx, int ch)
>  
>  void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
>  {
> -	size_t memsize;
>  	void *mem;
>  	static struct barebox_efi_data efidata;
>  
> @@ -37,7 +36,7 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
>  
>  	handoff_data_add(HANDOFF_DATA_EFI, &efidata, sizeof(efidata));
>  
> -	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
> +	mem = efi_earlymem_alloc(sys_table, SZ_16M, EFI_BOOT_SERVICES_CODE);
>  
> -	barebox_pbl_entry((uintptr_t)mem, memsize, NULL);
> +	barebox_pbl_entry((uintptr_t)mem, SZ_16M, NULL);
>  }
> diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
> index 8600bd845c49..f481d0942ba5 100644
> --- a/efi/payload/entry-single.c
> +++ b/efi/payload/entry-single.c
> @@ -17,7 +17,6 @@
>  void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
>  {
>  	efi_status_t efiret;
> -	size_t memsize;
>  	void *mem;
>  
>  #ifdef DEBUG
> @@ -37,9 +36,9 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
>  		BS->handle_protocol(efi_loaded_image->device_handle,
>  				&efi_device_path_protocol_guid, (void **)&efi_device_path);
>  
> -	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_DATA);
> +	mem = efi_earlymem_alloc(sys_table, SZ_16M, EFI_BOOT_SERVICES_DATA);
>  
> -	mem_malloc_init(mem, mem + memsize - 1);
> +	mem_malloc_init(mem, mem + SZ_16M - 1);
>  
>  	start_barebox();
>  }
> diff --git a/efi/payload/init.c b/efi/payload/init.c
> index 239c5ce9ec18..5b827c57ed1f 100644
> --- a/efi/payload/init.c
> +++ b/efi/payload/init.c
> @@ -270,11 +270,26 @@ static int efi_init(void)
>  }
>  device_efi_initcall(efi_init);
>  
> +static void efi_request_mem(size_t bytes)
> +{
> +	efi_status_t efiret;
> +	efi_physical_addr_t mem;
> +	size_t pages;
> +
> +	pages = DIV_ROUND_UP(bytes, EFI_PAGE_SIZE);
> +	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_LOADER_DATA,
> +				    pages, &mem);
> +	if (!EFI_ERROR(efiret))
> +		malloc_add_pool(efi_phys_to_virt(mem), pages * EFI_PAGE_SIZE);
> +}
> +
>  static int efi_core_init(void)
>  {
>  	struct device *dev;
>  	int ret;
>  
> +	malloc_register_store(efi_request_mem);
> +
>  	dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
>  	ret = platform_device_register(dev);
>  	if (ret)
> diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
> index d8e66a187a87..337471117d5a 100644
> --- a/include/efi/efi-payload.h
> +++ b/include/efi/efi-payload.h
> @@ -32,7 +32,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
>  int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
>  
>  void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
> -			 size_t *memsize, enum efi_memory_type mem_type);
> +			 size_t memsize, enum efi_memory_type mem_type);
>  
>  int efi_initrd_register(void *initrd, size_t initrd_size);
>  void efi_initrd_unregister(void);
> diff --git a/include/malloc.h b/include/malloc.h
> index 35551250324e..69ff23b4a058 100644
> --- a/include/malloc.h
> +++ b/include/malloc.h
> @@ -23,6 +23,7 @@
>  
>  #ifdef CONFIG_MALLOC_TLSF
>  void *malloc_add_pool(void *mem, size_t bytes);
> +void malloc_register_store(void (*cb)(size_t bytes));
>  #endif
>  
>  #if IN_PROPER

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



