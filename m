Delivery-date: Mon, 12 Jan 2026 14:26:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHwB-000XI5-0j
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:26:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHwA-0006yi-5v
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:26:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+qCkG5MXlh9q5TB8PK//1/krlMB0DQY2xLAof21WvZU=; b=KUHKDwGEhBVo/Jzg8RANngp+q0
	CSe5PUdNWG8VhrQ3BLbJ/ISd1e3f2LcOqK3B5utQxJQcDeBz1vGZfAX/6vviNSWMtBnKw0ivagWiX
	L6wYvqeHZsWQXXjcScToBteok82f9t9zP5MibrFL/gXcfrHROTU4gQsAUq7pQh/p6uI7+78iVvuke
	04gjIp/+J98m33CfSChdZCy3pdbkP645VTAVCY1fwzrzm3Kohvd6RytUNt9OVwNY0u0nhGxTtJXyr
	uSAnpmvAnBzZjJqTWZM6yjPaA6IuF9mtlFjgmCQsgd6KFlo3iH8KEC/3xzocuIskwMagqIcL2omaR
	fFB9WvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHvn-00000005P2E-1faX;
	Mon, 12 Jan 2026 13:26:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHvk-00000005P1o-49g1
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:26:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHvj-0006t9-DL; Mon, 12 Jan 2026 14:25:59 +0100
Message-ID: <e7819817-d6b7-435a-ab58-8930d521037a@pengutronix.de>
Date: Mon, 12 Jan 2026 14:25:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-16-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-16-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_052601_696604_7C2B4E5B 
X-CRM114-Status: GOOD (  22.76  )
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
Subject: Re: [PATCH v3 16/23] ARM: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Instead of linking the raw binary barebox proper image into the PBL link
> the ELF image into the PBL. With this barebox proper starts with a properly
> linked and fully initialized C environment, so the calls to
> relocate_to_adr() and setup_c() can be removed from barebox proper.
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig          |  1 +
>  arch/arm/cpu/start.c      | 13 ++++---------
>  arch/arm/cpu/uncompress.c | 26 +++++++++++++++++++-------
>  3 files changed, 24 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 5123e9b1402c56db94df6a7a33ae993c61d51fbc..65856977ab41298be36b78c64de857570d575744 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -18,6 +18,7 @@ config ARM
>  	select HW_HAS_PCI
>  	select ARCH_HAS_DMA_WRITE_COMBINE
>  	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
> +	select PBL_IMAGE_ELF
>  	default y
>  
>  config ARCH_LINUX_NAME
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f7d4507e71588ba5e241b24b952d55e2a4b0f794..2498bdb894c261f587af6542ea4574c497a6edc0 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -127,8 +127,9 @@ static int barebox_memory_areas_init(void)
>  }
>  device_initcall(barebox_memory_areas_init);
>  
> -__noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
> -		unsigned long memsize, struct handoff_data *hd)
> +__noreturn void barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      struct handoff_data *hd)
>  {
>  	unsigned long endmem = membase + memsize;
>  	unsigned long malloc_start, malloc_end;
> @@ -139,12 +140,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
>  	if (IS_ENABLED(CONFIG_CPU_V7))
>  		armv7_hyp_install();
>  
> -	relocate_to_adr(barebox_base);
> -
> -	setup_c();
> -
> -	barrier();
> -
>  	pbl_barebox_break();
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> @@ -200,7 +195,7 @@ void start(unsigned long membase, unsigned long memsize, struct handoff_data *hd
>   * First function in the uncompressed image. We get here from
>   * the pbl. The stack already has been set up by the pbl.
>   */
> -void NAKED __prereloc __section(.text_entry) start(unsigned long membase,
> +void __section(.text_entry) start(unsigned long membase,
>  		unsigned long memsize, struct handoff_data *hd)

Just squash the last patch into this one?

> +	ret = elf_load_inplace(&elf);
> +	if (ret)
> +		panic("Failed to relocate ELF: %d\n", ret);
> +
> +	pr_debug("ELF entry point: 0x%llx\n", elf.entry);

Drop this line as there is already an equivalent print further down.

Cheers,
Ahmad


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



