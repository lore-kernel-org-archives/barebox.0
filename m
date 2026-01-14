Delivery-date: Wed, 14 Jan 2026 13:15:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmK-001EFS-2Y
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:15:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmJ-0002Ae-0Y
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:15:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G9Og0dclL+Jlb8uGjR1hZBDOB0R6TqU4Ent7Br8Sf8A=; b=R8uMewtY6NeJuc
	tu80k6Yes2OwbAgRyae4ADEBWk9QzDXRsHg9Bv1bQgbfx8Ivwnsy+TWd7rKlOLwTRYkNLMi1XZGOC
	aE+YRE8vcGvdEhC8Wy7FGqoHpA2JC6ht/b7zl6apJIZUjgvGqe2W6mFnaOHmSQylfcsQIP1RQvKTM
	Fsm1yzI5QMV1L8aY/8G9J2ayVLy96zhYnCSFrFKa/4O4YoVImIqz68/9ZITG0DVVz8xkYFCyATQRn
	T8XZ/bSdaQeHc0k3b2F7b/jd1TV4OB1OmZHikZ1DZdTETN6ILlc0ggCxLDEnibsyU0aP5D5BynD5f
	bHIR1YgHKBGNUMAtXBvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlk-0000000982m-1Wd1;
	Wed, 14 Jan 2026 12:14:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlg-000000097yR-0QzI
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-0001iX-OW; Wed, 14 Jan 2026 13:14:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzld-000aPL-05;
	Wed, 14 Jan 2026 13:14:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-0vYW;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:25 +0100
Message-Id: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKGIZ2kC/23OQQ6DIBCF4asY1qWBQQW76j2aLgQHJTFqwBob4
 92Lrqzt8n/JfJmFBPQOA7klC/E4ueD6LkZ6SYhpyq5G6qrYBBhkHEDSQbe07cuKYmup0anRzKC
 WlSLxZPBo3bxzj2fsxoWx9+9dn/i2blDOOMu+oYlTRrGQKhO2UCDgPmBXv0bfd26+Vkg2bYKjk
 J8EiEKqpDYyZ5al2V9BHAV1EsT2AyhTCG4Nl8WPsK7rB0pBlOExAQAA
X-Change-ID: 20251227-pbl-load-elf-cb4cb0ceb7d8
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=5559;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OV1k3blrittdu3/ghaXddN2ltiVpJVRuZMbqItCIgQ0=;
 b=yxuNu6tzjzXWdK+HaUpmGbiXMJdqD6bu30abNQ3NQK7YB0Xi4PXqN2VC7nGx2d3dOFMlW3sye
 ClEqNZGNNTyC2Sfz0Rr2GlRZuWW+jTy+ZTYbLMi6riEqMAceSWOGjx9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_041432_171029_85BADA2B 
X-CRM114-Status: GOOD (  16.65  )
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
Subject: [PATCH v4 00/22] PBL: Add PBL ELF loading support with dynamic
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

 Makefile                           |  14 +-
 arch/arm/Kconfig                   |   1 +
 arch/arm/cpu/exceptions_32.S       |  54 +----
 arch/arm/cpu/interrupts_32.c       |   5 +-
 arch/arm/cpu/mmu-common.c          |  31 ++-
 arch/arm/cpu/mmu-common.h          |   3 +-
 arch/arm/cpu/mmu_32.c              |   6 +-
 arch/arm/cpu/mmu_64.c              |   2 +-
 arch/arm/cpu/no-mmu.c              |   2 -
 arch/arm/cpu/start.c               |  22 +-
 arch/arm/cpu/uncompress.c          |  34 ++-
 arch/arm/include/asm/barebox-arm.h |   4 -
 arch/arm/include/asm/elf.h         |   7 +
 arch/arm/lib32/barebox.lds.S       |  42 ++--
 arch/arm/lib32/reloc.c             |  19 ++
 arch/arm/lib64/barebox.lds.S       |  38 ++--
 arch/arm/lib64/reloc.c             |  21 +-
 arch/riscv/Kconfig                 |  18 ++
 arch/riscv/Kconfig.socs            |   1 -
 arch/riscv/boot/start.c            |  19 +-
 arch/riscv/boot/uncompress.c       |  34 ++-
 arch/riscv/cpu/Makefile            |   1 +
 arch/riscv/cpu/mmu.c               | 354 +++++++++++++++++++++++++++++
 arch/riscv/cpu/mmu.h               | 120 ++++++++++
 arch/riscv/include/asm/asm.h       |   3 +-
 arch/riscv/include/asm/mmu.h       |  36 +++
 arch/riscv/lib/barebox.lds.S       |  45 ++--
 arch/riscv/lib/reloc.c             |  43 ++--
 common/Makefile                    |   2 +-
 common/elf.c                       | 446 +++++++++++++++++++++++++++++++++++--
 include/elf.h                      |  79 +++++++
 include/mmu.h                      |   3 +-
 include/pbl/mmu.h                  |  38 ++++
 pbl/Kconfig                        |   9 +
 pbl/Makefile                       |   1 +
 pbl/mmu.c                          | 107 +++++++++
 scripts/Makefile.compiler          |   5 +
 37 files changed, 1452 insertions(+), 217 deletions(-)
---
base-commit: 2f99ee71fb44dc60b60d234fb38e0b3c6932f02b
change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



