Delivery-date: Mon, 18 May 2026 18:16:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP0e1-001Byx-01
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 18:16:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP0e0-0007hF-6q
	for lore@pengutronix.de; Mon, 18 May 2026 18:16:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oLO9wrsEHNL2V53f4SjwyZack8Qa34rxbjfiCg47U2k=; b=qANtrxLM0CnxugxPqkxh/xH+dq
	Zqn8rwyIp8ZuSmLCNL47v7SHcEmJFytvZ9zpWM2Q83b37F9pkEr7gqsrob+gfkQEMNl9mQcRpnd2f
	mgqGkDybSZrDYQjjzddOP7QuVPex9icXcyo/wgIZPtb1X1dVfBLylFnjq4QyDfZzjlnI28uZsjG4W
	I0KCIbO+XMfX6FBhijHQFGgQF/UmIruBseNMyz+ozhrUM6bU5FzLIsK2yre3U349j8s38uaHTU53t
	/HNtxbYxCM6LRpL1WO0bwgIdNLMQ+MXLdpWiJ7DAObd8IunDA66uIMujvBqQgyiBPVe5Sf7wX5obS
	N3cw+69A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP0cB-0000000GGp4-0jrE;
	Mon, 18 May 2026 16:14:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP0c8-0000000GGoJ-2pTC
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 16:14:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wP0c7-0007V9-2z; Mon, 18 May 2026 18:14:43 +0200
Message-ID: <384b2a48-8750-4a69-8f2c-663fcc0f5d18@pengutronix.de>
Date: Mon, 18 May 2026 18:14:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260518153212.184983-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260518153212.184983-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_091444_720234_9B2C7031 
X-CRM114-Status: GOOD (  20.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pbl: cleanup early malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/18/26 5:32 PM, Sascha Hauer wrote:
> All architectures using PBL define the same variables free_mem_ptr and
> free_mem_end_ptr and initialize them. create a helper for that in
> pbl/malloc.c and rename simple_*() to pbl_*().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

with issues below addressed

> ---
>  arch/arm/cpu/uncompress.c              |  6 +---
>  arch/mips/boot/uncompress.c            |  6 +---
>  arch/riscv/boot/uncompress.c           |  6 +---
>  arch/riscv/include/asm/barebox-riscv.h |  6 ----
>  include/linux/decompress/mm.h          | 44 ++++----------------------
>  include/mach/bcm283x/debug_ll.h        | 10 ------
>  include/pbl.h                          |  7 ++--
>  pbl/Makefile                           |  1 +
>  pbl/malloc.c                           | 43 +++++++++++++++++++++++++
>  9 files changed, 57 insertions(+), 72 deletions(-)
>  create mode 100644 pbl/malloc.c
> 
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 38f7dbc113..c7802226e6 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -27,9 +27,6 @@
>  
>  #include "entry.h"
>  
> -unsigned long free_mem_ptr;
> -unsigned long free_mem_end_ptr;
> -
>  extern unsigned char input_data[];
>  extern unsigned char input_data_end[];
>  
> @@ -78,8 +75,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
>  
> -	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
> -	free_mem_end_ptr = barebox_base;
> +	pbl_malloc_init(barebox_base - ARM_MEM_EARLY_MALLOC_SIZE, ARM_MEM_EARLY_MALLOC_SIZE);
>  
>  #ifdef DEBUG
>  	print_pbl_mem_layout(membase, endmem, barebox_base);
> diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
> index 0630d03c6b..b58b23ea6b 100644
> --- a/arch/mips/boot/uncompress.c
> +++ b/arch/mips/boot/uncompress.c
> @@ -16,9 +16,6 @@
>  extern void *input_data;
>  extern void *input_data_end;
>  
> -unsigned long free_mem_ptr;
> -unsigned long free_mem_end_ptr;
> -
>  void barebox_pbl_start(void *fdt, void *fdt_end, unsigned long ram_size);
>  
>  void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
> @@ -34,8 +31,7 @@ void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
>  	memset(__bss_start, 0, __bss_stop - __bss_start);
>  
>  	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> -	free_mem_ptr = TEXT_BASE - SZ_128K;
> -	free_mem_end_ptr = free_mem_ptr + SZ_128K;
> +	pbl_malloc_init(barebox_base - TEXT_BASE - SZ_128K, SZ_128K);
>  
>  	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
>  
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index e51f1b0121..df60b14ed8 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -23,9 +23,6 @@
>  
>  #include "entry.h"
>  
> -unsigned long free_mem_ptr;
> -unsigned long free_mem_end_ptr;
> -
>  void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  				  void *fdt)
>  {
> @@ -63,8 +60,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> -	free_mem_ptr = riscv_mem_early_malloc(membase, endmem);
> -	free_mem_end_ptr = riscv_mem_early_malloc_end(membase, endmem);
> +	pbl_malloc_init(riscv_mem_early_malloc(), SZ_128K);

This is a bit dangerous as it now hardcodes SZ_128K at two places and
one could be missed when trying to extend the region.

Could you #define RISCV_MEM_EARLY_MALLOC_SIZE SZ_128K in the same patch?


> diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
> index 8bbff4fd9a..68542fd6a3 100644
> --- a/include/mach/bcm283x/debug_ll.h
> +++ b/include/mach/bcm283x/debug_ll.h
> @@ -42,16 +42,6 @@ static inline void debug_ll_init(void)
>  
>  #elif defined CONFIG_DEBUG_RPI3_MINI_UART
>  
> -static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
> -{
> -	return readb(base + (reg << 2));
> -}
> -
> -static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
> -{
> -	writeb(val, base + (reg << 2));
> -}
> -

Unrelated change?

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



