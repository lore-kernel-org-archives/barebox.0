Delivery-date: Mon, 07 Jun 2021 09:44:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9vg-0001JU-MR
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 09:44:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9vc-0006R9-4P
	for lore@pengutronix.de; Mon, 07 Jun 2021 09:44:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f/rlZDLTVAlYCr9n6wKxmIaPV8ah4Lp0vqLKbOCC/Ok=; b=Hu5d/37Uac6oqZAxPrTUJuI+WB
	ZmhrPoGTN8HMvqarvXYH7f6dTqkoKw7+3RxDGbwYcbcv27eQUdTEbwt4jZn2kkeSwluu0/Hk4GJWN
	Rx2pCKIMUW1GAz0EeDF1kLRPUDdGzcRxZ1FxEtSFYFq5o8wAUPaPn8bMkgrUiabXG/PFQErl2AXHb
	Q9eqGKlGjI1dBAto0YGYZ2nTS6MMjxoCAf/y0Ukgca480j4J4QO4BV/JC4pfgMijQtjK0drg2Wn8+
	0abKmvZrV5WfgM0Lk/YM3foB8ZXYxcG6GNQfKDjtd1VDhMpDlIgObkg5ZOrhk7UfF0HUN3BwXg/GY
	DwA5I2SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq9uA-0027HE-MA; Mon, 07 Jun 2021 07:42:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq9u3-0027G7-5l
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 07:42:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lq9u1-0006K5-Um; Mon, 07 Jun 2021 09:42:30 +0200
To: barebox@lists.infradead.org
References: <20210531070325.19627-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7dbdd998-2949-0218-c990-8c0f88494420@pengutronix.de>
Date: Mon, 7 Jun 2021 09:42:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531070325.19627-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_004231_577221_379D731A 
X-CRM114-Status: GOOD (  38.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/5] RISC-V: extend multi-image to support both S- and
 M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 31.05.21 09:03, Ahmad Fatoum wrote:
> We can't currently mix S-Mode and M-Mode images in the same build
> and there's no straight-forward way to determine which mode we are in.
> 
> Move the decision on which mode barebox is targeted at out of Kconfig
> and into the PBL. PBL code can call either barebox_riscv_supervisor_entry
> or barebox_riscv_machine_entry to signal to barebox proper which mode
> it's running in. Currently the only user of this information is the
> RISC-V timer clocksource driver.
> 
> Any new code that does IS_ENABLED(CONFIG_RISCV_SBI) or
> IS_ENABLED(CONFIG_RISCV_M_MODE) should also be adapted to use riscv_mode().
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

sbi_init() should only run for S-Mode, but it doesn't. I will send a v3.

> v1 -> v2:
>   - make riscv_mode a pure static inline function for single-mode
>     builds, so e.g. building only erizo can discard code for other modes
> ---
>  arch/riscv/Kconfig                     | 14 ++++++++-----
>  arch/riscv/Kconfig.socs                |  2 ++
>  arch/riscv/boards/erizo/lowlevel.c     |  6 ++++--
>  arch/riscv/boards/hifive/lowlevel.c    | 17 ++++++++--------
>  arch/riscv/boot/board-dt-2nd.c         |  2 +-
>  arch/riscv/boot/entry.c                |  5 +++--
>  arch/riscv/boot/entry.h                |  6 ++++--
>  arch/riscv/boot/start.c                | 12 +++++++----
>  arch/riscv/boot/uncompress.c           |  6 +++---
>  arch/riscv/include/asm/barebox-riscv.h | 10 ++++++++-
>  arch/riscv/include/asm/system.h        | 28 ++++++++++++++++++++++++++
>  drivers/clocksource/timer-riscv.c      |  3 ++-
>  12 files changed, 82 insertions(+), 29 deletions(-)
>  create mode 100644 arch/riscv/include/asm/system.h
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a4aa799acf01..bbafdea1b959 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -97,14 +97,18 @@ config NMON_HELP
>  	  Say yes here to get the nmon commands message on
>  	  every nmon start.
>  
> -# set if we run in machine mode, cleared if we run in supervisor mode
> +# selected by boards where barebox runs in machine mode
>  config RISCV_M_MODE
>  	bool
>  
> -# set if we are running in S-mode and can use SBI calls
> -config RISCV_SBI
> +# selected by boards where barebox runs in supervisor mode
> +config RISCV_S_MODE
>  	bool
> -	depends on !RISCV_M_MODE
> -	default y
> +
> +config RISCV_MULTI_MODE
> +	def_bool RISCV_S_MODE && RISCV_M_MODE
> +
> +config RISCV_SBI
> +	def_bool RISCV_S_MODE
>  
>  endmenu
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index c6875738d05c..67d19caeb3b0 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
>  
>  config SOC_VIRT
>  	bool "QEMU Virt Machine"
> +	select RISCV_S_MODE
>  	select BOARD_RISCV_GENERIC_DT
>  	select CLINT_TIMER
>  	help
> @@ -23,6 +24,7 @@ config SOC_VIRT
>  
>  config SOC_SIFIVE
>  	bool "SiFive SoCs"
> +	select RISCV_S_MODE
>  	select CLK_SIFIVE
>  	select CLK_SIFIVE_PRCI
>  	select RISCV_TIMER
> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
> index 6acf15931cdf..fc262ed61b56 100644
> --- a/arch/riscv/boards/erizo/lowlevel.c
> +++ b/arch/riscv/boards/erizo/lowlevel.c
> @@ -7,12 +7,14 @@
>  ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>  {
>  	extern char __dtb_z_erizo_generic_start[];
> +	void *fdt;
>  
>  	debug_ll_init();
>  	putc_ll('>');
>  
>  	/* On POR, we are running from read-only memory here. */
>  
> -	barebox_riscv_entry(0x80000000, SZ_8M,
> -			    __dtb_z_erizo_generic_start + get_runtime_offset());
> +	fdt = __dtb_z_erizo_generic_start + get_runtime_offset();
> +
> +	barebox_riscv_machine_entry(0x80000000, SZ_8M, fdt);
>  }
> diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
> index 1de13cac1688..8a20f3c51d40 100644
> --- a/arch/riscv/boards/hifive/lowlevel.c
> +++ b/arch/riscv/boards/hifive/lowlevel.c
> @@ -4,22 +4,23 @@
>  #include <asm/barebox-riscv.h>
>  #include <debug_ll.h>
>  
> +static __always_inline void start_hifive(void *fdt)
> +{
> +	putc_ll('>');
> +
> +	barebox_riscv_supervisor_entry(0x80000000, SZ_128M, fdt);
> +}
> +
>  ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
>  {
>  	extern char __dtb_z_hifive_unmatched_a00_start[];
>  
> -	putc_ll('>');
> -
> -	barebox_riscv_entry(0x80000000, SZ_128M,
> -			    __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
> +	start_hifive(__dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
>  }
>  
>  ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
>  {
>  	extern char __dtb_z_hifive_unleashed_a00_start[];
>  
> -	putc_ll('>');
> -
> -	barebox_riscv_entry(0x80000000, SZ_128M,
> -			    __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
> +	start_hifive(__dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
>  }
> diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
> index e9810f8add97..48cb23ae5e92 100644
> --- a/arch/riscv/boot/board-dt-2nd.c
> +++ b/arch/riscv/boot/board-dt-2nd.c
> @@ -73,5 +73,5 @@ ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
>  	    _fdt < riscv_mem_stack_top(membase, endmem))
>  		memsize = ALIGN_DOWN(_fdt - membase, SZ_1M);
>  
> -	barebox_riscv_entry(membase, memsize, fdt);
> +	barebox_riscv_supervisor_entry(membase, memsize, fdt);
>  }
> diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
> index eb286423d875..e4a5c2208df3 100644
> --- a/arch/riscv/boot/entry.c
> +++ b/arch/riscv/boot/entry.c
> @@ -20,10 +20,11 @@
>   */
>  
>  void __noreturn __naked barebox_riscv_entry(unsigned long membase,
> -					    unsigned long memsize, void *boarddata)
> +					    unsigned long memsize, void *boarddata,
> +					    unsigned flags)
>  {
>  	unsigned long stack_top = riscv_mem_stack_top(membase, membase + memsize);
>  	asm volatile ("move sp, %0" : : "r"(stack_top));
> -	barebox_pbl_start(membase, memsize, boarddata);
> +	barebox_pbl_start(membase, memsize, boarddata, flags);
>  }
>  
> diff --git a/arch/riscv/boot/entry.h b/arch/riscv/boot/entry.h
> index b3a24d2783f7..fb4af5eae558 100644
> --- a/arch/riscv/boot/entry.h
> +++ b/arch/riscv/boot/entry.h
> @@ -6,10 +6,12 @@
>  
>  void __noreturn barebox_non_pbl_start(unsigned long membase,
>  				      unsigned long memsize,
> -				      void *boarddata);
> +				      void *boarddata,
> +				      unsigned flags);
>  
>  void __noreturn barebox_pbl_start(unsigned long membase,
>  				  unsigned long memsize,
> -				  void *boarddata);
> +				  void *boarddata,
> +				  unsigned flags);
>  
>  #endif
> diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
> index 05f6c6231f7e..82bd02d0a0d0 100644
> --- a/arch/riscv/boot/start.c
> +++ b/arch/riscv/boot/start.c
> @@ -26,6 +26,7 @@ static unsigned long riscv_barebox_size;
>  static unsigned long riscv_endmem;
>  static void *barebox_boarddata;
>  static unsigned long barebox_boarddata_size;
> +unsigned barebox_riscv_pbl_flags;
>  
>  void *barebox_riscv_boot_dtb(void)
>  {
> @@ -107,7 +108,8 @@ device_initcall(barebox_memory_areas_init);
>   * the pbl. The stack already has been set up by the pbl.
>   */
>  __noreturn __no_sanitize_address __section(.text_entry)
> -void barebox_non_pbl_start(unsigned long membase, unsigned long memsize, void *boarddata)
> +void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
> +			   void *boarddata, unsigned flags)
>  {
>  	unsigned long endmem = membase + memsize;
>  	unsigned long malloc_start, malloc_end;
> @@ -168,18 +170,20 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize, void *b
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> +	barebox_riscv_pbl_flags = flags;
> +
>  	pr_debug("starting barebox...\n");
>  
>  	start_barebox();
>  }
>  
> -void start(unsigned long membase, unsigned long memsize, void *boarddata);
> +void start(unsigned long membase, unsigned long memsize, void *boarddata, unsigned flags);
>  /*
>   * First function in the uncompressed image. We get here from
>   * the pbl. The stack already has been set up by the pbl.
>   */
>  void __no_sanitize_address __section(.text_entry) start(unsigned long membase,
> -		unsigned long memsize, void *boarddata)
> +		unsigned long memsize, void *boarddata, unsigned flags)
>  {
> -	barebox_non_pbl_start(membase, memsize, boarddata);
> +	barebox_non_pbl_start(membase, memsize, boarddata, flags);
>  }
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index b4e010998a4a..35a91e8cb62a 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -23,10 +23,10 @@ unsigned long free_mem_ptr;
>  unsigned long free_mem_end_ptr;
>  
>  void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
> -				  void *fdt)
> +				  void *fdt, unsigned flags)
>  {
>  	uint32_t pg_len, uncompressed_len;
> -	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
> +	void __noreturn (*barebox)(unsigned long, unsigned long, void *, unsigned);
>  	unsigned long endmem = membase + memsize;
>  	unsigned long barebox_base;
>  	void *pg_start, *pg_end;
> @@ -67,5 +67,5 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
>  
> -	barebox(membase, memsize, fdt);
> +	barebox(membase, memsize, fdt, flags);
>  }
> diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
> index bb1d15308b48..f4081a71f00e 100644
> --- a/arch/riscv/include/asm/barebox-riscv.h
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -19,14 +19,22 @@
>  #include <linux/compiler.h>
>  #include <asm/sections.h>
>  #include <asm/barebox-riscv-head.h>
> +#include <asm/system.h>
>  
>  unsigned long get_runtime_offset(void);
>  
>  void setup_c(void);
>  void relocate_to_current_adr(void);
>  void relocate_to_adr(unsigned long target);
> +
>  void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
> -					    void *boarddata);
> +					    void *boarddata, unsigned int flags);
> +
> +#define barebox_riscv_machine_entry(membase, memsize, boarddata) \
> +	barebox_riscv_entry(membase, memsize, boarddata, RISCV_M_MODE)
> +
> +#define barebox_riscv_supervisor_entry(membase, memsize, boarddata) \
> +	barebox_riscv_entry(membase, memsize, boarddata, RISCV_S_MODE)
>  
>  unsigned long riscv_mem_ramoops_get(void);
>  unsigned long riscv_mem_endmem_get(void);
> diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
> new file mode 100644
> index 000000000000..95a22fb88062
> --- /dev/null
> +++ b/arch/riscv/include/asm/system.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_SYSTEM_H_
> +
> +#define RISCV_MODE_MASK 0x3
> +enum riscv_mode {
> +    RISCV_U_MODE	= 0,
> +    RISCV_S_MODE	= 1,
> +    RISCV_HS_MODE	= 2,
> +    RISCV_M_MODE	= 3,
> +};
> +
> +extern unsigned barebox_riscv_pbl_flags;
> +
> +static inline enum riscv_mode riscv_mode(void)
> +{
> +	/* allow non-LTO builds to discard code for unused modes */
> +	if (!IS_ENABLED(CONFIG_RISCV_MULTI_MODE)) {
> +		if (IS_ENABLED(CONFIG_RISCV_M_MODE))
> +			return RISCV_M_MODE;
> +		if (IS_ENABLED(CONFIG_RISCV_S_MODE))
> +			return RISCV_S_MODE;
> +	}
> +
> +	return barebox_riscv_pbl_flags & RISCV_MODE_MASK;
> +}
> +
> +#endif
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index ef67cff47555..cbbe18d9a693 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -12,6 +12,7 @@
>  #include <clock.h>
>  #include <asm/timer.h>
>  #include <asm/csr.h>
> +#include <asm/system.h>
>  
>  static u64 notrace riscv_timer_get_count_sbi(void)
>  {
> @@ -45,7 +46,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
>  
>  static u64 notrace riscv_timer_get_count(void)
>  {
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> +	if (riscv_mode() == RISCV_S_MODE)
>  		return riscv_timer_get_count_sbi();
>  	else
>  		return riscv_timer_get_count_rdcycle();
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

