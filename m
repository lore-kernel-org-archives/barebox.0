Delivery-date: Mon, 05 Jan 2026 15:08:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclG7-001Xrw-1k
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:08:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclG6-0001ZI-Qv
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:08:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Asnoqtnh43dGj4EiUSpyr8WRLzoQfyD2NDfn9dY+IwE=; b=JFwtSmm8b6QMauQNxIT3W4txm5
	OvQiXj1b/YPSazqD+TTlXMYQWb6mjh2ES8ADAsfPjg8yarTQbazvF/VqTZZHaGJgcow9FEme1k1ml
	yWcagjCpXDxdqbly7zU4MEYwfbWHKfIHZjOLRyoPHg9AYXmWO0ZTqklFOcrr/XAyb7SYtz+8j+855
	Wu/3uw+Avc7Ukl9xZCTW5mRZXpOUWRE93ekxULM0e3cZ0WRo5UepUM/IbV4Nq05w41I2mWW0FMu0N
	H6CUQchoiOQUm5hvK8PBnfhdZXpt6CtEUtMLa1GunxY8cFUNWVb9ww+z9SxET8fe95SCiQuEVrpEi
	6DiC8Gzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclFg-0000000BWDs-2HpN;
	Mon, 05 Jan 2026 14:08:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclFd-0000000BWDK-0fKN
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:08:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vclFb-0001U0-Jo; Mon, 05 Jan 2026 15:08:03 +0100
Message-ID: <75be7502-faa6-4528-b438-feb58ba16ab7@pengutronix.de>
Date: Mon, 5 Jan 2026 15:08:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_060805_201664_F40E77C8 
X-CRM114-Status: GOOD (  25.51  )
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
Subject: Re: [PATCH 00/19] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Until now we linked the raw barebox proper binary into the PBL which
> comes with a number of disadvantages. We rely on self-modifying code
> to in barebox proper (relocate_to_current_adr()) and have no initialized
> bss segment (setup_c()). Also we can only mark the .text and .rodata as
> readonly during runtime of barebox proper.
> 
> This series overcomes this by linking a ELF image into the PBL. This
> image is properly layed out, linked and initialized in the PBL. With
> this barebox proper has a proper C environment and text/rodata
> protection from the start.
> 
> As a bonus this series also adds initial MMU support for RISCV, also
> based on loading the ELF image and configuring the MMU from the PBL.
> 
> This series also marks my start into AI assisted programming as you can
> see in the Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> and 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> tags. Without it I wouldn't have started this series during my xmas
> break, but with it it was actually quite fun to do; it felt like having
> a programming team which I just had to delegate new tasks to while
> having fun with my family myself ;)

Did you do size comparisons to determine how much this series affects
binary size? I found that compressing every segment separately resulted
in a smaller binary size even after addition of ELF parsing to PBL, but
I used a purpose-built ELF loader unlike to what you did here.

Cheers,
Ahmad

> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (19):
>       elf: Use memcmp to make suitable for PBL
>       elf: build for PBL as well
>       elf: add dynamic relocation support
>       ARM: implement elf_apply_relocations() for ELF relocation support
>       riscv: implement elf_apply_relocations() for ELF relocation support
>       elf: implement elf_load_inplace()
>       elf: create elf_open_binary_into()
>       Makefile: add barebox.elf build target
>       PBL: allow to link ELF image into PBL
>       mmu: add MAP_CACHED_RO mapping type
>       mmu: introduce pbl_remap_range()
>       ARM: use relative jumps in exception table
>       ARM: exceptions: make in-binary exception table const
>       ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
>       ARM: link ELF image into PBL
>       ARM: PBL: setup MMU with proper permissions from ELF segments
>       riscv: link ELF image into PBL
>       riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
>       riscv: add ELF segment-based memory protection with MMU
> 
>  Makefile                           |  16 +-
>  arch/arm/Kconfig                   |   2 +
>  arch/arm/cpu/exceptions_32.S       |  54 +++---
>  arch/arm/cpu/interrupts_32.c       |  41 +++-
>  arch/arm/cpu/mmu-common.c          |  66 +------
>  arch/arm/cpu/mmu-common.h          |   3 +-
>  arch/arm/cpu/mmu_32.c              |  19 +-
>  arch/arm/cpu/mmu_64.c              |  10 +-
>  arch/arm/cpu/no-mmu.c              |  11 +-
>  arch/arm/cpu/start.c               |   4 -
>  arch/arm/cpu/uncompress.c          |  46 ++++-
>  arch/arm/include/asm/barebox-arm.h |   4 +-
>  arch/arm/include/asm/barebox.lds.h |  14 +-
>  arch/arm/include/asm/elf.h         |  11 ++
>  arch/arm/include/asm/sections.h    |   1 +
>  arch/arm/lib/pbl.lds.S             |   8 +-
>  arch/arm/lib32/Makefile            |   1 +
>  arch/arm/lib32/barebox.lds.S       |  39 ++--
>  arch/arm/lib32/elf_reloc.c         | 105 ++++++++++
>  arch/arm/lib64/Makefile            |   1 +
>  arch/arm/lib64/barebox.lds.S       |  31 ++-
>  arch/arm/lib64/elf_reloc.c         | 105 ++++++++++
>  arch/riscv/Kconfig                 |  18 ++
>  arch/riscv/Kconfig.socs            |   1 -
>  arch/riscv/boot/start.c            |   4 -
>  arch/riscv/boot/uncompress.c       |  41 +++-
>  arch/riscv/cpu/Makefile            |   1 +
>  arch/riscv/cpu/mmu.c               | 386 +++++++++++++++++++++++++++++++++++++
>  arch/riscv/cpu/mmu.h               | 144 ++++++++++++++
>  arch/riscv/include/asm/asm.h       |   3 +-
>  arch/riscv/include/asm/mmu.h       |  44 +++++
>  arch/riscv/lib/Makefile            |   1 +
>  arch/riscv/lib/barebox.lds.S       |  38 ++--
>  arch/riscv/lib/elf_reloc.c         | 212 ++++++++++++++++++++
>  common/Makefile                    |   2 +-
>  common/elf.c                       | 367 +++++++++++++++++++++++++++++++++--
>  images/Makefile                    |  18 +-
>  images/piggy.S                     |   4 +
>  include/elf.h                      |  62 ++++++
>  include/mmu.h                      |  12 +-
>  include/pbl/mmu.h                  |  29 +++
>  lib/Makefile                       |   1 +
>  lib/elf_reloc.c                    |  15 ++
>  pbl/Kconfig                        |   8 +
>  pbl/Makefile                       |   1 +
>  pbl/mmu.c                          | 111 +++++++++++
>  scripts/prelink-riscv.inc          |   9 +-
>  47 files changed, 1922 insertions(+), 202 deletions(-)
> ---
> base-commit: e2d7e032281158b54541392b4d8108de204137a1
> change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



