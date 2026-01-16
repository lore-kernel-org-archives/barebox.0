Delivery-date: Fri, 16 Jan 2026 09:12:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewx-001tSB-1A
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:12:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewv-00047C-BE
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:12:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3oj66SI13PgdchR0p2+a/akRc7PSpqRv8aQHSFmbCs4=; b=IW9zbWDzqrp6fH
	ehvbYxGxZ01O2ud/k3GtFdOXTxUw3EBLUpiPxNs6yaI9SvqVKB094EwIbqrZIMopdJbsTVmTe1Cep
	TWq51xFVKY5xDE4drze+jd+A+l1sfFYEhsrAau9HTKuDfB+kW6hKoLPo7MSIA8EMuQAVODtnLFesk
	TbRULUlUzG/OaMbqAzPNbgpCakpeaxV0tNVPNQzq4qrD4Rhpbp6qN/V8pm3zmgr730uqDoNuQsG+V
	g7F4rRs2PXCCWxt8vHgCi/NXzkVdg2p1yYUqWJQl4csIAe93DqMXU5KRUIcRmiQcfFvoX9/lZ/YPn
	lWiefG7zOuhY7GtbLh+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewQ-0000000DjPu-1ihw;
	Fri, 16 Jan 2026 08:12:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewJ-0000000DjNk-3TDk
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jR-Uq; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5E-0Y;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1WDZ;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:11 +0100
Message-Id: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANvyaWkC/23OzY7CIBSG4VsxrGUCByjgyvuYuODnoCRN29DaO
 DG9d6mrTnX5fsl5cp5kxJJxJKfDkxSc85j7roY6Hki4ue6KNMfaBBgoDqDp4Fva9i5SbBMNXgb
 PAnodDaknQ8GUH2/u91L7lsepL39vfebrukIN40z9h2ZOGUWrjRLJGhBwHrC73qfSd/nxE5Gs2
 gxbodkJUAVptA+6YYlJ9VUQW8HsBLH+ACZYwVPg2n4V5EbgcifIKjCXnDbRKqfxQ1iW5QVaZBd
 gcwEAAA==
X-Change-ID: 20251227-pbl-load-elf-cb4cb0ceb7d8
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=6169;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ex9e1a7jTMkpSaUSsAZ7PjwqwEJjt/j9t8JyXYncZZs=;
 b=MwCubJ1vk1ffSuvR7WFWs4EYKYpN8iTEjdDR50p+F1hDt3cVSiekCQgVNAfZL4LB2RPd3Vj2l
 fEalI4VparmAPb8GDsY1RgEIlE0SHZCBSENVyI4SRn3abVIuAnN+oUH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001216_025578_7E3DF167 
X-CRM114-Status: GOOD (  17.28  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 00/22] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now we linked the raw barebox proper binary into the PBL which
comes with a number of disadvantages. We rely on self-modifying code
to in barebox proper (relocate_to_current_adr()) and have no initialized
bss segment (setup_c()). Also we can only mark the .text and .rodata as
readonly during runtime of barebox proper.

This series overcomes this by linking a ELF image into the PBL. This
image is properly layed out, linked and initialized in the PBL. With
this barebox proper has a proper C environment and text/rodata
protection from the start.

As a bonus this series also adds initial MMU support for RISCV, also
based on loading the ELF image and configuring the MMU from the PBL.

I lost track about the review feedback for v1, partly because I asked
Claude to integrate the review feedback for me, which it did, but not
completely. Nevertheless I think this series has enough changes for now
so that it deserves a second look.

What I didn't care about yet is that we found out that neither ARM nor
RiscV use any absolute relocations, so we might be able to remove
support for them, make sure these are not emitted during compile time,
or properly test/fix them when we discover that they are indeed needed.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v5:
- make elf_for_each_segment safe against non void pointers
- drop Generated with [Claude Code](https://claude.com/claude-code) tags
- fix wrongly squashed commit
- make MMU on RiscV non default, but add generated mmu configs
- Link to v4: https://lore.barebox.org/20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de

Changes in v4:
- remove --remove-section=.note.gnu.build-id, catched by
  --remove-section=.note*
- actually use __image_* in remap_range_end_sans_image()
- drop pbl_remap_range in favor of remap_range()
- drop duplicate ELF entry point pr_debug()
- add static inline wrapper for pbl_mmu_setup_from_elf()
- reorder segments
- make dynamic section RO
- introduce elf_for_each_segment()
- Use lowest vaddr segment for base address
- Link to v3: https://lore.barebox.org/20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de

Changes in v3:
- integrate Ahmads feedback
- cleanup barebox proper entry
- add missing "ax" flag to ARM exception table, and let linker do the
  fixup
- Link to v2: https://lore.barebox.org/20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de

Changes in v2:
- rebased on Ahmads patches and with it reused existing relocate_image()
- hopefully integrated all feedback for v1
- Link to v1: https://lore.barebox.org/20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de

---
Sascha Hauer (22):
      Makefile.compiler: add objcopy-option
      elf: only accept images matching the native ELF_CLASS
      elf: build for PBL as well
      elf: add elf segment iterator
      elf: add dynamic relocation support
      ARM: implement elf_apply_relocations() for ELF relocation support
      riscv: define generic relocate_image
      riscv: implement elf_apply_relocations() for ELF relocation support
      elf: implement elf_load_inplace()
      elf: create elf_open_binary_into()
      Makefile: add vmbarebox build target
      PBL: allow to link ELF image into PBL
      mmu: add MAP_CACHED_RO mapping type
      ARM: drop arm_fixup_vectors()
      ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
      ARM: link ELF image into PBL
      ARM: cleanup barebox proper entry
      ARM: PBL: setup MMU with proper permissions from ELF segments
      riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
      riscv: link ELF image into PBL
      riscv: Allwinner D1: Drop M-Mode
      riscv: add ELF segment-based memory protection with MMU

 Makefile                                |  14 +-
 arch/arm/Kconfig                        |   1 +
 arch/arm/cpu/exceptions_32.S            |  54 +---
 arch/arm/cpu/interrupts_32.c            |   5 +-
 arch/arm/cpu/mmu-common.c               |  33 ++-
 arch/arm/cpu/mmu-common.h               |   3 +-
 arch/arm/cpu/mmu_32.c                   |   6 +-
 arch/arm/cpu/mmu_64.c                   |   2 +-
 arch/arm/cpu/no-mmu.c                   |   2 -
 arch/arm/cpu/start.c                    |  22 +-
 arch/arm/cpu/uncompress.c               |  34 ++-
 arch/arm/include/asm/barebox-arm.h      |   4 -
 arch/arm/include/asm/elf.h              |   7 +
 arch/arm/lib32/barebox.lds.S            |  42 +--
 arch/arm/lib32/reloc.c                  |  19 ++
 arch/arm/lib64/barebox.lds.S            |  38 +--
 arch/arm/lib64/reloc.c                  |  21 +-
 arch/riscv/Kconfig                      |  17 ++
 arch/riscv/Kconfig.socs                 |   1 -
 arch/riscv/Makefile                     |   7 +
 arch/riscv/boot/start.c                 |  19 +-
 arch/riscv/boot/uncompress.c            |  32 ++-
 arch/riscv/cpu/Makefile                 |   1 +
 arch/riscv/cpu/mmu.c                    | 354 +++++++++++++++++++++++++
 arch/riscv/cpu/mmu.h                    | 120 +++++++++
 arch/riscv/include/asm/asm.h            |   3 +-
 arch/riscv/include/asm/mmu.h            |  36 +++
 arch/riscv/lib/barebox.lds.S            |  45 ++--
 arch/riscv/lib/reloc.c                  |  43 ++-
 common/Makefile                         |   2 +-
 common/boards/configs/enable_mmu.config |   1 +
 common/elf.c                            | 446 ++++++++++++++++++++++++++++++--
 include/elf.h                           |  79 ++++++
 include/mmu.h                           |   3 +-
 include/pbl/mmu.h                       |  38 +++
 pbl/Kconfig                             |   9 +
 pbl/Makefile                            |   1 +
 pbl/mmu.c                               | 105 ++++++++
 scripts/Makefile.compiler               |   5 +
 39 files changed, 1456 insertions(+), 218 deletions(-)
---
base-commit: 342e84ff6545ae43ef5f49390be2f4ea6e40cde6
change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



