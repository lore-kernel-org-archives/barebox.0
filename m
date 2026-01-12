Delivery-date: Mon, 12 Jan 2026 14:44:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIDB-000XYO-0b
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:44:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIDA-0000kw-7N
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:44:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PJni30s157D5Dvr8vP6UhPW1eHZoWzAPxYv/5dtHVzc=; b=c1LVdRapP+AHsBRG7fQZ3HocHB
	XODZDWCuDxVfcq43cuuWfPIjb+YgmfOJVFcv8V4uyAW2cN+MpYqOUl+3F7r5fL1p5z0NBOvk+spU+
	TWgAuN4MI/2U0deugRbpdJFzOOJhH1fXjSyC+wBGdRLEkkbWrYi0xJp9PZjZhnhY0YiUZYiDpVz1H
	iCUx+DRB+9SQ7kA6HlA0KE7nbiEZJsgaKp01dzGlL5h9okDY90xPVm1d13UWRdZ93OFg5mEfGKCL2
	iSZipe9BWr+9OpWtF40kPd3D3oig62dz0rcPA30GwZJCpZB4G99J3j6ljOIttkyWKpadgqOGYFhOP
	fs+pmNAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfICi-00000005Qm5-0fqn;
	Mon, 12 Jan 2026 13:43:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfICf-00000005Qlb-1rn7
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:43:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfICd-0000gh-S5; Mon, 12 Jan 2026 14:43:27 +0100
Message-ID: <296b4f46-ff10-41bb-a49f-1b32c0f304d0@pengutronix.de>
Date: Mon, 12 Jan 2026 14:43:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-21-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-21-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_054329_492112_09B6054B 
X-CRM114-Status: GOOD (  14.32  )
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
Subject: Re: [PATCH v3 21/23] riscv: add ELF segment-based memory protection
 with MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/8/26 4:50 PM, Sascha Hauer wrote:
>  	ret = elf_open_binary_into(&elf, (void *)barebox_base);
> -	if (ret) {
> -		pr_err("Failed to open ELF binary: %d\n", ret);
> -		hang();
> -	}
> +	if (ret)
> +		panic("Failed to open ELF binary: %d\n", ret);
>  
>  	ret = elf_load_inplace(&elf);
> -	if (ret) {
> -		pr_err("Failed to relocate ELF: %d\n", ret);
> -		hang();
> -	}
> +	if (ret)
> +		panic("Failed to relocate ELF: %d\n", ret);
> +
> +	pr_debug("ELF entry point: 0x%llx\n", elf.entry);

Squashed into the wrong commit.

>  
>  	/*
> -	 * TODO: Add pbl_mmu_setup_from_elf() call when RISC-V PBL
> -	 * MMU support is implemented, similar to ARM
> +	 * Now that the ELF image is relocated, we know the exact addresses
> +	 * of all segments. Set up MMU with proper permissions based on
> +	 * ELF segment flags (PF_R/W/X).
>  	 */
> +	if (IS_ENABLED(CONFIG_MMU)) {

When we have stubs in the header, the IS_ENABLED can be omitted and
pbl_mmu_setup_from_elf() can be called unconditionally.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



