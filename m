Delivery-date: Thu, 15 Jan 2026 13:37:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMbb-001ar7-27
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:37:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMba-0005ni-Kx
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:37:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=unQl8dcLZGFmertV3FEAvsJPfqxG7btRCkRQM9LvO/k=; b=aQSsPg8bKlDmrXnPsgrSDTAxF6
	mL/amquNsawRCLHKlTcINEFoR70QR9XeTSEhcIToH/WJQ905yHyREGagsl1hbOR+JiBYE1Eb+nr8l
	Bt0NisGej7z2lVONOj44lzPmZj/KvyI4AWFZoP3Ku2A+yxQ6692LyPx4yhsFwsVYMTtU71fiTcNT4
	ln/QnNWZ7/GKtSYhBmyXDDPZ2LoShfDL8jczsNTL2GlpZkbsks797RgtjfvqpqhHRGuikG968FGlL
	JqaNAxDEM1KOTp6VrStaMLVcUigHdqZsimXCns3yWbzek28jlUiEkVGF6mnKLhnTOzueG+/F3KtA3
	Tcb5n00g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMb7-0000000CLRp-2OO9;
	Thu, 15 Jan 2026 12:37:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMb3-0000000CLRC-2aBw
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:37:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgMb1-0005g3-RA; Thu, 15 Jan 2026 13:37:03 +0100
Message-ID: <ac044a5d-1229-49da-b91b-3f9f19855d60@pengutronix.de>
Date: Thu, 15 Jan 2026 13:37:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>,
 Stefan Kerkmann <ske@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-22-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-22-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_043705_656313_530E322C 
X-CRM114-Status: GOOD (  19.84  )
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
Subject: Re: [PATCH v4 22/22] riscv: add ELF segment-based memory protection
 with MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/14/26 1:14 PM, Sascha Hauer wrote:
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>

Same comment as previous patch.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/riscv/Kconfig           |  17 +++
>  arch/riscv/boot/uncompress.c |  33 ++--
>  arch/riscv/cpu/Makefile      |   1 +
>  arch/riscv/cpu/mmu.c         | 354 +++++++++++++++++++++++++++++++++++++++++++
>  arch/riscv/cpu/mmu.h         | 120 +++++++++++++++
>  arch/riscv/include/asm/asm.h |   3 +-
>  arch/riscv/include/asm/mmu.h |  36 +++++
>  7 files changed, 553 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index d9794354f4ed2e8bf7276e03b968c566002c2ec6..99562c7df8927e11d4de448ad486e49dd5a0d0fd 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -129,4 +129,21 @@ config RISCV_MULTI_MODE
>  config RISCV_SBI
>  	def_bool RISCV_S_MODE
>  
> +config MMU
> +	bool "MMU-based memory protection"
> +	default y if RISCV_S_MODE

I am not familiar with MMU handling on RISC-V and while it is without
question a nice thing to have, I don't feel confident of taking Claude's
word for it that this is good enough to be the default.

Can you add a new generated defconfig (search for merge_into_defconfig)
that enable mmu in virt32_mmu_defconfig and rv64i_mmu_defconfig and hold
off making this the default for now, until someone had the chance to
look at this properly?

I believe Stefan may be a candidate for that. :)

>  	ret = elf_load_inplace(&elf);
> -	if (ret) {
> -		pr_err("Failed to relocate ELF: %d\n", ret);
> -		hang();

Nitpick: fixing code introduced in the same series earlier.

Cheer,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



