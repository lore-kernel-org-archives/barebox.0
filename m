Delivery-date: Tue, 06 Jan 2026 14:51:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7Tb-001ubz-1W
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:51:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7Ta-0001zc-Q8
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:51:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bKNBqAIc+OOwj/1ACBjaaZGYBhNrJjj94+OZzCbf3YU=; b=qu5ETaYvCFpaoPex6fiSLrK1AF
	SBICigtF/cxbw6oPGOua/R0GUqE0fRrLQwpTL8KTCicvJdfHf5NgVzNhp9IfWgrPvtQ8clL8zRbEj
	gSBiqyOkEVba8TfCqUfVpsBpeRrBNuvW3WaQOJQPbAoFbmOADmYuV8glKHDRyID/jMvuShzxi3k+3
	MHEjDms4Lh7dAYttRD3RoVCrKDE/ZVMvlDFkPdGhf6SAH84TthgmN2qndp0Je5Vaoqmm5TmdY3z0T
	mmrRQoW6HbSBNheEh1kQglbuc+J0nDLrX/l7Gzgmadf7bxXmZ1GbhzmWfSxx/76lWMWtmAsuZk04V
	PVTzdDiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Sy-0000000DDIY-03DG;
	Tue, 06 Jan 2026 13:51:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Ss-0000000DDDV-3P74
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=bKNBqAIc+OOwj/1ACBjaaZGYBhNrJjj94+OZzCbf3YU=; b=g8RvDGYzRAP9XTueUZAX0TueO6
	N7buvgxulTvWbdQezPW/TbKZ0Mxs2VYktCm90mvBCGk8z/bde46a2LEa73Ml/VDs6alIfVNcKyZdq
	QngFj9AIfgPFF/fk7VPrxyA1vJmTYQGh/NJXC0wz+IK051Nz2aTMz3q7hjBmSZrTtcEAcnL4ApJ3b
	R3CHxzPU4FYgceYd9RsJrYTTAEfR+sVM6asgavgknJFD34QiWx/2PHLw6tEv3L63IP7caOgrcl+nL
	qK4oNyT1a6FkU+7a5NuzoqeNj5BOC0t8/42HQRCkjMdVud28V2pOtiNdHy8dm7Nc81Q2gTpECOYta
	1humAwAg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7So-0000000Brkj-2NWC
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:51:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7Sl-0001tU-JO; Tue, 06 Jan 2026 14:51:07 +0100
Message-ID: <14aa93ff-c0e8-4604-9afb-1c74a570ee6d@pengutronix.de>
Date: Tue, 6 Jan 2026 14:51:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-3-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-3-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_135110_647265_DB3E5661 
X-CRM114-Status: GOOD (  20.56  )
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
Subject: Re: [PATCH v2 03/21] elf: add dynamic relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
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

Wrong way round ^

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But some nitpicks and a question below.

> +static void *elf_get_dest(struct elf_image *elf, void *phdr)

How about elf_phdr_relocated_paddr as a more descriptive name?

> +	if (elf->load_address) {
> +		elf->base_load_addr = elf->load_address;
> +	} else if (elf->type == ET_EXEC) {
> +		elf->base_load_addr = NULL;
> +	} else {
> +		elf->base_load_addr = (void *)(phys_addr_t)min_paddr;
> +	}

Curly braces can be removed.

> +	if (elf->type == ET_EXEC && !elf->load_address) {
> +		elf->reloc_offset = 0;
> +	} else {
> +		elf->reloc_offset = ((unsigned long)elf->base_load_addr - min_vaddr);
> +	}

Ditto.


> +void elf_set_load_address(struct elf_image *elf, void *addr)
> +{
> +	elf->load_address = addr;
> +}
> +
> +static void *elf_find_dynamic_segment(struct elf_image *elf)
> +{
> +	void *buf = elf->hdr_buf;
> +	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
> +	int i;
> +
> +	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
> +		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC) {
> +			u64 offset = elf_phdr_p_offset(elf, phdr);
> +
> +			/* If loaded from file, PT_DYNAMIC might not be in hdr_buf */
> +			if (elf->filename)
> +				return elf_get_dest(elf, phdr);
> +			else
> +				/* Binary in memory, use offset */
> +				return elf->hdr_buf + offset;

Does elf_get_dest(elf, phdr) not compute the same address that we would
get here?

> +	/* Check that we found exactly one relocation type */
> +	if (rel && rela) {
> +		pr_err("ELF has both REL and RELA relocations\n");
> +		return -EINVAL;
> +	}

Future work could be checking these things at compile time and skipping
the checks in PBL.

> diff --git a/lib/Makefile b/lib/Makefile
> index 6d259dd94e163336d7fdab38c7b74b301aabc5c5..da2c8ffe1dbf512a901295c89494e0837f31a0d9 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -24,6 +24,7 @@ obj-y			+= readkey.o
>  obj-y			+= kfifo.o
>  obj-y			+= libbb.o
>  obj-y			+= libgen.o
> +obj-y			+= elf_reloc.o

Why is this not obj-pbl-y?

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



