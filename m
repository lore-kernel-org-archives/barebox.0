Delivery-date: Thu, 15 Jan 2026 13:45:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMiz-001b19-0n
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:45:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMiy-0006bj-2e
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:45:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B5Ogo3VZZftYnTPo12gOw5m6gs19ZZQ2s9EgguXHuYg=; b=4wtbkzTKWt9NiOfZtWJVftflsz
	8PBXpNVtnIkJC5+v3XFmfazkuk4TkVPMrRGgZqCR+PCjxmcoe0zJ+jCuPlecBUfP0muKcAKvDkiP9
	t7buQm56hF0G5HZXX7qFEWn5GbhIikJFy0qpY7r9BrusD3TKrZdFGJDGdZG9D4rFo/jWsxc7Pdmzc
	HBxEol/bk/VmX2+9Yaj+s47Qna3Kbh62OIIVyOBf+E2HoS+wYkVqsLuScviIN8dK5VRYg4IS2JHfe
	MVqH0WdUuKu+7/AkQj/LlIc7phwKeiOc3Tw5PsuCSJRBL/V2nLKhgXEKPurOFqVn9WJPjFP1eGdRF
	9EkFxdJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMiW-0000000CLs3-2KI1;
	Thu, 15 Jan 2026 12:44:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMiU-0000000CLrg-1Vos
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:44:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgMiS-0006XX-Px; Thu, 15 Jan 2026 13:44:44 +0100
Message-ID: <912bbf7a-d183-474c-a4f9-a105f42b0cc2@pengutronix.de>
Date: Thu, 15 Jan 2026 13:44:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_044446_410097_B7BFDA31 
X-CRM114-Status: GOOD (  29.59  )
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
Subject: Re: [PATCH v4 00/22] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/14/26 1:14 PM, Sascha Hauer wrote:
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
> I lost track about the review feedback for v1, partly because I asked
> Claude to integrate the review feedback for me, which it did, but not
> completely. Nevertheless I think this series has enough changes for now
> so that it deserves a second look.
> 
> What I didn't care about yet is that we found out that neither ARM nor
> RiscV use any absolute relocations, so we might be able to remove
> support for them, make sure these are not emitted during compile time,
> or properly test/fix them when we discover that they are indeed needed.

I am done with my review, so as far as I am concerned, this series can
go in with the minor points mentioned addressed.

Thanks,
Ahmad


> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Changes in v4:
> - remove --remove-section=.note.gnu.build-id, catched by
>   --remove-section=.note*
> - actually use __image_* in remap_range_end_sans_image()
> - drop pbl_remap_range in favor of remap_range()
> - drop duplicate ELF entry point pr_debug()
> - add static inline wrapper for pbl_mmu_setup_from_elf()
> - reorder segments
> - make dynamic section RO
> - introduce elf_for_each_segment()
> - Use lowest vaddr segment for base address
> - Link to v3: https://lore.barebox.org/20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de
> 
> Changes in v3:
> - integrate Ahmads feedback
> - cleanup barebox proper entry
> - add missing "ax" flag to ARM exception table, and let linker do the
>   fixup
> - Link to v2: https://lore.barebox.org/20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de
> 
> Changes in v2:
> - rebased on Ahmads patches and with it reused existing relocate_image()
> - hopefully integrated all feedback for v1
> - Link to v1: https://lore.barebox.org/20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de
> 
> ---
> Sascha Hauer (22):
>       Makefile.compiler: add objcopy-option
>       elf: only accept images matching the native ELF_CLASS
>       elf: build for PBL as well
>       elf: add elf segment iterator
>       elf: add dynamic relocation support
>       ARM: implement elf_apply_relocations() for ELF relocation support
>       riscv: define generic relocate_image
>       riscv: implement elf_apply_relocations() for ELF relocation support
>       elf: implement elf_load_inplace()
>       elf: create elf_open_binary_into()
>       Makefile: add vmbarebox build target
>       PBL: allow to link ELF image into PBL
>       mmu: add MAP_CACHED_RO mapping type
>       ARM: drop arm_fixup_vectors()
>       ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
>       ARM: link ELF image into PBL
>       ARM: cleanup barebox proper entry
>       ARM: PBL: setup MMU with proper permissions from ELF segments
>       riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
>       riscv: link ELF image into PBL
>       riscv: Allwinner D1: Drop M-Mode
>       riscv: add ELF segment-based memory protection with MMU
> 
>  Makefile                           |  14 +-
>  arch/arm/Kconfig                   |   1 +
>  arch/arm/cpu/exceptions_32.S       |  54 +----
>  arch/arm/cpu/interrupts_32.c       |   5 +-
>  arch/arm/cpu/mmu-common.c          |  31 ++-
>  arch/arm/cpu/mmu-common.h          |   3 +-
>  arch/arm/cpu/mmu_32.c              |   6 +-
>  arch/arm/cpu/mmu_64.c              |   2 +-
>  arch/arm/cpu/no-mmu.c              |   2 -
>  arch/arm/cpu/start.c               |  22 +-
>  arch/arm/cpu/uncompress.c          |  34 ++-
>  arch/arm/include/asm/barebox-arm.h |   4 -
>  arch/arm/include/asm/elf.h         |   7 +
>  arch/arm/lib32/barebox.lds.S       |  42 ++--
>  arch/arm/lib32/reloc.c             |  19 ++
>  arch/arm/lib64/barebox.lds.S       |  38 ++--
>  arch/arm/lib64/reloc.c             |  21 +-
>  arch/riscv/Kconfig                 |  18 ++
>  arch/riscv/Kconfig.socs            |   1 -
>  arch/riscv/boot/start.c            |  19 +-
>  arch/riscv/boot/uncompress.c       |  34 ++-
>  arch/riscv/cpu/Makefile            |   1 +
>  arch/riscv/cpu/mmu.c               | 354 +++++++++++++++++++++++++++++
>  arch/riscv/cpu/mmu.h               | 120 ++++++++++
>  arch/riscv/include/asm/asm.h       |   3 +-
>  arch/riscv/include/asm/mmu.h       |  36 +++
>  arch/riscv/lib/barebox.lds.S       |  45 ++--
>  arch/riscv/lib/reloc.c             |  43 ++--
>  common/Makefile                    |   2 +-
>  common/elf.c                       | 446 +++++++++++++++++++++++++++++++++++--
>  include/elf.h                      |  79 +++++++
>  include/mmu.h                      |   3 +-
>  include/pbl/mmu.h                  |  38 ++++
>  pbl/Kconfig                        |   9 +
>  pbl/Makefile                       |   1 +
>  pbl/mmu.c                          | 107 +++++++++
>  scripts/Makefile.compiler          |   5 +
>  37 files changed, 1452 insertions(+), 217 deletions(-)
> ---
> base-commit: 2f99ee71fb44dc60b60d234fb38e0b3c6932f02b
> change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



