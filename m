Delivery-date: Tue, 06 Jan 2026 14:12:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6qv-001tzn-1J
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:12:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6qu-0005WZ-PR
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:12:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2kfXSBcLC9xsSPZeWb8T8uo3lCp2pEsKoIUZM622yuI=; b=ff+dQ0PHapBnFNp7F9fqrESvUS
	AeTrxILS8kgIw6U4cTEnuFV0eWNGRJMOHZ7wdZMo3SftFRsQEU0md/95gNYh1Lh5xoEUkqB8OPL3/
	paUa+OiAEDqks6Y58lq9HVIt7AGXoj5CV1P/5t1Nn84aZfL3r7Cn7k3z/KYq5OU4rx1xdKTXOb+yh
	dHJ1Is0NC+PQUESWDGeTQoV2D65323m/djneqVfRnQKdwVGf6jOImu21SvX/fNauv5bKLmHyQy/lR
	DBTbTFb4CcrAETI2IqCFqs+WVrBihw1KxSNl0001kgOKR0/ml9kKhSTWi0U0c8KRyyExzAEkh+j9Y
	lR5gXpGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qX-0000000D4DQ-3xJX;
	Tue, 06 Jan 2026 13:11:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qU-0000000D4CV-1CCK
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2kfXSBcLC9xsSPZeWb8T8uo3lCp2pEsKoIUZM622yuI=; b=qqrzGzvHMvKNBRRrQFQAdn6Z9E
	XY4FxOecodcnlsiPGULErzN80BNtAKGb1ZXi/3xeT8hPzKXtzB0duVCJB+EEIt9aFp+KRJYlaadpu
	DBLPAhAM8nFkRHfosPh59HFhgGXLr+iX8IRd8aKzvirr87D4dhHNJkFFCspZcKwNnfV/p9eR5q4fH
	Lp/AHmtkntXKHIuiBxZ5ouQCZkLAGWVsS0nLV1EpF/pEJeShBu0zClGOyCwqPcFexyKo3383Xn2zW
	HUKIJhyPaB5qj72DSrxru2rfYVh3OPwMsSF5VRku3wY1vBfvi3Oh4Q19V9VOfQv7N5oGWNeQeaSY+
	VTL4PjtQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qR-00000009k3M-0wxP
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:11:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6qQ-0005Nk-Pf; Tue, 06 Jan 2026 14:11:30 +0100
Message-ID: <cccb2c24-8e2c-4f5b-9a73-351ad327ae59@pengutronix.de>
Date: Tue, 6 Jan 2026 14:11:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-6-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-6-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131131_361423_919F0D8A 
X-CRM114-Status: GOOD (  20.30  )
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
Subject: Re: [PATCH v2 06/21] riscv: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Add architecture-specific ELF relocation support for RISC-V,
> enabling dynamic relocation of position-independent ELF binaries.
> The implemetation reuses the existing relocate_image().
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/riscv/lib/reloc.c | 55 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
> index 18b13a7013cff4032c12b999470f265dbda13c51..9a5004cf5b762b39bb98f7f0ab112c204185b33a 100644
> --- a/arch/riscv/lib/reloc.c
> +++ b/arch/riscv/lib/reloc.c
> @@ -75,3 +75,58 @@ void relocate_to_current_adr(void)
>  
>  	sync_caches_for_execution();
>  }
> +
> +#if __riscv_xlen == 64
> +
> +/*
> + * Apply RISC-V 64-bit ELF relocations
> + */
> +int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
> +{
> +	Elf64_Rela *rela;

If you drop this and use only rel_ptr, this can be made a single
function for both platforms.

Cheers,
Ahmad

> +	void *rel_ptr;
> +	u64 relasz;
> +	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
> +	int ret;
> +
> +	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rel_ptr, &relasz);
> +	if (ret)
> +		return ret;
> +
> +	rela = (Elf64_Rela *)rel_ptr;
> +
> +	relocate_image(base, rela, (void *)rela + relasz, NULL, NULL);
> +
> +	return 0;
> +}
> +
> +#else /* 32-bit RISC-V */
> +
> +/*
> + * Apply RISC-V 32-bit ELF relocations
> + */
> +int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
> +{
> +	Elf32_Rela *rela;
> +	void *rel_ptr;
> +	u64 relasz;
> +	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
> +	int ret;
> +
> +	if (elf->class != ELFCLASS32) {
> +		pr_err("Wrong ELF class for RISC-V 32 relocation\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rel_ptr, &relasz);
> +	if (ret)
> +		return ret;
> +
> +	rela = (Elf32_Rela *)rel_ptr;
> +
> +	relocate_image(base, rela, (void *)rela + relasz, NULL, NULL);
> +
> +	return 0;
> +}
> +
> +#endif
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



