Delivery-date: Tue, 19 May 2026 07:24:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPCwW-001OJ1-1p
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 07:24:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPCwV-0006K7-OB
	for lore@pengutronix.de; Tue, 19 May 2026 07:24:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=stQzkBgEVTNxvPvjmqAX/KrJStE+T9kKE31xshzA6eA=; b=KYmbF5QlKsVBmELczi2GntA2BR
	GM/Uk3eoB9inHqCmFQFXRRZ5G0SxWaiWqPHCELYfAU2px8BKfvhJObf8ebqoPBmcA38IJZbCZCEAq
	zgp2QmBGc8Qx6kIGANGHUtiIo2Z178Psdvn7eD7FkwBJhcczbFGXKmGa3o8OT9MbH3yf50OLU5r5z
	eWHXzU6DJoC+p3oXYpcdyjPAG/4PPpxc/O+2UxIV/KnVSmavqwQS7QEUrYusIoPwGsSg31+CWB0wg
	AyDI3ExDtbumIa+lwSGwbs63Z4oMssLKS3h6hMkqHl0Dtz5soMsIW2YSRfsKqmtOym9/Wx4YMkEDP
	gMI6P44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPCv9-00000000BbA-3NNQ;
	Tue, 19 May 2026 05:23:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPCv6-00000000BaV-26iv
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 05:23:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPCv4-0006Co-Dm; Tue, 19 May 2026 07:23:06 +0200
Message-ID: <b2a0d0a1-49ce-43d9-ae28-3d0c2bb59e43@pengutronix.de>
Date: Tue, 19 May 2026 07:23:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260518183250.240134-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260518183250.240134-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_222308_551568_183DC8CC 
X-CRM114-Status: GOOD (  21.01  )
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
Subject: Re: [PATCH v2 1/3] PBL: add common define for early malloc size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/18/26 20:32, Sascha Hauer wrote:
> Current all architectures using early malloc in the PBL use a pool size
> of 128KiB. Add a common define for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/common.c                  | 3 ++-
>  arch/arm/cpu/uncompress.c              | 2 +-
>  arch/arm/include/asm/barebox-arm.h     | 2 --
>  arch/mips/boot/uncompress.c            | 4 ++--
>  arch/riscv/include/asm/barebox-riscv.h | 2 +-
>  include/pbl.h                          | 3 +++
>  6 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index ccadb05ed9..6b82ee8b81 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -4,6 +4,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <elf.h>
> +#include <pbl.h>
>  #include <linux/sizes.h>
>  #include <asm/system_info.h>
>  #include <asm/barebox-arm.h>
> @@ -114,7 +115,7 @@ void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base)
>  	printf("arm_mem_barebox_image = 0x%08lx+0x%08lx\n",
>  	       barebox_base, arm_mem_barebox_image_end(endmem) - barebox_base);
>  	printf("arm_mem_early_malloc  = 0x%08lx+0x%08x\n",
> -	       barebox_base - ARM_MEM_EARLY_MALLOC_SIZE, ARM_MEM_EARLY_MALLOC_SIZE);
> +	       barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
>  	printf("membase               = 0x%08lx+0x%08lx\n",
>  	       membase, endmem - membase);
>  }
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 38f7dbc113..4bade72ba4 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -78,7 +78,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
>  
> -	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
> +	free_mem_ptr = barebox_base - PBL_MALLOC_SIZE;
>  	free_mem_end_ptr = barebox_base;
>  
>  #ifdef DEBUG
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 611b2bb2d6..9349e62fde 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -140,8 +140,6 @@ static inline unsigned long arm_mem_ttb(unsigned long endmem)
>  	return endmem;
>  }
>  
> -#define ARM_MEM_EARLY_MALLOC_SIZE	SZ_128K
> -
>  static inline unsigned long arm_mem_ramoops(unsigned long endmem)
>  {
>  	endmem = arm_mem_ttb(endmem);
> diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
> index 0630d03c6b..5c6ba39875 100644
> --- a/arch/mips/boot/uncompress.c
> +++ b/arch/mips/boot/uncompress.c
> @@ -34,8 +34,8 @@ void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
>  	memset(__bss_start, 0, __bss_stop - __bss_start);
>  
>  	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> -	free_mem_ptr = TEXT_BASE - SZ_128K;
> -	free_mem_end_ptr = free_mem_ptr + SZ_128K;
> +	free_mem_ptr = TEXT_BASE - PBL_MALLOC_SIZE;
> +	free_mem_end_ptr = free_mem_ptr + PBL_MALLOC_SIZE;
>  
>  	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
>  
> diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
> index 083889817b..a3ae07277d 100644
> --- a/arch/riscv/include/asm/barebox-riscv.h
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -54,7 +54,7 @@ static inline unsigned long riscv_mem_stack(unsigned long membase,
>  static inline unsigned long riscv_mem_early_malloc(unsigned long membase,
>  						   unsigned long endmem)
>  {
> -	return riscv_mem_stack(membase, endmem) - SZ_128K;
> +	return riscv_mem_stack(membase, endmem) - PBL_MALLOC_SIZE;
>  }
>  
>  static inline unsigned long riscv_mem_early_malloc_end(unsigned long membase,
> diff --git a/include/pbl.h b/include/pbl.h
> index 514f114370..5a444fb6fe 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -10,6 +10,7 @@
>  
>  #include <linux/types.h>
>  #include <linux/compiler.h>
> +#include <linux/sizes.h>
>  
>  extern unsigned long free_mem_ptr;
>  extern unsigned long free_mem_end_ptr;
> @@ -33,6 +34,8 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>  		       const void *hash, unsigned int hash_len);
>  int pbl_load_fdt(const void *fdt, void *dest, int destsize);
>  
> +#define PBL_MALLOC_SIZE SZ_128K
> +
>  #endif
>  
>  void __noreturn barebox_pbl_entry(ulong, ulong, void *);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


