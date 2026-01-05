Delivery-date: Mon, 05 Jan 2026 14:13:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckOS-001X2J-08
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 14:13:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckOR-00039I-Di
	for lore@pengutronix.de; Mon, 05 Jan 2026 14:13:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MzKb+DvjKLr3mlRx+mKq7Jsax+U4VOc5QxPvUraFLeU=; b=T08W0I77kzb/hzkmpE2M26HBiH
	sIQEpaTUsVbTCM8c41P6OdXC5bz4WOcwg5Wsi6s71xGbGXQJRi//cGa80rnxkw4yhfzmz6pTou7iJ
	2mW0/m8+6ES5paVJGYzuro+RZukvrTqWyIH5uhoqWgLMR5EOYSp+LY4LmLlCok+rGhoms36qDwV2w
	oPr2aao27xEfdI8fDfK2D6vuVIXHqR4k04SWoLvtD7HPh14N1FPMPvVEoC5HCGJjvrrVn1BFktNMw
	Hi0Miw4/GIcYwfiGNJxvybwBBnghuExWQr2JzpeW/qxId7VpQwHO4Pk/jYXPAQPzY+sELimbgMa/m
	9x2C0imA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckO4-0000000BPQQ-1RGy;
	Mon, 05 Jan 2026 13:12:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckO2-0000000BPPt-1oZw
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 13:12:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vckO0-00034G-Un; Mon, 05 Jan 2026 14:12:41 +0100
Message-ID: <a54f9e18-4548-4fa1-8426-1c1860b7146e@pengutronix.de>
Date: Mon, 5 Jan 2026 14:12:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-17-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-17-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_051242_480344_38B98C71 
X-CRM114-Status: GOOD (  19.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/19] riscv: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Instead of linking the raw binary barebox proper image into the PBL link
> the ELF image into the PBL. With this barebox proper starts with a properly
> linked and fully initialized C environment, so the calls to
> relocate_to_adr() and setup_c() can be removed from barebox proper.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/riscv/Kconfig           |  2 ++
>  arch/riscv/boot/start.c      |  4 ----
>  arch/riscv/boot/uncompress.c | 16 +++++++++++++++-
>  3 files changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 96d013d8514ac12de5c34a426262d85f8cf021b9..f8c8b38ed6d7fdae48669e6d7b737f695f1c4cc9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -17,6 +17,8 @@ config RISCV
>  	select HAS_KALLSYMS
>  	select RISCV_TIMER if RISCV_SBI
>  	select HW_HAS_PCI
> +	select ELF

IMO should be selected by PBL_IMAGE_ELF instead.

> +	select PBL_IMAGE_ELF
>  	select HAVE_ARCH_BOARD_GENERIC_DT
>  	select HAVE_ARCH_BOOTM_OFTREE
>  
> diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
> index 5091340c8a374fc360ab732ba01ec8516e82a83d..874f4e72ae46fe7435c9defedceaf5b4e9662b55 100644
> --- a/arch/riscv/boot/start.c
> +++ b/arch/riscv/boot/start.c
> @@ -123,10 +123,6 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
>  	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
>  	unsigned long barebox_base = riscv_mem_barebox_image(membase, endmem, barebox_size);
>  
> -	relocate_to_current_adr();
> -
> -	setup_c();
> -
>  	barrier();

barrier() can go away as well.

>  
>  	irq_init_vector(riscv_mode());
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index 84142acf9c66fe1fcceb6ae63d15ac078ccddee7..dc0d1fd5d41a88acea8717a7f5fcdb8da3298663 100644
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
> @@ -68,7 +70,19 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	sync_caches_for_execution();
>  
> -	barebox = (void *)barebox_base;
> +	ret = elf_open_binary_into(&elf, (void *)barebox_base);
> +	if (ret) {
> +		pr_err("Failed to open ELF binary: %d\n", ret);
> +		hang();

panic()

> +	}
> +
> +	ret = elf_load_inplace(&elf);
> +	if (ret) {
> +		pr_err("Failed to relocate ELF: %d\n", ret);
> +		hang();
> +	}

panic()

Cheers,
Ahmad

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



