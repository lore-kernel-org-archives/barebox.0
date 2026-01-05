Delivery-date: Mon, 05 Jan 2026 15:06:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclE0-001XeJ-0J
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:06:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclDz-0001HF-HF
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+b8UsaojXmRj+kfJpQ8i3tU0G9+DImPAaI9EWx1ZzcM=; b=49TKqKZZ4CJpB4jlI+s7wATXbT
	apXvgZa3Jzd/znhv/ih42u6HQnIJIvXA2HLxnVF+/Wm3VJtsuWTGXRujie4U/6PTjcF3f88F9u44w
	FfRqkRQ/g4UXQLOgPRjXQotA7c4lu1/sRj6wFJMrGmxHDGrRRG5Ch+ojBJGUqVi/+mLAa/jO0CAxY
	782i8+ax3Ace5XrGqdvb+caZlOyne9jaFFnyZ/SMgHNXckhH122E8K4jCjwy3DH0ZQD3n5GwebCxC
	Ult23XknlDb6Nt6czxynfO+RRavQv4wr2umSqSCQC1QFmVEXVSrB0S000NotOKI++jvVvN9xcbTU3
	Fc9rqrLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclDY-0000000BW6w-2vUi;
	Mon, 05 Jan 2026 14:05:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclDW-0000000BW6X-0QRO
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:05:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vclDU-0001Bn-Ez; Mon, 05 Jan 2026 15:05:52 +0100
Message-ID: <4068ccee-dadf-4e09-a85a-45e3474b0061@pengutronix.de>
Date: Mon, 5 Jan 2026 15:05:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-3-e97853f98232@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105-pbl-load-elf-v1-3-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_060554_161098_55EA4A6A 
X-CRM114-Status: GOOD (  14.10  )
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
Subject: Re: [PATCH 03/19] elf: add dynamic relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Add support for applying dynamic relocations to ELF binaries. This allows
> loading ET_DYN (position-independent) binaries and ET_EXEC binaries at
> custom load addresses.
> 
> Key changes:
> - Add elf_image.reloc_offset to track offset between vaddr and load address
> - Implement elf_compute_load_offset() to calculate relocation offset
> - Add elf_set_load_address() API to specify custom load address
> - Implement elf_find_dynamic_segment() to locate PT_DYNAMIC
> - Add elf_relocate() to apply relocations
> - Provide weak default elf_apply_relocations() stub for unsupported architectures
> - Add ELF dynamic section accessors
> 
> The relocation offset type is unsigned long to properly handle pointer
> arithmetic and avoid casting issues.
> 
> Architecture-specific implementations should override the weak
> elf_apply_relocations() function to handle their relocation types.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> ---
> +	if (elf->reloc_offset) {
> +		u64 p_vaddr = elf_phdr_p_vaddr(elf, phdr);
> +		dst = (void *)(unsigned long)(elf->reloc_offset + p_vaddr);
> +	} else {
> +		dst = (void *)(unsigned long)elf_phdr_p_paddr(elf, phdr);
> +	}

This stanza repeats multiple times. Maybe factor out into a helper that
takes elf and phdr as arguments?


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



