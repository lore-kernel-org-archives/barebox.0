Delivery-date: Mon, 05 Jan 2026 13:28:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjh8-001WG2-1A
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:28:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjh7-0005oH-O5
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:28:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uq2Ci26N0hg+CJTuqg7iMozZbc+RW4oEYGTsrC2eMQ8=; b=QBUIQJdY6dMYnmDPlmHjIgW3FE
	WXDHLQtKNW3Kq/h1w3DKVLYb9vhZUVG7q5aUrzn5p8Z/CtukZsnNBNhQdovBiPrY7Y/4IMv7uJ2BM
	JUI1bphQaoZEltnfAK+jRqnZq3TlHiSHy+yz7di+rBsBp4dAIQ9Y7+wGbWfU46hP9rSI3sJTxKqIB
	BGWz/WXKMBe/4pN2l16j1KEqGgW6/Csgs1AJJRHWY4axGJbgGZ42M3vTJX6eQAzk7IV2gam6CdzdY
	wguPNHpTHtCPygG3tNkAwRrS5kAM5opHBBNraTmQq17Hj6RXlHRBFadYQEy6lIdrDdQ66EskF0tY1
	FOsnOF9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjgj-0000000BHCs-021N;
	Mon, 05 Jan 2026 12:27:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjgg-0000000BHCT-0BxN
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:27:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjgd-0005hD-S2; Mon, 05 Jan 2026 13:27:51 +0100
Message-ID: <94567fe5-aa30-4d0f-b598-7cc521285ffa@pengutronix.de>
Date: Mon, 5 Jan 2026 13:27:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-15-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-15-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_042754_091732_EF583F20 
X-CRM114-Status: GOOD (  21.60  )
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
Subject: Re: [PATCH 15/19] ARM: link ELF image into PBL
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
>  arch/arm/Kconfig          |  2 ++
>  arch/arm/cpu/start.c      |  4 ----
>  arch/arm/cpu/uncompress.c | 32 ++++++++++++++++++++++++++------
>  3 files changed, 28 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index afa6de3cd0b145e42755e3ca2d7a13c8a69ff1d3..60975083b32f3127f982c526c6cf30ffe3e45924 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -17,6 +17,8 @@ config ARM
>  	select HAVE_ARCH_BOOTM_OFTREE
>  	select HW_HAS_PCI
>  	select ARCH_HAS_DMA_WRITE_COMBINE
> +	select ELF
> +	select PBL_IMAGE_ELF
>  	default y
>  
>  config ARCH_LINUX_NAME
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f7d4507e71588ba5e241b24b952d55e2a4b0f794..71a12abdd0941889617e6b63063304d0e4522c81 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -139,10 +139,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,

void NAKED __prereloc __section(.text_entry) start should no longer be
needed as well as the .text_entry section itself.

>  	if (IS_ENABLED(CONFIG_CPU_V7))
>  		armv7_hyp_install();
>  
> -	relocate_to_adr(barebox_base);
> -
> -	setup_c();
> -
>  	barrier();

You can also drop the barrier while at it.

> +	struct elf_image elf;
> +	int ret;

Move to start of function?

> +
> +	ret = elf_open_binary_into(&elf, (void *)barebox_base);
> +	if (ret) {
> +		pr_err("Failed to open ELF binary: %d\n", ret);
> +		hang();

panic?

> +	}
> +
> +	ret = elf_load_inplace(&elf);
> +	if (ret) {
> +		pr_err("Failed to relocate ELF: %d\n", ret);
> +		hang();

panic?

> +	}
> +
> +	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
>  
>  	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> -		barebox = (void *)(barebox_base + 1);
> +		barebox = (void *)(unsigned long)(elf.entry | 1);

In my testing the ELF file already had an odd address. Was it different
for you?

>  	else
> -		barebox = (void *)barebox_base;
> +		barebox = (void *)(unsigned long)elf.entry;

I have patches that I can submit afterwards that share some of the ELF
info with barebox proper. This allows us to avoid recomputing addresses
relative to endmem again and just use the info extract from the ELF.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



