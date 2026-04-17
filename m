Delivery-date: Fri, 17 Apr 2026 10:03:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeB5-00D6vf-0V
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeB4-00082t-DL
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EivCCRFWaNtfsvKmGFVJUsEfRITyRiqEFIzqu/YzGsc=; b=3Aa/hTEide/VVTqrrQzqva+wEX
	Mzet9N3Mah8DAiMn8D5MgwQkWCifChzXhrP21CRuAaxvnXjjsolQAG80cHMha4Xq0qho12YG7Mqjy
	yHY54ZjQVqP3uQmTAbbR4ahASvuAHD4O8iVQpIa1ATocSzsW6zoSCUWCzCkbEEhZe1wqk/1xp6+uG
	Fbvqm0F4J9uz5OR5uJaqAA5cAytoOLB8JUGwqSzc9aL0c/qw+Qwgrivd+Oy24Cl9NjRUlNKM4VawP
	V0+t/8bHcbJqcsBgynCX7bibY4845Vk8X7mQxu8yzFLQkt+v8QRQC8i07oxdT8Q7Gboceg8dqCz/O
	LHHF5e7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeAe-00000003e38-15Oa;
	Fri, 17 Apr 2026 08:03:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeAc-00000003e2Z-00Gl
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:03:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAa-0007qK-AD; Fri, 17 Apr 2026 10:03:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAa-005oSv-0O;
	Fri, 17 Apr 2026 10:03:20 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeAa-00000000Rx0-0GtN;
	Fri, 17 Apr 2026 10:03:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260416055631.3717141-1-a.fatoum@pengutronix.de>
References: <20260416055631.3717141-1-a.fatoum@pengutronix.de>
Message-Id: <177641300005.107346.10147243590873366443.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 10:03:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_010322_047766_D3D5B9F9 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] arch: make RELR depend on EXPERIMENTAL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Apr 2026 07:56:07 +0200, Ahmad Fatoum wrote:
> The rock3a crashes inside mem_malloc_init with RELR enabled
> 
> >rockchip-dmc: rockchip_sdram_size(reg2=100002c1, reg3=30001001)
> rockchip-dmc: rank 1 cs0_col 10 bk 3 cs0_row 16 bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram0_size() = 2147483648
> uncompress.c: memory at 0x00a00000, size 0x7f600000
> endmem                = 0x80000000
> arm_mem_scratch       = 0x7fff8000+0x00008000
> arm_mem_stack         = 0x7fff0000+0x00008000
> arm_mem_guard_page    = 0x7ffef000+0x00001000
> arm_mem_ttb           = 0x7ff80000+0x00040000
> arm_mem_barebox_image = 0x7fc00000+0x00400000
> arm_mem_early_malloc  = 0x7fbe0000+0x00020000
> membase               = 0x00a00000+0x7f600000
> mmu: enabling MMU, ttb @ 0x7ff80000
> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
> mmu: __arch_remap_range: 0x00a00000+0x7f600000 type RWX
> mmu: __arch_remap_range: 0x80000000+0x0 type FAULT
> mmu: __arch_remap_range: 0x00b00000+0x58000 type RWX
> uncompress.c: uncompressing barebox ELF at 0x0000000000b580e0 (size 0x000a6d0a) to 0x7fc00000 (uncompressed size: 0x001724a8)
> uncompress.c: relocating ELF in place
> In-place ELF relocation: text_vaddr=0x0, text_offset=0x10000, load_addr=000000007fc00000, offset=0x7fc10000
> No RELA relocations or invalid relocation info
> In-place ELF relocation completed successfully
> pbl-mmu: Setting up MMU from ELF segments
> pbl-mmu: Segment 0 not page-aligned, rounding
> pbl-mmu: Segment 0: addr=0x7fc10000 size=0x000ae000 flags=0x5 [R-X] -> mmu_flags=0x3
> mmu: __arch_remap_range: 0x7fc10000+0xae000 type CODE
> pbl-mmu: Segment 1 not page-aligned, rounding
> pbl-mmu: Segment 1: addr=0x7fcbe000 size=0x0005c000 flags=0x4 [R--] -> mmu_flags=0x4
> mmu: __arch_remap_range: 0x7fcbe000+0x5c000 type RO
> pbl-mmu: Segment 3 not page-aligned, rounding
> pbl-mmu: Segment 3: addr=0x7fd1a000 size=0x00061000 flags=0x6 [RW-] -> mmu_flags=0x1
> mmu: __arch_remap_range: 0x7fd1a000+0x61000 type CACHED
> pbl-mmu: MMU setup from ELF complete
> uncompress.c: jumping to ELF entry point at 0x000000007fcbb4bc
> start.c: memory at 0x00a00000, size 0x7f600000
> start.c: initializing malloc pool at 0x40380000 (size 0x3f980000)
> PANIC: unable to handle paging request at address 0x000000007fcffff0
> DABT (current EL) (ESR 0x9600004f)
> elr: 000000007fc1c064 lr : 000000007fc1c064
> x0 : 000000007fcffff0 x1 : 000000003f97e869
> x2 : 000000003f97e868 x3 : fffffffffffffff8
> x4 : 000000007fff7e9c x5 : 000000007fff7e98
> x6 : 0000000000000020 x7 : 000000007fff7988
> x8 : 0000000000000010 x9 : 000000007fcef52a
> x10: 0000000000000000 x11: 0000000000000002
> x12: 0000000000000002 x13: 0000000000000000
> x14: 000000007fc10000 x15: 0000000000b01a54
> x16: 0000000000b01abc x17: 0000000000000000
> x18: 0000000000000000 x19: 0000000040381780
> x20: 0000000040381780 x21: 000000007fd72000
> x22: 0000000080000000 x23: 000000007f600000
> x24: 0000000080000000 x25: 000000007fe724a8
> x26: 00000000000a6d0a x27: 00000000001724a8
> x28: 0000000000000000 x29: 000000007fff7e80
> 
> [...]

Applied, thanks!

[1/1] arch: make RELR depend on EXPERIMENTAL
      https://git.pengutronix.de/cgit/barebox/commit/?id=e2034126a4f8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



