Delivery-date: Tue, 06 Jan 2026 15:11:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7mn-001urU-08
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:11:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7mm-0004Zt-Bs
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:11:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2uhrJE3GBrqHP8FSMkehURUMMSsOBT9O852PEtV6Zw0=; b=Lo+NXcN8iOW0xPxYcxtgn6ZQ0w
	0QBWrxQGw8R1FhuAnfcFoLXd5SWA0PJfxkuq/Jfcs3/SV/Y134oyJ/7rwayBI1ChW8xXJpqOo342/
	zOa4tVNQx4PEdSY0V/DVGSF/l/V/nXAIyD2B27YAjQKhB+6WOYNc5qIVjZ57P2z5Q6CqeTcLy4rdS
	7eIuXoo0BPMs/EcEmXZ7gbpWbw1EJcUplCLAcYjVBr1oHzu7Ub14yrrjhVQmat1HOkogfZbegCAw3
	Ip1UjTzWhtW+k8zgNI/oIYnYlgA0tOqphhZile4sndRWSJ3kWdcUtn50nDIeDWZs9ifx+0IKyTFTe
	fo+I0yVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7mH-0000000DG0g-2hH8;
	Tue, 06 Jan 2026 14:11:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7mE-0000000DG07-3fVv
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:11:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7mD-0004Ri-Ao; Tue, 06 Jan 2026 15:11:13 +0100
Message-ID: <17419bd0-c4b3-440d-84a5-8009f24c55e5@pengutronix.de>
Date: Tue, 6 Jan 2026 15:11:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-18-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-18-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_061115_328990_9F6B9A15 
X-CRM114-Status: GOOD (  20.91  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 18/21] riscv: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Instead of linking the raw binary barebox proper image into the PBL link
> the ELF image into the PBL. With this barebox proper starts with a properly
> linked and fully initialized C environment, so the calls to
> relocate_to_adr() and setup_c() can be removed from barebox proper.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/riscv/Kconfig           |  1 +
>  arch/riscv/boot/start.c      |  6 ------
>  arch/riscv/boot/uncompress.c | 21 ++++++++++++++++++++-
>  3 files changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 96d013d8514ac12de5c34a426262d85f8cf021b9..d9794354f4ed2e8bf7276e03b968c566002c2ec6 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -17,6 +17,7 @@ config RISCV
>  	select HAS_KALLSYMS
>  	select RISCV_TIMER if RISCV_SBI
>  	select HW_HAS_PCI
> +	select PBL_IMAGE_ELF
>  	select HAVE_ARCH_BOARD_GENERIC_DT
>  	select HAVE_ARCH_BOOTM_OFTREE
>  
> diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
> index 5091340c8a374fc360ab732ba01ec8516e82a83d..002ab3eccb4292d8d88a95f8b93163c970cb1d64 100644
> --- a/arch/riscv/boot/start.c
> +++ b/arch/riscv/boot/start.c
> @@ -123,12 +123,6 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
>  	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
>  	unsigned long barebox_base = riscv_mem_barebox_image(membase, endmem, barebox_size);
>  
> -	relocate_to_current_adr();
> -
> -	setup_c();
> -
> -	barrier();
> -
>  	irq_init_vector(riscv_mode());
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index 84142acf9c66fe1fcceb6ae63d15ac078ccddee7..fba04cf4fb6ed450d80b83a8a595346a3186f1e7 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -32,6 +32,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	unsigned long barebox_base;
>  	void *pg_start, *pg_end;
>  	unsigned long pc = get_pc();
> +	struct elf_image elf;
> +	int ret;
>  
>  	irq_init_vector(riscv_mode());
>  
> @@ -68,7 +70,24 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	sync_caches_for_execution();
>  
> -	barebox = (void *)barebox_base;
> +	ret = elf_open_binary_into(&elf, (void *)barebox_base);
> +	if (ret) {
> +		pr_err("Failed to open ELF binary: %d\n", ret);
> +		hang();
> +	}
> +
> +	ret = elf_load_inplace(&elf);
> +	if (ret) {
> +		pr_err("Failed to relocate ELF: %d\n", ret);
> +		hang();
> +	}
> +
> +	/*
> +	 * TODO: Add pbl_mmu_setup_from_elf() call when RISC-V PBL
> +	 * MMU support is implemented, similar to ARM
> +	 */
> +
> +	barebox = (void *)elf.entry;
>  
>  	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



