Delivery-date: Mon, 12 Jan 2026 14:39:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfI8Z-000XQf-0F
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:39:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfI8Y-0000Hy-1S
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:39:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xdru1htCmRZjp5eE7rQQKu5uzJoo9lR9tcKJCXDiYY8=; b=4LN+9h0e6ftNB3GT3tOh8CXkSt
	zL8ke62zWaGOOwgTPgInYaLraN9kDOBFaIiDiHiy8SKGmn4BbqaqmGsp9gJoD/IGFwd8Dtrc4dbPG
	KVrnRwhZnxz69/6WFVpRB2WoG3v3UpEvPu0ltIvb9JphEgimnd4YL32oHpT8b6Bpa+CecjPQ/5sgf
	7jm8Gl9FYLrPfCw2LyR2hF3XiaUrMhxiTz+BjlIz+HHoAYNRMlR9pZ2+l9Cq/nEUCEAJ+CDPpM8IZ
	aTQ4Q4/EJBUKfNttz3ARTVI+vo6ZiS92YDZbXsSir7GBJmcLoQ7OYuBb1JiOkAYD928UzSA1n/J14
	u3HHIu2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfI87-00000005QXO-0b3U;
	Mon, 12 Jan 2026 13:38:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfI84-00000005QWh-1SWe
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:38:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfI82-0000CG-M8; Mon, 12 Jan 2026 14:38:42 +0100
Message-ID: <f08142ef-969d-4a91-8f39-6360711c3f35@pengutronix.de>
Date: Mon, 12 Jan 2026 14:38:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-17-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-17-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_053844_391843_3797C155 
X-CRM114-Status: GOOD (  17.54  )
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
Subject: Re: [PATCH v3 17/23] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Move complete MMU setup into PBL by leveraging ELF segment information
> to apply correct memory permissions before jumping to barebox proper.
> 
> After ELF relocation, parse PT_LOAD segments and map each with
> permissions derived from p_flags:
> - Text segments (PF_R|PF_X): Read-only + executable (MAP_CODE)
> - Data segments (PF_R|PF_W): Read-write (MAP_CACHED)
> - RO data segments (PF_R): Read-only (ARCH_MAP_CACHED_RO)

MAP_CACHED_RO is the name now.

> -static inline void remap_range_end_sans_text(unsigned long start, unsigned long end,
> +static inline void remap_range_end_sans_image(unsigned long start, unsigned long end,
>  					     unsigned map_type)
>  {
> -	unsigned long text_start = (unsigned long)&_stext;
> -	unsigned long text_end = (unsigned long)&_etext;
> +	unsigned long image_start = (unsigned long)&_stext;
> +	unsigned long image_end = (unsigned long)&_etext;

Uhm, __image_start and __image_end, not just the variable names...

> +	/*
> +	 * Now that the ELF image is relocated, we know the exact addresses
> +	 * of all segments. Set up MMU with proper permissions based on
> +	 * ELF segment flags (PF_R/W/X).
> +	 */
> +	if (IS_ENABLED(CONFIG_MMU)) {
> +		ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);

Add static inline stub to header for !MMU case and drop IS_ENABLED() here?

> +		if (ret) {
> +			pr_err("Failed to setup MMU from ELF: %d\n", ret);
> +			hang();

panic()

> +int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
> +			    unsigned long memsize)
> +{
> +	void *phdr;
> +	int i;
> +	int phnum = elf_hdr_e_phnum(elf, elf->hdr_buf);
> +	size_t phoff = elf_hdr_e_phoff(elf, elf->hdr_buf);
> +	size_t phentsize = elf_size_of_phdr(elf);
> +
> +	pr_debug("Setting up MMU from ELF segments\n");
> +	pr_debug("ELF entry point: 0x%llx\n", elf->entry);

Drop this line as CONFIG_DEBUG_PBL enables all pr_debug and this line
would then be duplicate.

> +		/* Validate alignment - warn and round if needed */
> +		if (!IS_ALIGNED(addr, PAGE_SIZE) || !IS_ALIGNED(size, PAGE_SIZE)) {

Remove IS_ALIGNED(addr, PAGE_SIZE) as it's not rounded and the message
is thus not accurate. We shouldn't round it either, just falling through
to remapping will raise a panic if it's unaligned, which is ok IMO.


> +		pbl_remap_range((void *)addr, addr, size, mmu_flags);

Using remap_range() means we can avoid the (void *)addr.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



